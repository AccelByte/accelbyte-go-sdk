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
    --limit '83' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "3GlWQV1XXKWlrk7l", "description": "idyqjvgtEmmpyamd", "globalRules": [{"allowedAction": "clVLFgHlfJF0nxi0", "ruleDetail": [{"ruleAttribute": "RrQQ4fCdeeVHLaan", "ruleCriteria": "MINIMUM", "ruleValue": 0.49994406705919514}, {"ruleAttribute": "IsLi0ZptlEHxtEH7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14169369765762596}, {"ruleAttribute": "7h6hVqjutpjSGrqh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.008532749293425068}]}, {"allowedAction": "jM2ArxulcAlo4Qip", "ruleDetail": [{"ruleAttribute": "9YPI5vIHoXXh9Jqb", "ruleCriteria": "EQUAL", "ruleValue": 0.7436989745154552}, {"ruleAttribute": "UyuRXjA98hzjmzrO", "ruleCriteria": "MINIMUM", "ruleValue": 0.40623115910124186}, {"ruleAttribute": "Dsij974X3wiymO52", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9577207684566642}]}, {"allowedAction": "1qVIUyTProeWZaLY", "ruleDetail": [{"ruleAttribute": "eyCxD7TwpZSgUH3d", "ruleCriteria": "MINIMUM", "ruleValue": 0.3736256719126754}, {"ruleAttribute": "93ChIwKwrEEJPHPL", "ruleCriteria": "EQUAL", "ruleValue": 0.1906027865940163}, {"ruleAttribute": "kiM4oqMtXdzKhqKc", "ruleCriteria": "MINIMUM", "ruleValue": 0.5876468077856443}]}], "groupAdminRoleId": "xgyA98cwZmGZU9Sb", "groupMaxMember": 2, "groupMemberRoleId": "o0rPVvXIfXXTNm4G", "name": "yMSVcWHjbph524e7"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '0NvnVEP4UeulF3HA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'itodWHrPcfYW5vSh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '4SN77A9pb9oxPYUG' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0wnpuyZASuaBOA2w", "groupMaxMember": 96, "name": "EdujcovpDnBNcZZD"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'nK8v6fkSKx4uGWiH' \
    --configurationCode 'Baz93g4aRi7Bl9yZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "NcpZIJhsoQ0tjcwV", "ruleCriteria": "EQUAL", "ruleValue": 0.16366537725532893}, {"ruleAttribute": "ze7oUcFgkcj8vcpj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5903428594245325}, {"ruleAttribute": "jUXW55QcCMNqKZwZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.0501316499775043}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'rtfgwd63UUYQ1RiC' \
    --configurationCode '8Jl1GQdFeeVjzOC1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '8L5OqM8naLZOcLYe' \
    --groupName 'EjWAYYsUd5KhREQK' \
    --groupRegion 'NZcUNNKOHwtCYuZF' \
    --limit '98' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'ikhSNhr0uHCcMInS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'KazewKLMCBvu65dB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'lGJObH0zPFQOjIDv' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '28' \
    --order 'JMVwZAaYkbfPqQH2' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ATq5a0vU9YfEQJGm", "memberRolePermissions": [{"action": 71, "resourceName": "P1YKck40EVNex0Ga"}, {"action": 97, "resourceName": "YY7Psbatg8tRaby0"}, {"action": 39, "resourceName": "TN694W2JBEquuLoT"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'arXTtK2MxzLIvCQx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'mw7HHnBQxVGcoNc2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'ZdwxgV2xLg78VbfT' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "vS5YiE99mWUgSAXm"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'LpwUmTIZA68KYVUp' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 67, "resourceName": "67lkmAMb66KOVDr1"}, {"action": 52, "resourceName": "nvDXPoH84e7iGa7w"}, {"action": 8, "resourceName": "iWXqoPU4Jpqe2zOo"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'xoPBh3mAQZN3ZmON' \
    --groupRegion 'VIrtuKRe7zECv0rh' \
    --limit '72' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "0q9s5XCYrLiJWiui", "customAttributes": {"cU9TeTx0JKH09OUF": {}, "C8UfiRl5yyxXGAZK": {}, "c66vwt23lWGKHrva": {}}, "groupDescription": "G7wpkws8Jug0iygo", "groupIcon": "TIJHjtrjhTmR8qhC", "groupMaxMember": 1, "groupName": "edZ2HhVKW594OXte", "groupRegion": "cgsjTJBkeEFPsQoX", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "sTpC0POVOmRhni5D", "ruleDetail": [{"ruleAttribute": "29VTcEILIRNUzYSp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17801080981354178}, {"ruleAttribute": "slABKp5OyeB7RghI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03256046932322576}, {"ruleAttribute": "EUSBLYgl9wtJJWAK", "ruleCriteria": "EQUAL", "ruleValue": 0.1766781507233518}]}, {"allowedAction": "hMHCzXyYH9YCE0gr", "ruleDetail": [{"ruleAttribute": "72wggyAsiJGgQ0eI", "ruleCriteria": "MINIMUM", "ruleValue": 0.5855787990620966}, {"ruleAttribute": "BiHWW8lU531eUgTS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05761632299553088}, {"ruleAttribute": "ncR36o2TecpHcJqi", "ruleCriteria": "MINIMUM", "ruleValue": 0.2683511198402061}]}, {"allowedAction": "1334MImojB5Bm77N", "ruleDetail": [{"ruleAttribute": "9450xOA7xU9j1TER", "ruleCriteria": "MINIMUM", "ruleValue": 0.6258086502349727}, {"ruleAttribute": "W0WV25q1kYXwcMCf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2557915171737065}, {"ruleAttribute": "zeoy6hJSXj8QpF4E", "ruleCriteria": "MINIMUM", "ruleValue": 0.4992988747923198}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'xbu9WI9vDyjM17N0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'BhryxPTMuO62mbyz' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "cbNSpG2Xa1yTZGgJ", "groupIcon": "ok3hT2cdSe05gllj", "groupName": "jw8h0Ph9av1N3CsU", "groupRegion": "u3sKzq72RuBWJQXV", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'lrqrrNyosw56W3YE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'pCF4UZSUi4n7766A' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "STBua7NNqQdHTCl2", "groupIcon": "ug1pR9KfF3Orxvlo", "groupName": "YRHswywwvVxt9nhY", "groupRegion": "k1vZM2p2XUAzQK6G", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'e2LvWccCfNHJqLZd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KOsLiQfQFKW6FEhA": {}, "XZgjairhMTUXPEHR": {}, "p2u7Y9CLMtMoiauC": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Qbp5Xfeghh2c3zLU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'zaEPNxY83TRhbULC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'op2bVkbI29JuKyl4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '2DXViiQ3sGVBBnZ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'wUBf1rGVJ6GPZJIL' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'CKo7pv9DGR0WEhIv' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '19' \
    --order 'nd3Gl57XWweRXsMX' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'DMKTgDgVbrk9J0WP' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"a9qSQmWUO6zysQtW": {}, "LPWVPKXaZGYTTFAP": {}, "QIpCewmMvIfGuFud": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'AS9AoOrsz50JrZZ0' \
    --groupId 'OvuLPzus8ls3TgSv' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kSAPJQKjaln5Nfgr", "ruleCriteria": "MINIMUM", "ruleValue": 0.6956685818793384}, {"ruleAttribute": "9w8eykPESiPMGtQJ", "ruleCriteria": "EQUAL", "ruleValue": 0.6646993412867557}, {"ruleAttribute": "WLh81ohUWZTojoWm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.009453564224055855}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Jh2MOzE1H6v6BN2Z' \
    --groupId 'x49dxIUMBhtUPGQT' \
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
    --limit '56' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'ZMB6V1ZbXYAjqwTx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "8DtzZ7blsbPRhAHR"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'lWH7Qr8pwCpiDTQa' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "6NHMWrJrBIU2vGHo"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VCWDlOKbihcYSEbd' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jn191Le0lClQAOpL' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nXd0qfHMf0IWBT2D' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tH5KDnaDCHMqq7tg' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aunOnuKBbEckcEBx' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["iLOMAUhjxAtHT2iD", "lhtDtudW4Kfjuz2m", "l1FhM01fwVrq3xaM"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mncMdq3P2cvu7O8u' \
    --limit '29' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '6F32whHc3nMZy0NW' \
    --namespace $AB_NAMESPACE \
    --userId 'gP48TVMTi6XMEHRN' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZkMYWIBPfw3rxd4U", "customAttributes": {"brJXHK57PW1wwWPM": {}, "jPCUEUGAs7bEvHVG": {}, "MKwQZlYgqUa7cpVw": {}}, "groupDescription": "BEo3Gs1AJbb5Ulx0", "groupIcon": "QfrXExtPid5h72xx", "groupMaxMember": 78, "groupName": "kZoVZF0JevL6iBTj", "groupRegion": "AVFM19OF4JIdfgYI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "QRsFTUCc0WXO0PXl", "ruleDetail": [{"ruleAttribute": "Wt0DUb8MMuUqaHXp", "ruleCriteria": "EQUAL", "ruleValue": 0.37064102811077504}, {"ruleAttribute": "OIbz6sdqQk6ATWcN", "ruleCriteria": "MINIMUM", "ruleValue": 0.6589856197362348}, {"ruleAttribute": "FL6RrHDfImzjfJkA", "ruleCriteria": "EQUAL", "ruleValue": 0.7907264661524305}]}, {"allowedAction": "jNgNctIh15DBG0Pu", "ruleDetail": [{"ruleAttribute": "yWHOVCaNfllCdTMk", "ruleCriteria": "MINIMUM", "ruleValue": 0.3562636487918076}, {"ruleAttribute": "lTXf3evr5KTCXKyB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9679417014225723}, {"ruleAttribute": "myNGiYZAFyQ9q8aO", "ruleCriteria": "MINIMUM", "ruleValue": 0.3830143322739996}]}, {"allowedAction": "ObwNm059DhiYH4eI", "ruleDetail": [{"ruleAttribute": "74qJTsgeE1Oix98E", "ruleCriteria": "MINIMUM", "ruleValue": 0.7781846791911321}, {"ruleAttribute": "m1ezQYOBKdLrTqPA", "ruleCriteria": "MINIMUM", "ruleValue": 0.7854986627349998}, {"ruleAttribute": "lYN7JlMnGkTKqziN", "ruleCriteria": "MINIMUM", "ruleValue": 0.6292757402756975}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["0QoTZgIj4Oq71CSZ", "Jp1sJuX7y1l5Gl4y", "4V70xeVhxbXnasY6"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'vqSReSjkQ4LH70FW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xFaIq2nNrV28kFMd", "groupIcon": "eLiOMUnioRe4Fxmo", "groupName": "Or25mdzxOISVo5OC", "groupRegion": "bkC4czKYzUYSmldl", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'UZdl7bOS4EGrzhAq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'gO1qzZt4e6S5TrVW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "z2iv7tgsVTfDcSQT", "groupIcon": "Pf0fSafu600vNsjl", "groupName": "pwZ9YzJLyaEIRcF7", "groupRegion": "E9yZXMOHbuQXfMfz", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'bBbNxogNBvqHOtuA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"CQVYpzzJ8C9QMeze": {}, "VNHpaKvhAk1L7Cok": {}, "j6CuwOeRiiCbfYfP": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'kRO7GXVpVkGFkbIH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'FBNUcQqRrHvZYP7i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '3g2i2uRWQiHcdzfz' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'IAOS8MLEp8N8iki1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'qiHV2PxOYMIVVKj4' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'S7s1jZraOWCdtLtY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '9AQUII7KhYqdghii' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SbhNyi79eJcFA19b": {}, "SnanrhnUkcrDWTA1": {}, "ubiaADALmy1JRL2C": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'ntSBUR5LYybBEGGz' \
    --groupId '82wmc8ho2YMh25as' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "QxKZ5wtgX5RZCbpn", "ruleCriteria": "MINIMUM", "ruleValue": 0.6637473928190636}, {"ruleAttribute": "M128X2efOVC3s0zr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4099893784318571}, {"ruleAttribute": "sGteXpmqcdkVxHdl", "ruleCriteria": "MINIMUM", "ruleValue": 0.1795658432405729}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'J3apaJFHSLyEKHhM' \
    --groupId 'AoKefod7aSM6aQ67' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'CrB02Gz0DprwAzs7' \
    --memberRoleId 'y5INYhv3qimP5nZs' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lJcZLWMVnlDNwACi"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'AaM4KGqnpy4pMD7H' \
    --memberRoleId 'VrDNbFmZTtxHsaDS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fZZMj2ITqDMGLUxF"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '5SIs4MT9LEyX461p' \
    --namespace $AB_NAMESPACE \
    --userId 'ngY9TgP2EJQZADxy' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '01aMdXMOmD0mPdyl' \
    --namespace $AB_NAMESPACE \
    --userId 'dEOTxwkgx137KQYR' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'V3VBUXxndHr9aQif' \
    --namespace $AB_NAMESPACE \
    --userId 'BusG6wZP7FUQSCal' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'jiqkmNdtWjIosttI' \
    --namespace $AB_NAMESPACE \
    --userId 'vd2GWOCALxg0VThW' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '5CuGJNLtUXMMWD2B' \
    --namespace $AB_NAMESPACE \
    --userId '6kd6x9oJ7H9h7T5a' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'BtDElu8UveCu9hds' \
    --namespace $AB_NAMESPACE \
    --userId 'eJoD7X2wcOX0MzH6' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE