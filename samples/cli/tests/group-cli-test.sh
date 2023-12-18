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
    --limit '35' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "tNrdCPJ1UyVFSaVy", "description": "aDaLrDGUlQkFnUrv", "globalRules": [{"allowedAction": "jA4daktPj14hV0VU", "ruleDetail": [{"ruleAttribute": "Ai9AkDLTNQ1AKaxz", "ruleCriteria": "EQUAL", "ruleValue": 0.9604582052321717}, {"ruleAttribute": "sHpUrNtprZuYXLHJ", "ruleCriteria": "EQUAL", "ruleValue": 0.18437535691688967}, {"ruleAttribute": "e6v4WF4k3KCOcHpc", "ruleCriteria": "MINIMUM", "ruleValue": 0.8714507371848114}]}, {"allowedAction": "l0sxuSvU8QUvBGv0", "ruleDetail": [{"ruleAttribute": "obhdy23JDzlBlbNU", "ruleCriteria": "MINIMUM", "ruleValue": 0.06404063879569288}, {"ruleAttribute": "S6jJ7DSMRez7NQsA", "ruleCriteria": "EQUAL", "ruleValue": 0.16432077348328722}, {"ruleAttribute": "cuK49DqIR0oSm5z0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2609338087391657}]}, {"allowedAction": "KVry8vtwYeMaPUpH", "ruleDetail": [{"ruleAttribute": "Atr5abGENjt4JvhF", "ruleCriteria": "EQUAL", "ruleValue": 0.8916833253615303}, {"ruleAttribute": "cEHG7xWsCTwi15gR", "ruleCriteria": "EQUAL", "ruleValue": 0.5253550665672225}, {"ruleAttribute": "KNEJfpWCtiF3ww2R", "ruleCriteria": "EQUAL", "ruleValue": 0.3091261089285774}]}], "groupAdminRoleId": "ihTFWB7xARyThzdE", "groupMaxMember": 39, "groupMemberRoleId": "aRhQEf2dRiIxAMtu", "name": "yDVXsRR5ohazwHd5"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Gy3pcN18U6KigYZg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'kjGIAo1VGNpYbVcW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'dYDudkeT5kOV7uV0' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7svn5X7K4pfnZuWz", "groupMaxMember": 50, "name": "WI1PQYQXLL5S8WO7"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'tkfL8PELBiZzsWRL' \
    --configurationCode '4zQafcXzgSRDbWP0' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "qJysKMRyq1UICirA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.45588840081043525}, {"ruleAttribute": "ef4eHVJQThJH4KL3", "ruleCriteria": "MINIMUM", "ruleValue": 0.7149567323573345}, {"ruleAttribute": "dasSAqdGsCOoFmNd", "ruleCriteria": "MINIMUM", "ruleValue": 0.7965582769101256}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'hLJRrCvk9pXxISX0' \
    --configurationCode 'y6DOhJvJKxXiXuTi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '1xuYNXp4pncR7ohW' \
    --groupName 'NEUie3v8BtPM22IU' \
    --groupRegion 'NSqTPTlemfzX7r4C' \
    --limit '14' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'tODppsTTunkawO8d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'BAiYOZl4C3Yyv5JH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'J3dbM2EkSQw50OrC' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '90' \
    --order 'KAimYwjP0Lt3K8mE' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "tJcJ0HECw1qf9GNC", "memberRolePermissions": [{"action": 48, "resourceName": "M5fXHJEASFBkMJSn"}, {"action": 30, "resourceName": "CSxHNoCVtpEaWnoa"}, {"action": 51, "resourceName": "FHR8xP485tmJuwGv"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'zDZIRtErRECOETxf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'dLqYLp0XC9s84i4v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'dgkEVEVsn8x74icu' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "mk7musl87uvRzM3T"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'WySzWV6mOk9HZ3E3' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 66, "resourceName": "hkkbUVkcRznIifDf"}, {"action": 1, "resourceName": "5OCf2h1C9XJt10AO"}, {"action": 89, "resourceName": "ME4BSv3RBMXvCYbc"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'noBpmezk4jJfDx0F' \
    --groupRegion 'RbFdKBw3ACUYASDB' \
    --limit '90' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "1EMJ4F7FAPg3Npv6", "customAttributes": {"lPnCt0gsUmXjC78Y": {}, "R9IIUeXqEFGVtJaX": {}, "QixRYpQ1CpMpoGhN": {}}, "groupDescription": "otI99E21DvznhZk0", "groupIcon": "mkf12BNbKNuMbpsD", "groupMaxMember": 34, "groupName": "jx8eoAdGQzlbebVI", "groupRegion": "qq228DOVTi1R3lJ5", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "ZDIb4b2vUi1cKiun", "ruleDetail": [{"ruleAttribute": "2Ki1EPYVcrGD62Jy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8571363165236094}, {"ruleAttribute": "b1PhfgYInWKrGO8t", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9481835573366829}, {"ruleAttribute": "WTtfO1T3iNGtBI5r", "ruleCriteria": "EQUAL", "ruleValue": 0.8774883881230714}]}, {"allowedAction": "77dKhguuW7Iuc1KD", "ruleDetail": [{"ruleAttribute": "7ZpzGwsajP7BgYhi", "ruleCriteria": "MINIMUM", "ruleValue": 0.45962590412215154}, {"ruleAttribute": "figIZLMLBaxBbCgJ", "ruleCriteria": "EQUAL", "ruleValue": 0.1172720676299509}, {"ruleAttribute": "oIymNLbLiZ8VnDxF", "ruleCriteria": "MINIMUM", "ruleValue": 0.07725846749055587}]}, {"allowedAction": "LXpgNbcB6cqvE5qC", "ruleDetail": [{"ruleAttribute": "S8xYcwn8xFbr7Z5p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10895400637278263}, {"ruleAttribute": "swQIRYTR1dA1w3Tc", "ruleCriteria": "MINIMUM", "ruleValue": 0.5982506965569784}, {"ruleAttribute": "IaLjCiUkbQ1nvB4j", "ruleCriteria": "MINIMUM", "ruleValue": 0.8878156657644901}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'MFKaNBtWrIZMS0GV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'UGHu3xe17btnbOQB' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "isN6ybmVjtO10Rnx", "groupIcon": "3RlpuS3I1CVIoUpA", "groupName": "1CmOHuNLugwvTv3l", "groupRegion": "0m8DRjhptHAGCYOU", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'uk9ZSeb3DxMYJWYw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'voOKMo7akcxIT3bd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "wcMPGpBYpZwRvNHU", "groupIcon": "kUfCb9gWHXI94QDa", "groupName": "IE5nWyBcHmwDnX2L", "groupRegion": "2r9PiAfof1ATAfhq", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '0Ja9zUvivBQtBBVI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eyzH0NP9B2g9h54H": {}, "GYo5axDQwMApGWaP": {}, "CMyvIQSGH3sueKCk": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'AgzbLzfVsI77PFpV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'LdPeCMOEGVmTaiDo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'JN3OZFmGwxhZoREt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '35jwerUVNFvSlz5N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'Zxh8McQwSWLIhsXD' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '1vwRvKCZUuSxUrmk' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '16' \
    --order 'WEUVNxJFgBNu5j7j' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'yiQ4P6hlUdufInst' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"um9qU7iCZmtD4xU6": {}, "6kH7dyWdlYJhLo7Z": {}, "AHGbm8xxGGoh3GId": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'jvYi3aBoqLjKbLgX' \
    --groupId 'l7cKIR0Cj0JbOIzJ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "gcTWjB3XHIQLOef9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7032664954065055}, {"ruleAttribute": "HGICeEHwCDkHL81M", "ruleCriteria": "MINIMUM", "ruleValue": 0.009115824515270599}, {"ruleAttribute": "fhTlbqYC2sPjmROc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4771938776264001}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'cluveujs1sj2x0wy' \
    --groupId 'gNV4Ec3FPrD8bX4W' \
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
    --limit '99' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'xsSVkuwZ0yYjWiVE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "x49dNJJ0lLGcvuYq"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '38brdbsnyRQeZMXM' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3wBaiE3zCFbgcFAi"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FmrXyXOqdVvQj0Fn' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yOII9alRIjp9xRrh' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HUCcbyjijo6txFPg' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZXIWfW3Rs07ZG3sJ' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '4eTkYhRganaDAUk6' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["EDTfi9b5XOVRrAIW", "9YaW0xIrkUsKGymp", "fgwGv0sRiU8N93lq"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '9eFg0MJO8WZXrUp5' \
    --limit '56' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '61ftAaDGkg78EFNI' \
    --namespace $AB_NAMESPACE \
    --userId 'pmQcziywB9bMyO3l' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "HLoFWFlB6eLVpUi6", "customAttributes": {"DO7R560cItZwYi3E": {}, "cFyOjAuupPcKXli0": {}, "DL048r5Uux6TZMzz": {}}, "groupDescription": "qAEe9ZK6WlqgxcYr", "groupIcon": "5hIhujCVDG3XyPZY", "groupMaxMember": 15, "groupName": "qt9iBBf4n7gxN0kh", "groupRegion": "RG7uBW5WW6emXFVS", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "yBQjZl2TD0FoQOEq", "ruleDetail": [{"ruleAttribute": "KKqBi7WFQeQLHe2t", "ruleCriteria": "MINIMUM", "ruleValue": 0.6085877352548632}, {"ruleAttribute": "KMOXi1Mz9WJ2Em91", "ruleCriteria": "EQUAL", "ruleValue": 0.3881846577133444}, {"ruleAttribute": "ABBXznTDV8ocwzXM", "ruleCriteria": "EQUAL", "ruleValue": 0.1506592610202575}]}, {"allowedAction": "jiu7TuaA82tuXoHs", "ruleDetail": [{"ruleAttribute": "DkeLlKrnyYmwMdBn", "ruleCriteria": "MINIMUM", "ruleValue": 0.32333693275888054}, {"ruleAttribute": "YGNdWapGS2hml3mZ", "ruleCriteria": "EQUAL", "ruleValue": 0.22021541751366147}, {"ruleAttribute": "SP7ChUZ5l2i8r3Nl", "ruleCriteria": "MINIMUM", "ruleValue": 0.6944605314642319}]}, {"allowedAction": "hhl01SMfxnVkmuga", "ruleDetail": [{"ruleAttribute": "FKD4HRzY82XBTaZB", "ruleCriteria": "EQUAL", "ruleValue": 0.5172715876562151}, {"ruleAttribute": "2RRHVBGmJe7APNWZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5994751434306947}, {"ruleAttribute": "ZE84cZIDA1HasLJA", "ruleCriteria": "EQUAL", "ruleValue": 0.17600484289977725}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["ZKHVNmYk3KGvMbj0", "dOT0Nwac4Jx6s7KW", "rUn6cKFYaNPgjqfX"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '0cGRss2k91e3GduZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "yIGmkX2CElEWNbP7", "groupIcon": "HCjUyhPMO2XjT7JD", "groupName": "fQYafusA5UX3xTP9", "groupRegion": "A6etgMJLPcdwMcMo", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '9GtCT5u8eSlVS0gW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'GCjXeai3bKbIikpr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "FR9N7AwuszvXgg7v", "groupIcon": "yrizGr56Zsx2MGWw", "groupName": "tYbwIGtDuZSNIWsN", "groupRegion": "4aZ3HKBrrjYxkKVP", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'Q7h6vJoa3f0p9Qa2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9uFcCaQF4hozH0mZ": {}, "Gm11XNBaG5S711tu": {}, "t2FrfeKAAn0SzOr9": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'CnaCEremTRmx6Gof' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '0ztwOfwhcewU3pK1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '8rkXDnMJgK1GvTeQ' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'tB4gPxI754WFFrwJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'obDuXFAK4pr7scXf' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'yr1ZZxBv3PjjlWyB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'txro8CSiwNx5MAJG' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"KXtSCejcOZwwP3Vz": {}, "d3TbPm6uQD18ajtl": {}, "PQdzC9uCfKOdju43": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'UQLJhgZC394WCUGv' \
    --groupId 'f9OSSRzmkJMYRang' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "JlJHKy6zPDHKxIp7", "ruleCriteria": "EQUAL", "ruleValue": 0.49732411849538205}, {"ruleAttribute": "DG6LFaVo0gV73ON5", "ruleCriteria": "EQUAL", "ruleValue": 0.34740413689204186}, {"ruleAttribute": "yeoRqWdNLwB6cq6u", "ruleCriteria": "MINIMUM", "ruleValue": 0.2188077252102445}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'ESFhWoQrczQCZDZc' \
    --groupId '2435TfVy1Yp5oBlF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'EKJJU4cCBAlyYGoD' \
    --memberRoleId 'cCDsXfVe3gxey55a' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FdQN0CVd1zuWrshN"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'HXQ7OoAoBQSzDnXv' \
    --memberRoleId 'yIEU0ypeMWlZ56JO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "0U0bTIyB02CBRnmt"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'c0ky96rZaTaIuXaF' \
    --namespace $AB_NAMESPACE \
    --userId 'jwlZAyGYymsSsyl6' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'zfWxtVvXk5ZimoZH' \
    --namespace $AB_NAMESPACE \
    --userId 'LwETVgkOGvzxWVUR' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'qtHWbcOMASfsSvNZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gjXCADOF6HL1auY2' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '8KVuvkuMH7IWq3yI' \
    --namespace $AB_NAMESPACE \
    --userId 'sLiZtWAZ7SzRozAb' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'qUO2IDbbWMkaxNfj' \
    --namespace $AB_NAMESPACE \
    --userId 'lymWoHpDx2yeonU5' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'bZDftZ4Ujw76z76N' \
    --namespace $AB_NAMESPACE \
    --userId 'rT3l5Qkly7A1v79J' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE