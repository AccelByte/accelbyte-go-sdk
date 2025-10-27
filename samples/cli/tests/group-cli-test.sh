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
    --limit '30' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "MOxefQyJmfj4mA7q", "description": "cy84dX5vYpenYHka", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Yq1yzditXca1tKd3", "ruleCriteria": "EQUAL", "ruleValue": 0.34243490638256324}, {"ruleAttribute": "xkjLZPcATDNfnAFm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3126213083485452}, {"ruleAttribute": "rEVrTeWZgYfCwdrm", "ruleCriteria": "EQUAL", "ruleValue": 0.7274328787928438}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Zc3Noxk96UuE4HUV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8965836638762502}, {"ruleAttribute": "HJPcuEOKQCFQQotf", "ruleCriteria": "MINIMUM", "ruleValue": 0.010189591517783203}, {"ruleAttribute": "8Zcja0xIBWaZ5ot8", "ruleCriteria": "MINIMUM", "ruleValue": 0.695641695664114}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "LqgRfQMKuZJaPZNE", "ruleCriteria": "MINIMUM", "ruleValue": 0.045598244209896666}, {"ruleAttribute": "KiiWs31F3YttY0Zd", "ruleCriteria": "EQUAL", "ruleValue": 0.059673476548084525}, {"ruleAttribute": "gKxtAuM8O3UKXyDX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9870474252818708}]}], "groupAdminRoleId": "m3qrEv6lPQYK2n5n", "groupMaxMember": 84, "groupMemberRoleId": "8maC8Y48OoSqZNHJ", "name": "tyqi1KCKb3d9WHKQ"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'WSx8F8c79eR7JLa5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'GZbgxuQl5u5ANhYn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'OSIxSXC4oHdnMjQm' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oPIv1u5AGNXqDp6n", "groupMaxMember": 83, "name": "90ifezE3sFekpdvA"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'kNkiUl27XGtdIeRE' \
    --configurationCode 'Ebb3hkBXwgBbM6sS' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "gFIQYbKoBXQIrQWd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2851659468923926}, {"ruleAttribute": "nN1hsXXBzZrYNRyi", "ruleCriteria": "EQUAL", "ruleValue": 0.7824186309744781}, {"ruleAttribute": "BXdNYyPwBxz10aOy", "ruleCriteria": "EQUAL", "ruleValue": 0.30173158062677463}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'NHXwQNugLHhp79sO' \
    --configurationCode 'N5nznsmPeN0OZwZe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '8ZjB6L9swvr9ZHSk' \
    --groupName 'QPBMtcAVhoL6yy98' \
    --groupRegion 'Us5DpWStpgucwasU' \
    --limit '58' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'CeSl5VtMIzr8n2oH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'tUD8BGhKTyiaobQO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'skTRmKNWNzajABfn' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '31' \
    --order 'ZlEK3jo4YoFkLzZO' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "r65KKzbvILQMdg3u", "memberRolePermissions": [{"action": 91, "resourceName": "df4kjL264scjAxGz"}, {"action": 71, "resourceName": "9EWKCl1Wxjeyscfd"}, {"action": 3, "resourceName": "F0GqqyRLOqMn2R9W"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'aHn9DYFBHq7jq6lD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'uVRmpPkGyrI0eXCI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '4TXAdHAKFzTpY7sk' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "OrsBvKpYhGIkxldy"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Qhzqeamwu527vGKC' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 39, "resourceName": "Sa3Ghw3FdHm2iGY7"}, {"action": 20, "resourceName": "LQwxFUSvbeZVgR3O"}, {"action": 58, "resourceName": "rDOCB7NGqAM6snXo"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'p6CUs39qUdc3AOaY' \
    --groupRegion 'fTVwJfkjcKBJJzbA' \
    --limit '99' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "O0OIXETCuoZPgo4a", "customAttributes": {"bDTSkKtU3GDjtjNc": {}, "qHwq3YibTvB607sB": {}, "WFVZqXhrYE7RvA8m": {}}, "groupDescription": "SpUT5cEz3swVeBaN", "groupIcon": "OXXlQ2sQr4dbxzR9", "groupMaxMember": 55, "groupName": "XncrO8fKHH2G4N5E", "groupRegion": "z6mqBwYWAdH1dkeG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ZKFWfmP5D825wOyK", "ruleCriteria": "EQUAL", "ruleValue": 0.4160115311897974}, {"ruleAttribute": "FEe7XhiFyDUa1Fuq", "ruleCriteria": "MINIMUM", "ruleValue": 0.0633167477917751}, {"ruleAttribute": "x1N8bM2GKgNmzcRx", "ruleCriteria": "EQUAL", "ruleValue": 0.4821185292122103}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "eORFaGriQhTn2ZC7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6890827982590311}, {"ruleAttribute": "2MNtqWSWWLjLRFQC", "ruleCriteria": "MINIMUM", "ruleValue": 0.016235520875871323}, {"ruleAttribute": "FZwLEe1679MQtpng", "ruleCriteria": "MINIMUM", "ruleValue": 0.268365586743764}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "uKc7XTqHWGMCJPU5", "ruleCriteria": "EQUAL", "ruleValue": 0.667415216814683}, {"ruleAttribute": "fMPUk2Ee3LAXRToe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4359855350311147}, {"ruleAttribute": "G8KKeGlcIzKrx6Tb", "ruleCriteria": "EQUAL", "ruleValue": 0.15704742641716463}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'P2jCEZs1Nk1vxybI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Ype0yeMzRhCk94oF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CGE8HSzk8o62tsho", "groupIcon": "eyeyTylfV1XG718Q", "groupName": "iiYgwz74PjVPTfVu", "groupRegion": "Jh1YQFxHIQAZdxpD", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'i5AIOJKHrIePO2tx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'SjCUho0dxIYrzGmI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Q272qxtibrZ7Aowu", "groupIcon": "XfwTMy2mlKBb8soI", "groupName": "cj2A4sE2IS4BYbfF", "groupRegion": "NAAFDmECGOLfaoBN", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'SmBcNItbB5dsZmon' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"JxvG85RgOYXGCTdi": {}, "MBtRn57qojfbb5xb": {}, "VuChYliBZxZzjU29": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'nX3ns5sAneus9Z7g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '0XGlkMlioPGbRuIw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'guHSTTiI9kguFz3b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'eKtc8muHA6O8DiCF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'I5l99Hl4h66gh4Ly' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'QhtX7cckSGmBtHfe' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '8' \
    --order 'PMMETG64yCjJqOhg' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '2q63q69xs6rD8d7y' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ZKX2oofD8gA9ljEa": {}, "sRbyO0nn2Ieup6lY": {}, "9LBvHgeSSYs8q7fZ": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'sXrlDzLdFRgChpUF' \
    --groupId '6Fw9BoYBKxlaPXcR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kKGLxLCDTCM3TGd6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8978787557525265}, {"ruleAttribute": "PguyEHGuqmmZevpy", "ruleCriteria": "MINIMUM", "ruleValue": 0.7692456160326845}, {"ruleAttribute": "Wg3vaJSfWadCyXiI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14572080858754055}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'IEJSYH7nMtyvWqXg' \
    --groupId '03ahbQMPqesVoPPJ' \
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
    --limit '63' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'VOKGjJ9DKoAi5uQI' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "V6omSeU9BDYDKxLU"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'nROxjAvbPinF9515' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "A7kU0kBbqGbNyZqT"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oYZEXDZbiB0wVkrg' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'D4etODbRv1zdjnIs' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fwplARczZamljqFq' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0golTAQXW7BuJmmm' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xo3mPE1jTmhxJ9JS' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["SAoEylRyh3o5u16W", "R8OPuf8yDWMDyJMj", "b6sFvLB5AaIImk76"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'keuofdmVp61OPPxb' \
    --limit '2' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'kJ7egFooOFSveO7a' \
    --namespace $AB_NAMESPACE \
    --userId '6uwpGVlR4wvgTuRG' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "YnU1I7doWFnk6d54", "customAttributes": {"pV592xdEMvIcMf8E": {}, "zehnKpd313O3D8la": {}, "BADaftX8L4Kopmvv": {}}, "groupDescription": "eAqZ7oCvH3Jsk43i", "groupIcon": "AjKn890MmcBsBVNG", "groupMaxMember": 52, "groupName": "BvOBsw5CRLvtFzhc", "groupRegion": "t3950j87HZeYp4CZ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "iG3gq3kOBP0zHhlA", "ruleCriteria": "EQUAL", "ruleValue": 0.16291795395109943}, {"ruleAttribute": "FOUZMcLM0a9EWYiI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1594565724686844}, {"ruleAttribute": "NTamOLfmj8e5iPiK", "ruleCriteria": "MINIMUM", "ruleValue": 0.732855268287278}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "zBG7rxFstActXYeZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5563999416477395}, {"ruleAttribute": "jK4iiiIwEYD4MBEZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6833724996090579}, {"ruleAttribute": "k1hceEuINT153GnR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.201914452032398}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "aWZVJ8j2yE4Th1uP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7928589786659441}, {"ruleAttribute": "vIwGtUklAWoLw4LI", "ruleCriteria": "EQUAL", "ruleValue": 0.7127356805779286}, {"ruleAttribute": "W8A64dc5jvp81OCj", "ruleCriteria": "MINIMUM", "ruleValue": 0.07323027961864281}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["co86qnqquCKkn08T", "35ADLbOHbDYncbvG", "ivr989Ply1v568kz"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '9w62sJL5ujmDsEI7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7oXDyC0FTaV87Zja", "groupIcon": "W6SNz6oh9tptuzYW", "groupName": "KpH60fjPpw0RfqnY", "groupRegion": "aK0P6T6WTM3AU257", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'D5BREyQwFLhWQziQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'hnVQD0x5oLGl90so' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KSmg9dsthaRdJpRc", "groupIcon": "75lfKQxttuZhFjPJ", "groupName": "q6wPgBqHewveL85Y", "groupRegion": "6T7dTQBQKzsHh8H0", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'hv98NlGdb7oh1EJu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"aSeqUZxkvbnxS9ZC": {}, "T4JfQb7GByYc6jf2": {}, "G4I5jitL7ZQSbZ3Y": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'TFKozIrMCpzLLGGh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '7ivh0kg0htp7MRFx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'DinEELb6Y96CwDCa' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'XnNJICDY2YNLP1D4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'AVnXhCudSrJ1OazL' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'l8pmknNWZuIyBSSI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'wZpb0HIood0FxDZg' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"0DNO8V8UVPTTJfj4": {}, "IklSnWoK8dgaIJkb": {}, "TqgDMon23nPEIjmL": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'dJbZ48untLN7dkx9' \
    --groupId 'wGTjIQ73v2CZ4XlV' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "1FpFQ17GcAOldxiF", "ruleCriteria": "EQUAL", "ruleValue": 0.35866223542785103}, {"ruleAttribute": "dlXIfu6urtqZkZ3o", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6403736999782901}, {"ruleAttribute": "89O4QDjG8NyyOy4l", "ruleCriteria": "MINIMUM", "ruleValue": 0.2911402554014664}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'koV4vihYsQkbGbht' \
    --groupId 'L90HxLf3knYkCnf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'LhTrSimsywA6edqG' \
    --memberRoleId 'CO7M5Kugp2O30V9q' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "xImeDACwttTZPrvV"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'EnN9VHuEQhjeFTbi' \
    --memberRoleId 'uFjjisfZKQa5ZGKz' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "8q9kkaguXr1RCr9K"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'ay0zqaTVL2k4UPWg' \
    --namespace $AB_NAMESPACE \
    --userId 'fd9qVay9L86A4GfR' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'iHKTmygMWBTlVexq' \
    --namespace $AB_NAMESPACE \
    --userId 'fH9m8kn9cs6hTjwj' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '5YB64mHltQVK5UYk' \
    --namespace $AB_NAMESPACE \
    --userId 'ITYfHyfxQnMJMxWq' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '5VxLO0K32loNxSeg' \
    --namespace $AB_NAMESPACE \
    --userId 'mneQZ8TvYe0Aq5BN' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'nuWxZdhlvBu2AtaJ' \
    --namespace $AB_NAMESPACE \
    --userId 'G501obS5CpTOwY4L' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'FTrOm5g4GBuE9ZYi' \
    --namespace $AB_NAMESPACE \
    --userId 'LWIFFumWBpZMVOm4' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE