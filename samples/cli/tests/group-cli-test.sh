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
    --limit '4' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "EwxZUEOMNKifkCZy", "description": "cHkIx1geWcV2LW79", "globalRules": [{"allowedAction": "n6IXHKWFdYocQkZU", "ruleDetail": [{"ruleAttribute": "awc4wSzboGVQkgyc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5362933196082056}, {"ruleAttribute": "FjaH6X93WcUxcQ7U", "ruleCriteria": "EQUAL", "ruleValue": 0.44067077724398984}, {"ruleAttribute": "K1VLBeX2wxbZrsGQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6200762239780554}]}, {"allowedAction": "iw6Uf4Pw2qeJjzVL", "ruleDetail": [{"ruleAttribute": "uKS6hbriLi9w0oVB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07716483029692511}, {"ruleAttribute": "tHXyU3hIpfc8uVSc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.016069356274134194}, {"ruleAttribute": "Dmw6z4qKdgPClHY0", "ruleCriteria": "EQUAL", "ruleValue": 0.8930118329494269}]}, {"allowedAction": "Q62tpoyrDOcnmnne", "ruleDetail": [{"ruleAttribute": "yJZcQKTjZdzFDlrQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7513300569533662}, {"ruleAttribute": "lXZRM2lUK9L0b6rx", "ruleCriteria": "MINIMUM", "ruleValue": 0.14569884442712477}, {"ruleAttribute": "fjxxde44tTjw5Ca6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.963314642431139}]}], "groupAdminRoleId": "iR9M6ttqzDFyVsse", "groupMaxMember": 39, "groupMemberRoleId": "WEBIixCfagkP7Pxb", "name": "zIRyiEjJVdAgyHq8"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'hikgWOKJkB76qcrj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'ydH9pNwJKP3l3Lxl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '2aEchlBfUSHwwGbL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZRarQW5oBTwGah0m", "groupMaxMember": 63, "name": "YsK4oiTVLQR6xFrv"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'KiJHnnRaedzJgtGc' \
    --configurationCode '2ef4v9XClTBfJ7In' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3DTmlNIFc0KRpA7q", "ruleCriteria": "MINIMUM", "ruleValue": 0.1959945416760771}, {"ruleAttribute": "MhJwXAWR1dVSYoLD", "ruleCriteria": "EQUAL", "ruleValue": 0.3897421722748353}, {"ruleAttribute": "YoYmw25tdMfHzNed", "ruleCriteria": "EQUAL", "ruleValue": 0.7782220984662269}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'BzBR3BIzTqsZAKGY' \
    --configurationCode 'aw3Gc0bhyaXJQDCc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '4FvUgy9oP9oZmA0N' \
    --groupName 'tXY1WN19L7k59MNx' \
    --groupRegion 'aOAiiJRVjihB91wI' \
    --limit '72' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'jwhMMUIioJlzBrfj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'PYyghQiSJCsj97xY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'IriO64gktTKYE6wz' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '90' \
    --order 'Ll4A3bPGBDdjV3IK' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "hBXC9QU7sWK0cbUD", "memberRolePermissions": [{"action": 70, "resourceName": "W3LckuMp8Og3YsOJ"}, {"action": 66, "resourceName": "DtmJyOnNqNdTP6SP"}, {"action": 95, "resourceName": "DE3bWbcDt237zGEI"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'M0rBddAwdLUC3S7V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '29WP7dimBon4f4ce' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'YYdRnXwHEoEK8WL9' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "5oPl07nxpP75RPrH"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'na3NpY4sCH6KFo97' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 26, "resourceName": "ryKUu8XKp9hfisou"}, {"action": 22, "resourceName": "vvMwhzTF9w1l4cBK"}, {"action": 18, "resourceName": "JyAg2WfCYq8jNIBw"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'IFGSRKwlTBgNACNg' \
    --groupRegion 'blw0o8ObYPLSwouV' \
    --limit '13' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "k8vp7yRiMcbJweF4", "customAttributes": {"02sMYZLnWp0BW2mW": {}, "7xDZFxff91aghvNe": {}, "x4YjqDDAgcT3BKIv": {}}, "groupDescription": "OwoyY0HCWZEyjDun", "groupIcon": "nLYcAElVcinIKq75", "groupMaxMember": 12, "groupName": "d5wdYxjECTxXZqJ8", "groupRegion": "EuVQajHg9eGJcMMe", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "iwADuQEJAwDpiYq1", "ruleDetail": [{"ruleAttribute": "ZpyEjdP2BlahwIhj", "ruleCriteria": "EQUAL", "ruleValue": 0.12869113206362115}, {"ruleAttribute": "Np4iFhTb0mpMjotb", "ruleCriteria": "EQUAL", "ruleValue": 0.012422369175166148}, {"ruleAttribute": "E0GqlCuSFzxyns0q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5740270707683172}]}, {"allowedAction": "IZGxrhRahbk8xvgS", "ruleDetail": [{"ruleAttribute": "NMGMRSDatGQxacvN", "ruleCriteria": "EQUAL", "ruleValue": 0.8573192244775663}, {"ruleAttribute": "zxBqcCSV66woav5U", "ruleCriteria": "EQUAL", "ruleValue": 0.8692639161050227}, {"ruleAttribute": "LuWucPujz2TR3Lqf", "ruleCriteria": "EQUAL", "ruleValue": 0.23616958454736248}]}, {"allowedAction": "Uf2mIjQm715KaHiN", "ruleDetail": [{"ruleAttribute": "B47ZhnSdoSh2zjxH", "ruleCriteria": "EQUAL", "ruleValue": 0.3727654707108985}, {"ruleAttribute": "YU8zbXzE2blUjTtR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.586653651069645}, {"ruleAttribute": "sqjoqCwR83C4P0JW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4516554525227944}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'F1J0thVvmCwRcHHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'IE0ClaLDLlJfRrX7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "vfOX82oRrRutK1eL", "groupIcon": "Oej05oafUkE4y9z6", "groupName": "uVTuzDtSSsEE9bzh", "groupRegion": "A8olBfO0Nd41Icrs", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '1BXDvjfBkpXbr5W2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'w5zz2bTrbOnNRK3N' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "YBLloCHaWvVDkrtO", "groupIcon": "odg73VWuoZmQz1jx", "groupName": "ToBkAVL2BBbXIMNq", "groupRegion": "om47EFyssaGt0cYg", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'r79kVRcU33e9I5X2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"at3yW7iMdJJiTMBz": {}, "07sPNg0ZWojgV1IE": {}, "zjNoctxwZ4MrPQyV": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'SLgtVxqQOsOPUTRl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'aCSwrEdjrJCpBTf1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'RE4nmVUqS6WeRLOX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'LugHotVBauYm73oE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'e67qrrdc2OPUyskQ' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'TEU94S5qZADe2zIs' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '96' \
    --order 'ruUWHelzcem3QuHs' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'FdoX5SFdErhwrd8O' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"0LKNOCAfkRUeaIDr": {}, "j6NAkJOzN15HAB9T": {}, "GsHGdDUN7Et3rLa1": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'uSBUltW3pM5oHGLK' \
    --groupId 'OpJpHOfiQSmbI94e' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "DI67LYI9gatnSGDS", "ruleCriteria": "EQUAL", "ruleValue": 0.28889229031192676}, {"ruleAttribute": "RZu3aXiYb6fe4nnL", "ruleCriteria": "EQUAL", "ruleValue": 0.19233164295883542}, {"ruleAttribute": "NezxhTusURAixFBD", "ruleCriteria": "EQUAL", "ruleValue": 0.8948387968750158}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'B5zcTGRZRvQ9T5cY' \
    --groupId 'ZvUNpVNfcdqAZdSz' \
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
    --limit '49' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'yn8phVjRcJICIl3z' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wn8EKzRwLedmcRu3"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'FXv1evsPn9COnLCp' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "sjbQXsSVbuU24NvC"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'p5WlG3svNcYzRWqb' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5JbnEh0GqjzuA2Jo' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gkB9eNG3c4YwO77s' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZGbQBmraGfU9yYh8' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '1c6QVedIYP8FvnVG' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["ZqQLkeAAdyCFtTEQ", "A5KlA5ftLdjlFiQ5", "CenctlaDIuBQdmwX"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Wl1JuwqR8vcq5QoQ' \
    --limit '29' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'oE3HQSRJYCCVHRuq' \
    --namespace $AB_NAMESPACE \
    --userId 'LMPYcYJtPOe3UpPe' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "jXW9ZOoG3ppjdfou", "customAttributes": {"bfXP5NT2JyCkKB6M": {}, "mtH7WCFrrM4S7wNw": {}, "QFpOzenI9yCezz2n": {}}, "groupDescription": "lxU70trvON08ewkC", "groupIcon": "Iwygdmm9B9Q7lxmM", "groupMaxMember": 26, "groupName": "mp7dZzovxQchZFp9", "groupRegion": "LTA6LnR25vvG7F7C", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "r4FAQXxsafrV9gMW", "ruleDetail": [{"ruleAttribute": "gDtBS8HEgwfLBSf8", "ruleCriteria": "EQUAL", "ruleValue": 0.8480847872348265}, {"ruleAttribute": "x752mnPnJulo4EXl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01510446899378215}, {"ruleAttribute": "wt0pFKNH8eXTfe4g", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06825600612873284}]}, {"allowedAction": "vEUxadD6CyKEYi0X", "ruleDetail": [{"ruleAttribute": "LCGPPcusjXsVwN54", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6228230823752486}, {"ruleAttribute": "xcgql0p3tAWRSW8l", "ruleCriteria": "MINIMUM", "ruleValue": 0.5689928212066574}, {"ruleAttribute": "djQwpJlkMXoxt1JX", "ruleCriteria": "EQUAL", "ruleValue": 0.05437003793482553}]}, {"allowedAction": "2IIQgVd1zuuO5FxS", "ruleDetail": [{"ruleAttribute": "rgpdY27SvOV08vEd", "ruleCriteria": "EQUAL", "ruleValue": 0.0700198620603284}, {"ruleAttribute": "SUss1yR89lJ7kP9v", "ruleCriteria": "MINIMUM", "ruleValue": 0.5061516957615191}, {"ruleAttribute": "LZ3o3YtcFkcpUXnz", "ruleCriteria": "EQUAL", "ruleValue": 0.3023552864308241}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Wd5inLGxGQkqPruu", "WXaQwYA6Ms7J5yo3", "okRpBjqRoHvaSSsh"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'cOjnajW5ppyYOfEJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "1T3SWaMrXPo2NQdM", "groupIcon": "wsCW7AqbwBvTPbt1", "groupName": "3GDf2fbsX3X708V3", "groupRegion": "NME7ZrX24xqCvE54", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'VXSqovBcqeouuEKw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'vsUzLUIzy7WJYBLo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "lvWGpw9V4PfL06lx", "groupIcon": "5H9eeaq7MicTT09E", "groupName": "aUazl4EwPr9FPdbX", "groupRegion": "rxmLfTYCgPVlRJxb", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'roGJ234dgRlliecO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"wEUwlWzDyaoMFX5U": {}, "HiQfM0rtuK4io9tI": {}, "pqeKcYHEFm0egjk3": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '8BrtlbPABOGlzGHg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'BGWd8UmgRfnnFX0q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'crWAeDq6nafyvsSr' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'Mozlo7DJQZGhFM9t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'LJAwCN9dHSnv1TvP' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '12OtBjTjpvCUpzaa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'KcVADmuqzgoGMyPJ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"3mKiTTSqjF3Io1jU": {}, "CWw3KuLe34pw671T": {}, "YIiRzFom5D0Mtmba": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'U82g9rTOyVqwbDPH' \
    --groupId '4v6qgOPzMCixIPmT' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "gNcVYVFBUckLZKyM", "ruleCriteria": "MINIMUM", "ruleValue": 0.1774877856487188}, {"ruleAttribute": "om1Z7445Megj8k52", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4029373340603838}, {"ruleAttribute": "JQ0ua02TLgAN7Ntr", "ruleCriteria": "EQUAL", "ruleValue": 0.02920788955757969}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'e4s7dDA2GAfjiKaK' \
    --groupId 'c3amR2YCeieST7Mb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'gBf18gTRIu3ROLlc' \
    --memberRoleId 'Wl07bTstdg3kcN6t' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "f3KJvSsxHrJN8dmA"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'vC24CoDsdZzippw4' \
    --memberRoleId 'ArFJh4x73RDk0hgq' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "AS7Tul2vi36fijpU"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'RdojQuQmFlHci7YB' \
    --namespace $AB_NAMESPACE \
    --userId 'FGVzVS6DvmBVHCHu' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '2vFMkWEtANOpg0W0' \
    --namespace $AB_NAMESPACE \
    --userId 'iyK9FfDTmk1ML9Bo' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '3CBbhir48iJ43tjn' \
    --namespace $AB_NAMESPACE \
    --userId 'EkoudGm4xlZNCcTR' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'vutQdcJBdfXKxw4o' \
    --namespace $AB_NAMESPACE \
    --userId 'jeHpgZx6k9Xvxl7i' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'HhmffCCVCyKriWrg' \
    --namespace $AB_NAMESPACE \
    --userId '0BPCMSKRKTxV1r7n' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'ho9G2F3BHt67JA2T' \
    --namespace $AB_NAMESPACE \
    --userId '75xKyxM07yxACaD3' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE