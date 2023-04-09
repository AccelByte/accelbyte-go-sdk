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
    --limit '43' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "HdUkRbB3", "description": "IeRLQMxA", "globalRules": [{"allowedAction": "LDtwPEmg", "ruleDetail": [{"ruleAttribute": "RLVV6Ny7", "ruleCriteria": "MINIMUM", "ruleValue": 0.5374967301331652}, {"ruleAttribute": "PNFM8hSK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.826103142870868}, {"ruleAttribute": "BtNwdtmE", "ruleCriteria": "EQUAL", "ruleValue": 0.7074186753254663}]}, {"allowedAction": "TleOve3N", "ruleDetail": [{"ruleAttribute": "Y2r4Yvd7", "ruleCriteria": "EQUAL", "ruleValue": 0.6940141058181627}, {"ruleAttribute": "YhHhH8qf", "ruleCriteria": "EQUAL", "ruleValue": 0.9156146857670447}, {"ruleAttribute": "G2q1dpB3", "ruleCriteria": "EQUAL", "ruleValue": 0.5433010746266235}]}, {"allowedAction": "DI9saLKZ", "ruleDetail": [{"ruleAttribute": "PsicJyV5", "ruleCriteria": "MINIMUM", "ruleValue": 0.8993365442889522}, {"ruleAttribute": "BsWfKejn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34897777499291405}, {"ruleAttribute": "GINpSs67", "ruleCriteria": "EQUAL", "ruleValue": 0.10552341782848185}]}], "groupAdminRoleId": "ZjTGkG9Q", "groupMaxMember": 49, "groupMemberRoleId": "h4DabJpn", "name": "T3cDdkxT"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'pFdfJJSq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'pebfY77l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'B7vJAQfT' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SA3qFngH", "groupMaxMember": 70, "name": "UVPkmWEK"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'pc1QKeMp' \
    --configurationCode 'zEat93ss' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kGFdIzGW", "ruleCriteria": "EQUAL", "ruleValue": 0.15348273802081402}, {"ruleAttribute": "VOVIzdC2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.957384838246375}, {"ruleAttribute": "QuP3wzNg", "ruleCriteria": "EQUAL", "ruleValue": 0.13887884179825938}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'egArSQIG' \
    --configurationCode 'lribDYoL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'z9gDuk6U' \
    --groupName '4zTXB88H' \
    --groupRegion 'sh2AwTvL' \
    --limit '92' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '2Dp39LqC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'lay2Twon' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'wVAOqceW' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '40' \
    --order '9g1z4C5D' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "NC80tkfr", "memberRolePermissions": [{"action": 37, "resourceName": "5fRTWWGj"}, {"action": 74, "resourceName": "L5TkZIrS"}, {"action": 16, "resourceName": "moUbpJ0e"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '1XpKM7qM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '3bU4u0xS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'y5kk0J3J' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "d9Uua7LU"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'M44Q8NB0' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 20, "resourceName": "qIPcWcXT"}, {"action": 71, "resourceName": "2piygqmB"}, {"action": 88, "resourceName": "4HHbzefY"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'vF8ROle4' \
    --groupRegion 'gsPTps6X' \
    --limit '90' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "80xpOeT5", "customAttributes": {"LcIBvSC1": {}, "wTcyPrt1": {}, "qJcFM5mC": {}}, "groupDescription": "wpL3nDco", "groupIcon": "mPUyPDtI", "groupMaxMember": 19, "groupName": "KJZfSQK3", "groupRegion": "sIqI7kZE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Idzup88R", "ruleDetail": [{"ruleAttribute": "bH1ZPqAc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09980113566119686}, {"ruleAttribute": "7crmD2Ut", "ruleCriteria": "MINIMUM", "ruleValue": 0.5666819175114792}, {"ruleAttribute": "31GIi4Zj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.607012894617783}]}, {"allowedAction": "MQaNHyOk", "ruleDetail": [{"ruleAttribute": "4T333CgG", "ruleCriteria": "EQUAL", "ruleValue": 0.8572030066212853}, {"ruleAttribute": "5La6S9Vy", "ruleCriteria": "EQUAL", "ruleValue": 0.01247033331316505}, {"ruleAttribute": "NDu7HAxn", "ruleCriteria": "EQUAL", "ruleValue": 0.4308144672979606}]}, {"allowedAction": "J02RaUHp", "ruleDetail": [{"ruleAttribute": "4oCNpeAs", "ruleCriteria": "EQUAL", "ruleValue": 0.9708139400441491}, {"ruleAttribute": "CdtUonkh", "ruleCriteria": "MINIMUM", "ruleValue": 0.44850494608249525}, {"ruleAttribute": "VVmUtN4x", "ruleCriteria": "EQUAL", "ruleValue": 0.5163945592061905}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'E2jAuocV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'SWeLbBqb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "x5u6zt7h", "groupIcon": "EJPRpaXE", "groupName": "yXCU3OAi", "groupRegion": "F1P4xPxP", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'N18gTiCH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'yG8oRpRw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QgBvKoxV", "groupIcon": "QjZTiYDU", "groupName": "u40ZFUgA", "groupRegion": "WSwBnPEi", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '1ntANgc3' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gQmjsc92": {}, "iLYZ3gs8": {}, "qn2Us4Lp": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '4rD79V7t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'Vx1ax3Ue' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'h2iIWS4O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'QZuDRfiE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'eycAz29K' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'XbZgPZiL' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '92' \
    --order 'ipCMa1TJ' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'gHbz5gIZ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"1sYA65zF": {}, "tBun8ro7": {}, "rac9l2Mj": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'hO2oLrWF' \
    --groupId '1TvK0Qrr' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "qnNzc4zN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9686816350691488}, {"ruleAttribute": "N3XjOWdD", "ruleCriteria": "MINIMUM", "ruleValue": 0.8417604092193254}, {"ruleAttribute": "Byfb6UO7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43190302850129036}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'ok9FAJbX' \
    --groupId 'nbkWPffR' \
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
    --limit '8' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'y0AWvPPg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "DtGNodSw"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'modsNIW6' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "5i9kTUJv"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '44Wtawk4' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sFYVH0x4' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8Bwh8pjF' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CEAkyW76' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pVGoEM7p' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["YZEjpwYc", "jdH9Be4E", "oGcfM7Fh"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'iVudxtZN' \
    --limit '73' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "F0dABIYs", "customAttributes": {"3cKxEy1f": {}, "HmlfxyxC": {}, "I1unNSrd": {}}, "groupDescription": "HuJXLca9", "groupIcon": "lH8FppSs", "groupMaxMember": 10, "groupName": "9LpQwBjL", "groupRegion": "pzKHVwtr", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "f132cxhO", "ruleDetail": [{"ruleAttribute": "D6VeSDBT", "ruleCriteria": "EQUAL", "ruleValue": 0.8305767260762912}, {"ruleAttribute": "HJTRl71X", "ruleCriteria": "EQUAL", "ruleValue": 0.2484893256612406}, {"ruleAttribute": "UMprvuOE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05159437907263009}]}, {"allowedAction": "ojORM6G9", "ruleDetail": [{"ruleAttribute": "wN6JwsFd", "ruleCriteria": "MINIMUM", "ruleValue": 0.263223500654143}, {"ruleAttribute": "yaCiPV4X", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7083424857780052}, {"ruleAttribute": "ZKmMGV8H", "ruleCriteria": "MAXIMUM", "ruleValue": 0.86862082487104}]}, {"allowedAction": "GkrQ4E4w", "ruleDetail": [{"ruleAttribute": "yAfxNLgu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02082887245467302}, {"ruleAttribute": "do4vIjYz", "ruleCriteria": "EQUAL", "ruleValue": 0.1195353618008913}, {"ruleAttribute": "dCuap14M", "ruleCriteria": "MAXIMUM", "ruleValue": 0.587674547738419}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["qaQI4qlQ", "r0fOFt7j", "DHZCHcg1"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'IqySmew2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "tGFLuPAc", "groupIcon": "lTFiiEX3", "groupName": "oPQDYZJr", "groupRegion": "CawRWxNM", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'xIRwt1XA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'gTxbIxnH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "pHMAkHr4", "groupIcon": "Q6Y1CbC2", "groupName": "paURZf2n", "groupRegion": "1RYD4a2m", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'emanj01N' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"WdGCfKHL": {}, "7EXc9Sag": {}, "t9UFahL7": {}}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'fPdZpcU7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'tmf9kfcM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '6tJadKHR' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'IML9dYbu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'FjmOqxYo' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '2aJtQD2K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'fBcSo3A2' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"kJpMvO7q": {}, "0M6U56QN": {}, "VCb5BoZQ": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '39NLNYrR' \
    --groupId 'dkkhltxR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "DLm2ODx5", "ruleCriteria": "MINIMUM", "ruleValue": 0.3657295129722077}, {"ruleAttribute": "IfNZfxBF", "ruleCriteria": "MINIMUM", "ruleValue": 0.5930782327403117}, {"ruleAttribute": "FeQpGKH1", "ruleCriteria": "EQUAL", "ruleValue": 0.5310322688685883}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'TMLM3Xd1' \
    --groupId 'MGKfaxmh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'KV4MK2k1' \
    --memberRoleId '2hSUw310' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "jkIaPbtP"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'hZnB1DME' \
    --memberRoleId 'p4spu7so' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "hWs0uHAE"}' \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'uAxPLUKC' \
    --namespace $AB_NAMESPACE \
    --userId 'mSnLQO0D' \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'XXGroCiW' \
    --namespace $AB_NAMESPACE \
    --userId 'wKj0Rhu2' \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'eIsTK1F5' \
    --namespace $AB_NAMESPACE \
    --userId 'yrboCtAm' \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '4hmIcBog' \
    --namespace $AB_NAMESPACE \
    --userId 'yNaKvYuK' \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '2c9jO86A' \
    --namespace $AB_NAMESPACE \
    --userId '0Sx7BOcQ' \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'n8lS0w5V' \
    --namespace $AB_NAMESPACE \
    --userId 'IYjC05HL' \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE