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
    --limit '65' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "H7zj88VOuyH8AYwV", "description": "I1egGZWYTIlb6MyK", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "17XeMO9sOmhHnrJy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47840698860041075}, {"ruleAttribute": "r8iO71CsAI6XsZpu", "ruleCriteria": "EQUAL", "ruleValue": 0.3410458724015685}, {"ruleAttribute": "kzGMSKrfdlXIMmcF", "ruleCriteria": "EQUAL", "ruleValue": 0.2708481465601107}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "cKl2V768XN1MQQMk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8465526731854417}, {"ruleAttribute": "ZghYVxsd4hQOpBCo", "ruleCriteria": "EQUAL", "ruleValue": 0.9348439376411131}, {"ruleAttribute": "aXhDnFUCm9vogv3m", "ruleCriteria": "EQUAL", "ruleValue": 0.5873296688404545}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "nn5bthruZZ0z4rh6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.035904866335868535}, {"ruleAttribute": "iHMebEsnEDChFE0Y", "ruleCriteria": "MINIMUM", "ruleValue": 0.3200239676812531}, {"ruleAttribute": "cUSDG4GI71UU3L8M", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7445634285396296}]}], "groupAdminRoleId": "3Kjlr647W0b7SoRU", "groupMaxMember": 96, "groupMemberRoleId": "87RkLY6cBduumTgz", "name": "zzaswWpQpl4Tqzpe"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'qZVzVneu2RplfdFE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'QT13mTQi7rmRM2KD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'KAnClpa8tN2ZqMAB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EfVVihXBkrEIOneA", "groupMaxMember": 23, "name": "8H5VSkRDs0bbXfDx"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'X9HFZeZgYIvQxhpS' \
    --configurationCode 'QrWFBMiWirwg2gKX' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "uzvG45XrlEN4ppDm", "ruleCriteria": "EQUAL", "ruleValue": 0.20748978479636204}, {"ruleAttribute": "PA4MD5jrmFbfF6N6", "ruleCriteria": "EQUAL", "ruleValue": 0.9542485044220318}, {"ruleAttribute": "tc1IXMEKZqsW921v", "ruleCriteria": "EQUAL", "ruleValue": 0.1044728959850455}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'vlM36NKqDDed867I' \
    --configurationCode 'Rmefm5BRE6w11VM5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'rwCKn3sAIWJwqeRO' \
    --groupName 'aeo2exnn2ehtUmNI' \
    --groupRegion 'g5VuQKE6qCyi539S' \
    --limit '30' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'HqP6uiUG6c7c7Q5P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '7CXkl4qlSYdlEXjy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'XOxNi7NdstdAa8jE' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '50' \
    --order 'UoTee8GiHnqjYoPT' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Md8sDJrAASSkTJxi", "memberRolePermissions": [{"action": 6, "resourceName": "yZY19jFpcwxPdgN1"}, {"action": 76, "resourceName": "RWDfCVsPf1GFFxI7"}, {"action": 28, "resourceName": "x7at2GBfJftLzPmw"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'tWK1SgHdd487v75Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'EwdJBBBxCJLExunz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'RBft9LpyCSylCvKc' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "vbsS7sGHHVXxHM6C"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'R4oRCq5sI8nc3lUu' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 11, "resourceName": "8LKQTzMl7H1Rntj5"}, {"action": 58, "resourceName": "SWOw8DsRVzymTOU0"}, {"action": 99, "resourceName": "emC1N9nwMUHlFWJ0"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'awtwUYSELi1XjINx' \
    --groupRegion 'PxbqWSwtvRo55Oe3' \
    --limit '48' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "xD603wC27NiCAEeO", "customAttributes": {"nJ918PiICxiMI0zW": {}, "3UkHf2Kcn1Pq3wSp": {}, "oLhsqhIDxhtz1np7": {}}, "groupDescription": "6rwpswIfkE5Q3K3U", "groupIcon": "fQwFXsfRpDOVwgAK", "groupMaxMember": 67, "groupName": "fzMGHAZ6ouE85kEJ", "groupRegion": "FadFsvSEvaztPLNq", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "48GGIbrjYz5xh89D", "ruleCriteria": "EQUAL", "ruleValue": 0.8952478505772874}, {"ruleAttribute": "QLYaFAhy8y381RvT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7625150988456201}, {"ruleAttribute": "nGD7ZU4xSCZoRqRz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6488076366933361}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "y64GGgmEnrlStGN2", "ruleCriteria": "EQUAL", "ruleValue": 0.7183442079539637}, {"ruleAttribute": "0DNUWQWxGoQNriCb", "ruleCriteria": "EQUAL", "ruleValue": 0.8702962387655203}, {"ruleAttribute": "fbey2WXNDmmpf7lh", "ruleCriteria": "MINIMUM", "ruleValue": 0.9900562128132837}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "qq5qw3TNX3s4GeyP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3931311723280114}, {"ruleAttribute": "MWyjycY7JyxYRnuy", "ruleCriteria": "EQUAL", "ruleValue": 0.7055008645663374}, {"ruleAttribute": "vnCwXGOQtUlpu9Kn", "ruleCriteria": "MINIMUM", "ruleValue": 0.7126063019589233}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'kSUDJV5vW4zswDWK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 's9KmIoZQ5pTchMgG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "GXjg7VqXryolPMh7", "groupIcon": "hogrxl5FwJdI1vXM", "groupName": "wKfEoAtBnsgRA0PP", "groupRegion": "Qxu1LjFKSRsmLtet", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'NWSfpWYdMMH99aU6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'Ai2GMaU3h2caX8hM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5FFLxVvk0WPEWn72", "groupIcon": "6dtKBx36eMWQf75o", "groupName": "EiJcG5f7kd8gJIMz", "groupRegion": "rYB7OjVrR43Kgrm9", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'B18tVjCbPMyv40XJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xfDEwsMMN4osNeaW": {}, "Irskf2S5R61mRceI": {}, "BsSpDLjDpnTCOqK0": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '9YgnWjjh0ukBhuDu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'RQNL14kwyXrzvRLb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'oI9DXK4QSSACWdmA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'rzAncmmylphp8SeF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'wIk9baCNJ6yxBjIC' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'vFGsAJqlAVGrdFiL' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '62' \
    --order 'cfd12wRd8CVJVHKf' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'P9qmlFSMqSXR6Ik0' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Pq5yazO7ChtnVnrl": {}, "iW9inDXTvxssIlZV": {}, "nv1unEXluZ9MYJRc": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Ku5idW6ru4dM79jR' \
    --groupId 'BkRhrktosudeSbxA' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "X4HfGDsalgS3WgdH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07853644892574252}, {"ruleAttribute": "JkmSu39noF9Wl03g", "ruleCriteria": "MINIMUM", "ruleValue": 0.7682644179642133}, {"ruleAttribute": "JdYJBtJrGuB0Fqwy", "ruleCriteria": "EQUAL", "ruleValue": 0.21457631087896767}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'PhXJOz0fniy21OpQ' \
    --groupId 'CMhGb0MDIR2ny7WI' \
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
    --limit '78' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Exk3M3WWGEcV0vAd' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "cmVkZqFgnTdoUqty"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'FFmcVvBE5TVamnWT' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nWtNuyyjQwhlZJuW"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sRhDhfJ6cBD3hJGS' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TX2TGVM0pJNUSu9U' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uezMVqLedUMLEWey' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y1stHw31wUL3dP0G' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mL0u1VLrkEUHOlYg' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["nLP1MnvdePkGjpXl", "rguvY008TGxoRu1Y", "Ykf3DgdvGr8XZih4"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'LVW2jMKh4uTmTFmG' \
    --limit '34' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'khPvhoTLj6pkVJKU' \
    --namespace $AB_NAMESPACE \
    --userId 'nOKQFoPIEE8DSZrf' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Ws2ZhBaU0yhUhpKD", "customAttributes": {"8i2wxYH8qUYPkLU4": {}, "GnPG76WjmVd8XgIx": {}, "5pRg61bnD6FzyqVt": {}}, "groupDescription": "mfjfLk0ZUMXnZcqz", "groupIcon": "qcyJYIG9GLTdjdZ1", "groupMaxMember": 29, "groupName": "9mGZ0WyNblKAKi0J", "groupRegion": "TGF0nV3XkxZl9i50", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "KLstOPwRiJqRmHQq", "ruleCriteria": "EQUAL", "ruleValue": 0.024780181045593763}, {"ruleAttribute": "D1usBgs8MdxUmMqW", "ruleCriteria": "MINIMUM", "ruleValue": 0.9407454489992122}, {"ruleAttribute": "D3IJ4kNIEGs8rBJF", "ruleCriteria": "MINIMUM", "ruleValue": 0.10118055780823176}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "JArbngA3Hua9UJCf", "ruleCriteria": "MINIMUM", "ruleValue": 0.1969294505178969}, {"ruleAttribute": "cCeLR1qRBdrk41l5", "ruleCriteria": "EQUAL", "ruleValue": 0.3690632929851978}, {"ruleAttribute": "UNHReIsKE0nJW7e6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07693856154507339}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "8BUMtxTHWPShlcBa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7222523149375494}, {"ruleAttribute": "NHAX1qDFYsIDQDiU", "ruleCriteria": "EQUAL", "ruleValue": 0.8354816780824572}, {"ruleAttribute": "9iHW0RsH3yAaC1LK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8080928522024192}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["x0a75PgFJndtdYwa", "nKiyrbcSXdUsUPlc", "r5OKmRzPAu6l9gAt"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'a50XXO1jgCwtqJAx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "PDtSe3ilIyua6gTe", "groupIcon": "InRUuWKSRWbjy9Ot", "groupName": "W8iLiuPUXmv98HPO", "groupRegion": "gyIl4qTDCGtAlYML", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'pSuGjBKpvBYeHOEj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'X8EO6HT8nIg0errd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "o0YzjTRNhp7UIO8U", "groupIcon": "beg1a8ptwfQruVkP", "groupName": "yvHxeqQFrYP0u4ey", "groupRegion": "jCafXFoJL3MOqb1h", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'iNUKG0oxoIKj6qLH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"je0hWPdnHoX7SjGF": {}, "vJp7A6jEzXOlX1XO": {}, "sy9LCLM7Rb8RZe8g": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'r3FwAso9zLr5ktux' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ipXR3jrP9AFx3T6H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '5rKeMoYdYy4bi6zD' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'tAsGEdVE4wx5ECEs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'rhOxugrLDI17h1I9' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'GgfdaRbM5nTwTu0c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'IIJTbxzFygbcGCAO' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"7Sr5oqRzr6vwaerS": {}, "jGEIzEIOtQKKTeAF": {}, "iVWty4IcepyU8it6": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'mjcK4DoLoSdL6phF' \
    --groupId 'JyHMoMBdmwSoE14q' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "W3GwCIte6lsBoRN9", "ruleCriteria": "MINIMUM", "ruleValue": 0.013257353166484354}, {"ruleAttribute": "83LUeqB49oaFOyTr", "ruleCriteria": "MINIMUM", "ruleValue": 0.9218421906813671}, {"ruleAttribute": "ZoBWdbgwDQ8KgjPz", "ruleCriteria": "EQUAL", "ruleValue": 0.8973989923005126}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'h1I3bXHTAo2Od9cy' \
    --groupId 'C8BDYfDtehvkHlEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'EwuRCSwdbnZGWmVo' \
    --memberRoleId 'QfSaEpu0G9tfaCXG' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "SKKMU3cf7vaS8N8A"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'LxA5cmZclVCAbX9E' \
    --memberRoleId 'pU1hl5CruzKrqeYD' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "kOuGueh5DoKQGdBF"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'kjk70mwJNvNjx9NE' \
    --namespace $AB_NAMESPACE \
    --userId '03fb3DZNXcRvjWS4' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '54DccbQuQtEtBH14' \
    --namespace $AB_NAMESPACE \
    --userId 'ZDJ8I29HiH9z6UVu' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'o08lxtN4iiq6Uy96' \
    --namespace $AB_NAMESPACE \
    --userId 'vgwjozqLHMf16CTm' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '0sMm3C66nYyhljEa' \
    --namespace $AB_NAMESPACE \
    --userId 'WW5KkUK9nz6LSX2G' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'xsjzi7e84sUwT3qs' \
    --namespace $AB_NAMESPACE \
    --userId 'XyF9LVL5uNNGiXoy' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'kbAfTRTzF9X0HsNj' \
    --namespace $AB_NAMESPACE \
    --userId 'xvu7f7xg8RWhRDMg' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE