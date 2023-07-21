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
    --limit '34' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "cbWJOySChraDxIbG", "description": "OqS2SSRe1SHa4LRC", "globalRules": [{"allowedAction": "JWpabr1lIhPoCA1h", "ruleDetail": [{"ruleAttribute": "zp5GOOz2GNAbLj8L", "ruleCriteria": "EQUAL", "ruleValue": 0.061924943763048024}, {"ruleAttribute": "tEXJb17MERGAcCPh", "ruleCriteria": "MINIMUM", "ruleValue": 0.4455235549932327}, {"ruleAttribute": "bDKZOJBorSensXu6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5157906416447392}]}, {"allowedAction": "v8dnLVsu6aPYlUlE", "ruleDetail": [{"ruleAttribute": "WySX3X26wVKsqPth", "ruleCriteria": "MINIMUM", "ruleValue": 0.2698234553571973}, {"ruleAttribute": "StqfcOOY2KIEsNaA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18499491160867476}, {"ruleAttribute": "rbxqQodHKDRfd33Z", "ruleCriteria": "EQUAL", "ruleValue": 0.0489236003073269}]}, {"allowedAction": "Q7fnIbNycRu4lFu9", "ruleDetail": [{"ruleAttribute": "ZHVRidMeRdgQj2wm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.31167051113717015}, {"ruleAttribute": "ZBu0HLSmRvnYUWpb", "ruleCriteria": "EQUAL", "ruleValue": 0.8229215865813009}, {"ruleAttribute": "ZWBP1HHPOQ21JIMj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5051921596891259}]}], "groupAdminRoleId": "u9mYVRyXUXvaWKND", "groupMaxMember": 39, "groupMemberRoleId": "Bx95pyAeBt2jvuld", "name": "F7PCsRSPkU42ADRO"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'TdF7qCY2VfM9GumG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'CZBkmlbTx9xMeZ3B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'DEz1ux0KDN69Ys14' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3uRDaGb7PjyXYJDD", "groupMaxMember": 97, "name": "T3UL5B7VJv16c3Hs"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'NdYvZJ4sZFrexWIl' \
    --configurationCode '4jFsti8m4BQmuLl2' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "7MDs4E6WE0P00Cu7", "ruleCriteria": "EQUAL", "ruleValue": 0.644078668009339}, {"ruleAttribute": "bnb7XdfhGxCYBEzk", "ruleCriteria": "EQUAL", "ruleValue": 0.6315776997321746}, {"ruleAttribute": "FJjL6cN4UBbiwpqi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13510795314907387}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'MnroX0qlLPyKw8eO' \
    --configurationCode 'VA2TKHnEBpFNvcya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '0QSpi2Cj2ySUK1jC' \
    --groupName 'UXB4uOrZ95sQ4Q57' \
    --groupRegion 'iqwaR8f1k5m3G0Kn' \
    --limit '52' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'VgXBJItNBsVCV1JJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'QX6CQnnIg5FFlz8p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '5aKwQZw6xyuUVaXC' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '38' \
    --order 'xu39cXRXP6Vl7O4H' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "8gOFVZZDI8zIWl9k", "memberRolePermissions": [{"action": 92, "resourceName": "dq3ft7Y2wmN5p6hi"}, {"action": 45, "resourceName": "2zmD1uQipYFPyCO9"}, {"action": 99, "resourceName": "fhV03mXTZMZoRQol"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'GzBQzilCNhCN3qkU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'BEDpDWool2ErDGu5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'y3Gi9OZSjILB1gvO' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "UsOhlp6ZUZAHkZ46"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'v3VkYfgp38YjBH65' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 12, "resourceName": "2qLr0qomkuUz9btd"}, {"action": 33, "resourceName": "LBjQCTHRx4ZXsLsv"}, {"action": 74, "resourceName": "otZgjVNBjNXoo6LI"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'ZWso3Yr9Et2p9llw' \
    --groupRegion 'lv1y7Hyh8LkLmhUb' \
    --limit '24' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "omwjPx5g5Rtm4owD", "customAttributes": {"G6CScXvKxQEU74hR": {}, "TDNzrVzmdQHYDXEk": {}, "e8baM8K2EI2Q4aqx": {}}, "groupDescription": "osoC6zmPCjqwRzSC", "groupIcon": "A6xYZq2Iv8Bk79E3", "groupMaxMember": 65, "groupName": "8EB2Pxf48IuseyCQ", "groupRegion": "Lxj9CqZcwATB3286", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "M9XIGHCRnkRNtQXb", "ruleDetail": [{"ruleAttribute": "v2pP90mmcngSnE4V", "ruleCriteria": "EQUAL", "ruleValue": 0.8005681465729803}, {"ruleAttribute": "2gHUPZLBngpEIXBW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3620040813221008}, {"ruleAttribute": "xw8Rx9QtoiP2pPuH", "ruleCriteria": "EQUAL", "ruleValue": 0.2935946239606294}]}, {"allowedAction": "6PNdBKCU7KumoD21", "ruleDetail": [{"ruleAttribute": "H48opH6WxZkphPLC", "ruleCriteria": "EQUAL", "ruleValue": 0.8950806029082299}, {"ruleAttribute": "CWdiyoqEKdiwgDcI", "ruleCriteria": "MINIMUM", "ruleValue": 0.7940673115579499}, {"ruleAttribute": "0hw3HL63Q5jdwMEl", "ruleCriteria": "EQUAL", "ruleValue": 0.5518600272061762}]}, {"allowedAction": "iFCSHQmlTB0ksgFK", "ruleDetail": [{"ruleAttribute": "rF0mn4SJXffvZXh6", "ruleCriteria": "MINIMUM", "ruleValue": 0.9421033369388762}, {"ruleAttribute": "lH3yIo2y2QApSQGz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9842379028699655}, {"ruleAttribute": "i0uAaa4H4P06vBW6", "ruleCriteria": "MINIMUM", "ruleValue": 0.2843032052584613}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'izQH2S8Zs9kQQdyN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'ojXb7mwahb6BODwG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "nBJFvZJUBcTOEhM2", "groupIcon": "w9qw3X4AEPqwZ2Fk", "groupName": "LhfDECyDbKRU3Fbv", "groupRegion": "XK37jG7crS6aMFtQ", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'h2clhM499QX59UxU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'C7RKNtbaBesD2KpV' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DFwJ0Zj24X6CCnHM", "groupIcon": "bAL5bbZ4iByCC0nT", "groupName": "TvEO84yxe50lmCHZ", "groupRegion": "zleYufVDpa6pUQ7A", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'scoKpzHOtYkmG7j1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"cQgEEndCWAsbH0TK": {}, "Qdu5d95Q9yAibLzR": {}, "bvvx7BQXkAbLLwlq": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'uBNbzyXhOtBJ66wV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '19hd2RkjvCnO3euh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'kgTDHC38YFIz9fwT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'YHUAHVOLdRcUeQov' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'fZgeJIEZQAZUfWme' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'zIIk0jQ7jIkRN4Nw' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '52' \
    --order 'DFHZwYolhBlQz6mI' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '7jfPXbK232th5802' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"HFhPsCHPauEmWkeg": {}, "tkJSfdHYisrNb6xB": {}, "ynVMxXeYJq7JcuGq": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'soRocTNc4HMTOexB' \
    --groupId 'zh1KvYgwMncTLtYo' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "p2jh2cG1fD7cAWLZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8129808827848406}, {"ruleAttribute": "DWIUBzshhOOcca6W", "ruleCriteria": "EQUAL", "ruleValue": 0.13486375859952704}, {"ruleAttribute": "TQpqp2M9YQNyZxve", "ruleCriteria": "MINIMUM", "ruleValue": 0.943714774837592}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'fQ4oI85ISLu0lTju' \
    --groupId 'sJIwr6rzLRFuPi5g' \
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
    --limit '67' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'DW4VFa9OCCBxli8I' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ET5sMUodB77EgTQ4"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'v4U6cAGvl7ff7DWN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "De2nNKUYsNHcIJLu"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tOXDYprxqVAfEYKg' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'N3REoC90TLAJ7nC4' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'G3icLyFfJXAfFpJk' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ou2JtQRKxSlEnInJ' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eA1EH7f2WJDILM4a' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["m4bkeT44jKUdT6a2", "sSqPDmEezQwyjGVE", "1zZOOt6OKkyZjbfj"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZkYK5YmGVyEIpU3S' \
    --limit '24' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'n9l28g6mPKwoytbp' \
    --namespace $AB_NAMESPACE \
    --userId 'MCEX77XBhsw0E5Ez' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "01ktXUZ8BKHFaAPr", "customAttributes": {"kLsohIsZuCgoMr72": {}, "fvhMRiY1OMAWJ1le": {}, "YijlLDxABfbAp5U4": {}}, "groupDescription": "xq0drguEGuCdEQ85", "groupIcon": "1dC4wBJQi9nTbNSv", "groupMaxMember": 42, "groupName": "mtGXH1ImuELQcL6Y", "groupRegion": "yyYnVBbgcKEW2ep4", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Ezt8n1rCiVfUNhHP", "ruleDetail": [{"ruleAttribute": "kvuRxL3IvaYRLTnO", "ruleCriteria": "MINIMUM", "ruleValue": 0.11221054998127555}, {"ruleAttribute": "wqgC1frJt300gUWb", "ruleCriteria": "MINIMUM", "ruleValue": 0.6636046964778483}, {"ruleAttribute": "Fm5fKy79dxRTtLvC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3030337920838694}]}, {"allowedAction": "FGjVShEwL45l4tsK", "ruleDetail": [{"ruleAttribute": "EqlPC2XiID7Qqj28", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7276744066754075}, {"ruleAttribute": "YYPFgQoUypGBHUoM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7180684532440811}, {"ruleAttribute": "BS8KThwCWy6jdK3V", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14137383638497725}]}, {"allowedAction": "xC8zg2DkW9Fk8a0P", "ruleDetail": [{"ruleAttribute": "iePO1RGm2ZbiuYxF", "ruleCriteria": "EQUAL", "ruleValue": 0.006121586618997088}, {"ruleAttribute": "RDNN238lATmPobBu", "ruleCriteria": "MINIMUM", "ruleValue": 0.4011969307554163}, {"ruleAttribute": "U30M0APiKPy5AtfP", "ruleCriteria": "EQUAL", "ruleValue": 0.9595173535944322}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["XOykRjnC9x9IJ64Q", "8HsVsyHBq03vwCjR", "ayhkwmEdTAOrVIIS"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'UBooK5XIoxB53mom' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mLHYy0FH4xXuHMlC", "groupIcon": "QZDxVgXbwQ6Vv0s5", "groupName": "RD9bdUu3BpkS7hwH", "groupRegion": "IpjWAGLAClI3fI1k", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'RWrGcPgsT5uTm37S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '2F5jgRLPTZzGxLWU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "iTOAcKjIm7ap7QEL", "groupIcon": "7yvH9l4vuISbdfnZ", "groupName": "66KgyRYoAMjImZit", "groupRegion": "zyOhFu4SUSarlpt9", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'efDFU117ey8HcEQL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RJmiuMi7wHxxugO3": {}, "ZPKsVQgYOd8bx9SC": {}, "UL1yEF4VJjkdYGVW": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'pdSbTRHRsZUpCSKT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'yRq1FMVg5Z2ll7Xj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'I5cDYIWRY2j75j7E' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'JrJQp6XmFCkGMo93' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'SFzFgGV31j7qQXIZ' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'JYnB0NrQcLt08V0I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'l4QtlNVLR14jbGrJ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"87PALUZGo9UZdH5d": {}, "0xD6ktXe8y8JS0Na": {}, "CNT2R6M9N7qMNJoR": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'F0eFmPN5qXHhaeJW' \
    --groupId 'MJ7gOVLAhLYSi2GQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "AOJ83UcJQdY8mWi0", "ruleCriteria": "MINIMUM", "ruleValue": 0.06055485126343074}, {"ruleAttribute": "K6z0hmiW0ZRTeFgF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5517064477725047}, {"ruleAttribute": "O05IpQzUJiWE9NAG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35923327128089344}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '4giMfMmiB28zY749' \
    --groupId 'HaXVC1IsWXKESHB0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '543PYzMcAWMYvVHO' \
    --memberRoleId '74MAxmQarzxNu0F8' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "vAUO7shTgTM4cIi7"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'nEhoAAHKybeDOZiA' \
    --memberRoleId 'fc0sDz4Tn06qU0hs' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "IEoFCb3zNfu3gzzC"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '5GV2GFdhof8HVQaR' \
    --namespace $AB_NAMESPACE \
    --userId 'ZNcXtPRcpzTHkQtK' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '53D79gsUzUk2Gi4w' \
    --namespace $AB_NAMESPACE \
    --userId 'pd0YbgCCKbHdigSf' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'rDIai4K9iREycBkT' \
    --namespace $AB_NAMESPACE \
    --userId 'PET78BpRt4jDMftZ' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'O9TIMqnThoxuyfjK' \
    --namespace $AB_NAMESPACE \
    --userId 'lg38WGDoNq38grpo' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'VNnxwFMr1IP5penV' \
    --namespace $AB_NAMESPACE \
    --userId 'cbi6dIPkXRCRl6XY' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'KE7uH9gJMMdYKm3N' \
    --namespace $AB_NAMESPACE \
    --userId 'r0tNnnb2lVtswZFX' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE