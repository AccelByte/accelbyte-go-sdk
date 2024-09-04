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
    --limit '27' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "OAaGbuuHR6gPy8RO", "description": "2pxyChLGY94jOeUt", "globalRules": [{"allowedAction": "2joVQdvQ5MFvgjj6", "ruleDetail": [{"ruleAttribute": "Ah6DZtpiyZicw7nQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07464053140485405}, {"ruleAttribute": "N6v1R9QyOy0jIe9n", "ruleCriteria": "MINIMUM", "ruleValue": 0.03639617960450203}, {"ruleAttribute": "JnAvVrCdzoWRPWSv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.608604277505757}]}, {"allowedAction": "D3CbUDyVKVZj4yMS", "ruleDetail": [{"ruleAttribute": "J8lE5eNqHEs0XHfC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18876312714149712}, {"ruleAttribute": "abFe60dSoHVZJmnq", "ruleCriteria": "MINIMUM", "ruleValue": 0.5918793239273088}, {"ruleAttribute": "A7ek14z6ODvF1bo8", "ruleCriteria": "EQUAL", "ruleValue": 0.16606897537779386}]}, {"allowedAction": "2uvXMscTQdvN0iXW", "ruleDetail": [{"ruleAttribute": "tvhbKTa0Gn5JwEGz", "ruleCriteria": "MINIMUM", "ruleValue": 0.686803613293776}, {"ruleAttribute": "4ZmdMzY3hQdY6QXm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9782219760874524}, {"ruleAttribute": "1qXS0reBFq9OKvUY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7478209994936534}]}], "groupAdminRoleId": "bRNAkZVfAW6p8NAA", "groupMaxMember": 79, "groupMemberRoleId": "hfXhEUOgrbVSfWtf", "name": "cWr6BzcYEAoBZiWo"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'GdiXXktymNXnt2JD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'e9enTtM7ApnhvPKA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'CSrvSnsY8EFEEhHU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "77y3ed0ziV5djLJa", "groupMaxMember": 8, "name": "IMNogo7RAX61G2cu"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'kjiKvoKyINcWVSpT' \
    --configurationCode 'P1NBYjlZBbG2FMug' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "LYRp25Ai7cqHz0jc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33140646678788477}, {"ruleAttribute": "4Gvvdqn5mj98Bbwl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9846036469917686}, {"ruleAttribute": "Z38zoksXBHexciwE", "ruleCriteria": "MINIMUM", "ruleValue": 0.5696584081144552}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'emmarbITvl8rbVri' \
    --configurationCode 'pD3kiXDNmYZ0V1rv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '3KmxQ3f0Jwepzfw3' \
    --groupName 'OzbLh9lVXddUn87n' \
    --groupRegion 'COhmWLUiEzhTllLz' \
    --limit '58' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'dMBevA1tpPEheFQq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'FC2FBPqPJkYM4cwq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'q9LSP21a7lhL3DiD' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '19' \
    --order 'bLiRLU2pQ3hzc4YO' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "lYTbUB32QjIIrCkR", "memberRolePermissions": [{"action": 80, "resourceName": "KnuaiekoUcOqLO3v"}, {"action": 15, "resourceName": "ZeCVCuYGydGVaMTy"}, {"action": 82, "resourceName": "AmFnUpIkFdHASB3Z"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'yc8CShWvIJM0HFiY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'q6mgSR0hvnzIHNN8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'hfaUNq5ebPw6YWDF' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "RwjqF9DGoqI3zKsT"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'ysTtQEhOTfMmAkhx' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 77, "resourceName": "pinzLtzyuDXIG42J"}, {"action": 21, "resourceName": "ybiVcyf0hU7UQ72x"}, {"action": 79, "resourceName": "ciOjv42kOHH1TAez"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'b3XiNOoFtSHzzRa2' \
    --groupRegion 'zc8jMleDNRTHjfSs' \
    --limit '28' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "beCVlp2l6PZPktrH", "customAttributes": {"7sZ9BMVCxU6X6e3d": {}, "A7ePrxKwKZsijGy1": {}, "N0O73znPWBZMfJqL": {}}, "groupDescription": "fMQ8hcIw81m5UstY", "groupIcon": "yk8NjHGz3hlDdT7q", "groupMaxMember": 96, "groupName": "4AWvNWA2eduZip1h", "groupRegion": "GMKWTdY0kjOFF1OI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "5WzXQusdlL2L0n0F", "ruleDetail": [{"ruleAttribute": "oVc1QtLLhJlRYAeG", "ruleCriteria": "MINIMUM", "ruleValue": 0.04741161274517891}, {"ruleAttribute": "BVlUxMZIHPAL3lDt", "ruleCriteria": "EQUAL", "ruleValue": 0.8683130166308748}, {"ruleAttribute": "QRyYzUfmG8HO8KCV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.31925320212377606}]}, {"allowedAction": "kMIza4eztMMUPQJD", "ruleDetail": [{"ruleAttribute": "98J4TFkFAmR6NIjb", "ruleCriteria": "MINIMUM", "ruleValue": 0.6987051857942991}, {"ruleAttribute": "3lETmEdJMDcDqRmT", "ruleCriteria": "MINIMUM", "ruleValue": 0.5768454688829068}, {"ruleAttribute": "RGjHqIkRaoNNknO1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06766158332891659}]}, {"allowedAction": "BhKHMv8sJOU1Qa8M", "ruleDetail": [{"ruleAttribute": "iHYbmTkgeJlbuTCh", "ruleCriteria": "EQUAL", "ruleValue": 0.25353098509525207}, {"ruleAttribute": "CceLsKfAKUmtci4P", "ruleCriteria": "MINIMUM", "ruleValue": 0.1187384217396108}, {"ruleAttribute": "iinTGFU4xYYF4hnc", "ruleCriteria": "EQUAL", "ruleValue": 0.10627144875543604}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'rbMQVWUokMjeRJLG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'oPi94FbGedDN3i8q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2WvX9eBztNd68WfM", "groupIcon": "EroLVaT2UTECUpoi", "groupName": "Cvx5RKxXFarJ4Okr", "groupRegion": "IuEC7UqcGYbONwd2", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'gdCuJN8tvElqKj3H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'XLWrLKEONL1Wg7v2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "T94dmFrJYP4OMh9z", "groupIcon": "Rvv4sozgaSJdPx4t", "groupName": "wHkqwDUJm6nUhug4", "groupRegion": "FVT542RPGc7i3b2W", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'FSnlUtVp24eK6AYh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LRSttkR9DudxGhHF": {}, "oR0WVkAvVR6Ky4tR": {}, "EOLyBAonkxYQkW8f": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'goAmKyehj7CwtNyE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'XmZIkm8cWrTXvVtl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'NhOHe58YBfLxdRDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'pWt5oBCR48JHOZ0W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'eMwUa0hJaSQCYqFK' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '9NWYuQfpBaWAoMGE' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '23' \
    --order 'HQtheaOMKM1kxKrw' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'njmWsPRJBumh7BQu' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"oXI0JJicX6EPEJlC": {}, "lMlSK9kBJPcrFl5f": {}, "ygSzNilqezbd5jm1": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'zJfwRaNWydYNBJL1' \
    --groupId '6RcZo4pzQLOOhjqs' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ZSOfZlwSFjvACBkk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.751029683210056}, {"ruleAttribute": "isjjiaJj7V88sjWG", "ruleCriteria": "EQUAL", "ruleValue": 0.7113850303039001}, {"ruleAttribute": "KuhOvR1gCmpAfMgV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09633235848334043}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '3O4YKbytHQTxLC06' \
    --groupId '2mZ0UO21Y1sqhcFi' \
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
    --limit '98' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '867lf1GjxO6GOBUS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "x5t4X3G2tbzl2LwL"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 's7LmBQpzcu6N30T4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Dm75RwOelQfqtGwf"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ym6Azr9px3EDucRU' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '76uDMP6v3yUcmOco' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QCsUEU3BUiaoP4XL' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pQemKK6oSF8gGLvu' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BrYxmA9FhdIjmrZH' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["bOViERFPDcWEsX3C", "6k5XhQW7rNDDauVZ", "R4ioG7ra87wHJh3C"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '52TrHZW4Cm8TIldQ' \
    --limit '13' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'DTvmCFEPDpiteWD5' \
    --namespace $AB_NAMESPACE \
    --userId '3JgkrMzPwOHWBBCp' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "OMcXpTpFlSuvsQyT", "customAttributes": {"QL9Fcbrk9fq5TSng": {}, "1j4UjzIPPGNZKxnZ": {}, "rmLKCkclvxhueqOu": {}}, "groupDescription": "Wl9RzqtQBptsgqT6", "groupIcon": "sGBRuqWcyyv2SILq", "groupMaxMember": 33, "groupName": "B7n9WNJQzuBsaxzi", "groupRegion": "O3Yg7BicmoQSxmVE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "pIfhocsyar5nhwYy", "ruleDetail": [{"ruleAttribute": "YDL0p7B5p4he5d2r", "ruleCriteria": "MAXIMUM", "ruleValue": 0.716800156872239}, {"ruleAttribute": "BQ8oa7xaGPcipo2g", "ruleCriteria": "EQUAL", "ruleValue": 0.3217300823107563}, {"ruleAttribute": "wAOoMJYMhVy1sFoJ", "ruleCriteria": "EQUAL", "ruleValue": 0.7045393027691295}]}, {"allowedAction": "MHghyHDMGG125OTY", "ruleDetail": [{"ruleAttribute": "MFGlYnHrYbUdI1zw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6781398106104125}, {"ruleAttribute": "hmFHt8Cz9KSI9ehW", "ruleCriteria": "EQUAL", "ruleValue": 0.8683679245932184}, {"ruleAttribute": "wxWGnjyrnlUQUaBq", "ruleCriteria": "EQUAL", "ruleValue": 0.5867490941637739}]}, {"allowedAction": "mreqZgUxHp5d68o9", "ruleDetail": [{"ruleAttribute": "QMcfgKnC71oXfCvc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6155187367376735}, {"ruleAttribute": "P0JGezFb86NfauHf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5564438072976262}, {"ruleAttribute": "TH6yFiEFpfyxjACr", "ruleCriteria": "MINIMUM", "ruleValue": 0.6448832885646292}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["EJmdJ81icarL5sYw", "35fjT4FGRmJXVQXg", "XszGuBfRb1WcxA5C"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'emcJhQKNJk7QcXMN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DXP9x9G56yUj0Ld4", "groupIcon": "m3BP9aLOZwrc8VCP", "groupName": "WV9RBHET6nSABkOu", "groupRegion": "j3YwSAn8FzYTqG0F", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '8chvkJfbGfGjPOYg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'JeeJnCuEckeQpbNJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "RqHDN0seQKIt2Laf", "groupIcon": "J8PWLn196uPaUWxJ", "groupName": "bBUutjI2dEQmC5DO", "groupRegion": "0uNHj075FTke1g2Q", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'StouvUZzGcClkKty' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RjYRftGd7kG24PEd": {}, "B80haCaGuANidMQv": {}, "3BOoMTM9L6WauLGo": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '5piBLJucOCMAvdUh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'hMgaS6GSj8UmsfbH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '1xqqYf1EqvHTcZzR' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'kvDqIPIYkvXG0m61' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'ODRAj7KXK4zOsiux' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'BztfWwoeHdJ7QJsb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'bvuAeUL016HBZ81t' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"f65i2jWeiSAFbiVV": {}, "cBu17G2uPuD69YZu": {}, "kHXuGvWmSfoBKDz5": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'BfZ0GbistEMNrHLR' \
    --groupId '8OP1i86jt0XtVzKv' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "MtVslxj4IY8shDJY", "ruleCriteria": "EQUAL", "ruleValue": 0.04502182832639656}, {"ruleAttribute": "ExClbf3TJ0adwuJL", "ruleCriteria": "EQUAL", "ruleValue": 0.926315832070984}, {"ruleAttribute": "fX9MhsROM0ofvxgT", "ruleCriteria": "MINIMUM", "ruleValue": 0.19058777271429184}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Z13Y3TYx4bGLsI2Y' \
    --groupId 'jSJPbwHAdylAJucn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'j4KiihDosrNO9idQ' \
    --memberRoleId 'TMXhmVEAIvMrf0T0' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ymKNkY7KBJXkr75C"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'Miy3d6EHQg0EQAK5' \
    --memberRoleId 'q3iGOOKqEcNpSej6' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "dlFLLCAuCw0UX0oR"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '2SfTeGGrNN7gJOn8' \
    --namespace $AB_NAMESPACE \
    --userId 'CuOHBzInGTqY5J4m' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'hxRTBWbtJfdckQyC' \
    --namespace $AB_NAMESPACE \
    --userId 'LmHkBIqTa6TT60os' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'PKn1FyQPWRk7LUhK' \
    --namespace $AB_NAMESPACE \
    --userId '4hs4JPsnWiGDywzY' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '2ExItCCSFdCWldMw' \
    --namespace $AB_NAMESPACE \
    --userId '1W6SG1MnbPFMW4Nz' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'MXiAyj7sgQuA2w8y' \
    --namespace $AB_NAMESPACE \
    --userId 'WL3ejwv6gTwKfiSV' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '6ZE6YXBL2qoqUVYM' \
    --namespace $AB_NAMESPACE \
    --userId 'e6rULONv0gGg6guj' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE