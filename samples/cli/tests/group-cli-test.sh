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
    --limit '13' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "xJTQ6rcR6fXqhnhJ", "description": "cIMuIRloieBlGjmR", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "pdDezgPE364DmHDM", "ruleCriteria": "EQUAL", "ruleValue": 0.5936694816398544}, {"ruleAttribute": "2GWaeEQPnQxyIbKX", "ruleCriteria": "MINIMUM", "ruleValue": 0.23440884931193218}, {"ruleAttribute": "zB51ml3mjrRJYJr6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20504916483310887}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "k8mSFFpwXszT9OeV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09458532805382591}, {"ruleAttribute": "GxIJAlDNLqTup1yR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5411109180173377}, {"ruleAttribute": "njIdSgu0ENKoRHKA", "ruleCriteria": "MINIMUM", "ruleValue": 0.9131739845006726}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "LDowYeuiM76OzbYX", "ruleCriteria": "EQUAL", "ruleValue": 0.5655594562816205}, {"ruleAttribute": "8jhgCbRdm84BkhtD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6769897082372088}, {"ruleAttribute": "UYp66IEwJEq9mv9s", "ruleCriteria": "MINIMUM", "ruleValue": 0.5253824521505226}]}], "groupAdminRoleId": "oTQB6tjlTDEl4w6Q", "groupMaxMember": 61, "groupMemberRoleId": "3elCOFXjWwCwpLmO", "name": "MNJlZACgz0GcwIQu"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'CGjswXrSEYY9PvN6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '7oPwoAllMpmTUwkm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'NOHZvcczDkbZQ270' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WC006I0nJ4WmXiey", "groupMaxMember": 9, "name": "7Qju1A1j7FIjgeVF"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '4JtPMrjccIHpe8vn' \
    --configurationCode 'WSxJPzZ57h1kdPia' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "8bPGPlQBMxogwRiW", "ruleCriteria": "MINIMUM", "ruleValue": 0.5698992922403067}, {"ruleAttribute": "7C1ZirIUkFossYOI", "ruleCriteria": "EQUAL", "ruleValue": 0.9003965858872254}, {"ruleAttribute": "dzcij3didnHLovvj", "ruleCriteria": "MINIMUM", "ruleValue": 0.44455618719270595}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'lXDrdlExyuupdW8k' \
    --configurationCode 'OraPtQEsQeOMmleh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ngzIXHTa63IW5w7h' \
    --groupName 'hvkMMy4LAhBRvk6U' \
    --groupRegion 'Jzpx9yg3vYimVxyK' \
    --limit '29' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'DmlYXEmyhq3eKwSQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'nOZsyfDM2ZvZ4nK1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'OK8RZpYA2YK0UcWh' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '18' \
    --order 'VvBdezWTJZ7RkWhh' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "gaLuZyMxX2H9rE1g", "memberRolePermissions": [{"action": 0, "resourceName": "5X60AYAOYW0BWzh6"}, {"action": 39, "resourceName": "E8cbL3kKlCinWFLx"}, {"action": 28, "resourceName": "9LiTQT8ESLFhtECR"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '0hzMN3B2pmYcHQdq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'GQV0HYquZQFx9X5v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'oEaffurqdfvQXBro' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "KuwpRLOwKA7uLcFF"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'byTTtwGmGe717TZY' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 62, "resourceName": "pdha6WBXwflajki2"}, {"action": 45, "resourceName": "4KwowPXIT1fQ75oE"}, {"action": 83, "resourceName": "vvFkEoMQo8FsoJ1V"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'xabhYnbKC7KB3NXl' \
    --groupRegion 'Y2q16tPhCcLx3D0h' \
    --limit '84' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Ma09TiuDGpRaA8er", "customAttributes": {"OpZkaAT7BcDBjTTS": {}, "INBomG2RF5CK7s8r": {}, "UYkUxoGnM48jNQRN": {}}, "groupDescription": "LQ4PibBojYMk4okB", "groupIcon": "pB9uwKAeeBP1IAkH", "groupMaxMember": 23, "groupName": "0kRHxmg1Azqg5X0d", "groupRegion": "nXgzbrM1tc5tRgeG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "W1WCVc6fnk5GNgyD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3204214110818069}, {"ruleAttribute": "1Jb0Pdw8tnuiSwW1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6839134998519427}, {"ruleAttribute": "vFXUtK2gRI2p3fDh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1804829695730058}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Swkt3AQ9Vend3YfO", "ruleCriteria": "MINIMUM", "ruleValue": 0.6890879258557968}, {"ruleAttribute": "o7ssVYNf8om9ISOv", "ruleCriteria": "EQUAL", "ruleValue": 0.39781757444562416}, {"ruleAttribute": "W6kQsKLcMS7Qz7kM", "ruleCriteria": "MINIMUM", "ruleValue": 0.6288011067882544}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "SAQqZp5fLlSSC22I", "ruleCriteria": "EQUAL", "ruleValue": 0.02467482162091994}, {"ruleAttribute": "4OzqYMuixGsEM4Sk", "ruleCriteria": "MINIMUM", "ruleValue": 0.24978455751220285}, {"ruleAttribute": "zxh4QrwZ4xUDiOw3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10551711444927403}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'FP0bjpLQEZh1hcLK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'kmDvXG3ftBleuAVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BndqkzvLOlzjUsfd", "groupIcon": "aLmFm8tbpZCWHESB", "groupName": "hBPAuqXbfUYk3Ykg", "groupRegion": "yACvKGnJ0FdKbXhE", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'DIK8E3FbJwyKEntm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'uiRxipyj7mgyoxOm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BSJy0IxJfPKv2B6Z", "groupIcon": "7O5jCypzpaQ2ReVC", "groupName": "AEyTyMYwKALSf4SU", "groupRegion": "2EU5qGq3dcLz5tDS", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'cMrrmAOArgLKMZpz' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"0YYJqbimHaplWsDp": {}, "mojHzz79HGCf52p1": {}, "iSykq3SQGdpvDCqD": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'TkAdvFyOmnzM1Ota' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'HOe6iaFxrN5BWmeZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'RifVpHYMp1UEaXfV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'MUYme1jycXC6ASja' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'vaNwCsJaajT3jQpU' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '8zB5kXUeRcus8LaI' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '51' \
    --order 'PqmFsXk9jqXE5rJD' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'f5B2YKRzwYE8HBXf' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"01C5ZYN8ok7evTfi": {}, "T0s3jxpUQR6VJbND": {}, "5QpqryO49c1sHagp": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'RoGDBdQWdCQ7Ilcn' \
    --groupId 'UohDij7mtvwcLOTk' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Iqx4z9zERJYGZlOK", "ruleCriteria": "EQUAL", "ruleValue": 0.47405293220159994}, {"ruleAttribute": "mJFGk4NXg8D87zH7", "ruleCriteria": "EQUAL", "ruleValue": 0.41219818283761034}, {"ruleAttribute": "TWw52HsyZftRxjr2", "ruleCriteria": "MINIMUM", "ruleValue": 0.47542382150153095}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '0jxqX8zh8LlvbLNq' \
    --groupId 'dvVz63Tz2fZ6BxTB' \
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
    --limit '72' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'pVux3p2qMwgRaTcs' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WRwkUe1Pafxzbywt"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'khzkS5mq1c4qPcCj' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "e9ifuI5TrDA2DZMp"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SKikvvN814SWKdII' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IQhwTYAKNzFqb11x' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '32bUUncZpwkFXQtV' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sRh4psUApsauN5K6' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6XlnHGv0h3urTP0N' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["NSOEdknrqtts1BXP", "2CMyl1QhSewKTR6W", "hbMdZeMcQ6Rpzo5r"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'lO4kuHdKDJ5DNNBv' \
    --limit '81' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'QlyLeTHWO1agLdbq' \
    --namespace $AB_NAMESPACE \
    --userId 'kQvAFmlIiHdACoqO' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "3NALuLVFhXjR0aK8", "customAttributes": {"lZv0z5soi3WPZ9fB": {}, "WwEO2FQj3LfswSJu": {}, "RgPAqEpqYev9QRIh": {}}, "groupDescription": "8rq6ikCmQ511BGky", "groupIcon": "2X8yXIvFKVI949l0", "groupMaxMember": 41, "groupName": "k1J6Su0q1ojMhEVQ", "groupRegion": "pEPvqPynkZcQaoVp", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "erE2Nh5Z3iHw90NW", "ruleCriteria": "MINIMUM", "ruleValue": 0.3704328761562039}, {"ruleAttribute": "O0XFoTXoIwO4qf4O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42062003643328305}, {"ruleAttribute": "D5L8rU3n91vwfxVE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04635003796899895}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "pc99HdCmv5jxSCNf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.15174725062930527}, {"ruleAttribute": "FWKx0xpuINtsgoUG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7807701212394067}, {"ruleAttribute": "OmCEaGU0RPlYuIu8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8481948161829268}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "zo0gI4UyYI6LcbsA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3417001887517901}, {"ruleAttribute": "0hVjd33Nnh2ZdetZ", "ruleCriteria": "EQUAL", "ruleValue": 0.853298770894002}, {"ruleAttribute": "vezKP3tOtBlknBZ7", "ruleCriteria": "EQUAL", "ruleValue": 0.34254193367231633}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["8JSbKjJFl335S13Q", "6YtLeKLPsbdfld9c", "cJ3BLav7miNxh5hM"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'UCjtcnG88es7fSI1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "l5jbGhqFw0RkRckP", "groupIcon": "iJSbfuONevjVjeHo", "groupName": "6iQNUYJ3qnTTMyC4", "groupRegion": "sQ1ZRrkfRilahzH9", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'D0rRJsjZZQBhKa2I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'CSS2gWjYdEUtJ4ll' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "pL4JZGbUcaxxs4O3", "groupIcon": "0Zx8owuQzhKonOZ7", "groupName": "K9cDpFi4TDwofle2", "groupRegion": "HOjEZvcDRjOxLNpU", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'S0LFLT6gWKD0raEb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"UbBKDOMbTxhbiZzN": {}, "WkTrJyx0fKXJRU58": {}, "cFvaUiyRwb5Exk2g": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '8UH2qfzGb738Y1D7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'tRSw2Gm0iBGWNdtn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'n3ph58v2LiWztR7Q' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'PgYhkO22fSYuSVyU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'JUAszTaIgKUepBOT' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'jMZNY42aZjERkk2o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'rXJQLRKefBnkIYS2' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"eEtbMgUEYIWhqpHC": {}, "6YzBQ5NM37tXuwO1": {}, "gJej1jJAQHWPjNUV": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'e4WHME90SzPat3YW' \
    --groupId 'vOGsSrHiAte6tuOc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "qHKzqRA7ab8BMvU7", "ruleCriteria": "EQUAL", "ruleValue": 0.5137124215577145}, {"ruleAttribute": "e48cvtDhrCxkV0f9", "ruleCriteria": "MINIMUM", "ruleValue": 0.17302234870557864}, {"ruleAttribute": "2GIWAx2gMSW1VQdY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3381853658849542}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Eut68FDpkhg6Yxi9' \
    --groupId 'QobEnTzxDzOOSFBS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'sr1ppzypVgenwF7f' \
    --memberRoleId 'ov5VRLxNPKXZ7gAN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "qZ5p0cvIYgbknCe0"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'qUd7nHxrmVcfLR48' \
    --memberRoleId 'sgE2JaSvYy62vcma' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "PjDj3qG1JQ3M5b6Z"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'QnzxAtecaDmEI69c' \
    --namespace $AB_NAMESPACE \
    --userId 'f9JnJNm684I1yP35' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'tY2DPyg55QKMa5PB' \
    --namespace $AB_NAMESPACE \
    --userId 'b2kR2J1xg0HfZBZc' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'QPyutwUH4QkwjoJT' \
    --namespace $AB_NAMESPACE \
    --userId '852d5QItMVr9oenL' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'R62pSutH8BcMmw2O' \
    --namespace $AB_NAMESPACE \
    --userId 'IOel5jRVRf7PMWNe' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'PuiIyD3vu0qeAB6v' \
    --namespace $AB_NAMESPACE \
    --userId 'vBZ8CeMKHAmzitQS' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'CjJV7p0I8GD9PAJm' \
    --namespace $AB_NAMESPACE \
    --userId 'ARAVpbVuBPeBw8Hq' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE