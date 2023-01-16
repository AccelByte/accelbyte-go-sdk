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
    --limit '5' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "zI3vpelz", "description": "U0IGy1em", "globalRules": [{"allowedAction": "OePoHSuC", "ruleDetail": [{"ruleAttribute": "r7pXvTsB", "ruleCriteria": "EQUAL", "ruleValue": 0.7887844684943517}, {"ruleAttribute": "2skyYDk8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5774041672808861}, {"ruleAttribute": "9oILIogp", "ruleCriteria": "EQUAL", "ruleValue": 0.4142383942191027}]}, {"allowedAction": "togCqLQW", "ruleDetail": [{"ruleAttribute": "lEiC129d", "ruleCriteria": "MINIMUM", "ruleValue": 0.8874485185159791}, {"ruleAttribute": "dgRtuOic", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2265569614058206}, {"ruleAttribute": "FTBygF8Q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7365821087812586}]}, {"allowedAction": "asvg5nqK", "ruleDetail": [{"ruleAttribute": "x26sCWd7", "ruleCriteria": "EQUAL", "ruleValue": 0.945353175515822}, {"ruleAttribute": "T4pMvC0e", "ruleCriteria": "MINIMUM", "ruleValue": 0.3721501852904111}, {"ruleAttribute": "bCPkyxzl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9484493341332576}]}], "groupAdminRoleId": "J9mTW0rI", "groupMaxMember": 32, "groupMemberRoleId": "cH8jOLri", "name": "KeT5Ity0"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'W9LIBTPv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'iWqwwpUS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'xU75ohK5' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DWvc5Wfd", "groupMaxMember": 94, "name": "KenJBQRm"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'c7Ogw1Me' \
    --configurationCode 'T37hmDhv' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "YIeZb7U7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1952143973605327}, {"ruleAttribute": "ckSuOOpH", "ruleCriteria": "EQUAL", "ruleValue": 0.27080861433630654}, {"ruleAttribute": "eurkt0YU", "ruleCriteria": "MINIMUM", "ruleValue": 0.7563924342139353}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ilV7S05E' \
    --configurationCode 'UE66QH69' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ehDrrCgo' \
    --groupName '4Vbz5Hcu' \
    --groupRegion 'u8NRic32' \
    --limit '29' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'oznxwkqY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'vEaJwyGM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'NX1HNHUt' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '69' \
    --order 'm0Epgx96' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "jpcv3Ymk", "memberRolePermissions": [{"action": 80, "resourceName": "su3lDda6"}, {"action": 82, "resourceName": "uLo9opoQ"}, {"action": 1, "resourceName": "oVMgFC2p"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'qzoxrfjW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'R4dlGaSZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'hm6NwCe5' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "BIajFoqV"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'gqx59gES' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 54, "resourceName": "AT1vlfb3"}, {"action": 53, "resourceName": "33fUxphz"}, {"action": 96, "resourceName": "8aaQeVQj"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'I0E51EFV' \
    --groupRegion 'lDamCUKz' \
    --limit '45' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "iEDT4lvh", "customAttributes": {"PHHPSa7k": {}, "jNslfy0R": {}, "VpN8UxLx": {}}, "groupDescription": "cY4TJjZI", "groupIcon": "IMIW2y5E", "groupMaxMember": 45, "groupName": "iRjDoHqb", "groupRegion": "We9VPpWs", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VB4X46nl", "ruleDetail": [{"ruleAttribute": "NXlOTpXz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3414145776506282}, {"ruleAttribute": "VMA653WQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6333425065495565}, {"ruleAttribute": "mcemOmWT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4793456585405135}]}, {"allowedAction": "YelfLVpO", "ruleDetail": [{"ruleAttribute": "AQrmH68Q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9158428556820777}, {"ruleAttribute": "AeLon1S2", "ruleCriteria": "EQUAL", "ruleValue": 0.9620818980804133}, {"ruleAttribute": "eZ4pi1Ku", "ruleCriteria": "MAXIMUM", "ruleValue": 0.49135714810491593}]}, {"allowedAction": "4eTRfSfB", "ruleDetail": [{"ruleAttribute": "AOz31apM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08573300353945523}, {"ruleAttribute": "CPxFlkfC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9302735000859338}, {"ruleAttribute": "hqkkTsD1", "ruleCriteria": "EQUAL", "ruleValue": 0.9915046470822305}]}]}, "groupType": "ckv9IkA2"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 't0D679aV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'bjLZexUd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "JqR57ZsF", "groupIcon": "GdvPjnNE", "groupName": "rL1CQiOe", "groupRegion": "BPJIcY8r", "groupType": "up3gghuu"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'vZLqCOux' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '4Tm4X3S7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "3MiVWpTl", "groupIcon": "ve3YIhOR", "groupName": "u4cwtOTi", "groupRegion": "gLYquORs", "groupType": "jXtmFVlf"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'jpW3olSF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"hVvyCZaR": {}, "eftB4BaW": {}, "TwlfnERM": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'cyySRHiV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'KNW4cQAs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '66Qg8oDr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Kgnv7aTj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '6dsZhczg' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'Xud6XJos' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '40' \
    --order 'CNXglbbN' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'W5IaOz8u' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"oDXzknKw": {}, "73BenOlZ": {}, "qnEMcAvU": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'WOELPszs' \
    --groupId '3zRk7g9j' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Fo8JQpMB", "ruleCriteria": "EQUAL", "ruleValue": 0.038563572793480105}, {"ruleAttribute": "ee7PHjxJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.7475304962186566}, {"ruleAttribute": "wTJRAgzX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11138005079180502}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'uvhK9mWx' \
    --groupId 'zIPZLjOH' \
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
    --limit '0' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'rchIfErV' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lGAMpwDK"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'M1Zkl7C6' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "91N0pESW"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xJkmZyur' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '4jHF4Shv' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GJFaXSpY' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Nn1ksEyN' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mZ64T2N2' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE