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
    --limit '69' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "Kw8UZFtQhwMNf1gc", "description": "7Zogkk4uBXZU1BCo", "globalRules": [{"allowedAction": "C5oqacesyE8LzxaU", "ruleDetail": [{"ruleAttribute": "pyzCuCrezLoDIk1h", "ruleCriteria": "MAXIMUM", "ruleValue": 0.843587358275904}, {"ruleAttribute": "MWHgmXYBkr0NON61", "ruleCriteria": "MINIMUM", "ruleValue": 0.3518030939905862}, {"ruleAttribute": "48J8WMAr3Odk83BD", "ruleCriteria": "MINIMUM", "ruleValue": 0.23534474633317803}]}, {"allowedAction": "h99adGgY0HQRQGpC", "ruleDetail": [{"ruleAttribute": "HxPT9tm73SC1NIDL", "ruleCriteria": "EQUAL", "ruleValue": 0.22492877885294837}, {"ruleAttribute": "AuioCOpuJ2vNT49Y", "ruleCriteria": "EQUAL", "ruleValue": 0.7721501765006609}, {"ruleAttribute": "NkTTJUaOrYCdS3jB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6877619532250618}]}, {"allowedAction": "7aM6mjawXeGH6Vok", "ruleDetail": [{"ruleAttribute": "zOXMoUOTgWS3iuAN", "ruleCriteria": "MINIMUM", "ruleValue": 0.4958417330489844}, {"ruleAttribute": "TPebAuFj992g2pe1", "ruleCriteria": "MINIMUM", "ruleValue": 0.3290806626609877}, {"ruleAttribute": "vMAoexnMxrobTqQx", "ruleCriteria": "MINIMUM", "ruleValue": 0.6292936608530878}]}], "groupAdminRoleId": "w6GBWS4ZZf1GQonc", "groupMaxMember": 82, "groupMemberRoleId": "pGMl0SbtbbJUv2hB", "name": "Ze2DXWxwbzy9AYOJ"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'zaeRHOGXwxkukAfh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'cjQWfeiIbVkd6aRr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'gq8BVdmKtY63vWNJ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2qA3z7sdFE5vJoCB", "groupMaxMember": 60, "name": "xguVAcpDubKBhkCe"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'A3fBmkFHY22B0Fjz' \
    --configurationCode 'OSYHDRZ6OYaOnANj' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "4kGe9mOrXm1VN1xs", "ruleCriteria": "EQUAL", "ruleValue": 0.2921411290573289}, {"ruleAttribute": "EFKBdj0me6AxDHof", "ruleCriteria": "MINIMUM", "ruleValue": 0.007149251145784352}, {"ruleAttribute": "W8hTKaAKb1KwGhTC", "ruleCriteria": "MINIMUM", "ruleValue": 0.7967021961466251}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ha4zscnbzVhrl9Wx' \
    --configurationCode 'AIqeX1aDLdScafYo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Dk2LTA93389vEYJh' \
    --groupName 'RuaZgENTi4tURYiV' \
    --groupRegion 'DgHhEYdqJIxx3Kyz' \
    --limit '37' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'Tqzr1XuWYfQQY59V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '5dpabLcziy2RuPT0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'dwWHZjofWi63QLNz' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '35' \
    --order 'j8JkjDowNmBAw4gZ' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "DbXyclBxGPTJUZAG", "memberRolePermissions": [{"action": 6, "resourceName": "gKJw5tW9ljgFh2Rl"}, {"action": 62, "resourceName": "GIYtgCL3609sCshI"}, {"action": 92, "resourceName": "y2MFgtdr5z3EE5Wc"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'Td5Dk08d4Bahs3LB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'ZzaH38Au3fS7Fglr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'DFN5fvFitmGEwh1Q' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "r2HHl2tu2HvWiWEu"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '8ZEWWIMhQbfsAwsv' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 53, "resourceName": "AcyTiB6zy39Q6vyR"}, {"action": 20, "resourceName": "Qr0HUco5REJ0dzb5"}, {"action": 65, "resourceName": "9IaRlzzq4krHtP3t"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'VuQk9dKpXWBw17Sq' \
    --groupRegion 'NG2bJP6YBEWbzQCW' \
    --limit '44' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZqzQH91N4imDCh1A", "customAttributes": {"mgHDAdwvi0MzF0Ed": {}, "CQnKxz80LV441fpq": {}, "FwZuV1i2i0CKn1Ag": {}}, "groupDescription": "KWCsyCj4jB9DQZta", "groupIcon": "N7eYaqbGlHZ4RTzA", "groupMaxMember": 69, "groupName": "N7GcsNGZm8W2vN0Z", "groupRegion": "eiwkXcExNa2iZleG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "KSX5J1PTfECN4LFM", "ruleDetail": [{"ruleAttribute": "chKdIG8SsFRhHqeo", "ruleCriteria": "MINIMUM", "ruleValue": 0.3852906114703164}, {"ruleAttribute": "csLs4Zmu2gSGhs9Z", "ruleCriteria": "EQUAL", "ruleValue": 0.2561782691701867}, {"ruleAttribute": "hdhQ2Lx9IQRaDqL6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3354821897454008}]}, {"allowedAction": "57FmhjuZnLrXtlgk", "ruleDetail": [{"ruleAttribute": "TNWxTqsIJNtqZPW3", "ruleCriteria": "MINIMUM", "ruleValue": 0.5573386650891538}, {"ruleAttribute": "a21ZoKX2pFExAudx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4387560874362515}, {"ruleAttribute": "Ox7LQINb1jVjNXEH", "ruleCriteria": "EQUAL", "ruleValue": 0.02869386364261306}]}, {"allowedAction": "E8GKp1AqHlv06VSi", "ruleDetail": [{"ruleAttribute": "WJLFuN1Hny55Rk11", "ruleCriteria": "EQUAL", "ruleValue": 0.4272050135527111}, {"ruleAttribute": "kpYnfcPXDfCxMwuU", "ruleCriteria": "EQUAL", "ruleValue": 0.23488961287765175}, {"ruleAttribute": "Nh8E9t9JSImkx0Ql", "ruleCriteria": "MINIMUM", "ruleValue": 0.08003566179947152}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'Ro0eya7FAFQKXAXT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'OHeLGTl7giyPgBYd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "6ngy7WVmVqnR5wiG", "groupIcon": "1gekEbr0hk7xEL2J", "groupName": "IcXTaEgJ3TATicpc", "groupRegion": "PpO8rHbLYpEcfGJl", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'HSDgUVOLqeL01z3m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'gTUgQA01YdCTd7tb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "hUvZH5vbAWU6AjlN", "groupIcon": "37khwOyNjGmINpUp", "groupName": "XmO3TJDQrbcMiR2g", "groupRegion": "ARb4HpO8AhvMihIS", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'EGwS1d03HlJPChBv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"iK54pj8v2hK5oOZp": {}, "QSHBnfEW1qMLOGog": {}, "tGBfdgmjVy16YQRh": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'w9VmWjlRV6CrOdah' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ieOEiQlKozz0moQ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '24XQFkQbENXTWDp6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'in7VL1qmDv0fiINL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'RelFttUkrz7wbeEh' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'eBB7rpCBFakix8ri' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '51' \
    --order 'aOL6tiRiZlkXPOA5' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'bZuNoeWuCtXB1VF3' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"mBjcZcx4RViqtRsD": {}, "2SWVw96Nx41F3ePJ": {}, "9FXS9BUChp5dHe2f": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'CwXHn5balwrSgOub' \
    --groupId 'c5lXvHWaeWkmUwto' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "dgvBo2q8JOOH9Wkk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8000548217524456}, {"ruleAttribute": "jeduWSHOhf0dHRAr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8336091488716683}, {"ruleAttribute": "x1QNp1uUgjxcQLpj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22404781850337374}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'gb6i8N3kbp5AuK05' \
    --groupId 'HDui4Iz6O432QP6G' \
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
    --limit '88' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'j9eQRBRCGkSTgO9d' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "4M7gIZQ5YQbMfMAQ"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'YoHNlSyyF6zClZP2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fz3VEEfog14MKbKm"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AeqkgNxZUVxkXQJc' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zyUdLVnRP9Dwm8qA' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KhrX8f2igkvWPsKj' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VQICzsXcTbfDzQ28' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wCua4MIaH1M1I0xg' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["5LSM7e1BqpBLFsA6", "eyJ61IeM0PVpPbkc", "aQXT3zWqA0i67XBE"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '3IbqS2WBZ66065lY' \
    --limit '49' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'dzpsUSLf1InUXPQa' \
    --namespace $AB_NAMESPACE \
    --userId 'euYZbpSgpbyG8e2g' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "044gR2nhCPTwPyvU", "customAttributes": {"ZnDBjiTTNz9LeQg7": {}, "u6bvzwIy4f9y106p": {}, "PmM2mjhaCAMQEb2O": {}}, "groupDescription": "SAQKixuq4iTueoxt", "groupIcon": "Yl6kGSwcRwvwwZHX", "groupMaxMember": 99, "groupName": "f07yZ042uRxnBFzE", "groupRegion": "NTxI9Q3CbLcBu5MT", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "meImNm7CSiHNIeQE", "ruleDetail": [{"ruleAttribute": "DeBz9tSeocCk4eXc", "ruleCriteria": "EQUAL", "ruleValue": 0.2700850657574826}, {"ruleAttribute": "LAOU4XtTmdkLIF2c", "ruleCriteria": "MINIMUM", "ruleValue": 0.010955108357829313}, {"ruleAttribute": "tglpgzX3uYnMbj2s", "ruleCriteria": "EQUAL", "ruleValue": 0.21425744994677653}]}, {"allowedAction": "NPcCTXH6GeU19Rz4", "ruleDetail": [{"ruleAttribute": "vvXQFvMszRiuVEAU", "ruleCriteria": "MINIMUM", "ruleValue": 0.6754816485350196}, {"ruleAttribute": "Dpc9RU3L1E7fsnsp", "ruleCriteria": "EQUAL", "ruleValue": 0.11181895956978294}, {"ruleAttribute": "KPoy7YN25GRyKkFb", "ruleCriteria": "EQUAL", "ruleValue": 0.0326115293376924}]}, {"allowedAction": "EmpKV5tdOUjzkVJg", "ruleDetail": [{"ruleAttribute": "zJXMv72y0xuajxn9", "ruleCriteria": "MINIMUM", "ruleValue": 0.8275350780321731}, {"ruleAttribute": "EyZkGZklOHZhfok9", "ruleCriteria": "EQUAL", "ruleValue": 0.7084468791935271}, {"ruleAttribute": "myJivxyNeUG4l3N4", "ruleCriteria": "MINIMUM", "ruleValue": 0.6001227236072019}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["LKVNQcyxXWou4gXx", "oM4mrvY6AgSImAeM", "7izJj1HWLhijbuwM"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'EOn4kK3dgFcPjwRU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "cHLaR5nY6ZTqXlT9", "groupIcon": "iWtBJiQim15RhGgr", "groupName": "YikE6YJA1r1rqYy7", "groupRegion": "TjhPduUKP24SuOUh", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Sh0rx1mZwyfyRDZl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'HFKTTZAlSNsCtydP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "gpeboaChEd6rfRNa", "groupIcon": "3TUCWPP8brLpQVZn", "groupName": "TvUB98P9bq7SENRz", "groupRegion": "XQ30p6eHWQOr3A6R", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'Ph1IZzXAApbXlA0q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"s1RztiUjjNCYvpSH": {}, "2c65YgWSeFio4IBV": {}, "MJxh0kCvxIJFLowr": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'RTVyY0s92pRL98Tb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '6Bq6LQzZ20S0HELJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'GuyM9Z0E6M1iNtrr' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'xvSW7h5PYdtOJ3kx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '4A0vxkLR0dB9gS50' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'FH8cOwsA3hUuc8Dj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'Sv7Z9x1MM6A4QKyT' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"p5A2BvBD0VHO0Fj0": {}, "6y15EOwAwsjo2Ebz": {}, "boEf8HeB8Ye8CdBO": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'kkf31uikC5BvimTK' \
    --groupId 'zUUJHBvnl6RkPskE' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3iCneda1YiyqY97J", "ruleCriteria": "MINIMUM", "ruleValue": 0.4035985191570002}, {"ruleAttribute": "rkdBuXmxii4k8COQ", "ruleCriteria": "EQUAL", "ruleValue": 0.2983579314881156}, {"ruleAttribute": "yCSscM9HHZ0F1nAE", "ruleCriteria": "EQUAL", "ruleValue": 0.6286004638179284}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'YljHyZD7cYtKwNa0' \
    --groupId 'vCbO1doVLlQDtmS8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '4e0d60N7lcRZWZ7d' \
    --memberRoleId 'SaEwaYoylrPTOSAN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "kMgcjTvoADcLmn8d"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'U1DZnUmeNneWpAcQ' \
    --memberRoleId '93CZkVY0vHdp8c41' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "RPOdFY4h6vgXq8Fo"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'y6Wf3tLheUZx8Vo6' \
    --namespace $AB_NAMESPACE \
    --userId 'NIfaWPZH9BCP6ABM' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'oZrqnpI3oxG6fD0k' \
    --namespace $AB_NAMESPACE \
    --userId 'L4NF8w15nH2gca3m' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'l9JbTJHOHMwuenrV' \
    --namespace $AB_NAMESPACE \
    --userId 'G37V5qLMIx6mv6pZ' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'N9stozIkVRa71Yxd' \
    --namespace $AB_NAMESPACE \
    --userId 'IjvQvoKK4I0GI54c' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'd861zmzW7uFfo0BB' \
    --namespace $AB_NAMESPACE \
    --userId '9bIjDFp9t76QuTSy' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'TIJNIIgP7mV1CNR6' \
    --namespace $AB_NAMESPACE \
    --userId 'mzzhm3LmQjVXXaGQ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE