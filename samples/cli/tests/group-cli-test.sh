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
    --limit '53' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "wsDCbXGBEk02drj3", "description": "QKbtK3EBIhOMGXRC", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "cPZ5JlnjxJj91KbH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2224943219112413}, {"ruleAttribute": "7S2XDTGmSRsweXfG", "ruleCriteria": "MINIMUM", "ruleValue": 0.36774544372880036}, {"ruleAttribute": "2RuAIMIzQsYj5rJN", "ruleCriteria": "EQUAL", "ruleValue": 0.8444982322768609}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "xTXul8gCT58ZDKNd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7252790026025714}, {"ruleAttribute": "15P3MZNMnFTj6ww4", "ruleCriteria": "EQUAL", "ruleValue": 0.09669410476925067}, {"ruleAttribute": "1ViGuUuyIRUqUJbV", "ruleCriteria": "EQUAL", "ruleValue": 0.8565470594801076}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "fJYGoKyzlUfmWIaM", "ruleCriteria": "EQUAL", "ruleValue": 0.567205849782227}, {"ruleAttribute": "xVnpF3Yt7fm7o8TW", "ruleCriteria": "EQUAL", "ruleValue": 0.5683352216622862}, {"ruleAttribute": "sIeQznbUAdtZ12HQ", "ruleCriteria": "EQUAL", "ruleValue": 0.3006052352885452}]}], "groupAdminRoleId": "oATZORzDYEVkF3L2", "groupMaxMember": 6, "groupMemberRoleId": "tdBZhDQvJFF332ey", "name": "NZDNK55DDbIi7WWF"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'M0on7xVqr2r2GWJ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'su4zVmrZO6c4I4c3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'GaSbIwURSpKnHIzz' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8iYhi4fidpF7nQav", "groupMaxMember": 37, "name": "W08raOTESu5WVYob"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '3VHgSmHH8qXRJfIv' \
    --configurationCode 'bOvinWQwxttZWkFQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WZu80euJW3RL4cT6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03973167575173986}, {"ruleAttribute": "xalM3Q9GD58DMw60", "ruleCriteria": "EQUAL", "ruleValue": 0.09304493666620006}, {"ruleAttribute": "LmvLCBGW2yAMIYHI", "ruleCriteria": "MINIMUM", "ruleValue": 0.7970925219464541}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'JoiVsVKrbPc4ngJi' \
    --configurationCode 'qoKTtQCq91cGxjsn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '8FPkcTikzf5fdWb1' \
    --groupName 'VZfKRBB1CKmz2Inx' \
    --groupRegion 'p4DhZnzv4e5pA6yX' \
    --limit '86' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'b0lFH8xMh0HwlcVl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'XTB45QMYWd22IIbz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '9VLR7TSn6fq3u8Uo' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '52' \
    --order 'wuhkaoNnqrRZdVPb' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Vj9kDEj3CKM7eYGA", "memberRolePermissions": [{"action": 24, "resourceName": "hMDhZAzXvGztCfzw"}, {"action": 64, "resourceName": "qqh9nyVBIwiP2aFs"}, {"action": 57, "resourceName": "nUdrmDhCwUtUY3En"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'Bg4Hyu57HMEiTlJW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 's6iejYn2JdGRgv75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'hHOJ93EqtOAfO43e' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "FPJiBN71b0tqHRtd"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'w9J9jwQyaf8Ehq8t' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 57, "resourceName": "Mqp8VivQz2tKJ59T"}, {"action": 63, "resourceName": "SFrXCxzEGconUNjO"}, {"action": 0, "resourceName": "B01TrLvXkouhDYbG"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '4QFKvVU1fWTIi0NN' \
    --groupRegion 'WLUV1DsCbWaPDY15' \
    --limit '42' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "cvpoynEyu8e939v2", "customAttributes": {"U6DwTlGCqniL6HY2": {}, "IEt8Nx850NinUeKD": {}, "I6gWZvAlAE7qNeba": {}}, "groupDescription": "hCYNyWlVTwDneplw", "groupIcon": "v29N2cFNxTR6KxHH", "groupMaxMember": 56, "groupName": "Pss5A56YzSgLIWmd", "groupRegion": "CQu9rxLymdwLttvV", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "7ZVNZRsc9xrFRgqH", "ruleCriteria": "EQUAL", "ruleValue": 0.877801910429265}, {"ruleAttribute": "jznjBly7BQn8ZV0j", "ruleCriteria": "MINIMUM", "ruleValue": 0.295505349621751}, {"ruleAttribute": "NWHSVYgETfYSctdn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1610574648271932}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "02Kr7OA0bC4423R8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18332459096633813}, {"ruleAttribute": "osXPP7cHvhzDAgyE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6797952533157279}, {"ruleAttribute": "C5JOIcXP0R0P54m1", "ruleCriteria": "MINIMUM", "ruleValue": 0.5081789582954905}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "mo7u8lSKzfNLTM4a", "ruleCriteria": "MINIMUM", "ruleValue": 0.7269221116862464}, {"ruleAttribute": "lP9HGXAqfWGpRfjW", "ruleCriteria": "MINIMUM", "ruleValue": 0.16639544205573453}, {"ruleAttribute": "wshXGg3BQRtqupUP", "ruleCriteria": "MINIMUM", "ruleValue": 0.8413716535064988}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'fhKzhDqJtSFTjMu4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '1m6jdJSILidvZHe5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "MV64DoTdCPats4Tw", "groupIcon": "oRjhXx7ciHILGZs6", "groupName": "hMEdjMmLNU7emTxz", "groupRegion": "9Z9t4vMycEomQjKA", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'zm4FUZ8PIJJHZzZ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'JkSs7bsiFzVo9Dd8' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "NvXoiIVH6xdUXaRh", "groupIcon": "XEvgqkRWrswVtcIv", "groupName": "PzyxUPygpx8tybuS", "groupRegion": "pG8ezcMHtmwVipVu", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'aTayJrcYi4LvuXqQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"jWDrFspddP1HXzrs": {}, "MMbNE9l21tSt5ZCu": {}, "5ioyTNzYoaztlLo2": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'RrWFQBMx3iI95Lj8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ND9AG7oX0843bc8z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'E0XtbwsWHdeqm0Hk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'h3DFWoIHx0cnaz2a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '61wFStlEzjkWRN8v' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'u5LmuGmFvAmFac8D' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '38' \
    --order 'wf2Skz7YTPy7bzCA' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'uerDAWo5RnrLPJbH' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"7D2FBJbiWAYordxt": {}, "DMIM7YKVtpDiCFKe": {}, "NnbCLWAPmtRRVFLY": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'CuApO21y2Xnkukfq' \
    --groupId 'LmucUbsFg20ZSeeP' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "7F4HMv0lR8HpkGo6", "ruleCriteria": "EQUAL", "ruleValue": 0.6726855383773223}, {"ruleAttribute": "8QhZzvXjpfno5IuC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8919444620420015}, {"ruleAttribute": "ppJHXmuJla4MlkQE", "ruleCriteria": "EQUAL", "ruleValue": 0.06509819205889222}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'xyoMcsWkWFOTP6Lg' \
    --groupId 'ngSB38ZLYsdNN7mK' \
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
    --limit '48' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Cgg1jLK7B33RUmrZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Ozr6ys9kx0wChLQD"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'zci6Ugws7YnAjpkE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "VvhI1Ggg7whXFabF"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BoaGagCxUHyNMXUg' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5H39hiNeMNzo6DnJ' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gUdNsjPkm0ZHMNF4' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ILNPHQqT6sj8L5G9' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mycQL3buoHC7o6Z5' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["18MkrzZIiLImzv0t", "jkhL6rhJhSQNK64a", "mnWuwOOkFdK4C9KC"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'XBykIVmLSZjSrci8' \
    --limit '2' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'hZ7FwqX0LPDkzkJe' \
    --namespace $AB_NAMESPACE \
    --userId '5RUBv0V2LfwAX1LD' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "zhBhGfqTHBTEUegY", "customAttributes": {"cStEmwot2nHZpFRx": {}, "BbHuuJ1rO1gh8UHR": {}, "SvlY7rBZyGPUL4An": {}}, "groupDescription": "1mxfcBRAlkwcED7K", "groupIcon": "tmyX1ScWHwxTv6eI", "groupMaxMember": 78, "groupName": "sfFwuAvb9dHk9elC", "groupRegion": "Vl3HmhLKMxIkwcrk", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "qw61JNxJjGwpKZfp", "ruleCriteria": "MINIMUM", "ruleValue": 0.5760877633275384}, {"ruleAttribute": "ygbNA4Wpbg7j4mBb", "ruleCriteria": "EQUAL", "ruleValue": 0.9129318933369908}, {"ruleAttribute": "oqVHVnse4G5H4VAN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7072481645836484}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "CNqtl6M2fOaN1hsQ", "ruleCriteria": "EQUAL", "ruleValue": 0.9685676781590855}, {"ruleAttribute": "zgI1NHesFS99piLD", "ruleCriteria": "MINIMUM", "ruleValue": 0.9102685342508073}, {"ruleAttribute": "pWefWt4M5nfp6J0H", "ruleCriteria": "EQUAL", "ruleValue": 0.12229367174882388}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "vFC37Fd60TNuG0Am", "ruleCriteria": "MINIMUM", "ruleValue": 0.7445453952231693}, {"ruleAttribute": "jmsL4vsCr5PdFcvP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13719226593817824}, {"ruleAttribute": "B0k7L6ox4FYiFfYq", "ruleCriteria": "MINIMUM", "ruleValue": 0.7143745322666591}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["I45vLokJxHG4KgYL", "8r4tlrNEnWiiln50", "aQ5Mmr5iwKQjLnXu"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'gpmdTvAihvpRc5BM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mMR0HXFElYo8vL3D", "groupIcon": "gcYs6j6pa2uFvjqA", "groupName": "beDrL7DUcKvjBb8v", "groupRegion": "1XRhuXhhn4dRfn3L", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'aT0zzKzjXFYAg3QH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Tp05htbVGC9stsCr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "8j08oW5G1uiLeoy8", "groupIcon": "DkQEi6k4wQUp3L3s", "groupName": "lhsrfsGsY9YawL0e", "groupRegion": "gB6g5QF5ZbvCmOJU", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'KrqSYuqjsKmiUZhL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RkFlXDQXp6P5esBR": {}, "HaW8P5Oe1d1OMxjM": {}, "r3QSioCODSuq62sP": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'mSnxuJ4vItIMLB5z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'JvJAxJfDCWStZaXu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'OcIhIhafdj0HrItw' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '8Z5A1AkE0tDSnebB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'wjBIcLKjuDPlXuVz' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'y7hri8S9XDz5iTf9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'mf8bhfP3ETKAfRoG' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"8gJRbYcnq4hlB4IM": {}, "rcgeErGyIV2nHXjk": {}, "7pl2d9UDDPr0uaVY": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'qyapJX80suQbuuwn' \
    --groupId 'u6CVqMP2yevQClrz' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "On4i2CIZgKZHKucQ", "ruleCriteria": "EQUAL", "ruleValue": 0.7939634174020929}, {"ruleAttribute": "rljIai67ySOShKyX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4983682385443633}, {"ruleAttribute": "YYcZijQT5ZDd2dfb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5214425480355034}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'MljKw28h7fH603eh' \
    --groupId 'gKCtkic0sR5gYY4O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '1TQr2HwoRwbAoDXd' \
    --memberRoleId 'HFITvBlPIgAYGYXk' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "gOg2WjlrfthTu7pf"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'MQcMTv5HK0COmbI4' \
    --memberRoleId '4KJ7q8wUE091EDp6' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "krl9AnQNTgyZJ2OW"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'BUU0DAMiHRa6F9wk' \
    --namespace $AB_NAMESPACE \
    --userId 'oz91f0JLkeJr9LTQ' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 're854YFuNCYMfbpY' \
    --namespace $AB_NAMESPACE \
    --userId 'xyYZfwKkZE4ey6LA' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '9qEEslZe7TyPfYc5' \
    --namespace $AB_NAMESPACE \
    --userId 'zciUv2V75oa6Hc7l' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'VGNSaTLvku3Amq3i' \
    --namespace $AB_NAMESPACE \
    --userId 'iqnrfLwMetWlcTVX' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '5SnhLeqsAHxdYXfF' \
    --namespace $AB_NAMESPACE \
    --userId 'vzE149UPNxIvtlv5' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'svH8tfIFuBhfQkxf' \
    --namespace $AB_NAMESPACE \
    --userId 'QT3f2Elg1CQazR4H' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE