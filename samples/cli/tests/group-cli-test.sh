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
    --limit '96' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "sKJkgzAzd74uHloI", "description": "eEgPBadtAdbZ3gqw", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "TM9wCBAECV4xd2M2", "ruleCriteria": "MINIMUM", "ruleValue": 0.17127252622227895}, {"ruleAttribute": "f8j4rmeMw3PbDNOu", "ruleCriteria": "EQUAL", "ruleValue": 0.6958643449999535}, {"ruleAttribute": "eSrmnx4fTY4oSM70", "ruleCriteria": "MINIMUM", "ruleValue": 0.2722950604062475}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "tixUMBm62PcNxEmE", "ruleCriteria": "EQUAL", "ruleValue": 0.8288008840025902}, {"ruleAttribute": "s5zzDfiKvY9gL5y0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7324244760444167}, {"ruleAttribute": "ZhW1KNnBrdqSpUUd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2921017102141241}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "NGzCSPU8HBf9hYL1", "ruleCriteria": "MINIMUM", "ruleValue": 0.31025142255946747}, {"ruleAttribute": "xn0oHXfXx8XPJ85d", "ruleCriteria": "MINIMUM", "ruleValue": 0.1981443056146439}, {"ruleAttribute": "FqigF8TBVRxJZsHQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10105664180531959}]}], "groupAdminRoleId": "2SyCbWquciJAiUQg", "groupMaxMember": 42, "groupMemberRoleId": "oqIMzB7qBesJtg9i", "name": "qwjOO4yKbsow4yWj"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'pgLJOzZ1kcVt8mQy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'L3EnImBeUaZlsRVM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '8uhoNqF51aOqmk1o' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "okpguz70F8WHU5LB", "groupMaxMember": 67, "name": "4LP4gLo4pz6jy7IH"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'VbCfCjNMxbZg7ynn' \
    --configurationCode 'CuIlOpO5gLSBFnd8' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "B9CjDg73QAR8VmpR", "ruleCriteria": "EQUAL", "ruleValue": 0.36604657375156613}, {"ruleAttribute": "xUXBXyZwuKYAThTb", "ruleCriteria": "EQUAL", "ruleValue": 0.5115157893268618}, {"ruleAttribute": "Qcz4YnM3EMptOT3Z", "ruleCriteria": "EQUAL", "ruleValue": 0.6663253640631969}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ha2WVAFquhlsuHhg' \
    --configurationCode 't43ZGDFJr3SCuZ1G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Sp6At8cV62NBKlG8' \
    --groupName '3Y5yONhlX5qUYT1k' \
    --groupRegion 'kX365haQRY0X4tzC' \
    --limit '41' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'xjmDAn6IxzIrNwMi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'NgXdYzAwqg5oMrk9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'NP9YMb4Tvx00yMaB' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '37' \
    --order 'Shwfv3QecfVie9cG' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "76Dec1PNQjwC3ewF", "memberRolePermissions": [{"action": 75, "resourceName": "yL7wBCmRGfPfatyB"}, {"action": 80, "resourceName": "qzjZVANLB2VhesYy"}, {"action": 57, "resourceName": "vBrjloUk2BgkraOK"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'OzcadZixQGCUfwCn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '7cYB9Eo6fZQJ3MCJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Wr9Rzi22ICwIAFj8' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "7FTlVq6l18SrHQx6"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'e77OmRKwgsm0H4BA' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 45, "resourceName": "dJHoCvbIIvFDSL90"}, {"action": 15, "resourceName": "oCpoJBSqUH2OHzbX"}, {"action": 44, "resourceName": "DUgSMpRW0Hp2Hc9v"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '414jfp5QrmaEqVwW' \
    --groupRegion 'ZYaBdEGAEwUfLbUq' \
    --limit '99' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "JhQHIzF0R1ZAqYE7", "customAttributes": {"4RJjVJsjsxqtsiEO": {}, "89JPv99uIRWkYSij": {}, "VvZPi3AGVZqKXzlq": {}}, "groupDescription": "OWBjSUpTW9L8KCNK", "groupIcon": "Vww2rNu8vyUQQ9gL", "groupMaxMember": 75, "groupName": "N5sPoyp7baoQwGKN", "groupRegion": "1154ZDuegw80M50R", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "58KUqFGg44fY67Jd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47295525141457695}, {"ruleAttribute": "nSeZZDs17IzB3BdG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4971989638627672}, {"ruleAttribute": "mWORhpQ6WqMalp8x", "ruleCriteria": "MINIMUM", "ruleValue": 0.016897363605830162}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "HMTzyL86m82xfG9W", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9103858015576032}, {"ruleAttribute": "SwrdXRm2df9uFrjf", "ruleCriteria": "EQUAL", "ruleValue": 0.796583421639011}, {"ruleAttribute": "g6gZSp7MAlxpCmp1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.027453780856508403}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "asTo5hYRu4SIpXUJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9439384026526797}, {"ruleAttribute": "esuCeI4wSgOyrkD5", "ruleCriteria": "MINIMUM", "ruleValue": 0.7551305705214015}, {"ruleAttribute": "UEKm0NVNDViWXwIZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.46903652503014204}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'JfP4biVcvhHYusUm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'RdXeXcIlIXos0EeM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Nco8dXN5qKjaporj", "groupIcon": "vdftDoLH8m0EdfiE", "groupName": "sUzXcKDzfolCe1rl", "groupRegion": "bPmmOXETCOiJzxgN", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'h7ffHOWdxqcFcIDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'Lk5hH6UpeejVnEv7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "q6me76oLLpi7LRGE", "groupIcon": "NXPLBOpnLvhXEXPQ", "groupName": "fjxsKWZWc739TJG9", "groupRegion": "1wP6odDqvXIOv9SC", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'rYeVLk9hrkJyVchV' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"fWdjsEtIgouMiBrX": {}, "GBdBNQQnpOOotLKI": {}, "Vlilrum8V8cBAyJS": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '4mKE5ksBKJmn7mA9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'VTPQMQssFnNhrsu8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'pQ1a1SsAqqXLKKst' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'dW80TG1DAHZ94cBx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'n2d286Inzl2rsK9x' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'h54llKYOawHGoFFH' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '5' \
    --order '18Vp7cy0IGm7AumY' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'Y09b9H2qJT3E4nHr' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"IFQeeBFvNyolu8qI": {}, "zqH2nBfk4WFlvDXG": {}, "tbTa89GJ4DYEzO2v": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'G9KjUXl1y0bN1ivP' \
    --groupId '8sIJ1wlXGfOtQaTR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Oao5ZZNWuq7TNoC2", "ruleCriteria": "MINIMUM", "ruleValue": 0.6332421748214551}, {"ruleAttribute": "hJOyvNe779RzsxRS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5776762552966226}, {"ruleAttribute": "URtBTDJH24ODLSbc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13161118563650354}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'zBybuYFAmvpY3s64' \
    --groupId 'HuIInjkgQsCofx1r' \
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
    --limit '24' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'ENDGfSGhbh4WBcXO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "iXKq530bGU8b0gk6"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'Ynasr7brBBbSSXjK' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "uP0brYba6HoWU1L9"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sYWuS2iPARPHLEj9' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aD3kBKWAovs4NBNR' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FHtPqEQYO7TahGFr' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '1qnje4gqc9zxmJg5' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Bdy77sWCBZAqJ5PY' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["kluD19SvjQNaxNUL", "J30SJ5EqylLGjuUO", "N4KAVYL6rcZ8yXIb"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'EzHimdRwg7VeP3qY' \
    --limit '94' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'cV756ZSxOL5EBuWE' \
    --namespace $AB_NAMESPACE \
    --userId 'O4SL1xlYpFLQrBDk' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "1fK734Ab2uSHWTsc", "customAttributes": {"Np0HAcW1eTaFooxL": {}, "abeD3njQN2MUq3Hs": {}, "P8wNF5lfnlUj4hxB": {}}, "groupDescription": "ybEImyLRzrGih3KY", "groupIcon": "fXJNN6XLpSDXPs8u", "groupMaxMember": 60, "groupName": "fXbbBAFEdUe4khL5", "groupRegion": "2mkK6xnwm7cgMi4x", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Evd9scIRBpag5CN1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7888370117816035}, {"ruleAttribute": "nNq7CZgIsydE0LgW", "ruleCriteria": "MINIMUM", "ruleValue": 0.07166830325477191}, {"ruleAttribute": "xSnPE5Bxd1myi1rT", "ruleCriteria": "EQUAL", "ruleValue": 0.512572451821512}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "HoN9MrozOf3pJCAU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6569588317854819}, {"ruleAttribute": "wpEwAldzZEp5xK2u", "ruleCriteria": "EQUAL", "ruleValue": 0.5987085874627559}, {"ruleAttribute": "LmtUZlKUVPajgcSH", "ruleCriteria": "EQUAL", "ruleValue": 0.9239288898161955}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ui8xwCMcheoRDoiu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6792723762253816}, {"ruleAttribute": "LCC6Wx0l3ZSNNLBi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.069347278937968}, {"ruleAttribute": "DW9teCJ4hyvMXAm8", "ruleCriteria": "EQUAL", "ruleValue": 0.030921523791407113}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["ZsTybdiQxaW0rxxJ", "E6zNX7bu9ha8S79U", "T2gcXZy549z8GstJ"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Q1Y0STTCVJCnxDPY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2MyiIygCFMBAYgBz", "groupIcon": "nrHvQ6hNtvFP2m17", "groupName": "o3pCsTvDTw6eauPv", "groupRegion": "8MEUWT96VeWkAaXm", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'EX2T9n4NU6VtzrJw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'ZY9yF1S7t1hIcASf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Ig56W3NdlekzPly3", "groupIcon": "IpNJoIkD3BT85Tbe", "groupName": "rJioREB6njey8VpP", "groupRegion": "4xMYPEYcXCsBETFA", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'UDSrbwB6aHGT3hr6' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"lGP99Zpb4sLyMiu1": {}, "Km1vYZSIkUlg2Zsx": {}, "PzAzYFLvTJNMVb3V": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'lme0xBbX1B78fYBK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'pErE6yDErgVQCT26' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '6BerbJXGql8QOqRU' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'xRON2AKJTUXtWcdr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'YK05u0d280lEtWQV' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'YL9rFsupQyyEpzd9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'w2kfgKhatjQaO8NF' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"wRvpW7TTFjchnhpa": {}, "CPFr7DDDVZ7tKYqF": {}, "fk9e2dNKJn6GYIfq": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'wsn8K4juFXiB8Sc0' \
    --groupId 'J1R2t2RcWL5vYnBK' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "S46EaJ4uCxafp54T", "ruleCriteria": "MINIMUM", "ruleValue": 0.07508414334548619}, {"ruleAttribute": "Qt54Eila4HUKrkPn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.39320196713138555}, {"ruleAttribute": "7c2SjVyOLejoLS5B", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8988680431385123}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '7ywqRpTqgLSGmeov' \
    --groupId '3LG0FAJb9ZrZDlDs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'Wl13acJ7q5028MQW' \
    --memberRoleId '6riB1vlReqIrYKNo' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "G1ucoaGC2jsnHJMh"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'WXbaLkGnED3QGvYu' \
    --memberRoleId 'JV74wZgoezYP0Ivw' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FGm1Zdh1RyRMEQnl"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '8nyAeVk6k5Tl9pLL' \
    --namespace $AB_NAMESPACE \
    --userId 'dtZxrr8B4WoDpKxB' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'ZqyBdwamfQx2Ave5' \
    --namespace $AB_NAMESPACE \
    --userId 'OtBSHolm8vNjvjWU' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'haATbj9xkCJb0np9' \
    --namespace $AB_NAMESPACE \
    --userId 'ywZeaqCqeMQ0bDXn' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'hAQzHIvoynpe2Skr' \
    --namespace $AB_NAMESPACE \
    --userId 'BmvYXssLwKtM0jNu' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'eVdByYmI3hNsoCGH' \
    --namespace $AB_NAMESPACE \
    --userId 'tWK93TSghVOtn6Ql' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'q2MjaXnMnaDXWR2p' \
    --namespace $AB_NAMESPACE \
    --userId 'yw0BPFEOTOnDADt2' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE