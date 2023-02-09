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
echo "1..72"

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
    --limit '23' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "MpBRhGOK", "description": "HtFwA6Dp", "globalRules": [{"allowedAction": "sAa5Z3UJ", "ruleDetail": [{"ruleAttribute": "XI2xQFL6", "ruleCriteria": "EQUAL", "ruleValue": 0.07393008460200168}, {"ruleAttribute": "cLv2iuiS", "ruleCriteria": "EQUAL", "ruleValue": 0.14276178378319426}, {"ruleAttribute": "GicgocWy", "ruleCriteria": "EQUAL", "ruleValue": 0.3143419752339923}]}, {"allowedAction": "gciSLu2Z", "ruleDetail": [{"ruleAttribute": "Y8O8SbHR", "ruleCriteria": "EQUAL", "ruleValue": 0.15955161593642397}, {"ruleAttribute": "pGraBnVM", "ruleCriteria": "MINIMUM", "ruleValue": 0.26856330535822015}, {"ruleAttribute": "HypH6qXd", "ruleCriteria": "MINIMUM", "ruleValue": 0.48365512289202306}]}, {"allowedAction": "iTAqq0eg", "ruleDetail": [{"ruleAttribute": "Qk7IZnmj", "ruleCriteria": "MINIMUM", "ruleValue": 0.6134524807837092}, {"ruleAttribute": "74vBenQY", "ruleCriteria": "MINIMUM", "ruleValue": 0.04566850569362457}, {"ruleAttribute": "AJDnkeOe", "ruleCriteria": "MINIMUM", "ruleValue": 0.5010878438146189}]}], "groupAdminRoleId": "1lgupUbZ", "groupMaxMember": 21, "groupMemberRoleId": "vaOSmDiN", "name": "ATllzK11"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'ImSP6dcP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '2xEIyAHD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'ZoL6poRS' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eBUAn3QB", "groupMaxMember": 75, "name": "oFr5Yk3G"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'RZBgfe9r' \
    --configurationCode '39ivjPwl' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "d4lQHp8p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.27421787203889814}, {"ruleAttribute": "Pw3nLPsG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.003820779961972831}, {"ruleAttribute": "EgewML5N", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36795029459598216}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'uFTL8Dwi' \
    --configurationCode 'a2aVf5Zj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'P6L0wh79' \
    --groupName '5hMYJ144' \
    --groupRegion 'vNI2wm9d' \
    --limit '51' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'C2DKsyDz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '2oqNhQ2F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'w5deE1gM' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '69' \
    --order '5x2VRYkt' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "dQamBv3K", "memberRolePermissions": [{"action": 56, "resourceName": "Gws8G1M3"}, {"action": 52, "resourceName": "RRTG8taw"}, {"action": 44, "resourceName": "C1CuohPn"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '4O4yF6yD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'YUwu5nO4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'PpVrartR' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "6Nm1983l"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'sfUiIZuE' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 8, "resourceName": "nyaceIzz"}, {"action": 35, "resourceName": "CBa2ksvI"}, {"action": 16, "resourceName": "vH3T3UbF"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'xWw4nnEh' \
    --groupRegion 'QzAzRJHf' \
    --limit '73' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "rslVmVVa", "customAttributes": {"JbNPNtzw": {}, "tM0SK0LH": {}, "uMiMzM2F": {}}, "groupDescription": "lTu1zABd", "groupIcon": "kVRLSXih", "groupMaxMember": 80, "groupName": "grNGvm3b", "groupRegion": "AzIz0d1i", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "8OvlPMK5", "ruleDetail": [{"ruleAttribute": "ffqQUJAL", "ruleCriteria": "MINIMUM", "ruleValue": 0.4783862467604053}, {"ruleAttribute": "hByuCTVq", "ruleCriteria": "MINIMUM", "ruleValue": 0.24203112021794482}, {"ruleAttribute": "6AJ1jvnX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8281172535538146}]}, {"allowedAction": "72Ai7NWS", "ruleDetail": [{"ruleAttribute": "pukj1a9U", "ruleCriteria": "MAXIMUM", "ruleValue": 0.27745061660489345}, {"ruleAttribute": "KJxjgr6Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8842501038498527}, {"ruleAttribute": "UxSNV8AF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6206696115187686}]}, {"allowedAction": "oiR7dd3b", "ruleDetail": [{"ruleAttribute": "EaDzMPSr", "ruleCriteria": "MINIMUM", "ruleValue": 0.5779852444772802}, {"ruleAttribute": "RNQw3Ip8", "ruleCriteria": "EQUAL", "ruleValue": 0.8914063090432826}, {"ruleAttribute": "MBZ8g4op", "ruleCriteria": "MINIMUM", "ruleValue": 0.39017782502595355}]}]}, "groupType": "vXyAvwMT"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'FZC2S8Hj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'J4tf0KZs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2i0D5JfP", "groupIcon": "84j4ktDg", "groupName": "eFMqdBHH", "groupRegion": "Z0tESbsm", "groupType": "7dLRKfWl"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '1yJVmRwf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'hFPoPGw1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "rWyFjTxa", "groupIcon": "j2ULfNzg", "groupName": "PvmwNOX1", "groupRegion": "09KfAWeV", "groupType": "wG1uSgXh"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Ie1Au82o' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yMT1lvMC": {}, "qWe6Ph5C": {}, "in5Z0oyZ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'KFmNQmYi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '4kBsDAzG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'IhzZzOW7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'eCHK3skT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'sbbEXjfw' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'v088beDU' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '24' \
    --order 'TSAGTetc' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'WsXy5oZq' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"xTzQcWKV": {}, "rHdIR85P": {}, "jGSvFyeh": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'kHLwhem6' \
    --groupId '1MXvguEc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "lNV7rDrK", "ruleCriteria": "EQUAL", "ruleValue": 0.5386514067152254}, {"ruleAttribute": "QmJczvwH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08493436734637372}, {"ruleAttribute": "3f4Sbqcc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3801913187052981}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'BIfLNqRe' \
    --groupId 'Xl9dxWdb' \
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
    --limit '42' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '4bvUrQFr' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Sx07KjPj"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'VErenqUG' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "T1pL0VRU"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ARRhmZr2' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FOSZ2d7N' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'c8OVTh3Q' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SNc7QZPD' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'emhcoZOc' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'he2MdpFl' \
    --limit '1' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 46 'GetUserJoinedGroupInformationPublicV2' test.out

#- 47 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "JhbTVbIH", "customAttributes": {"zZm2LV3K": {}, "qGAhbN06": {}, "7zlcXfkw": {}}, "groupDescription": "ykk3rDW5", "groupIcon": "zcMa98jE", "groupMaxMember": 0, "groupName": "MvnqhEjA", "groupRegion": "npvhjbAu", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "4qeF0Aoc", "ruleDetail": [{"ruleAttribute": "NBOZumTm", "ruleCriteria": "MINIMUM", "ruleValue": 0.04901100451690865}, {"ruleAttribute": "zsehGXHS", "ruleCriteria": "EQUAL", "ruleValue": 0.0955085883234067}, {"ruleAttribute": "lQzOZkxC", "ruleCriteria": "MINIMUM", "ruleValue": 0.1935922514443088}]}, {"allowedAction": "B0ebGwZS", "ruleDetail": [{"ruleAttribute": "GxleZs3T", "ruleCriteria": "EQUAL", "ruleValue": 0.6387339289631198}, {"ruleAttribute": "Xvul6iJZ", "ruleCriteria": "EQUAL", "ruleValue": 0.023158478221103618}, {"ruleAttribute": "Jcs6F11J", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33633427479466127}]}, {"allowedAction": "5xC4dPH2", "ruleDetail": [{"ruleAttribute": "ANGyww5J", "ruleCriteria": "MINIMUM", "ruleValue": 0.5247961217875236}, {"ruleAttribute": "kd7mn2BT", "ruleCriteria": "MINIMUM", "ruleValue": 0.9841769870874661}, {"ruleAttribute": "2k4ZUZeD", "ruleCriteria": "EQUAL", "ruleValue": 0.8900385077065779}]}]}, "groupType": "wYMTApm4"}' \
    > test.out 2>&1
eval_tap $? 47 'CreateNewGroupPublicV2' test.out

#- 48 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["NpBPDfRS", "DXg5xGEo", "jx7085vx"]}' \
    > test.out 2>&1
eval_tap $? 48 'GetListGroupByIDsV2' test.out

#- 49 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'YSKi6HVX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "t2ljJk0A", "groupIcon": "PmM73kTE", "groupName": "5Rv8fGbb", "groupRegion": "w5KXgh0U", "groupType": "FNM37ltN"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePutSingleGroupPublicV2' test.out

#- 50 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'aBXFiTKg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteGroupPublicV2' test.out

#- 51 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'hBYBTvaQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "LZEObs9F", "groupIcon": "uu5S10rp", "groupName": "XK9KqKJR", "groupRegion": "z4cNd6rD", "groupType": "Rq7exEsH"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePatchSingleGroupPublicV2' test.out

#- 52 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'ZFZTc6op' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"qNJzHny7": {}, "vT2OstkV": {}, "S3wiRslc": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGroupCustomAttributesPublicV2' test.out

#- 53 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'L6xW1BMn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AcceptGroupInvitationPublicV2' test.out

#- 54 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'CmBiUgXX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'RejectGroupInvitationPublicV2' test.out

#- 55 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'niUmDVpZ' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 55 'GetGroupInviteRequestPublicV2' test.out

#- 56 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'iKQk5Wj0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'JoinGroupV2' test.out

#- 57 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'ZLBb8ZdS' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupJoinRequestPublicV2' test.out

#- 58 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'Z7fdFxKw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'LeaveGroupPublicV2' test.out

#- 59 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'ruDwOlmp' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"8RJ4yOVb": {}, "IjxP27im": {}, "lEszTiWw": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateGroupCustomRulePublicV2' test.out

#- 60 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'gAiemRlJ' \
    --groupId 'cg3QchNi' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "s8jeGQ5D", "ruleCriteria": "EQUAL", "ruleValue": 0.35295800004050704}, {"ruleAttribute": "DTqMtwzw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9988109991304912}, {"ruleAttribute": "C0ar5Nsf", "ruleCriteria": "EQUAL", "ruleValue": 0.5746330987766558}]}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupPredefinedRulePublicV2' test.out

#- 61 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'rGnuTups' \
    --groupId 'pNyNSWR4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteGroupPredefinedRulePublicV2' test.out

#- 62 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 62 'GetMemberRolesListPublicV2' test.out

#- 63 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '2twVZhPh' \
    --memberRoleId 'd4AwmoXO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FY1YcY6j"}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateMemberRolePublicV2' test.out

#- 64 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'SMBG2NoZ' \
    --memberRoleId 'nWqnpGhj' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "f2H3XhnS"}' \
    > test.out 2>&1
eval_tap $? 64 'DeleteMemberRolePublicV2' test.out

#- 65 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 65 'GetUserGroupInformationPublicV2' test.out

#- 66 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 66 'GetMyGroupJoinRequestV2' test.out

#- 67 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'H2FjxhRh' \
    --namespace $AB_NAMESPACE \
    --userId 'bRP3UszZ' \
    > test.out 2>&1
eval_tap $? 67 'InviteGroupPublicV2' test.out

#- 68 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'R2gFx8Fu' \
    --namespace $AB_NAMESPACE \
    --userId 'oB5oPOPt' \
    > test.out 2>&1
eval_tap $? 68 'CancelInvitationGroupMemberV2' test.out

#- 69 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '16Yc2nz0' \
    --namespace $AB_NAMESPACE \
    --userId 'xtQGZ1ua' \
    > test.out 2>&1
eval_tap $? 69 'AcceptGroupJoinRequestPublicV2' test.out

#- 70 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'xJwYN0SJ' \
    --namespace $AB_NAMESPACE \
    --userId 'b2JoeSFs' \
    > test.out 2>&1
eval_tap $? 70 'RejectGroupJoinRequestPublicV2' test.out

#- 71 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '2zmzQTfu' \
    --namespace $AB_NAMESPACE \
    --userId 'ujFWIoUD' \
    > test.out 2>&1
eval_tap $? 71 'KickGroupMemberPublicV2' test.out

#- 72 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'JfddJiGR' \
    --namespace $AB_NAMESPACE \
    --userId 'LCggK2eE' \
    > test.out 2>&1
eval_tap $? 72 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE