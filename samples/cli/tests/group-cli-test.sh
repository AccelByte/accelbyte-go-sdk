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
echo "1..73"

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
    --limit '62' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "wYCA9kPI", "description": "6LZrkq6D", "globalRules": [{"allowedAction": "c09nIW0O", "ruleDetail": [{"ruleAttribute": "aiw9B0D7", "ruleCriteria": "EQUAL", "ruleValue": 0.16151386158785097}, {"ruleAttribute": "tQG0h5JA", "ruleCriteria": "EQUAL", "ruleValue": 0.06294620295851983}, {"ruleAttribute": "c0qh4n8m", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24705726530903982}]}, {"allowedAction": "BJHPtcDs", "ruleDetail": [{"ruleAttribute": "8bBZLCXL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47659211589930894}, {"ruleAttribute": "BXxyaNoM", "ruleCriteria": "MINIMUM", "ruleValue": 0.019251152430858398}, {"ruleAttribute": "Q1g7qbPn", "ruleCriteria": "EQUAL", "ruleValue": 0.1368774454546442}]}, {"allowedAction": "p6lyzSxw", "ruleDetail": [{"ruleAttribute": "ElFHHdgs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.855634703993088}, {"ruleAttribute": "Jub74CUk", "ruleCriteria": "MINIMUM", "ruleValue": 0.9442208722660982}, {"ruleAttribute": "oDLjWjkY", "ruleCriteria": "MINIMUM", "ruleValue": 0.01130034519468004}]}], "groupAdminRoleId": "XlFcDtgO", "groupMaxMember": 18, "groupMemberRoleId": "Y4YkHs1c", "name": "nz1JSDgY"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '1TXp38zs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'CTCrbCbP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'OyNQkT7N' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vyE3cwyA", "groupMaxMember": 76, "name": "LnzjMf8G"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Z2WBZqxY' \
    --configurationCode 'G3aREAu2' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "D6QVKNCW", "ruleCriteria": "MINIMUM", "ruleValue": 0.6982226517617746}, {"ruleAttribute": "ilZ7oFgx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.037641992452291495}, {"ruleAttribute": "8OumKtPD", "ruleCriteria": "MINIMUM", "ruleValue": 0.9131031302995869}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'EZG9m0Xc' \
    --configurationCode 'gGVbMqSs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'zE8GHavj' \
    --groupName '7AorKsxw' \
    --groupRegion 'kosAVerX' \
    --limit '31' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'c1C8XfwH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'uKeb9l3r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'GN9A3sNm' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '9' \
    --order 'hddSpHt0' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "7MIIR7Ck", "memberRolePermissions": [{"action": 50, "resourceName": "5tA5jUmi"}, {"action": 92, "resourceName": "Z0GhDogq"}, {"action": 36, "resourceName": "LzFQN05M"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'YzYiKWe5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'dNRljv7I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'PrDQQRga' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "t0SevkLG"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'MS0lyuI9' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 0, "resourceName": "35llzQRa"}, {"action": 93, "resourceName": "sx5w8hqU"}, {"action": 71, "resourceName": "vnnSuB0y"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '5WUlrMdI' \
    --groupRegion '4sNveabn' \
    --limit '40' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "BSxTeIv5", "customAttributes": {"3HGCiljv": {}, "jKoyD6SC": {}, "wGrncqmL": {}}, "groupDescription": "tjQHAf8T", "groupIcon": "goNm03VL", "groupMaxMember": 17, "groupName": "9Q0mPVo3", "groupRegion": "twu0MesT", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Cf9x4rt6", "ruleDetail": [{"ruleAttribute": "9lna7qxN", "ruleCriteria": "EQUAL", "ruleValue": 0.15734380897224998}, {"ruleAttribute": "HfYakUCT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9370297381712973}, {"ruleAttribute": "IY69z1Ua", "ruleCriteria": "MINIMUM", "ruleValue": 0.3007057850553676}]}, {"allowedAction": "lpJSqGAX", "ruleDetail": [{"ruleAttribute": "Q0yYoNRK", "ruleCriteria": "EQUAL", "ruleValue": 0.43583001859639603}, {"ruleAttribute": "ZufQxGiH", "ruleCriteria": "MINIMUM", "ruleValue": 0.13380605867217576}, {"ruleAttribute": "PlSC2uE4", "ruleCriteria": "EQUAL", "ruleValue": 0.7306194374256679}]}, {"allowedAction": "D1ZBm3Mq", "ruleDetail": [{"ruleAttribute": "HcUmLZZb", "ruleCriteria": "MINIMUM", "ruleValue": 0.2778162529184305}, {"ruleAttribute": "kmu0hpDD", "ruleCriteria": "MINIMUM", "ruleValue": 0.7582317387714586}, {"ruleAttribute": "Ala2l5BY", "ruleCriteria": "MINIMUM", "ruleValue": 0.14337826006146515}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'IuS5S5XU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'djsoqwGy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "zzWi9gwQ", "groupIcon": "Yv7t1o7T", "groupName": "Tr1DmrhZ", "groupRegion": "v15T7quI", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'YcTVU6RB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 't0zYoMcH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "yCUEXlAv", "groupIcon": "xJMdalwS", "groupName": "yliWMNW5", "groupRegion": "NyLu0M3V", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'jJCSQT27' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9ZZPYGu0": {}, "rdlgdWyO": {}, "tXi3choQ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'rpOsDBU5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'SepjChB3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'V0v52Dly' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'm6puQ23x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'oJ8aeCna' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'pUKp44YU' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '11' \
    --order 'jasWIPUv' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'mEejtGeo' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"yIPa8ZRr": {}, "vjj7il35": {}, "MXbN9oCM": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Nqq98SjT' \
    --groupId 'vhZNkSQ7' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "0D0H6BXk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4710773210710659}, {"ruleAttribute": "pADz1x3p", "ruleCriteria": "EQUAL", "ruleValue": 0.45720260945072133}, {"ruleAttribute": "9xv32e8c", "ruleCriteria": "MINIMUM", "ruleValue": 0.03357191897604872}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'sSovoqsZ' \
    --groupId 'NBdte9ND' \
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
    --limit '96' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'PVJf6c2Z' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "0QZxfgPu"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'bTDIHrvq' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "AThuwjRH"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KKTlmVr9' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XuoJbRFQ' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SKVPHbn4' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Xxtu7LQR' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ENjEEztx' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["1WsYSiZq", "an0nSBJr", "oav91GXl"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'vPG6bFYR' \
    --limit '9' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "VHQipcCx", "customAttributes": {"9Zw5D2L7": {}, "vIYhGGSy": {}, "EW4ZJJ42": {}}, "groupDescription": "d3PBddN8", "groupIcon": "S48l9lyN", "groupMaxMember": 55, "groupName": "nNjkfZrQ", "groupRegion": "vGgbLdLs", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FzHkBMr1", "ruleDetail": [{"ruleAttribute": "yrOMlNFS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5786520820301654}, {"ruleAttribute": "58f7Gc26", "ruleCriteria": "MINIMUM", "ruleValue": 0.47610116006644587}, {"ruleAttribute": "mIbeZxzf", "ruleCriteria": "MINIMUM", "ruleValue": 0.7743228230381474}]}, {"allowedAction": "QG26yUZN", "ruleDetail": [{"ruleAttribute": "mTBcvrbY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4725141999361445}, {"ruleAttribute": "G8aMVGLi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3064625161644956}, {"ruleAttribute": "I8ilbyDP", "ruleCriteria": "MINIMUM", "ruleValue": 0.1068269577770119}]}, {"allowedAction": "GLXpUL4p", "ruleDetail": [{"ruleAttribute": "p2ncYAHd", "ruleCriteria": "MINIMUM", "ruleValue": 0.0865949199580871}, {"ruleAttribute": "Iovmv9gs", "ruleCriteria": "MINIMUM", "ruleValue": 0.3409350508512171}, {"ruleAttribute": "Dz9KOsb3", "ruleCriteria": "MINIMUM", "ruleValue": 0.8816466061986935}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["oRDFuuuy", "Sj29a9LJ", "E8HoRS1X"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '2PFAAMwz' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "HPxB1Usk", "groupIcon": "Ys4Yw20D", "groupName": "OqOBSC2D", "groupRegion": "KHRuPMMW", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'UcmqRRbc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'eJ5i0EeD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xOgBnhhq", "groupIcon": "ElIaDml4", "groupName": "8wdNFLTm", "groupRegion": "5T50x9WT", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'GfH2rtOa' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"4EXsXzOX": {}, "QAk4mqrx": {}, "zTtuLl4X": {}}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'lbGL8QOx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'tjzm8y2w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'NhmwoYZy' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'EFZKBcYr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'CEAE7WIs' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'mx40NLRc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '6m8heKnW' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"hzfe2Nub": {}, "eoKFeIaF": {}, "QCYoDPIC": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'pnduEEQl' \
    --groupId 'ULdJz4mn' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "RBkMNxvv", "ruleCriteria": "MINIMUM", "ruleValue": 0.41289249888544866}, {"ruleAttribute": "fFyabWAg", "ruleCriteria": "MINIMUM", "ruleValue": 0.944359509235616}, {"ruleAttribute": "hRkloqxM", "ruleCriteria": "EQUAL", "ruleValue": 0.10367847984225909}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'pwxcfMy9' \
    --groupId 'XzjjI5Yb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'KoADkzJE' \
    --memberRoleId 'N2VHzih3' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "bit0VWn3"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'CO39PXDN' \
    --memberRoleId 'xtXgeO3F' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "gkXhjDza"}' \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'mbqoOfAD' \
    --namespace $AB_NAMESPACE \
    --userId 'MMAXFaY9' \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'eKa699bR' \
    --namespace $AB_NAMESPACE \
    --userId 'VhyaKwwr' \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'AP2aMlu7' \
    --namespace $AB_NAMESPACE \
    --userId 'WtjCtoYe' \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'tOO847g8' \
    --namespace $AB_NAMESPACE \
    --userId 'OudOfjnC' \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'uHZ3c46I' \
    --namespace $AB_NAMESPACE \
    --userId 'jGa23YvY' \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'mmDg7VYP' \
    --namespace $AB_NAMESPACE \
    --userId 'XIuvUYTZ' \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE