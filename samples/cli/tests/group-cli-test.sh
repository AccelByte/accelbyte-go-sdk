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
    --limit '74' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "6khUu5CwL3bKA7Dw", "description": "EZrckj5lLPl88jgv", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "2l7Hqz3Jfh8NBFRv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.23470758689209048}, {"ruleAttribute": "EvV7eRSxhOUAtdAM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.344498209716816}, {"ruleAttribute": "Z3WYI1mKyU6lfNht", "ruleCriteria": "MINIMUM", "ruleValue": 0.890130928732019}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "WGshrwhJf2RpVRYe", "ruleCriteria": "EQUAL", "ruleValue": 0.16973148168483787}, {"ruleAttribute": "OWRHNu6r3NUfAKPv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7935029831053327}, {"ruleAttribute": "OJzGmNqk2pomsJyE", "ruleCriteria": "MINIMUM", "ruleValue": 0.6906238881744644}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "GYIEQmirRuU6ktU2", "ruleCriteria": "MINIMUM", "ruleValue": 0.7596519135334227}, {"ruleAttribute": "Vb3fNzbzjmpzKztJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.24622904075331764}, {"ruleAttribute": "6xhLAfna4iYzsumy", "ruleCriteria": "MINIMUM", "ruleValue": 0.46467056529324346}]}], "groupAdminRoleId": "tyjCtwb4nblIHpsS", "groupMaxMember": 23, "groupMemberRoleId": "RQkAYmvrR0sKibE2", "name": "uKNuyhSQSdWoyqdk"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'miVKJLnfQjx2m4Pk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'oal0BEqmXHxFMQ9l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'uOs27rHpGfgYgmDq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rXjncyDG1Q46cUoO", "groupMaxMember": 17, "name": "H4YEJOFzR4O6AddL"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'LLmIcrVNAM0WpLdl' \
    --configurationCode 'z8XG0wNH3hV8Ex2o' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "l5Arf3sDmTxV2qln", "ruleCriteria": "EQUAL", "ruleValue": 0.4215018535564059}, {"ruleAttribute": "rMDTMnTrGb48BQip", "ruleCriteria": "MINIMUM", "ruleValue": 0.73375783060485}, {"ruleAttribute": "E1mLzAHtkTAePsIf", "ruleCriteria": "MINIMUM", "ruleValue": 0.8699798364034556}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'n596IfJw2YN9Ariv' \
    --configurationCode 'x2UzjtFNeaBD2FWc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '3js5Jpx5wF0illIG' \
    --groupName 'uUfi42BmMm1BvjPf' \
    --groupRegion 'OD9xVxLrv2nY3nhk' \
    --limit '3' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'bPCXKg7geZD8sqM7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'uK4DZ2sVeUVbBssy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'N317l5k8iIBkkpj2' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '89' \
    --order 'BHYgrftLyZaPnyee' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Glxvt9u4wVDhLrP3", "memberRolePermissions": [{"action": 30, "resourceName": "oow5gfDflY8py1EJ"}, {"action": 74, "resourceName": "ULyl0pTjOFp5u8Ur"}, {"action": 92, "resourceName": "3fQf6tIx7B3U3UGY"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'OCWTCtLUamBywfOi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'xOV2BV9AAL9Mi0uH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'eaRSZT3kmAqqzzSp' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "fNWKwSyReNBDVRuF"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '31hyV3bkvzmHpui8' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 36, "resourceName": "Cf2Q0LB6uO3CKhII"}, {"action": 96, "resourceName": "fAPNkOYplcenh6Qk"}, {"action": 39, "resourceName": "rKtWaPh2v22PGALd"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '5VFyVihyAmTW5nsR' \
    --groupRegion 'FwGUr9Tuhqilnm4k' \
    --limit '37' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Hi2k90bwuRFOtCIC", "customAttributes": {"KaLmmx6KOT5Q9iIF": {}, "DAS15JNl2qaMRnVv": {}, "9T0FvzqACvZcAy3R": {}}, "groupDescription": "LZtj7sLAsEbUPVEG", "groupIcon": "1RAGSZiaZUTj5Yjb", "groupMaxMember": 37, "groupName": "F7X4y10fvcXZdgvT", "groupRegion": "IQhWYdyJPQXvLqW1", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "P31QZdqLlN8Sl4IZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.27562594261551654}, {"ruleAttribute": "o351wN9EGWpzyMZr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5239094095612467}, {"ruleAttribute": "CmiIY2KjxQf3gAyS", "ruleCriteria": "EQUAL", "ruleValue": 0.9059989324805884}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "uiWM1Zbrt8rQpoQ0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9181926516715629}, {"ruleAttribute": "iImARmFwIlrVTYIg", "ruleCriteria": "MINIMUM", "ruleValue": 0.15395227900532005}, {"ruleAttribute": "g9zVsORxXjiGtLzb", "ruleCriteria": "MINIMUM", "ruleValue": 0.7305368767334661}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ovN12XdThZivvjk1", "ruleCriteria": "MINIMUM", "ruleValue": 0.8471963397532838}, {"ruleAttribute": "V40zdwwsOGzGV3ma", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22961860639216347}, {"ruleAttribute": "wg2rGIYuJqwT8SCI", "ruleCriteria": "EQUAL", "ruleValue": 0.43705528619702205}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'PTEFPnM5mCFF2pC0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'cRCfH0aGkfAkyouR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "9KgQFU2JlsQHLpdY", "groupIcon": "aKT2WtHdwVbHx7g1", "groupName": "NDdRbPgDAO6l416T", "groupRegion": "jJ7fWYf2LTzkOlWj", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'IlsPRhqkg8cahwO5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '0B2FZTcRPWJBv5Qc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QdLpOSdwvMzHUC7x", "groupIcon": "99R3hl4GmgDssQWu", "groupName": "RWOnYVOnnVyorxZJ", "groupRegion": "484YyfOAlNvzhMEe", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'n1bLBschdNmpMeIk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"pmLuTLpxKKM9gK7r": {}, "CX79VmP0RzQfDCWo": {}, "JqvBO9biXgTYfDhU": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'gPcv5EMa5Q9YCtSR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'JW4qEo3AVyfAgslX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'ZQNL8SQVWYb9L8mM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'qikdnOYp3z7hqfkT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'DBNHFFrHuGcHxQPF' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'fhx5PY54mXm2s3Ej' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '29' \
    --order 'KbseBDK20aAohy5M' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '0gLkhSkbMSGyQE3O' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"YxV7oE103ixdu8cY": {}, "uv2FAYn9GyxmtQpw": {}, "vkGfKFjBj2RtHWFV": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Db6d6FrmU9PG4sk6' \
    --groupId 'TsYlLYmhDcecSgEZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ZNRdrpMqhoyb3mwF", "ruleCriteria": "EQUAL", "ruleValue": 0.8039864886646921}, {"ruleAttribute": "6uv0R1jshLw6c79h", "ruleCriteria": "MAXIMUM", "ruleValue": 0.043658667489159586}, {"ruleAttribute": "H1y1YBCn7XTKU6Se", "ruleCriteria": "MINIMUM", "ruleValue": 0.25909135511433823}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Y7Ex7yAu1V49hmV4' \
    --groupId 'z4SvCXq9WrBQkoZa' \
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
    --limit '89' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'fy2M21FKctFjNSy9' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "C8Xj8fSyduhz33SJ"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'PPtmkx7opuMkOGxX' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tVPpoJwmvbCSMpqU"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qMYk2mCJ3yaybiZr' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dw3FwXeEgg5k56H4' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CBiv2liVp9CobvTw' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mVt7ER2ggm11fd6d' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '7vaym3COMyE3tIIv' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["sYQQuHTAwDKeP3x7", "vaOFdWZW6tEjqyTd", "2qQvwOV0csAdJ79K"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'LTjolXzYTPFRnZiT' \
    --limit '89' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'KI5DKiz69p4EXJc4' \
    --namespace $AB_NAMESPACE \
    --userId 'WXZGdkBomaUu4dzX' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "sZEa9VfumIy9nVgY", "customAttributes": {"FIlZrCwMrBqLc5zl": {}, "BwCXCboKsXVbcLNp": {}, "meJ7CkRQXCJh0N3y": {}}, "groupDescription": "uH9b9EM2hU3icmPw", "groupIcon": "uC2isz8KSSYGiCjh", "groupMaxMember": 25, "groupName": "49Y7xPXl1YXys6Ea", "groupRegion": "DrGbCxfUftsDvmoK", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ZcYCsd6l5N623U4b", "ruleCriteria": "MINIMUM", "ruleValue": 0.4945184990873217}, {"ruleAttribute": "mZY83wORa2xNWvNc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10417895034422597}, {"ruleAttribute": "FNl2xPZKcwdHNNNL", "ruleCriteria": "EQUAL", "ruleValue": 0.1740493847912914}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "rUiROjCLxDnAXqgj", "ruleCriteria": "EQUAL", "ruleValue": 0.8281973770773023}, {"ruleAttribute": "bIpPJeW07yG8JzJ8", "ruleCriteria": "EQUAL", "ruleValue": 0.7208955822899288}, {"ruleAttribute": "12bst8oaUJTjyZJ7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8738214259824086}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "lAcqNxGgPPB3sh05", "ruleCriteria": "MINIMUM", "ruleValue": 0.6344786025768392}, {"ruleAttribute": "8mdLPJSTVceiIy6f", "ruleCriteria": "MINIMUM", "ruleValue": 0.29324439965667115}, {"ruleAttribute": "UtLjdcPGU5G5efF3", "ruleCriteria": "EQUAL", "ruleValue": 0.8748894188530337}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["hvp4Qz2vtXcUSOBK", "hLrgcl4K9NwBoDto", "0HUpl68gwOaDUhlV"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'q5OLwO9Z9r86xBKg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "V8VtMqcbJFfv6x3U", "groupIcon": "O9ZqBbEYh5eBjY6m", "groupName": "QMjejNUyBodDWv02", "groupRegion": "xXCMmLwvIpQ7y6Nm", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '2IXd1vvFVjzfuS3s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'cqngDZrBnE7JyuQR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "HCQU6QWFxnwjKRKk", "groupIcon": "75ralfjzWdDR36aZ", "groupName": "QXTo2oBLsnBhVCwt", "groupRegion": "3yQekquVlrBulMB0", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'BJXm0TRmGVl8H39w' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RIOG1INo2Kp8Km1k": {}, "xREhKvPbcxwn9Mv5": {}, "AmkURJmCtDxvv1NE": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '743ELkgN9tsSCfMk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '2EUk9er4JiSELxf5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'bLyBlZcPnLjvNYNN' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'HfNmKYgiR1HFssBr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '5eiykKWic0bsDunq' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'vNHMXlJzkzOaCnMz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'jTTBIfpZSh7P85pO' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"lydwQMTnR4qjFn2i": {}, "22nVlIVpuW1D4usp": {}, "IQaSKVTPBe1wZe57": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Y6xvpwYJSY0o3LVH' \
    --groupId 'AmTruWzPMreKATmn' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "BiLhikf7sEhqLARz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10163633288905793}, {"ruleAttribute": "OQ6cqzfnc0znGXaz", "ruleCriteria": "EQUAL", "ruleValue": 0.6603857732880529}, {"ruleAttribute": "4N7CyylSUC8ybgRI", "ruleCriteria": "MINIMUM", "ruleValue": 0.06614542299360382}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Vz2ddYlBOcbNHRML' \
    --groupId 'YCegEZ4ySVvUeZoH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'khSwJqvUTan9peyF' \
    --memberRoleId 'XsEcpQB9M8opYEOV' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "cuYy4vPGJ1JyMx61"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'omlTcpRkw0yvppqw' \
    --memberRoleId '3ySSmCC6xXeUfMbd' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nK4ZbWl6oAThfvfJ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'L8SAJQcVA7AsrnZe' \
    --namespace $AB_NAMESPACE \
    --userId 'IbRbAx0oPKBpmxHJ' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'ktJCM50t1dwkoY09' \
    --namespace $AB_NAMESPACE \
    --userId 'lN7nMwCiXIYDfT9a' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '34AFV8xGqTGtNokj' \
    --namespace $AB_NAMESPACE \
    --userId 'h9Iy4Jhcd0RpU9fP' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'CkCUlKolsiMz8hxd' \
    --namespace $AB_NAMESPACE \
    --userId '1y7ipmwrPrrx1G5G' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'gYX44GvYyu3D4KGE' \
    --namespace $AB_NAMESPACE \
    --userId 'PSfAgBlTRZdj6loG' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'zQgVvn8aSHJEIbTL' \
    --namespace $AB_NAMESPACE \
    --userId 'sRRoCNuvG3ZoXkk3' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE