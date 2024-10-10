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
    --limit '67' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "2zTTxTMQNtzupLc9", "description": "XMLL2LXKCHx9JElQ", "globalRules": [{"allowedAction": "eeFCFoGcR6nV0Eex", "ruleDetail": [{"ruleAttribute": "aJhjZ55DS2GtDiEC", "ruleCriteria": "EQUAL", "ruleValue": 0.39722069938205085}, {"ruleAttribute": "jRIEzk9qINuWKj1b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8570353569660732}, {"ruleAttribute": "VR0i761TA01V66Yq", "ruleCriteria": "MINIMUM", "ruleValue": 0.08969714972123788}]}, {"allowedAction": "ePnFT6cA5DGRHs96", "ruleDetail": [{"ruleAttribute": "uH5xzZgYyMkQsAEi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2978332098233314}, {"ruleAttribute": "MaK173RnR7h3rkyL", "ruleCriteria": "EQUAL", "ruleValue": 0.9913488840271536}, {"ruleAttribute": "xCzsOKIQe6oDsJSL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.429258403942853}]}, {"allowedAction": "m8iQSkXF4IFot1FH", "ruleDetail": [{"ruleAttribute": "XElT5V0wJ6wXSf0q", "ruleCriteria": "EQUAL", "ruleValue": 0.9347173734769921}, {"ruleAttribute": "4a8nkbjqSqDYAfEv", "ruleCriteria": "EQUAL", "ruleValue": 0.9951382684504294}, {"ruleAttribute": "UpWLKggkEaraK0pK", "ruleCriteria": "MINIMUM", "ruleValue": 0.888255430728996}]}], "groupAdminRoleId": "Kq3Fsx2JlMyfPpK6", "groupMaxMember": 51, "groupMemberRoleId": "bepToFjVaRWKncrh", "name": "BwWbwUNk5BYCUAqr"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'N5JyDfD59STg0jlA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'KzTnaeM37b8U7CmY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'EYkd0OXCG5QIJBap' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "O3yxo17MXBOSIFoH", "groupMaxMember": 45, "name": "k6hDpF7OOoUDwen8"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'fxxkVvdrTmAjJLnj' \
    --configurationCode 'tzvn6jIb8q7NtQml' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "jzeQpvibdJnxfOB3", "ruleCriteria": "EQUAL", "ruleValue": 0.5519596754699629}, {"ruleAttribute": "cJHDxEIBn2ai1D16", "ruleCriteria": "MINIMUM", "ruleValue": 0.036538690785686834}, {"ruleAttribute": "R30KkNZGN0mlOu0F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.531014290119791}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'RkXc6batTvkQtHYx' \
    --configurationCode 'I86c6XF8cRznCs06' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'qPD0yKfla5A9wMfE' \
    --groupName 'mmlj1XA7aGRwzMBa' \
    --groupRegion 'O2ue8dGPyKxe8TRH' \
    --limit '83' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'BIcmr5bGWqGrjZPS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'PzvypVUDICwAC7XT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'KWw4CxHqWGjEMU8W' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '86' \
    --order '3oGHokgqbZfEIc7I' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "yivVRGnc1o8mLNmg", "memberRolePermissions": [{"action": 94, "resourceName": "tsTCMmoVwUniKu64"}, {"action": 23, "resourceName": "wkv3iRlZgXFyBYhd"}, {"action": 19, "resourceName": "h3sfXDEPvBRHSWMr"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'Y4NNXL5s8PNWKklq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'kHPUCHINAZbveLsf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Mso1KHcLViROFi4F' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "usKCIa2zqpRNeaaP"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'dYV56pHpjrnrQkkv' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 7, "resourceName": "TCTSz7ni32Czctyy"}, {"action": 45, "resourceName": "8aUqvKxLbxLf3FlC"}, {"action": 33, "resourceName": "78QxoVjJ7hjdeOjT"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'HCJFR4EIt925TQeG' \
    --groupRegion 'R8mKgak8bxvc2SLN' \
    --limit '63' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "qnEbfovHq7JJ9pj5", "customAttributes": {"h9k2zKFUV1RAaKic": {}, "CmvOlc1mJOanztJF": {}, "HQn0Li85PQGSKbqx": {}}, "groupDescription": "szAONxvujTaKoKqJ", "groupIcon": "TSi78H1QW6XEvyko", "groupMaxMember": 8, "groupName": "rmvm4LTuZIHK4QIV", "groupRegion": "zPw37jQs1j1U7tt1", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "2u2QGOpvZCASwyVe", "ruleDetail": [{"ruleAttribute": "qdRfe90OWgFLnsSq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6896041106837277}, {"ruleAttribute": "XyKD5aVq9HxoU0QC", "ruleCriteria": "EQUAL", "ruleValue": 0.6751185185005399}, {"ruleAttribute": "NLd2P5IlFWGOoFOR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9690011039255734}]}, {"allowedAction": "Xq48VjTdiYYVXzWs", "ruleDetail": [{"ruleAttribute": "W4eqgyEnjSlMZo5Y", "ruleCriteria": "MINIMUM", "ruleValue": 0.023221784592225347}, {"ruleAttribute": "194XyZoXrp15Th6d", "ruleCriteria": "EQUAL", "ruleValue": 0.462121962983574}, {"ruleAttribute": "Nezjtx5KMuBZYmu5", "ruleCriteria": "EQUAL", "ruleValue": 0.6470351923273773}]}, {"allowedAction": "RGV0TSRFkyEhXHoC", "ruleDetail": [{"ruleAttribute": "Ig04GOYYvTu1kqMB", "ruleCriteria": "MINIMUM", "ruleValue": 0.9976268251801335}, {"ruleAttribute": "DBpDNcqSILnIgLou", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4157615822739268}, {"ruleAttribute": "FaCNy8drKvyYI04B", "ruleCriteria": "MINIMUM", "ruleValue": 0.16879026513318374}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'YZ1VWvIVKnBqeozd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'ntIKxNpKTJfmlDgd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4f2RRxK4PfhjqG1r", "groupIcon": "piplzlRu2WE4DsU8", "groupName": "HY0qmXZSvvDaeGIz", "groupRegion": "ks6PwWG8LyYAalDa", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '3dzwoW8CPSU6bejm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'ZBPJ4IB68J7KmIpw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "89Xovu1ER0IcePTw", "groupIcon": "GFBBZr6ejfVQRjhZ", "groupName": "c25MGWsMsvHAPnDA", "groupRegion": "7Wckpd2QRDwygdqj", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '2QpiLapDFwVTgRV6' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"DYBDYOm84p839Yd7": {}, "crqUW4B7N6KhPyE2": {}, "lfqWWP6CePUoS8ME": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'GINCtFqh2pffvaes' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '40CAodiqdJxEBbU0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'fZkZEJLkbTXKr0y6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'vWxguWLeZqySnCth' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'xX7uWNcGWpkwnmzj' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'lqXvYkYjl3QNSwEv' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '59' \
    --order 'TDSsjDsXtX7WmZtX' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'X1s3bS8dPy63kakI' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"yA6IA9E4VuLWo0Da": {}, "wh7bWktoeJPLEmtQ": {}, "NtjTi3PWOGVHzwuP": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'fpzHMpo6P53a9T89' \
    --groupId 'slSBFT9E7Tlietf1' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "8k3hrGB0FrP5p6Oi", "ruleCriteria": "MINIMUM", "ruleValue": 0.12528080252075469}, {"ruleAttribute": "LEFcyIx6jiVze4UZ", "ruleCriteria": "EQUAL", "ruleValue": 0.16782515922330077}, {"ruleAttribute": "tit688oLFcDbuYWa", "ruleCriteria": "MINIMUM", "ruleValue": 0.0883714297567959}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'eEkiOlbfNhiDqlwP' \
    --groupId 'qW1wV5XVS53E4bQP' \
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
    --limit '81' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '7SDK0PkYGMy5XMZU' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "XeoWxVDZEiN7XPkC"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'zNkaDd0H88Z40mSP' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Te2VcjTMsC1Heo0g"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qgyZndKld0Vdniht' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FCeATZ8APtel8s7k' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XSrfCOHpux39L7PB' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wRgTwdXWBkCrHFQ7' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'chluCDmcXdsIhZ7L' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["qndxVVoHs7HVv7nO", "KaIP88ZFABFDt8RF", "c6TEcHnFxwx5VaWE"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'r0FWMLBbSiI7z5Li' \
    --limit '87' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'NamrbAQZ6ezGsvWQ' \
    --namespace $AB_NAMESPACE \
    --userId '3rRAHJ721MesGh0s' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6T4JXCdS5l1UUdMH", "customAttributes": {"MnYDsgy30ylWOMxe": {}, "c9JfrBdXcFzDwlM2": {}, "zLAdDzyGP1ygwpnv": {}}, "groupDescription": "sE0Ky8nnlTFPI0Cy", "groupIcon": "t7BYvMvSKjDCvb7I", "groupMaxMember": 24, "groupName": "VvL6niudQmtv51SL", "groupRegion": "eLUslpRtyt5lAB3B", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "1Vk0cmxFk7j38f1Q", "ruleDetail": [{"ruleAttribute": "fqLRR4mmXULVTC3c", "ruleCriteria": "MAXIMUM", "ruleValue": 0.872506955748698}, {"ruleAttribute": "VJrXx3cefGflEkAl", "ruleCriteria": "MINIMUM", "ruleValue": 0.31949925632840526}, {"ruleAttribute": "TlXCvEsxeYn1Wxmo", "ruleCriteria": "EQUAL", "ruleValue": 0.694996037860277}]}, {"allowedAction": "EQTDOXabDDmWEJnj", "ruleDetail": [{"ruleAttribute": "crcA5u5ALLnNTxi0", "ruleCriteria": "MINIMUM", "ruleValue": 0.582502831434478}, {"ruleAttribute": "LvS7bh4hDVM74WAk", "ruleCriteria": "EQUAL", "ruleValue": 0.22464994785919545}, {"ruleAttribute": "Pi3I0VlJzo0xgIn5", "ruleCriteria": "EQUAL", "ruleValue": 0.3005463020262549}]}, {"allowedAction": "pZWn6zwSCUBVJrxP", "ruleDetail": [{"ruleAttribute": "lzkhNK6NzCY1kcl1", "ruleCriteria": "MINIMUM", "ruleValue": 0.6149723168761146}, {"ruleAttribute": "H6IWMhNeRclWcvtg", "ruleCriteria": "MINIMUM", "ruleValue": 0.6290094048255975}, {"ruleAttribute": "qg2VJLPay1TiIQG3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5129384271664976}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["DUZyV1di3uYSCUCi", "KBc5yPyQjneT7yrN", "ZNNc0Hxw5SkAkZcb"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'v2NGoiocu3vUEZvh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "WbQ858HUo5YAfi5w", "groupIcon": "UizNUIV1brbY2Nih", "groupName": "hJxwf5XZoPcZ6YCL", "groupRegion": "UQb9nmeiQ1KNVrZ2", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'PDJ4M1Czo43CvgLj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'aVNhzON7VoOtI6KK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5nKpoDXnADyEzKLk", "groupIcon": "UPp6PPgsJB5kjo63", "groupName": "XhakkSV0QsiHbqq1", "groupRegion": "AjGwmAvfvqVI6FTV", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'tyrP4ynVZNS3nX4I' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"051PMYbYEpjBfDYv": {}, "3924KLneB6ZfWCNV": {}, "7hTQwZ9i0FgPzTBy": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'DCY6k9tPmQtbdaOX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'lXS2JtPajCQCDAb7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'S1DZrFE62SKDTpuq' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'ktuvjvfOu9lCwfbo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'j9yStJyBmKDXSmrC' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'VzZaDQIwI4IUMI8A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'ljAI2uPrYeckow3P' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Z5d44hIPJqwQSRrE": {}, "M8SlmH1y2BnCDlr1": {}, "w0tpP2hZEU6TQJjL": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'BDw3U4UdVGjXtZP4' \
    --groupId 'OIPuyEbtdudLEOIq' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "xd6iSbDVZtNtYuvt", "ruleCriteria": "EQUAL", "ruleValue": 0.4920021558355485}, {"ruleAttribute": "AgoeOHk9MGocBimk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9135556002153322}, {"ruleAttribute": "ENSCjpZRoe7Ga158", "ruleCriteria": "MINIMUM", "ruleValue": 0.057123538736019164}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'X0VbT5hXy5Szj75o' \
    --groupId 'osvN2RXOGcHRmHh0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'YK0ELhIi5w3o0CPi' \
    --memberRoleId 'zLd4HjT75LVYCmWR' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "qPLOLgNsKz5LxoTk"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'NGFrKUMlwRJhgEG9' \
    --memberRoleId 'lyTQJD20FNvgbeOP' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ue6tblBKh1ouYQ7O"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'm9YeTtGUsHMsMt35' \
    --namespace $AB_NAMESPACE \
    --userId 'VOw9uS29rLpfJFTk' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'eVGLQCadmFaggq0X' \
    --namespace $AB_NAMESPACE \
    --userId 'bXExPrBmk9FRjV99' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'aBfZwpQ7ecAcSFSP' \
    --namespace $AB_NAMESPACE \
    --userId '7nFiVuQlyCOUNFnD' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'S7AuLYkcqHSTtHk0' \
    --namespace $AB_NAMESPACE \
    --userId 'dpa6dMn7oit8k76U' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'nnC1CxXqpW3kosGR' \
    --namespace $AB_NAMESPACE \
    --userId 'tOeJbnf9hj61oMxv' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '0HiqB5wnmnnxXpg8' \
    --namespace $AB_NAMESPACE \
    --userId 'fptpUGsUkHggcEFm' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE