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
    --limit '13' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "wBspxoAhgj1RGlou", "description": "H43Tn1MxceHW6HL8", "globalRules": [{"allowedAction": "OTgbdbAPVDNlDrgs", "ruleDetail": [{"ruleAttribute": "p9PJ1pRxaJJEU0Hq", "ruleCriteria": "EQUAL", "ruleValue": 0.7343423706048381}, {"ruleAttribute": "AaQc07KifVSDuCk1", "ruleCriteria": "EQUAL", "ruleValue": 0.403885111222124}, {"ruleAttribute": "vogjDjtaw4psD4MJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8979642787805399}]}, {"allowedAction": "v6kiWyxtg9On6UGy", "ruleDetail": [{"ruleAttribute": "bDlaDPjjDjGvYFjX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3278080672299991}, {"ruleAttribute": "DPPoodJa6RNNZzF6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28570547552495573}, {"ruleAttribute": "KviyVu7z1kNVtn7t", "ruleCriteria": "EQUAL", "ruleValue": 0.7444156790419095}]}, {"allowedAction": "lvwDptThnHNnkrZE", "ruleDetail": [{"ruleAttribute": "pXP8BeNr8g6cEkyF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5904898497865002}, {"ruleAttribute": "f69hEN8hQBVqupQ5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8957124773155665}, {"ruleAttribute": "NOmb9DGQ4Ll7MbMw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.762342960180779}]}], "groupAdminRoleId": "ZrprzbTvCCB9TGHF", "groupMaxMember": 40, "groupMemberRoleId": "Wj7JkbIWfM37BuyC", "name": "n7Qw6DV5ZGCVLimi"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 't5E8jJQVINWSaxnw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'rcRZqiYMIEDS1zbN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'fttdoMxfRjhLXmXp' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2UMuIRZRmBqOMZeo", "groupMaxMember": 19, "name": "BEqxbE88GlRPSASr"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '4JhfrqnRzqV8hDVW' \
    --configurationCode 'jY1Np0YwzcsxhGFm' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "8EhGrWkfjRsnUW50", "ruleCriteria": "EQUAL", "ruleValue": 0.6477169733645434}, {"ruleAttribute": "qTJ6eZneVh2kbeKn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4251032905389369}, {"ruleAttribute": "n0IR5xMZ1vlsn3KE", "ruleCriteria": "MINIMUM", "ruleValue": 0.8939522996469864}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 's6wBD3Erlk8KUGSm' \
    --configurationCode 'o2xt6BR9U26AdYxY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '43Nw1wwbaE2fC2wj' \
    --groupName 'SLOhRoKcB94tgsPz' \
    --groupRegion 'IdUUnrFmtwEvM4Mv' \
    --limit '29' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '7qQtk4g32s1Wbcff' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'zDZErNAMreX0bqor' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'e95tMJSILaNB4pdr' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '82' \
    --order 'tAceLApIrXosMovW' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "fHMF1NklBCsNZkSf", "memberRolePermissions": [{"action": 56, "resourceName": "TzlFAuHjjkzhjgLy"}, {"action": 69, "resourceName": "MDlYkM2SuxbPsVs0"}, {"action": 41, "resourceName": "wYROOOlcHSm87V9m"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'nFZhXB6medOCIp8S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'ia7YrTW39vvzmBmO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'pzL9sgsttDGE9KMc' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "UfknVjo7SpS5bk8S"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Xks11DL5t2k7CaDB' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 59, "resourceName": "nn8aPfOV542AKLzh"}, {"action": 10, "resourceName": "Tkm6Qo4QBPpvBlYG"}, {"action": 92, "resourceName": "Ar6SDjT2LgOkcDnJ"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '3pXxbctD9J5fiEZQ' \
    --groupRegion 'fyqoac9W7msITHXz' \
    --limit '82' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "oi1ad77y2vAZahIH", "customAttributes": {"bTPPL9WMZB3WWLSq": {}, "WDuaILJ44rCy6u3h": {}, "2iwpXWvcIMmTxM1M": {}}, "groupDescription": "Cj1R3WDIQ7VetQdd", "groupIcon": "ZgXEBd22Pu2ob3XA", "groupMaxMember": 74, "groupName": "qMAH3mNZqAckunQb", "groupRegion": "DhlgzHlaYSUVdGkq", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "9qRMIkCFWU1glDjb", "ruleDetail": [{"ruleAttribute": "oO4fYZEvX9NbdSeK", "ruleCriteria": "MINIMUM", "ruleValue": 0.8251981227740435}, {"ruleAttribute": "7OWujN6b9K5GtiZK", "ruleCriteria": "EQUAL", "ruleValue": 0.12054916905975976}, {"ruleAttribute": "mp2SvldiIf0drf2g", "ruleCriteria": "EQUAL", "ruleValue": 0.501476073213925}]}, {"allowedAction": "IbCqBGSRXxgLuiXA", "ruleDetail": [{"ruleAttribute": "bjmNrAPcJn0PQe1B", "ruleCriteria": "MINIMUM", "ruleValue": 0.30176748769857453}, {"ruleAttribute": "meA3yOhr4wWvWJmz", "ruleCriteria": "MINIMUM", "ruleValue": 0.9584456104579971}, {"ruleAttribute": "0PjdoZSULU5F6ttr", "ruleCriteria": "EQUAL", "ruleValue": 0.5316892112072952}]}, {"allowedAction": "NhNdnGMS01otTKBD", "ruleDetail": [{"ruleAttribute": "UCGD2PLC9aGgeqNb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12393276911171491}, {"ruleAttribute": "4NQfJ0ato5AkAb4M", "ruleCriteria": "MINIMUM", "ruleValue": 0.5022721327143372}, {"ruleAttribute": "Xe9M5A8JdVl8ri3f", "ruleCriteria": "EQUAL", "ruleValue": 0.6150742204162827}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '9wY3eF5ZRjJFPEPz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '2LQwdu0lEntbbszX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "P6KIdBwEgKzPpdo6", "groupIcon": "OMpDPMd27C8UI6Zy", "groupName": "sJg46UXXAkNLcO8I", "groupRegion": "qYEEtNHKaNnLmuCK", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'c3uyhx7LQ2iE4XM2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'udYb4Fwdip6Oe1Vv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "1B0vRj9nW5mTFa8p", "groupIcon": "oHV9OUuMsnCaS2K2", "groupName": "9Al6kSm3tOQ07ZBy", "groupRegion": "xu11ywOCNWqyufFQ", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'NmwSbMvoGT0acKJO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"cL2vuLsJnCfpPcZo": {}, "uDNm3CNwbJkBzRP9": {}, "KDiK5KlU2cGWvUMY": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'KXVEyD6fqQNUZQAS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '4OVuK7vVwAGSANEY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'D8BTRoJT0MPjdt4G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'NOcUewsK8zE59zeE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'hkyyxvTW2KTy46jI' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'dhioswAB6xf0GeCY' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '79' \
    --order 'pnVxRI9hQsWv0Og0' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'r6Z8OZpSVY1KUyTm' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"q1znHL6u6GGaibWC": {}, "7p7OeOEFTKSICSO3": {}, "IlS4sF4pGHgdx5Ub": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'AzXfvTPDsMEFcf5O' \
    --groupId 'kH9qv27Z2CqWkRjh' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "bJIOk37P3PrguKMs", "ruleCriteria": "MINIMUM", "ruleValue": 0.5169974456898817}, {"ruleAttribute": "vxpAtuIIltlT4iYc", "ruleCriteria": "MINIMUM", "ruleValue": 0.14089333136106086}, {"ruleAttribute": "LY4ZHMFLFZ32Jh81", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11620303878430716}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Pu3zvj1wRZFzwlPB' \
    --groupId 'LMSChlUf5zOoeylI' \
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
    --limit '100' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Nhn5uhMsAlQWdngs' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "eFnlYoxgIgeQYwGD"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'kYtR4t3tGWEV0etT' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tnR8bvhyBUarnyMe"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6pAdUYzqsyqV9z9I' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yiYyS1ArHiAut0AC' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Tx1W9eN5Q1Gh4qvT' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hf3FrmqCT3VI087G' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6FMUsq5BSfDipLcz' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["xFYEtevnyi17aRRN", "Gt7G11XdCmfc9eTW", "R64zWyrjQ3McLtND"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'no2fEnJQqReTisUs' \
    --limit '97' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '04Vq8Fmt8XHMmZz3' \
    --namespace $AB_NAMESPACE \
    --userId 'logBd2UQeCcB7Xia' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Jv5PfjGnGPNeVjZ0", "customAttributes": {"9OwgdTW1b2YbDYHF": {}, "KKesNmJ17COnFpm1": {}, "9JLrKSZ3pqKhdQ1u": {}}, "groupDescription": "XUFGFZvZMzGBVB0C", "groupIcon": "nrOf88gNEhJNlJQl", "groupMaxMember": 98, "groupName": "KM6pD2UoWxGi66iK", "groupRegion": "IOep4JPgZgrdAj9N", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "7MkYZqZT4FgmUfNl", "ruleDetail": [{"ruleAttribute": "bOxhGsOPHSKsNLxh", "ruleCriteria": "EQUAL", "ruleValue": 0.12380666925425798}, {"ruleAttribute": "dFTdJJu8hgTy8VPL", "ruleCriteria": "EQUAL", "ruleValue": 0.6280206592812805}, {"ruleAttribute": "47vXDNl9RletpxB3", "ruleCriteria": "MINIMUM", "ruleValue": 0.8316427059965478}]}, {"allowedAction": "3E42lB2v9ofNItg5", "ruleDetail": [{"ruleAttribute": "IsfoecefbcKtVgUj", "ruleCriteria": "EQUAL", "ruleValue": 0.08147834719859193}, {"ruleAttribute": "ojYoLXsulLZBwUcW", "ruleCriteria": "EQUAL", "ruleValue": 0.4238413670121971}, {"ruleAttribute": "jvighUKkPTppVDAo", "ruleCriteria": "MINIMUM", "ruleValue": 0.7422644589548866}]}, {"allowedAction": "7LKuUyYXrVsKn076", "ruleDetail": [{"ruleAttribute": "fJI5lBjVhc4zHZKS", "ruleCriteria": "MINIMUM", "ruleValue": 0.8329165014306202}, {"ruleAttribute": "3y38hMDxCeigKlR8", "ruleCriteria": "MINIMUM", "ruleValue": 0.2612052690980946}, {"ruleAttribute": "08tXvxuMJPwl7irw", "ruleCriteria": "MINIMUM", "ruleValue": 0.2971272397213308}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["yResnxMhRFESxXZp", "zHxshVcOmgr8yO0s", "njgjuvH4bpmep1bP"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '8HiUjbmUYhxVDA4T' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mKZUsgEXTvDUaA4b", "groupIcon": "vhepX50B7LDC5kXj", "groupName": "ts7rhJq1SiRkub3y", "groupRegion": "hCVzDs4cDoIT86kn", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'tfoadrYwUrfzzf0b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '3ybVBTrMPqkb8AkI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "uPyijwEVUXpiGIeT", "groupIcon": "UBMEqpJ15mEeTQiv", "groupName": "u1WptKCaAYgvMQOP", "groupRegion": "VO7AHzsUau78Jd31", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'XOKHRcMiaxAIYxmj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"nCav1SjOvy2dkEqB": {}, "OJrPlAS9QxKpAYcq": {}, "4ixZx3GRQ6GiZFPD": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '3ZprdbQ1qEJVWgFa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '1XlVIJmqSB6qQnwa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'l4HhBgdHyHYoaGGt' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'YA47Qm69LiBjRKpP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'dLi3gQE1eT17Tbqh' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'G7yQPmBlsQUNoxoN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'bhqfnoFtTbQIIez5' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"lXb0FACP0aOxNWhy": {}, "ashjuNaJpW4KOweb": {}, "8offMTbN8YqBqVM9": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'kqOcWAfivv9nIZaS' \
    --groupId 'E3X2TBUpby5cPoE7' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "qklQQvcX511eba5T", "ruleCriteria": "EQUAL", "ruleValue": 0.9195851504527373}, {"ruleAttribute": "UFbslK51AVZFoDjx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2101366887543954}, {"ruleAttribute": "sToRIwGfdAI8YDwa", "ruleCriteria": "MINIMUM", "ruleValue": 0.7813166570421656}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'TZPVmYrw12PHsSWe' \
    --groupId 'ux8XXMupg8NpcdH4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '7rC3AWQb9HmE97bt' \
    --memberRoleId 'aPgrtjJTzMmsImTH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Ad6wrbXmXqEbEVW9"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'WDF8e5bwkyppkIpE' \
    --memberRoleId 'VFrG5a6XywCrnZ00' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "c6GIvucwPzljGwbD"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'xDs5Uj5XykWbg9kM' \
    --namespace $AB_NAMESPACE \
    --userId 'aXwKvBFgsJRndlPi' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'rp92DXTxnfL3OeDJ' \
    --namespace $AB_NAMESPACE \
    --userId 'njCeiLtWqrc5LDvH' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'g3q3GhNMgBnYePnm' \
    --namespace $AB_NAMESPACE \
    --userId 'ZydVgZ1isA5z88N2' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'hrjW1xTzcxbKMAsz' \
    --namespace $AB_NAMESPACE \
    --userId '5lXhafRqN1ZvF81c' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'eaNo8H0DrGeJacrc' \
    --namespace $AB_NAMESPACE \
    --userId 'bKFsyah6XuG8RpRu' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'tn8dWa61Wa6cPknj' \
    --namespace $AB_NAMESPACE \
    --userId 'tZgmpWA9AHPm5Ogz' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE