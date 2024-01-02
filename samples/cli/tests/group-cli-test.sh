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
    --limit '1' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "dnGGhihZsqKJ8MPP", "description": "pDL4fw3ib4xqa0BB", "globalRules": [{"allowedAction": "xJPv0PZ0k4f9xXUC", "ruleDetail": [{"ruleAttribute": "AgSOKNy0DftKW4le", "ruleCriteria": "MAXIMUM", "ruleValue": 0.018250379236905645}, {"ruleAttribute": "SoZQBDdGnjlgHjuV", "ruleCriteria": "EQUAL", "ruleValue": 0.6473915625960555}, {"ruleAttribute": "hmgAZMKbRABV2ves", "ruleCriteria": "MINIMUM", "ruleValue": 0.31776434915361695}]}, {"allowedAction": "hEhWWfg2iRpPKy0A", "ruleDetail": [{"ruleAttribute": "7n0fA7hzDwdGFXAJ", "ruleCriteria": "EQUAL", "ruleValue": 0.9773695299529563}, {"ruleAttribute": "TzGjOo4hLsxALjuJ", "ruleCriteria": "EQUAL", "ruleValue": 0.28822366572028923}, {"ruleAttribute": "JYZRuMiPaqnu0x2T", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7449633948358692}]}, {"allowedAction": "uwWMZn5bq7tHt3bd", "ruleDetail": [{"ruleAttribute": "WJIe5RgE2A2VQALr", "ruleCriteria": "MINIMUM", "ruleValue": 0.20011617043111163}, {"ruleAttribute": "Y1B3q5hBYQbjBvxW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8150320754703656}, {"ruleAttribute": "R2xYEUxdyW0F0MIX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.23060875791907753}]}], "groupAdminRoleId": "Gnd9BslvtB5vE7jy", "groupMaxMember": 91, "groupMemberRoleId": "2xzWRA4WG63eR6Kb", "name": "Gyc88UPBCslBc9Cm"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'pzWBqSOLBc90Tc7p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'azqByh0Ev3NVlG9Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'WMHnqoYJMpu3Gynv' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EMdKYxLtKwuNL4uY", "groupMaxMember": 54, "name": "3A9bRXxXsIRo9ras"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '5TUHTuHqGY2Fp7zn' \
    --configurationCode 'm3vYk5f9f9XvPjMl' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "UAg9zVG5RrGz1pxp", "ruleCriteria": "MINIMUM", "ruleValue": 0.10020533942315868}, {"ruleAttribute": "7KZSNjCib161vx7i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41062945033224096}, {"ruleAttribute": "NqwV0Ugx52OjTYVx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18142081509741315}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'wsHQH8HN1Va8Qrwn' \
    --configurationCode 'xc4ONJGkF0tfJLUV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'NQ70bvV0PaUsCcxV' \
    --groupName 'yd5WKPzpbpAXGiO5' \
    --groupRegion 'uHLDypUoRPjqeaUW' \
    --limit '9' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '2hUvCsxCkwv1k1AH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '8fLhu2xSepPFdO6e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Ct8NB9XqR444Zcnd' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '67' \
    --order 'rNZZjKquVe8wlqRh' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "BswzaAoAPjIDBC90", "memberRolePermissions": [{"action": 46, "resourceName": "hDJ5tADEDM7LlQTa"}, {"action": 54, "resourceName": "ATJ2T5YcHERbCViu"}, {"action": 76, "resourceName": "BI2QOZZcBDRYwa7C"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'fqdwdGFMEDQOQ5XT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'hntoKlS5xaco4YYL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'MxwaYDN5Py3M05F4' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "X79r9F3uvp7OUoF9"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'YeJjdLLgdRxMigwC' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 14, "resourceName": "KTkQ6q1OmfZn13i3"}, {"action": 9, "resourceName": "16fBlAQQtdo1pQnF"}, {"action": 52, "resourceName": "bkOk3cv7KZofgIds"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'Hp0ibTb1txOQeIeD' \
    --groupRegion 'TwyxpA4D3c66yDxe' \
    --limit '27' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "NDcM9kYRGIHZKxns", "customAttributes": {"RDUPwfgCkMeHo9MO": {}, "qL9dwEbKFxDFiqfF": {}, "KrlW7Ai0laAwFLde": {}}, "groupDescription": "Zf7HY0uIuioFsvYo", "groupIcon": "zUQiO6DucnvAsvBy", "groupMaxMember": 62, "groupName": "57sGOK7nBszScTWk", "groupRegion": "Sd6wb8nsfzJ61Tol", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "WFRir1NODZtyr9gY", "ruleDetail": [{"ruleAttribute": "5nGD9BTTjjSNSIKS", "ruleCriteria": "MINIMUM", "ruleValue": 0.9562392511304706}, {"ruleAttribute": "cYyQNDsAN9qf1CoW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6200557653636823}, {"ruleAttribute": "orfnxaSaP5qGsRrv", "ruleCriteria": "EQUAL", "ruleValue": 0.8331794206164018}]}, {"allowedAction": "TLVpJXxFUX62VRNK", "ruleDetail": [{"ruleAttribute": "C8xBfEgZdYVNKOST", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04772314564091629}, {"ruleAttribute": "5eeGWWqTJfDXWKEG", "ruleCriteria": "EQUAL", "ruleValue": 0.8644348047748325}, {"ruleAttribute": "zzjiVkdGHJg4tIlV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8728307040688815}]}, {"allowedAction": "KoOLVWJIOgYNOMXs", "ruleDetail": [{"ruleAttribute": "ZO4CHomI5vUSsnEr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14944865628647408}, {"ruleAttribute": "U8U96sUri4tvwnYA", "ruleCriteria": "EQUAL", "ruleValue": 0.019955260288724408}, {"ruleAttribute": "aSIqt6lrDXbhn6vf", "ruleCriteria": "EQUAL", "ruleValue": 0.07628222861449452}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'muTbYGI0PFxIfFqz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'dHC8Qeoh0HXJiQVK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "c1NS2KpN8c61TV5C", "groupIcon": "Cx2HZCRjM2Zn8h7t", "groupName": "62qW4RZSzQL6OWAD", "groupRegion": "rzWbKyW5tXlq0zzg", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'nVXZH4splDzNqBTq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '4YSvOcT640ygG9qx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BY6UGkviMLCHTvQo", "groupIcon": "PWtvqGAfz7Jr891J", "groupName": "yOPOZ42mrpPqQkWf", "groupRegion": "Ji7eKZHPEI4nBpEx", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'qqd5B5WCC5IkuLUZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"DuPzfu0br98IsnWR": {}, "KtVo8HPAviwliKyo": {}, "AxUAfZvNNo542RBY": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'YpF3KV1Six3aCBMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'Yd1jbQuEYl1HxCRu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'zmbq75nGLNyanx6t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'D5gk1wBrDmcHQ097' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'OGrwWaU9xrepPWQD' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'jVFAGZiNFLzTqPvK' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '44' \
    --order 'hu28IGlyirdpmgql' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'bH133IFHknhhPfUH' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"UY3dGlxcE4SF0is5": {}, "dil7tu51M5qV0M8x": {}, "dMhqup6j4DUrsDKK": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'gzpT1rbzudF1LffM' \
    --groupId 'U11ukpqfvKmE6fLE' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "4zRpt2LVeTVIlJRD", "ruleCriteria": "EQUAL", "ruleValue": 0.6463380822324106}, {"ruleAttribute": "d8YIrJCyCCF73ObA", "ruleCriteria": "EQUAL", "ruleValue": 0.9131822941981041}, {"ruleAttribute": "QpekmexgVSUUqnfS", "ruleCriteria": "EQUAL", "ruleValue": 0.5086040813264667}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'XeQw6LA6E48Rw9nR' \
    --groupId 'VLU7eLrhoiiR3S2k' \
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
    --limit '43' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'FlQF0qqmJzO2Yde2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tqEImngt67M6dIiY"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'vxOGHANMQsubKoaS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "DippuyLf9xD45k7M"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '7ysNK051WijsbrEa' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ne7tBG1xzMboSg6v' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DSoQhPUV9nfVWTqo' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5D05J3kxaZF2kEMh' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WUYpcisfHBQ3jjbp' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["TLCTpHkdCTRjWatt", "WzJ5iq0VhmBzRO3T", "8wLPbXlIkjeD3YWr"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '6BC5nbrLuxV2vQBv' \
    --limit '22' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'eefjD5EwvMhtaVNe' \
    --namespace $AB_NAMESPACE \
    --userId 'HgbffnV6F95vqvMn' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "0hNbE4byX0j8CBZK", "customAttributes": {"PSSY2jrgctu2uxbd": {}, "hGqEXUhcTYg2cXQN": {}, "DPExBBC91WWb2Lia": {}}, "groupDescription": "E3TYvyeWLwX8RZqI", "groupIcon": "3BZ5B8HSdKHBukvt", "groupMaxMember": 17, "groupName": "0suyh3WOG1qPIqsk", "groupRegion": "29beRXiLfh7zseGf", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "T5p6JCqypx18g6eA", "ruleDetail": [{"ruleAttribute": "WDM53VfQTsuMfD1Z", "ruleCriteria": "EQUAL", "ruleValue": 0.2683993594247278}, {"ruleAttribute": "MzD2noOg38RNCb0U", "ruleCriteria": "MINIMUM", "ruleValue": 0.6320546159980946}, {"ruleAttribute": "F44s6KQth59W0Ntq", "ruleCriteria": "MINIMUM", "ruleValue": 0.12582605960907278}]}, {"allowedAction": "wKhDLPTCYm199dfr", "ruleDetail": [{"ruleAttribute": "TcBTwMT6uGgL72q1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2061480693050921}, {"ruleAttribute": "M0J2tjFeovbjr87x", "ruleCriteria": "EQUAL", "ruleValue": 0.03375857564653173}, {"ruleAttribute": "OmOrJIu9gWmhLvtc", "ruleCriteria": "MINIMUM", "ruleValue": 0.251440325451445}]}, {"allowedAction": "Mb29G1IwedTLww29", "ruleDetail": [{"ruleAttribute": "3bliox1S6FTXdfnV", "ruleCriteria": "MINIMUM", "ruleValue": 0.3256706143393733}, {"ruleAttribute": "zGHxuPauaGxmzAXW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7036927313736571}, {"ruleAttribute": "SZ9QF7RBiEhwkuJt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2234732733569712}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["UTsjvSkoD84ROYyA", "BQDUfM6VEj6pVPr5", "jgZNEQBI9hm4yaFz"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'j3QZ23S2WnpDtmRZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "enAWlh0PgnrMaCVG", "groupIcon": "36CHEELOn3GAOm07", "groupName": "hBF4yCeqvUoglYZF", "groupRegion": "oLjeCpFFzbU95xAF", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'zQjf7McPEt6MsAZz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'm1Yu3pxECiREk1v4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xfJzMShEg0sIxGN9", "groupIcon": "wUYpHDlkJMzWgzG9", "groupName": "qXxlls3K1nGHDTcD", "groupRegion": "h02aMJB7NtQKrRh2", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '5kkQtczagSWDTNhG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"HPWZQR8PLkCQ7WHx": {}, "U1sSUKWguWn83Kjm": {}, "d89vvCkxVCea0vS4": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'Y3gaLQ99QuKdqLXc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'In9L8tFMFRpKrOsq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'Xh7BZuGmwxIA2oK6' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '4fvLHZfDvOEOKCLe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'd3OFiptiXV06Zn6u' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '1xjAflbVIEy38u2z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'FmbdxamcIbZlEyBC' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"BF5PJemh13cd7vlS": {}, "Th6sjALs21upqRt2": {}, "RUSSxxXd2dpL5xGo": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'DeO6vESxRDzIHwMp' \
    --groupId 'aePmYb9OORJBlyRV' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "JLxCF2KN55Vvzs4X", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6963535574198793}, {"ruleAttribute": "cnq7QQBXOqcDKMYz", "ruleCriteria": "EQUAL", "ruleValue": 0.8340357778184593}, {"ruleAttribute": "ZdS61zqjXEcC7Kdc", "ruleCriteria": "EQUAL", "ruleValue": 0.04775886278482522}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'oA6k2MZMgOSsC6Ky' \
    --groupId '2hEqO2neJGVY1EVm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'tg0XcNwNc5w2IbIm' \
    --memberRoleId 'Qo6GBp7vdZ1IYNBo' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "v3Ae0j7A5mm5AIMN"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'JTpIa7SOpZseP67J' \
    --memberRoleId 'YuPD3U4oxcfy8sLo' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "xpc0cnd2dAknFVyT"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'DNPS46NWCD7GUY6c' \
    --namespace $AB_NAMESPACE \
    --userId '3lo5jZfX35LGCfTM' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'NZMfmgIDokAxMRUJ' \
    --namespace $AB_NAMESPACE \
    --userId '9d1CmuIKfxtkphXv' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'PdZCp1XePKkrVm5x' \
    --namespace $AB_NAMESPACE \
    --userId 'imVYUv1iMlRyQqIX' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'AqemPVPSzrqogrU3' \
    --namespace $AB_NAMESPACE \
    --userId 'GNi4zi2swG7ZEYE1' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '3iSu8xy5XlEPxlMH' \
    --namespace $AB_NAMESPACE \
    --userId 'ngPv3L7mm9vO55AS' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'vckizlS6twfsEPIc' \
    --namespace $AB_NAMESPACE \
    --userId 'feNZ34lVgi6EO9rw' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE