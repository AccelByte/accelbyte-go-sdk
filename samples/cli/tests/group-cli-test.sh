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
    --limit '12' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "LP18fqNE4gjTuL7T", "description": "kRpVtdRefEV6PGUb", "globalRules": [{"allowedAction": "KEKH4wGepzxfywWK", "ruleDetail": [{"ruleAttribute": "IkZ0oyJDpOavRgCF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03915570883835351}, {"ruleAttribute": "aSQhRA3Luctods3n", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5778602679199261}, {"ruleAttribute": "9x9zytLdoLmBkOyU", "ruleCriteria": "MINIMUM", "ruleValue": 0.804408591523908}]}, {"allowedAction": "wyPfSFHicH68WI39", "ruleDetail": [{"ruleAttribute": "2pVv6ChjFGxOGNoI", "ruleCriteria": "EQUAL", "ruleValue": 0.6614714481872521}, {"ruleAttribute": "n8ekaxswmuLwjsQK", "ruleCriteria": "EQUAL", "ruleValue": 0.11745900155083822}, {"ruleAttribute": "y6c8I3bS79Lg82Pf", "ruleCriteria": "EQUAL", "ruleValue": 0.66209379640669}]}, {"allowedAction": "4oSfLry9M9shbwM6", "ruleDetail": [{"ruleAttribute": "ke4SAMmu3mM84DkG", "ruleCriteria": "EQUAL", "ruleValue": 0.7516841492882539}, {"ruleAttribute": "KG7QoGMNPYeNmYyH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4939900283424936}, {"ruleAttribute": "RnhCTAMf8bYimGz1", "ruleCriteria": "EQUAL", "ruleValue": 0.4295415928437216}]}], "groupAdminRoleId": "HQjkggDwfCBp1fAd", "groupMaxMember": 55, "groupMemberRoleId": "SXwi0IcfBzL1fnMJ", "name": "g6GWmbhLyj6EJlhU"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'tnn1iEnF0gBtvLIL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'fUFPvuF0r9PtgbHC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'iKcxU6JhTcbQPcZg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "C1vtZzETx7GpI2t6", "groupMaxMember": 89, "name": "qmr3w0djBt7VfF7d"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ALwyRBBEFPkDVPPl' \
    --configurationCode 'WemQenIDRvwyypFQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ueG0cgO4xgBNoQLK", "ruleCriteria": "MINIMUM", "ruleValue": 0.036382465892245364}, {"ruleAttribute": "elI5HSx9N2OCMIxy", "ruleCriteria": "EQUAL", "ruleValue": 0.3339072020836362}, {"ruleAttribute": "iaaJuWc0a1ajfdkW", "ruleCriteria": "MINIMUM", "ruleValue": 0.8796550331660038}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'dnFZbBIcgD7JpYKP' \
    --configurationCode 'IDskRa7rnhxD5LDX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'AAkxQihgIjDAlLs8' \
    --groupName 'fTJy12oJwPc2o6ku' \
    --groupRegion 'fijRXPuypyBGnsDG' \
    --limit '69' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'scXfZsnDK1wJT61P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '1TQAozfeJ1RAym9v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Y1ksh1jVlArMddSU' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '19' \
    --order 'MuPtYmW6cRm8pmjF' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ro4pk9Vs6a1oD3KA", "memberRolePermissions": [{"action": 6, "resourceName": "aHBAhzWTMfkvEnN0"}, {"action": 58, "resourceName": "iWAQQurtChRAVlrE"}, {"action": 66, "resourceName": "p3rhanej8k2UoRxf"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'oGpkr4RIYIYuwm6F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'xMUp3hwbE99hZgRA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'ZqrmNr6hF8LE25PQ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "xCJuhZnwqHn32sy4"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'd8y6w2ve0k2F4rwh' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 98, "resourceName": "eahc8eswnMckua2T"}, {"action": 66, "resourceName": "hhw21I6No4yQZJzm"}, {"action": 31, "resourceName": "GULUVE4pf2lHgao8"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '9ANSphgBSYlQDLVM' \
    --groupRegion 'xUcMuQELM1ruIbdA' \
    --limit '96' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "OPBwiEQn4M7y6FqO", "customAttributes": {"uFKrVMc2wyPQshw0": {}, "ahIEzPXlyGVwtvtB": {}, "Cnp4OIG4ztJIKgOS": {}}, "groupDescription": "nlr2plDpaR8cAhDH", "groupIcon": "mXn2SDYk6ZJak8SZ", "groupMaxMember": 55, "groupName": "9BOWw2e0XSjEHPkt", "groupRegion": "SDdgPZ0IEsB6yYy9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "L3DQozvefIaIt5Ij", "ruleDetail": [{"ruleAttribute": "3GU0i9wZ9bIMAuYx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.684533598094805}, {"ruleAttribute": "aPNswt6i53DrYV4r", "ruleCriteria": "MAXIMUM", "ruleValue": 0.27353930489209777}, {"ruleAttribute": "NbGbkXHyoYx1Eohf", "ruleCriteria": "EQUAL", "ruleValue": 0.8521999354568734}]}, {"allowedAction": "ClqE8OCPXtkpoeLt", "ruleDetail": [{"ruleAttribute": "6PGQVjonKK7zLMem", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07392816451326667}, {"ruleAttribute": "teHIlIGxavFzAyeS", "ruleCriteria": "MINIMUM", "ruleValue": 0.6891651721428564}, {"ruleAttribute": "s9BtATHKM45eMrvO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9795432350947822}]}, {"allowedAction": "6QnuBe2HbyoQG5SG", "ruleDetail": [{"ruleAttribute": "lkUgqiom92R2f1Ti", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7258831607167897}, {"ruleAttribute": "s0LQKjxa2gOss04m", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9886089266617221}, {"ruleAttribute": "b99z7LONJg9JJpOo", "ruleCriteria": "MINIMUM", "ruleValue": 0.9218525884247593}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 't2NqS1KvVWIh3NDZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'ige2sc3447KNkgt3' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "g7RgEz5vvgeHqQBC", "groupIcon": "DReLWRhl325PAHir", "groupName": "b3YlAePuRX8G3CNV", "groupRegion": "sR4yCRhwk8lIE7gz", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'LjjNp78ohQabDcy3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'oTJzWUFQcf6R8DHg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "j8kPBn8VaajC90pq", "groupIcon": "3WI5WLih4Jp0vvZ4", "groupName": "14gh8H6673WQs1V1", "groupRegion": "5Iu4bfBRdOGOJbrk", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'cf0yjhOU9gIECs84' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gNGKgzo1pFfDdeXu": {}, "J2Q4B9HVPS333Q5X": {}, "0klaG7lhGbzqUSYV": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'pdFQBAKyRiCxSpYt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ippKnRkR11nv5xgh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'paCM6w0FiX8HRSkH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'MEGwPTJHzaQsxMqz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'sRRXJrLrLt3nmYzf' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'GWqyALJB3WpAZVHk' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '85' \
    --order 's5QWGWO8XygdjQSN' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'INxcqdDiLx7NNvPn' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"cLu6BoKTwi6C6Dg5": {}, "hndxAgcu4HwDv2vs": {}, "7OAGNgyiCN4FblR7": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 's51sXA19PHEw9toU' \
    --groupId 'T8d0VJgnWnSAaShC' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "J1YlxR4MwGMMEwDx", "ruleCriteria": "MINIMUM", "ruleValue": 0.755792372216829}, {"ruleAttribute": "5mdwL6FD8PtTi7vF", "ruleCriteria": "EQUAL", "ruleValue": 0.12689765243729867}, {"ruleAttribute": "DT1gsQD0Y3r6szvz", "ruleCriteria": "EQUAL", "ruleValue": 0.5602729565882545}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'VGib6Db5Vj8pMk3W' \
    --groupId 'W9fieixFeJ55alRZ' \
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
    --limit '45' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'nlSlo3JeWEGBQxwE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "vbS4KYCIM7DpIKk3"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'QdtF1udbSt3RBaEK' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zuWmL6j7lcczwgW2"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FCG7RxNydqlGYNR2' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'm5jhR6ltt7W45Djd' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TsLy2r8IMokITjAK' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'R7cwgfI9NzjBnzlR' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uVMcN99RBxegcpJU' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["e6wiwwhEAzk33iT4", "QYcrQnjmab3DywQ9", "KfdbPSZljCTuwTOS"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Du2VT18eWjPM1i2t' \
    --limit '37' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'IUW4Lj9QnroE59np' \
    --namespace $AB_NAMESPACE \
    --userId 'A0JtMCfvCt4Ccz5m' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "nyBZ8gwCys9EHAZT", "customAttributes": {"ACk1Hrr0ZHZaSIZl": {}, "ShVS5ci7yJ1K0uiA": {}, "WgDHb0YK1pa5B7XK": {}}, "groupDescription": "tCLdia2TOFiQgn6f", "groupIcon": "nKzNReawOv3kivPV", "groupMaxMember": 48, "groupName": "tKv3JFUMdZ9gUG23", "groupRegion": "yGM1QeYaUYj5Cur7", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "LHoQqIzt9B0wQmKa", "ruleDetail": [{"ruleAttribute": "bfWlmB1GAveS5p95", "ruleCriteria": "MINIMUM", "ruleValue": 0.5137636666546156}, {"ruleAttribute": "PU32g8Whmo7JeMtn", "ruleCriteria": "MINIMUM", "ruleValue": 0.6275369729107356}, {"ruleAttribute": "4qmikLknHJI9oaPy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7413538331450388}]}, {"allowedAction": "wkMjdf2IIgnoyAMW", "ruleDetail": [{"ruleAttribute": "Jpwfa8TYLWWBQX7u", "ruleCriteria": "MINIMUM", "ruleValue": 0.20193408341021601}, {"ruleAttribute": "AcJ8VGiHBu55vbI0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10461166668194344}, {"ruleAttribute": "AsMvLBjZQN1wWXtD", "ruleCriteria": "EQUAL", "ruleValue": 0.6290084067821824}]}, {"allowedAction": "D1rbbxt7TCTv33b4", "ruleDetail": [{"ruleAttribute": "9P1gIEfqKK5EQByF", "ruleCriteria": "EQUAL", "ruleValue": 0.20029018692895484}, {"ruleAttribute": "hShBLqG4E8HztRq0", "ruleCriteria": "MINIMUM", "ruleValue": 0.07962182033844578}, {"ruleAttribute": "FNsjrb6JmT9xAeLP", "ruleCriteria": "EQUAL", "ruleValue": 0.5780339596004915}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Q6BMdOWXLna19oET", "jCbAWsJ253f6bJE9", "ebrZnCMFb2WEB6Df"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'K9WanDISy5hUueRF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "fCl1HAzfhT0CnwXi", "groupIcon": "zM2BLsKZ4f4y4rk7", "groupName": "uCrbzChBwPu5gAZ9", "groupRegion": "O0j4tN54aahwomxM", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'tIPEgwsEjEZYQzrb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'puYu3fTmq84tE6aZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "zOmCHlKK1tSjegit", "groupIcon": "SBEm9r8ctFQF6ZVT", "groupName": "3pii3qVwV8XhwXU2", "groupRegion": "XxdO1kzr6VbzPioy", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'SVyO90ZHq6EO4fOu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"IcETwfL235IpisGv": {}, "ApdJqsLM6EXT4QkN": {}, "ViOkRh63IE9b79pT": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'B6d7PeaBhnzGmhHd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'UZRkrr59PSgADdb2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'w8BXfQt1MOsBS96D' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'XsBRxWaUSPHfTkrT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '5ik5871mXBuXWNOn' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'z1sRAuLRS8vdB5hH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '6a1sexlK9rTs1GZu' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ZJDifxGtFKHl5Aej": {}, "J5qABs37YP93wotT": {}, "TI2VUm7rf4m9Qwqq": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'KLFlCLQzv65uWf7j' \
    --groupId 'EB7U9YretbStGjbo' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "M54REKriPqIB6cHq", "ruleCriteria": "MINIMUM", "ruleValue": 0.7158143263581052}, {"ruleAttribute": "pwwQSEdjpLV2YTQa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24930262735805664}, {"ruleAttribute": "6M3DXl2DproDx6YI", "ruleCriteria": "MINIMUM", "ruleValue": 0.040388673575234124}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '5vZwJiJFpJxS2uJ2' \
    --groupId 'I2SUTnlSkAM1YI04' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'ZDTNXA3Df8AYKbYU' \
    --memberRoleId 'XGAZdYOzxFhhoSmt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "CWBrL4OX1kZxdDjS"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'onDC1WhxWOtvAzaJ' \
    --memberRoleId 'I37vmyOUo08btsAa' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Aa2bSJd6WwdgpA8d"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'fviwiSeRaeYaqPCm' \
    --namespace $AB_NAMESPACE \
    --userId 'Zy34bRzCDCH6xN6u' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'TCgihMTvdy5o6I9f' \
    --namespace $AB_NAMESPACE \
    --userId 'lhS9B0TuSStAlaBw' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'U5DD5a0eJWymCjqT' \
    --namespace $AB_NAMESPACE \
    --userId 'CgoR156pyqgmEA8h' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '05mmZ8G3QjPrhf3e' \
    --namespace $AB_NAMESPACE \
    --userId 'Tmtc6LU8Cb2DYOXf' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '3cjNTbRJvamsuZtZ' \
    --namespace $AB_NAMESPACE \
    --userId '62HsdZpq3xzrEFek' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '1pTBNhjBdDjAlktx' \
    --namespace $AB_NAMESPACE \
    --userId 'Yl7sB0piuiSAhx7g' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE