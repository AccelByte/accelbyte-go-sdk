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
    --limit '52' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "rBwqqNqQuVmn3sF8", "description": "6CdPFAXUtDLCewVi", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "1U2iclbB6GHT9ObK", "ruleCriteria": "MINIMUM", "ruleValue": 0.8254872754333938}, {"ruleAttribute": "KZhhw9phir5HXRrm", "ruleCriteria": "MINIMUM", "ruleValue": 0.02017338559918369}, {"ruleAttribute": "XvFRQJqXiUQaOMlo", "ruleCriteria": "MINIMUM", "ruleValue": 0.3017474370873299}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "wptkJejt42JqtyeK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28546687676843363}, {"ruleAttribute": "FynUCu5kXrz6a2iu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14808703327176642}, {"ruleAttribute": "DoczIAirCrdVLnZz", "ruleCriteria": "EQUAL", "ruleValue": 0.9985681919765383}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "f55dtfFNUnM6oONS", "ruleCriteria": "MINIMUM", "ruleValue": 0.579012646205012}, {"ruleAttribute": "AxykQ9ZA7uv4Lztu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6412012157036676}, {"ruleAttribute": "OHIjJm2qCHbHBuLt", "ruleCriteria": "MINIMUM", "ruleValue": 0.06996609571127299}]}], "groupAdminRoleId": "x9WKSEGeXI5GFB9D", "groupMaxMember": 98, "groupMemberRoleId": "AP2fGkyMyJwOYZVr", "name": "ZOFt3muucEaiG7K0"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'j8vmEasPZb3dwb0v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'jJvreUDa61goppbi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'HSGuekY6jL2FCm8u' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tRANmAO0UNvFN9Ov", "groupMaxMember": 74, "name": "8tkyDlQRidcY1u2Y"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '3Yg8RM99OA5d6qxg' \
    --configurationCode 'ejCVKby2UQBx35yt' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "iZih8ZmpUwQsQ6en", "ruleCriteria": "EQUAL", "ruleValue": 0.0915146425622213}, {"ruleAttribute": "BpFwvcVMYtC6kTI2", "ruleCriteria": "EQUAL", "ruleValue": 0.6852462417165107}, {"ruleAttribute": "kjKJDporD8ykdeKY", "ruleCriteria": "EQUAL", "ruleValue": 0.6488523549254696}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'EZ1dZfu6jTLTrBgH' \
    --configurationCode 'UaUpPhRf7yfZUdDs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 's2W692LlY29hBG37' \
    --groupName 'OSfMoxsNmeKWLJTY' \
    --groupRegion 'ATBYonOSCzvoo7DZ' \
    --limit '84' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'GScqoVLiYWnEnaE4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '52YSyONn163rYWKG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'HWIUW0V75nD5o2OJ' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '7' \
    --order '4wfFqhuxAn5kuj9S' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ki0JU87lhd5gDKS1", "memberRolePermissions": [{"action": 42, "resourceName": "jtg6JuosI5RG1DPk"}, {"action": 91, "resourceName": "WVuiHIiUPhju7TnL"}, {"action": 65, "resourceName": "qOOFUJiLVSsFxSD8"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '2iRHS2ypLIJ2Llfx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'nTlKJpU0ObVVWOXb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'w4HKwgOw1BTEDiEa' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "hahZFYpBOXqj3Sjd"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Al6cf9ucodvs3AW4' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 87, "resourceName": "vvwlN6iK11jUqhPx"}, {"action": 45, "resourceName": "MSJZFtJ2YeQ0EgYT"}, {"action": 50, "resourceName": "RksQP0WL6JWyTJYZ"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'krb2QFBA8NA9Pk3z' \
    --groupRegion 'uVTvxaTuo2qdVKUR' \
    --limit '36' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "DfmrSYBWE3gCQUwV", "customAttributes": {"EXyn2eW2jDjcV5DJ": {}, "qu7tkR9q8GNXD2w5": {}, "dJQbhiLyPR7It6qZ": {}}, "groupDescription": "oGtQy19tqhxAUhKB", "groupIcon": "YHX6O0ZOU8pMXkjm", "groupMaxMember": 65, "groupName": "CCuGuM3cQ7TEvLfk", "groupRegion": "ihpnxNBhblqAWLp0", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Nq0U5gXcefdInNZX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7261225458134117}, {"ruleAttribute": "cv5i7v7Ss1v3e3Zj", "ruleCriteria": "EQUAL", "ruleValue": 0.3674091953771378}, {"ruleAttribute": "nMEb44y6SZvWCOpz", "ruleCriteria": "MINIMUM", "ruleValue": 0.8510458759846604}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "XuUMEhgZiD52t7U8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7724142220770801}, {"ruleAttribute": "n4FCba0q14zNPDWJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.2049629710560006}, {"ruleAttribute": "V9ePiWFEuRG4fDgQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.3534147357974623}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "KBYnup6EsnU1eZXX", "ruleCriteria": "MINIMUM", "ruleValue": 0.10336638055377478}, {"ruleAttribute": "hRFZK0aVnn4Q5ayj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8891786537954555}, {"ruleAttribute": "tkgM0xrdv7KviVNN", "ruleCriteria": "MINIMUM", "ruleValue": 0.691739608919485}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'l35E6WX6psRpGwbr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '3AzlJvfHzjTuYIvA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "D9Gttzh3NPNPPCDv", "groupIcon": "6js4yyavRG9LuR6M", "groupName": "jsfAAgR285x2Uv6i", "groupRegion": "IRgabDRjVMfOWqxP", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '9WbUaBBxz25QvAsi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'KiQCDTt5qaDkszDR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "oIqviRvlOjoyhuDS", "groupIcon": "iJKafXdrKbhWY4z1", "groupName": "XBaWFrjwM7PBn2d8", "groupRegion": "94oFTgOaBqlZcHo0", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'kWoiFFpbj1P2nChH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"CPJCQXzhK5U1RUzm": {}, "DboWR2FZlfFl5MyV": {}, "GjXwL8EkMxyhaClH": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'aT3I08cu8bBlezjQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'iOfXhjjyduiSBwi9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'qSdAx4oWKcQoQ0Zg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'MozYzqR8KH9oyXKq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '2g5Ah8JqJT5FWN0g' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'E0XNd0NYWgDiNRO6' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '48' \
    --order 'wZZ8AAnZgKfm95Qt' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'zcpnHsPQAkCqjOuA' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"b0CN01p1nI8me0W3": {}, "T99KxVafIOCt5EJn": {}, "EGkcOC8zdKzSum3n": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '6oIJCsc4xNM1ANbM' \
    --groupId '8UN0unzDlmjf1Dbk' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "yxKkRnQ4cm6F6aGb", "ruleCriteria": "EQUAL", "ruleValue": 0.9582380009709086}, {"ruleAttribute": "XXautXFM93j75CDV", "ruleCriteria": "EQUAL", "ruleValue": 0.7317100927833375}, {"ruleAttribute": "fHuX0OrA1rkepKO7", "ruleCriteria": "EQUAL", "ruleValue": 0.13817025587544196}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'jRBWQ6eLezVYxJxO' \
    --groupId 'dZvj29NDoJIWCX9k' \
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
    --limit '74' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Fvga0jtoX2h6X9vE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "0lbwS7hUIJwYc00z"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'geH90e0rtOHk8bIR' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "aJw4WfKpuZbU5qB8"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0KoDoR3Qqd2j5YkP' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Kd3ikiiM75oi2Cp2' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yD1wtyffzezTZEuB' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '90XLvzhi07SgzU93' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eymPWBoaMauYy31L' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["NjpjzMNkT7cpJVps", "hn8N8WUefWc6d3ec", "eI34Dj2EhkBIe3JL"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'rELOgjjQHhdeJMhw' \
    --limit '28' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'eWbq7YYu7fpj9R7o' \
    --namespace $AB_NAMESPACE \
    --userId 'ATbuTC4lFW07F00g' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZGOd9s0r6kX6U2EN", "customAttributes": {"tcADo1TxBBMlXI7u": {}, "GYAGHCV7IzaeYtXl": {}, "jgI9BsoFPOaUgNss": {}}, "groupDescription": "eq4XEhfguACNqVfW", "groupIcon": "dPGlwriRVbjWC6Lr", "groupMaxMember": 87, "groupName": "C6TUevpeujh09fYJ", "groupRegion": "1wbBVeOmLKl5dEtS", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "iVhu9UO3zADZyQvj", "ruleCriteria": "MINIMUM", "ruleValue": 0.5587123968452186}, {"ruleAttribute": "XJDgF6REF9wryYbO", "ruleCriteria": "MINIMUM", "ruleValue": 0.932724263437476}, {"ruleAttribute": "zghQOZD8D8TJaBfk", "ruleCriteria": "EQUAL", "ruleValue": 0.7800202209250097}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "s4iLX1CMIQLkSRcT", "ruleCriteria": "MINIMUM", "ruleValue": 0.5724637995078397}, {"ruleAttribute": "Ya4F2znanMhcC9SS", "ruleCriteria": "EQUAL", "ruleValue": 0.8469365153522133}, {"ruleAttribute": "SLfB5ZHpucKQTvIT", "ruleCriteria": "EQUAL", "ruleValue": 0.9220822900889242}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ph1UQYjRUjKOh0fF", "ruleCriteria": "EQUAL", "ruleValue": 0.012629728127756978}, {"ruleAttribute": "itDL14hH7YtqP6nz", "ruleCriteria": "MINIMUM", "ruleValue": 0.5425226663651407}, {"ruleAttribute": "LQGgY7rh7j11N3N0", "ruleCriteria": "EQUAL", "ruleValue": 0.5748733302007162}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["U97r3oxun7RDGlLg", "qfh96OzEbA9DKrVX", "Tfj6Gc52PjGFX4Ya"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'ccJCZ949ilMOA6at' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "r3fkshAqYIpImzP9", "groupIcon": "HFbh6Ui9IdFtgIRv", "groupName": "Ut5moeLuRRwgqYT1", "groupRegion": "MB8Y4liCIXjnZ97O", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'DIknFIh8gEDbsJ2k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'SF6YRFU8Ue6OXi2g' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "HZD5FMQtisb12rmA", "groupIcon": "XjdTxckWKfruDw5L", "groupName": "cCCPsTfEU4fqtZWI", "groupRegion": "eVGEPbeUZTR2fSeF", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'zYcdLOCfBsG4kSUs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2PgfxL76ZNpOSqTo": {}, "7s4tOETjq5wxGvmN": {}, "Aj7ipWvp8jh8n9xJ": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'CvGc0k8bxcXXckUI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'lRljADahqVnyINXe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'HppU75UzQX5Qt0md' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'Kd77MT1iqvIuQdS7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'I6HYtxqaKBUqf1RP' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'JK10UWG4mKYVkUBT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'sd6VqZXBTcuH8LJx' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"XO1WTWiJeMrCfl6K": {}, "alXjbTAm2TxawNZL": {}, "hWXfEh43UydEvCwa": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'DYFWwL7VfdNXxgcr' \
    --groupId 'FKCCPzBjDcoVcJjz' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WNYPsoqmblIVwNaX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8344456859019421}, {"ruleAttribute": "1it16NXTnhiSbiDk", "ruleCriteria": "MINIMUM", "ruleValue": 0.6381225572849446}, {"ruleAttribute": "Qu7SV2gZfSS4vlIO", "ruleCriteria": "EQUAL", "ruleValue": 0.6050527375464785}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'tydZxblttH1hQIFa' \
    --groupId '9aTRGi4XRB3TeIMc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '47ckolhPTrjN7TWa' \
    --memberRoleId 'tVBwnnPEHmzIOZA2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "9fDO1qZFKruLxChj"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'OL6gizXbuulLN1KF' \
    --memberRoleId 'GpvY6vGDysk7UY7m' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "d0seOMki6yoCY9BQ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Jk53sN3Y851ra5K2' \
    --namespace $AB_NAMESPACE \
    --userId 'G8aVmhUGTV2oZqKl' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'clPxMb3LZ5LfzGot' \
    --namespace $AB_NAMESPACE \
    --userId '8cr2AXY3Nvu7JnlI' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'kGKsDxe2YDB4WSul' \
    --namespace $AB_NAMESPACE \
    --userId 'C3WAJFZElEtXlnWy' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'T4CubvZ5EQeUm4F8' \
    --namespace $AB_NAMESPACE \
    --userId '1JGBTehOG9fTASuz' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'lQYBbNGaEa9417kA' \
    --namespace $AB_NAMESPACE \
    --userId 'yNguEvq7Yt2oYW3t' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '2EqApg21dLiXVPIh' \
    --namespace $AB_NAMESPACE \
    --userId '3mmS5xsY3kvBJh5B' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE