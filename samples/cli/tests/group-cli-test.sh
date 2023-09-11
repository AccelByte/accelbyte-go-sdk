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
    --limit '41' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "ZSzluiVn4i06SErg", "description": "a1lSoPIhFSm94nLO", "globalRules": [{"allowedAction": "X13fNx8O2nC7VtAu", "ruleDetail": [{"ruleAttribute": "J7w2LTWeVn2sY4s3", "ruleCriteria": "EQUAL", "ruleValue": 0.47590655417452643}, {"ruleAttribute": "hbLxT3J71WlDPEGx", "ruleCriteria": "MINIMUM", "ruleValue": 0.8246164457148072}, {"ruleAttribute": "WE9k6l8HkZjQu8yY", "ruleCriteria": "EQUAL", "ruleValue": 0.8225912798827495}]}, {"allowedAction": "kcbDjIzljWk3efOP", "ruleDetail": [{"ruleAttribute": "Pf3Oa613KUFe4cBT", "ruleCriteria": "MINIMUM", "ruleValue": 0.9494508743686753}, {"ruleAttribute": "jbS5UpGj8JlD3xey", "ruleCriteria": "MINIMUM", "ruleValue": 0.7927308278582094}, {"ruleAttribute": "dMmHRZpOKhjIEEfZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.369124023225882}]}, {"allowedAction": "BXdgp31TeJMBK4Ei", "ruleDetail": [{"ruleAttribute": "GR9aaRv2TBBvUTIc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04169556466001911}, {"ruleAttribute": "dDxBXS3NQ1GryLq2", "ruleCriteria": "EQUAL", "ruleValue": 0.9169125691744265}, {"ruleAttribute": "wOa86toXxfzwtxPl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.683293957064945}]}], "groupAdminRoleId": "Tkql7QbxDHy8izho", "groupMaxMember": 4, "groupMemberRoleId": "maKioX465mWNGWBK", "name": "UDNRsi00clm6YkWF"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'zQBiCuDt4XYxvLpp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'bCKc7NCa4aLDC6NO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'QD0483WbSR8w6Rlv' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vjiwJxu8IoVLivaB", "groupMaxMember": 94, "name": "4N1o8Ok9pUdVn7OD"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8WmZiN56KYl6sIit' \
    --configurationCode 'wt3o5rghf1dF5JyW' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "R6FaZBcV5SoII0Bt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19735680130203714}, {"ruleAttribute": "UyQWTRiudnPR7Jw4", "ruleCriteria": "MINIMUM", "ruleValue": 0.20100066004297434}, {"ruleAttribute": "SqtPUBqgp5LkUtx7", "ruleCriteria": "EQUAL", "ruleValue": 0.9882613097673526}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'dbWcxqkIWiiM5Ezd' \
    --configurationCode 'J7rkvIJcMvERyC4x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'N7Mp3TCQvajo2MpQ' \
    --groupName '6YGihgMiDJNVO1Mu' \
    --groupRegion 'y19jQMOoM1ixyFn4' \
    --limit '25' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '585csWsUaBucLT7o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'phehpCQdT0R1B5TP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'I4kWfDQTiW7m4llm' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '80' \
    --order 'HnZ3v0oSnGtIAA7f' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "5FSlztD8so5K8lLy", "memberRolePermissions": [{"action": 9, "resourceName": "XTSMuuQLd3spPgbE"}, {"action": 98, "resourceName": "7LzUywvxa7KrDC5V"}, {"action": 30, "resourceName": "SCNiEUKP8LeABsky"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'VlQJBA714EIothMM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'cl08wevOGTaLSToR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 't9D8XCURkVtzlVNF' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ECRNEmHsIb4daroh"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'xBiVGTg4JXvuXelu' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 10, "resourceName": "QXi7lJYvsRz18YgJ"}, {"action": 30, "resourceName": "9YI0pcgI0kvHGBKJ"}, {"action": 46, "resourceName": "a7TfxqShN8LN2knc"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'DkH2pQktyA4u1lU7' \
    --groupRegion 'IKypHvJZBH43aWhl' \
    --limit '91' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZFNeapcq48YacWaY", "customAttributes": {"6nJrV88sMeD5qtf2": {}, "kKasqYR5Heauuvol": {}, "eWZR2gcUr7SFgpAI": {}}, "groupDescription": "bzHRx0ArBlwJUWvb", "groupIcon": "31BEkLmPerp1jaQF", "groupMaxMember": 69, "groupName": "UTO1lRkrESnYLs5H", "groupRegion": "D7ZDIjTFrIovny1h", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VXXBXqO6QfcZagEq", "ruleDetail": [{"ruleAttribute": "TNnYHdgEM1sP45QR", "ruleCriteria": "MINIMUM", "ruleValue": 0.31637848639312827}, {"ruleAttribute": "sdZW8RCsBqbDzhHh", "ruleCriteria": "MINIMUM", "ruleValue": 0.12143781899894923}, {"ruleAttribute": "4V3lSUmUMPjFAQK2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7655490112248888}]}, {"allowedAction": "loQFDXipK9qDwVh8", "ruleDetail": [{"ruleAttribute": "Rp1Pi2xjkcANW7MO", "ruleCriteria": "MINIMUM", "ruleValue": 0.24997205175623538}, {"ruleAttribute": "GyZZ36LvjPQpfcuv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47376112918401325}, {"ruleAttribute": "uaSeccqFPYzr4eBw", "ruleCriteria": "EQUAL", "ruleValue": 0.5838706605738068}]}, {"allowedAction": "7dPYON4TVconKR8R", "ruleDetail": [{"ruleAttribute": "NGKVPFvnZAvlSofe", "ruleCriteria": "MINIMUM", "ruleValue": 0.7432231406390971}, {"ruleAttribute": "dBaeTReyVO4SGafO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03734630430853769}, {"ruleAttribute": "zCjbBbu0JkOnalj8", "ruleCriteria": "EQUAL", "ruleValue": 0.8230214473178252}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '8PHJEjlVGCdkgu4Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '9EMXd2JgjWJI0YPi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "NyWrxsl0GFG403fY", "groupIcon": "Tgcx7XD2BIvHZVrb", "groupName": "N63NW3RmdH9axZ9S", "groupRegion": "CFqzLEelGjhJ3K44", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'I6ctUkBAujzIcEc6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'kEQihUXxVt772MVx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "EQVhgzNc1b8dey6X", "groupIcon": "fHyKK4hRQOmOJH3Z", "groupName": "uVEKy7SrxCuQI4Gm", "groupRegion": "KEyIIqqNoyoanhQW", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'U6H5KnBX6Iz1yptS' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"4akGHkeT7REfZvwP": {}, "6rW1pOtuSdF5K3Y3": {}, "kD7ZbGyRzoS5JUz0": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'UAyPKR9C3eWC9LKS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'FeXJlvWp1HIVRFXU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'yeWVdJZ468vwKuEx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'EZpDddd1FxwqlBtU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'F63ZaFZgBAyefii1' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'EELGehexB6dArs09' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '26' \
    --order 'VyR2luC3e2LDOvNd' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'qPxRZ79AE5cpvv23' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"0Ul641qIRWAtfWx9": {}, "M7Ggh00xIykMD9Di": {}, "umuIMu4ezTm1zWK7": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'UbffGB8e6S8HOrlo' \
    --groupId 'BwOsplq5WDaAO2rI' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "jw6U0yyrSFDR2rrj", "ruleCriteria": "MINIMUM", "ruleValue": 0.05596292663095326}, {"ruleAttribute": "wqFcf7d0l7TyGMaA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8994959470609136}, {"ruleAttribute": "AB92QFaBPeMAUcHb", "ruleCriteria": "MINIMUM", "ruleValue": 0.8414117561986577}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'pSS9xXuwS9Xrp7yR' \
    --groupId '7gbFKZgsQp812k4K' \
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
    --limit '1' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'qrkYs1KvfkwrjqBi' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "AikG7BKL5foXwolH"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'j7FnEdUGSspreDPA' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "jxbYc5SwYN7MPaSM"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZzKUT3tbQcsBkILM' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bkFDBxKayRCfJ1fH' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WxnzvUkAtGA1uxId' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SqXBdrTPWXU4aaSL' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tvmOFockpnHlN2j6' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["3jCfJOy1r9EHSBcY", "n8iZEUSiFWgqpCoG", "2FXedn2KTcbiGXpC"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ho7OJrklTpIVtlTd' \
    --limit '45' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'BJunUT1uC9yZVuX1' \
    --namespace $AB_NAMESPACE \
    --userId 'xsSmSQCstcXp7bMi' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "T9LfjaWQ5gRa2D9M", "customAttributes": {"ZWXCBcKK6fjOlx0O": {}, "RHJehomqkgwfzQaU": {}, "YLSbZAghgcipcz8k": {}}, "groupDescription": "NkxlTwEQT6yZgcxu", "groupIcon": "v7h4kevNsRAZklFK", "groupMaxMember": 20, "groupName": "kYKzm58ZoWGgH8WD", "groupRegion": "K27nZ6EY0QtNAosV", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FibHNtJsNhu4WQhK", "ruleDetail": [{"ruleAttribute": "W8Oh12PRB3qPytgz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2102880898564089}, {"ruleAttribute": "gym4z8TJ7xLFJdqu", "ruleCriteria": "EQUAL", "ruleValue": 0.17681981549111314}, {"ruleAttribute": "svLTVqCRizLITvlT", "ruleCriteria": "MINIMUM", "ruleValue": 0.3817382669761158}]}, {"allowedAction": "irJSvUbMwFXOlMvP", "ruleDetail": [{"ruleAttribute": "To552Rx8MI4oYAT3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6275613377082935}, {"ruleAttribute": "816hmxfNar94ZQAX", "ruleCriteria": "MINIMUM", "ruleValue": 0.6188114639844395}, {"ruleAttribute": "Xkx9Oo8U4vSCdtIF", "ruleCriteria": "MINIMUM", "ruleValue": 0.3832109009485556}]}, {"allowedAction": "PN9okGgeN7kug25r", "ruleDetail": [{"ruleAttribute": "VAQqpUdISmJVqTnJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.4601943535779819}, {"ruleAttribute": "TqWmDeitLHlgahUz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.0912411195627193}, {"ruleAttribute": "iaagXJjIvpWfV6Vd", "ruleCriteria": "MINIMUM", "ruleValue": 0.41158057203415543}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["00vN8Yd4LbyOErT9", "fAEAM6J9M12YaOtc", "KJr5yYBxo4VAIvrf"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'psJ7U8n1BYvNAjoE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KZdaYsSGRRgBrjyw", "groupIcon": "CtUspFnRloZ5pEF5", "groupName": "WoYznKFpvyuAE2uf", "groupRegion": "fytb5hZ2XJnV3SDb", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'yJYwZhYdEJVm4MJc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'BFqGfPMAgiTFPXeX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "udJjLMF329KFhhPe", "groupIcon": "nxDuBqNvRpBvjFIr", "groupName": "jmOXLdX1ZyIyYsAW", "groupRegion": "TbXrAE8I9aUytqMH", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'vhONdjMdutDzptsF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"3eCrl32EVIM4Re4J": {}, "8ztvhHlXhALe6DAb": {}, "Fes5hUHGPocZqWuN": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'kseh5iWMQzckzioG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'iopjMMAfrCNTDWP6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'WjILtQ6naxOrlX9J' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'bsZxEceDBkq6cjCT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'pwDGmy2ttDrYaObw' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'YXb24m4smBaE9PJ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'yh9hHCECkBu2quyC' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"sd0amg3J8Bocc5vX": {}, "Vw8476AdneyIkfZO": {}, "azIH079IFioiIUJC": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '7vMiMhU7aVUD8lhy' \
    --groupId 'LSrYgjsx1QgEN4K3' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "GIB3neBK1eD89JmZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5942476066174069}, {"ruleAttribute": "4JqKrJuXdaZEkWqv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9690355804587145}, {"ruleAttribute": "hwgesO7nHAOBNVl1", "ruleCriteria": "EQUAL", "ruleValue": 0.7237143080487444}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'qxfGgy9nl6Kd29tV' \
    --groupId 'njQStHWYx1bNGoY5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'nthf4G2JM4y5LgKD' \
    --memberRoleId 'XRTdIq7kMNOoFbr9' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "CbTWpW4I5YG66ybq"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'ozZccd9p599CfIHl' \
    --memberRoleId 'u0hrMv1ZID1Hr60m' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zPDhJH3o0BFBadp2"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'LMqKGcAwlkE5Dltv' \
    --namespace $AB_NAMESPACE \
    --userId 'AxnJug8qSlK4eEQL' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'PfEWKVnTHI7LM4b0' \
    --namespace $AB_NAMESPACE \
    --userId 'IaDxKAJPqT2DAj28' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'NxL3JSPnJxMR8fcm' \
    --namespace $AB_NAMESPACE \
    --userId 'VYvK3yf65bXO6lCS' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Q0YjPDrWdpYwx3gB' \
    --namespace $AB_NAMESPACE \
    --userId 'JuOxuz91cPsWzKk7' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Tn42LPdh4vCKQ78l' \
    --namespace $AB_NAMESPACE \
    --userId 'kFxgZWDkNqszRN8H' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '8aylHw9gYJa7wtAu' \
    --namespace $AB_NAMESPACE \
    --userId '2FOwVpSV3cDVwIWJ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE