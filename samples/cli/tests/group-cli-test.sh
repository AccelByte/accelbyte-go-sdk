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
    --limit '88' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "bvOaBMorn0jBTUUv", "description": "Wo6hP3kyApVw27o2", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "NdiSomf2Ymy0S6Zp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08228666091469505}, {"ruleAttribute": "aaYmNqflqeaQxJJI", "ruleCriteria": "EQUAL", "ruleValue": 0.13652120633933174}, {"ruleAttribute": "rInO6fZ1FV8LqTbQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.643116501255293}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "13wO8uaklNMCrtE8", "ruleCriteria": "MINIMUM", "ruleValue": 0.6474651254218438}, {"ruleAttribute": "eSLysmNP3YrjIMl7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6785278690225893}, {"ruleAttribute": "Mi1ezYBz2BJohkaG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.053278872773893426}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "PC3jSpjzclhayx9T", "ruleCriteria": "MINIMUM", "ruleValue": 0.38656124780863477}, {"ruleAttribute": "7A2PXC8i54piTr7X", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6004139741743497}, {"ruleAttribute": "TGz2drjRLBEXNMsi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.697811851002159}]}], "groupAdminRoleId": "jVxhiY7DpOZgKd2g", "groupMaxMember": 98, "groupMemberRoleId": "XzKRF1APyZMZnbWk", "name": "nOKvU52W6ZluaZJW"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'dsRG3V7GszWwpJ6Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'GF9q9xEVjf6WpkTJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'rdy8yjTfminVEciw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "r515caDt6KDP7f6L", "groupMaxMember": 99, "name": "xV0G5vt8VLkS0rjl"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '7l3NWBud406GuG2i' \
    --configurationCode 'BdIjWxf6W8RVdQq5' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "i6FF5lNSH1knmDub", "ruleCriteria": "MINIMUM", "ruleValue": 0.7808141758141095}, {"ruleAttribute": "bt6970bRUJZdDri9", "ruleCriteria": "EQUAL", "ruleValue": 0.041288183896390995}, {"ruleAttribute": "FewHl3pT0rFNTki5", "ruleCriteria": "MINIMUM", "ruleValue": 0.4346622311061924}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'wTb1kiZw4eBvyKjs' \
    --configurationCode 'Nvix3mNO0W1lBulx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Tz1gx5OKPv2Upq4h' \
    --groupName 'sP339S8Zy3AgAbZ5' \
    --groupRegion 'EgRaw3uNFqLewlCa' \
    --limit '7' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'Fe5Xkiv48q4mMnzS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '3uv9GFndu6WCjIls' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'GNfyTjCOODCeyn1a' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '24' \
    --order 'FazOJjVBGVIk3o7z' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "fyxTQhs5jhAGw0Dx", "memberRolePermissions": [{"action": 79, "resourceName": "8mlhTGhB3cmmv0mk"}, {"action": 59, "resourceName": "3Ro6onkvjLKOdOHn"}, {"action": 90, "resourceName": "obcVX9QJbzrPWo9Q"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '7eRDqB1ozqBc1tSa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'U1pVSasI4mAeGXzG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Ji3FXh5puD2FyCgk' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "AmNyplgpFk9xelyA"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'BuMpCsBZFbrEIUEB' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 15, "resourceName": "kqvp6FuTCALVuGof"}, {"action": 60, "resourceName": "0zmEUUz7ekccOzzz"}, {"action": 34, "resourceName": "Cy4sOu4OjkgL7dHs"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'Xk5ErjS64KocYAeK' \
    --groupRegion '6txMyTOQ961x5EdJ' \
    --limit '68' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "c6tPYYkvcQKGqQjq", "customAttributes": {"mMi8X71vhaLDGkFu": {}, "3JXhfpPHXi1x7kSR": {}, "xrPlhR6iLIQcNErl": {}}, "groupDescription": "7l41462GqHIKHKJw", "groupIcon": "C2jnoW8z4AGSpuMH", "groupMaxMember": 33, "groupName": "UT3cnBapJss6O0x4", "groupRegion": "KUIqnQ4K4wnlXrVG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "CnnSksxEHDAugl98", "ruleCriteria": "MINIMUM", "ruleValue": 0.16405252268016635}, {"ruleAttribute": "YkCMO9klcmYlKQvc", "ruleCriteria": "EQUAL", "ruleValue": 0.3257333751420106}, {"ruleAttribute": "mTB53IsTC2nU7HV0", "ruleCriteria": "EQUAL", "ruleValue": 0.9997858039838574}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Kjw1p27KX7zw12fK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5424424812849296}, {"ruleAttribute": "ABGo39aSeNYhx99E", "ruleCriteria": "EQUAL", "ruleValue": 0.3259400872269458}, {"ruleAttribute": "D8oSlqud5meJkt59", "ruleCriteria": "EQUAL", "ruleValue": 0.7319883700294373}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "cqBK0mpAtlXgvHAg", "ruleCriteria": "EQUAL", "ruleValue": 0.8535085044592179}, {"ruleAttribute": "3jMKnQSxVgW40zqH", "ruleCriteria": "MINIMUM", "ruleValue": 0.5237364777027418}, {"ruleAttribute": "JCgp0uANbSgiZerg", "ruleCriteria": "EQUAL", "ruleValue": 0.014879673458635279}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'cATMffMAC2nA2EFu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'DexWakWb9IaN0dI2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5mLZtvLbW0XpP5y1", "groupIcon": "5gF4a6MTw2xu79sZ", "groupName": "LIYxliFYXG0awSln", "groupRegion": "vs5P0d2be6jPW5Bn", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'mn14VjO4DUB9JuxX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'n9DULpgzvo6m1qTY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "lrBZy0UlHp4OusQG", "groupIcon": "gKaEWfvznIG2KkxT", "groupName": "lbbDq0UMRSn2cULn", "groupRegion": "Ra8sf05WAE0vdNng", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '9WpaL5MN6XwlKylf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"DoTpbKvyHTTAkSID": {}, "Fy5hiesx2hAetnwe": {}, "rWH2usGfM123g170": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'gbD3io1AkfJCNyYq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'JrRk65Rc5qxfUNP8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'L7lD6IuIgf8fWdxp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '86zuITYVTqorAgNW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '9XQuLcXUArrNCala' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'QyioQ8ugqwrHhyxx' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '65' \
    --order '9Bvi5IQuOrUYFhpq' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'MkSOG8npEFvS3czc' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"tlGKJb7GK4485Rjt": {}, "iv30XEWjVSb531Ih": {}, "UTM4Kp7I0w5BQInl": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'KeNwgHFb0j8ee86M' \
    --groupId 'SDlTbKAXMc4OWgjw' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "evIbR2rwG8Lf8gfP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.504430578661778}, {"ruleAttribute": "pgYlkOsJK3nXsXX6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28792717187105576}, {"ruleAttribute": "NSTdiqirXTL3rcuS", "ruleCriteria": "EQUAL", "ruleValue": 0.09038157128728641}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'hbLijEDC7EYxGcJb' \
    --groupId '3S0W70aNOcz9rCP9' \
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
    --limit '33' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'NCCpDdON1piKDQTn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "VD5HOLsNvA0AOxT3"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'op11sGCZ6iLkprxZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ZLujC0SY1pAsP3X8"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QCzdhqunP9ByBKRU' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XZ5tD4bgn8wTebRh' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rMVRtFGmGjM0tSg1' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '32Toizsl0Uv4S4sx' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '59MaDqC9AAkt8Xmr' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["sjIu5wWeptsjVmKk", "7BGLPPVnG8D7pKuh", "UpvuvVRNJHkPcOY4"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'xu7EFYziROf8vXIl' \
    --limit '81' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '7p1a0OP3SQofiAKY' \
    --namespace $AB_NAMESPACE \
    --userId '2H3eizNJONcyaPui' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "2BBeCqKHIUwbxfLz", "customAttributes": {"ZIhGb4lBsrjGXaLM": {}, "aFinr2EMlusOXWfF": {}, "UlX8qWEb9AfN6GM4": {}}, "groupDescription": "pbG2FQ4RSfjWY6Gx", "groupIcon": "56TgmaVbp4cIY5Wi", "groupMaxMember": 22, "groupName": "DP3gLLJNAFJdWySr", "groupRegion": "u3hfjwOqGs8xcTsC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "N2GsUQ7d51DRtvdd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6662697826013566}, {"ruleAttribute": "1oDlVvWMldQeZ1zr", "ruleCriteria": "MINIMUM", "ruleValue": 0.39047729069404413}, {"ruleAttribute": "BdpEZPXzYIDZYpZf", "ruleCriteria": "MINIMUM", "ruleValue": 0.923314228633568}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "bDh8WspEbYvJAtYv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2786508428439569}, {"ruleAttribute": "5MTALmmfDLiPnjol", "ruleCriteria": "EQUAL", "ruleValue": 0.9858411264115369}, {"ruleAttribute": "t4WcorvaZiPAKLEj", "ruleCriteria": "EQUAL", "ruleValue": 0.6948134362925317}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "kgPp9fJWz1igHISe", "ruleCriteria": "EQUAL", "ruleValue": 0.7316901902153252}, {"ruleAttribute": "G1VNHyI9Lwf87XtM", "ruleCriteria": "MINIMUM", "ruleValue": 0.2217951034205924}, {"ruleAttribute": "bX1xTixDemxqXi83", "ruleCriteria": "EQUAL", "ruleValue": 0.34018853950076555}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["KtiErfCdKWY60uVb", "fqFDva0oZxVzkc0V", "J14fMIaCwdl5n1OT"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'szTIEQ7hIeFhc49q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "kUchy13YdF99vwtg", "groupIcon": "i9wAPAIu0MJ7lBxO", "groupName": "wLmVupq7h8Rc56NG", "groupRegion": "9ndbOgc4B0IwC3kD", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'yfEmWX6FnaEzpLUX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'KI8LzojHZTzytEVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "tcSNuGZyKUi2eneP", "groupIcon": "eTMztrqSTbTxOhGr", "groupName": "cvu8pLjBJbe9ydcZ", "groupRegion": "8s0eG8OXgCb8n9sX", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '8sh8Of8sJ7FXUFgt' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Mc6c8fHXQocwdXWk": {}, "Qf6GoMhI2gDBxBvW": {}, "i4CaFIo2i4IX8Yib": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'nTJyAuZihAGKt55c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'tZj07jBrUZ8IWYjQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'GERTXUoilxFkn54g' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'LB6v9HmOmKDFhibT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'gAnFmv4EqeiQy253' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '9rr2RLFliNg2hP4T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'kCtyrHrNCWpMKtYj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"iDtwsIu4kDBF5kIH": {}, "3d0UmQXxeENYfBO1": {}, "Onmj3LJNSj2K3Dc3": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'vvOIJOIIjZsSpL7y' \
    --groupId 'AlXFMjRqQH7sZniA' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "DMW1V4QB274HeVm6", "ruleCriteria": "MINIMUM", "ruleValue": 0.9069847448394809}, {"ruleAttribute": "sSZNXXsfnUkoYExU", "ruleCriteria": "MINIMUM", "ruleValue": 0.6216453576387317}, {"ruleAttribute": "AdrW5M173OLYwDs7", "ruleCriteria": "EQUAL", "ruleValue": 0.2521578137221008}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'TYOSyXSNswZZZN5O' \
    --groupId 'kyRbyZSg35vRbwvN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'lUbl8wpms4fyTtTo' \
    --memberRoleId 'wXg6EfX0IDWdPFCv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tKx2PSAjG81LkHtZ"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'DKq8gclXZpGPoDNY' \
    --memberRoleId 'voLOzEnQyAApcDKJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YOIhgLgnyQODSuIF"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'H1UGgKciOCAJrNAl' \
    --namespace $AB_NAMESPACE \
    --userId 'z5wqSleugiRAl9Xl' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Rh8U8mJmvTbPu6W9' \
    --namespace $AB_NAMESPACE \
    --userId 'FGxUj4g2iejVRJjE' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'eFcJzqFxUShYXpKJ' \
    --namespace $AB_NAMESPACE \
    --userId 'AsJ7FSOjlLgHW98T' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'm5vZmda01Yf12huF' \
    --namespace $AB_NAMESPACE \
    --userId 'XuJQgRFuuLaYSLOB' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'oAThUeW2BvGXFKcC' \
    --namespace $AB_NAMESPACE \
    --userId '467unAwfEwhINQwi' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'pNkzOeSx1tK2oy4W' \
    --namespace $AB_NAMESPACE \
    --userId 'ZQ6zhCJXq9kHcF50' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE