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
    --limit '41' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "vI9S1yqMu8VY3kSv", "description": "hI81vecpKyYo8NaP", "globalRules": [{"allowedAction": "p7Rwdg1WZvF667wD", "ruleDetail": [{"ruleAttribute": "4QflBIOzFKRsrdYA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5689370567253362}, {"ruleAttribute": "T4VpJjgmtUDA0yjI", "ruleCriteria": "EQUAL", "ruleValue": 0.5924438566843395}, {"ruleAttribute": "Idm7kH5vH3z8ARI4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3449644420204857}]}, {"allowedAction": "bzzTXQHLWMfr4LMm", "ruleDetail": [{"ruleAttribute": "Pn9w9BSU0xwgxkQ4", "ruleCriteria": "EQUAL", "ruleValue": 0.7211529300679366}, {"ruleAttribute": "SN6gE6kYMAVmGrkx", "ruleCriteria": "MINIMUM", "ruleValue": 0.09946015981247047}, {"ruleAttribute": "rhLkNhAnu3NAYoOR", "ruleCriteria": "MINIMUM", "ruleValue": 0.2888693473624384}]}, {"allowedAction": "wyFtnjaBPKVx780J", "ruleDetail": [{"ruleAttribute": "D6N9WGGYVJ9Ilosv", "ruleCriteria": "MINIMUM", "ruleValue": 0.9380262149333491}, {"ruleAttribute": "vyOQ1MRXbZOuAKvI", "ruleCriteria": "MINIMUM", "ruleValue": 0.08587249593400337}, {"ruleAttribute": "HZpZlC0NrTKHdQfp", "ruleCriteria": "EQUAL", "ruleValue": 0.4441060410736274}]}], "groupAdminRoleId": "rErGn4hwD94VaqMB", "groupMaxMember": 66, "groupMemberRoleId": "MaZP62IwmPSZ2p4S", "name": "5OCFGFBr3vuy37y6"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'eVSh3ksC7QOZw9pj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'j2S4RkEyvzklXXKU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'CBEUdDDruUT1rVs7' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mpPkJfB0NEoNqdWW", "groupMaxMember": 93, "name": "aDxxEuSReZGfzusi"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'DlueRORqEQo6vINm' \
    --configurationCode 'DjvVXabUOYTBCGGx' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "FAlSoGrjP1qpgXsv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17747377691584287}, {"ruleAttribute": "hirLyelaR1p9BPIg", "ruleCriteria": "EQUAL", "ruleValue": 0.11194848039932626}, {"ruleAttribute": "MgDpdlyB0SYX1PJO", "ruleCriteria": "MINIMUM", "ruleValue": 0.6059906557620289}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'SAHR5oIBNMhVddob' \
    --configurationCode 'FWBRoXADkwX2Mdr3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'RJJphheF7M4pCVT7' \
    --groupName 'AoG0jR4kxpXIEcmi' \
    --groupRegion 'sCs3oTbYJp6dgVSJ' \
    --limit '86' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'Y5kfeYiCBtQUZnqG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Gj9Vr49naGyxft9y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'VWcPlosCzmFX7hI3' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '81' \
    --order '4SL14V1LxoHSXRH5' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "5jQYRQvHpDeHrAd8", "memberRolePermissions": [{"action": 46, "resourceName": "nTFSZLtRVohLWjzL"}, {"action": 1, "resourceName": "2scQpvq63EHhxl8S"}, {"action": 1, "resourceName": "zSmWmSnwndMXJjGL"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'afD0THDefDAWyaeQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'LEe3f4BbQtirGuya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'bpC7R50rWAizuEHe' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "CfgQkdkI9e8adM2s"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'yB2QSP20FKEq8iqp' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 47, "resourceName": "ipdFl6KlyGdOkdEg"}, {"action": 11, "resourceName": "jAGdM8ZQS60nJv3L"}, {"action": 22, "resourceName": "gN9apglnqqlMcAI5"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '7CycNa3PoqMFs0EQ' \
    --groupRegion 'GMxI2raxhWQ2zhor' \
    --limit '35' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "gC6vCgQxp5PuCrql", "customAttributes": {"PxcB1K4wNmzGV9m5": {}, "2lJmwmIYCkthDtxw": {}, "O2qIMC0HpdGBk9RT": {}}, "groupDescription": "z7RtYNU0qq5VC9Pg", "groupIcon": "P505whcmfQeI0eZ1", "groupMaxMember": 23, "groupName": "N604FcEperd7mzly", "groupRegion": "NCCKsvm9zPUO7Klj", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "zU5I6GlGCHnKlbpw", "ruleDetail": [{"ruleAttribute": "Gfyk8Grau2S3KMj9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08545842198349918}, {"ruleAttribute": "xOp69K1cOMzIjKwy", "ruleCriteria": "EQUAL", "ruleValue": 0.19024051270815612}, {"ruleAttribute": "mkD1SqjxE8HhGGkL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7151804054782939}]}, {"allowedAction": "ZTiah6fgDm3NnkZ8", "ruleDetail": [{"ruleAttribute": "4e7LP9gULKOPWTrw", "ruleCriteria": "EQUAL", "ruleValue": 0.028224736823080687}, {"ruleAttribute": "U3m7S3DhD9iANIgP", "ruleCriteria": "EQUAL", "ruleValue": 0.4538443146708041}, {"ruleAttribute": "1KpmvWtJS2f4IJnG", "ruleCriteria": "EQUAL", "ruleValue": 0.6467082952456236}]}, {"allowedAction": "2KNpYc6WiV3QZKiy", "ruleDetail": [{"ruleAttribute": "0hgUH4m0sZTiE0XQ", "ruleCriteria": "EQUAL", "ruleValue": 0.6335617915546592}, {"ruleAttribute": "xeayiMJrYNTVPpPZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6369707250318015}, {"ruleAttribute": "ecAHHSlVD5epAWr2", "ruleCriteria": "EQUAL", "ruleValue": 0.8701373076050373}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'wxH9N64FKekXdATL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'z8MquT0Qo4tCauHL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "YJVAPhVwxJb3ZIgP", "groupIcon": "8v5UbWzM3HgEB84k", "groupName": "ZHG0t9o5yPmGnYlK", "groupRegion": "X2wYvTwKB4OCCGBU", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '7cyePmjFEWww8ZhC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'liDHyEdsvgQlplf3' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Fam8euEvGpIrEXNt", "groupIcon": "kpl57yO5lhmrhUNk", "groupName": "FS9SGPeqq3lAr45B", "groupRegion": "pv7CJrQWJ7QIOQgs", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'fkEdeIS8YmwA9Ze2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"8LZDvUN3fwjTUaF5": {}, "WYEIbKNsYaACGtWG": {}, "As94eSe4dne8slYD": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'wZBMlfuKzpS2R22S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'Me57Hi5n4YCaH3wl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'BXFZyxFOrPac054x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'ddZoJcnnCbHa0Lao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '4dJkgtGSLGYKzeBS' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'VAHvsPWmFwuH2dtd' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '74' \
    --order 'cfJXRRBWGCG16KNi' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'IXBq70W5lgrDjp3x' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ilPnrpbzb5Ix5BEn": {}, "hMlH7fEib77zr06n": {}, "zpay2qOaN1rObnYa": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Szcb1XHHoOYQ4xhw' \
    --groupId 'PJpc5AkCJX049XiA' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "AStYJYFNBPGMcBoP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8558099310610233}, {"ruleAttribute": "6U0TP1W6R1k0BYVm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16834640395511302}, {"ruleAttribute": "3HPdjcTP197MuQK5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4624687741300113}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'nmbuQCQJ5XI8yeCU' \
    --groupId '32SL72TYht0kyk3x' \
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
    --limit '29' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'cZ8pMTDa7g8FlEcB' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "vXNam3YvPxhZb9Jc"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'F0hwib9HmCpTMlrx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3SIWGicydj5ek3fn"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WbURXqcdohtBfZd7' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ywpQuxyZ3qVop9gl' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8LAgf4YfhK9YzJhf' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Iec2hWKnjVFVvx0M' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XprNIiYFEOoUc92I' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["qWnKKP18NGaDgehu", "4cFA1G3U9lWaiYHb", "rB9x114smL33oTZJ"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RvAXX68bura6aTka' \
    --limit '95' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'ehXWzPh2aMJup4aW' \
    --namespace $AB_NAMESPACE \
    --userId '4ATBEzWLnaUczNyq' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "rptZZlKRaSdnO6M5", "customAttributes": {"h8aLkciLC30Hm8Fp": {}, "foAERKmYPQNijTSV": {}, "wVbdZfZL8NoFAyAL": {}}, "groupDescription": "JE0S2H70e7rG0ue1", "groupIcon": "rd08qN05sUDwtFgd", "groupMaxMember": 56, "groupName": "YZfsCoihFWzgBmrG", "groupRegion": "Hl3Aiu7f0xetXGeh", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "kWXh1qlaYaMbqKuc", "ruleDetail": [{"ruleAttribute": "7uHV6077x1yFwALJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.24489271968972848}, {"ruleAttribute": "stm75aWlXxd4H2vr", "ruleCriteria": "MINIMUM", "ruleValue": 0.06960220873065348}, {"ruleAttribute": "AkVaf2RE5QMEhqdg", "ruleCriteria": "EQUAL", "ruleValue": 0.46590892508081927}]}, {"allowedAction": "NjcKRTTeTo6seSgN", "ruleDetail": [{"ruleAttribute": "MelKyScx4IfigTSN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.692682204942283}, {"ruleAttribute": "tZ3AT0D0uxdROCln", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6254374329013767}, {"ruleAttribute": "Bunpd5xZiGK64t5Q", "ruleCriteria": "MINIMUM", "ruleValue": 0.5662492535660042}]}, {"allowedAction": "RZ5n4ftgQHcg8kdM", "ruleDetail": [{"ruleAttribute": "oAcRs1iejcvG6T1n", "ruleCriteria": "MINIMUM", "ruleValue": 0.5572942628332033}, {"ruleAttribute": "cn2fEZZ5yeeXeK8b", "ruleCriteria": "EQUAL", "ruleValue": 0.6027648816300399}, {"ruleAttribute": "ACXOHoTeDIHzzJqS", "ruleCriteria": "EQUAL", "ruleValue": 0.6108075537285848}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["fRr1p7KefKmgPkA8", "ror1Dg0Kxp72mbva", "JzR6VtxIj4HdO2l2"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'HtWEXHq7CZWgpZbH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ZGrnYG4oadoHcrAN", "groupIcon": "fvuq5VOpf2NIKdPH", "groupName": "0AIGy6Ciy7wr25ez", "groupRegion": "lVD5NG2tPyETHUUs", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'BvbhmsLrR6bGvTFX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'LoixHPBCKwbc7yjP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "aq3AsWiWJXUgU07m", "groupIcon": "egwK17OBjh22dC41", "groupName": "9ZjOtNu6imMokT2u", "groupRegion": "PXgSfNvEgYKFci0s", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '4v2Pi4XTJkFq3cFd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"SI8ygAG6wrcgdIoO": {}, "t4ZnpoxtNunGrGq9": {}, "X4pxgzwelu5Hwq6X": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'x5j1zuVCtdasrerO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'nDoKFfyLcziy802w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '1g80EBcFfueWi0np' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'RwU7SwXwIe8Xgg6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '3bFmh9cZMafmY0Ex' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '3KZnlJOVl3av7am3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '6PmmrJQBjjiybmYO' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"7oquWicQ5WTdS7ve": {}, "ROIKPcaoqZRCErZq": {}, "CzNDDQ8NC0owSImf": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'ihnhZ5v5croup8gM' \
    --groupId 'JNYGeax1S907tYC9' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "KXc3BP9NunrIsbAs", "ruleCriteria": "EQUAL", "ruleValue": 0.6612041921254088}, {"ruleAttribute": "zH7kVTlHBr41j9GB", "ruleCriteria": "MINIMUM", "ruleValue": 0.9878361129560317}, {"ruleAttribute": "wmrIIj4WeUJc2a71", "ruleCriteria": "MINIMUM", "ruleValue": 0.40762651138954487}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '56N9x2ZfaDNsbLce' \
    --groupId 'Hz9xsQasTas5n1uB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'qXEmvvWzFVjKjssq' \
    --memberRoleId 'BSIFx8bbkYkwAEsn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "9Zu3jM2uVUOc6wQB"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'YnsI9X4AjqtFHlkQ' \
    --memberRoleId '3avay29AQoDJ7Px4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FSGCcDp79wgImuB9"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'cTuBNVEW2vWONDZd' \
    --namespace $AB_NAMESPACE \
    --userId 'vOwcrr0ptO1PJIUF' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Puztx2mZmR7YwekQ' \
    --namespace $AB_NAMESPACE \
    --userId 'A2aRgDdt4wiqjZay' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'RDcKnFazzRXtdB2l' \
    --namespace $AB_NAMESPACE \
    --userId 'azvahLVVqQ1aWARL' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'KmQf5XcoabbJondq' \
    --namespace $AB_NAMESPACE \
    --userId 'IBcqyPxATUc0B3Dz' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'JrGh5bSR83dJkuW7' \
    --namespace $AB_NAMESPACE \
    --userId 'jJinCkQRGrJXRTir' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'pHFrYg4CzKfoFKfu' \
    --namespace $AB_NAMESPACE \
    --userId 'qqPDobWPDDqRlnVJ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE