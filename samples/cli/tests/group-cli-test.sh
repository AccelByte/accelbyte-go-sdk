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
    --limit '81' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "4AdLpAyEg1ZWpfiR", "description": "fUFF6KJbva5THUgV", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "1NqivuO3gkVpMiO0", "ruleCriteria": "EQUAL", "ruleValue": 0.9463099597608632}, {"ruleAttribute": "oNGyV3nUs8DliLto", "ruleCriteria": "EQUAL", "ruleValue": 0.07880915085475104}, {"ruleAttribute": "3q0B088kqDYkshuh", "ruleCriteria": "MINIMUM", "ruleValue": 0.5141848422016271}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "YHAIsuEZYcLtPliR", "ruleCriteria": "MINIMUM", "ruleValue": 0.06765246394461033}, {"ruleAttribute": "AA6Zf4oljrpP3ZGk", "ruleCriteria": "MINIMUM", "ruleValue": 0.8017680155270828}, {"ruleAttribute": "oGKof5lf15tpzt60", "ruleCriteria": "MINIMUM", "ruleValue": 0.017858600789891543}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "6P0rv15y47VYuY3k", "ruleCriteria": "MINIMUM", "ruleValue": 0.9786830517525956}, {"ruleAttribute": "im3yfNT1BYDhg8yd", "ruleCriteria": "MINIMUM", "ruleValue": 0.5009055085372909}, {"ruleAttribute": "ASwvhPnSxOv0jHo3", "ruleCriteria": "MINIMUM", "ruleValue": 0.07160414103068835}]}], "groupAdminRoleId": "4eZydFpMWPsw9BEg", "groupMaxMember": 26, "groupMemberRoleId": "0WGIxJOmQNHwFC2u", "name": "ltFmiVdSYePgO4bU"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'kyO7Z3wH4DXTXbth' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '5zgCQ9cVi3E9uQxy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Ns0iHsPi0adfmOIo' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EOn9qt2WyUW8NRjH", "groupMaxMember": 10, "name": "tiPM5gXrHkqY8w9p"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'hKQuGP505a3ORjhR' \
    --configurationCode 'lUF1rdrDzKXA35TT' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6SUy88Ec02NARbY3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24182368705766077}, {"ruleAttribute": "DdicpXE7VVdKHMKv", "ruleCriteria": "EQUAL", "ruleValue": 0.1123386238497367}, {"ruleAttribute": "kbWqq9Dt4nBvQls8", "ruleCriteria": "EQUAL", "ruleValue": 0.8362782710975699}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'rNJV9wXirTRkpqJy' \
    --configurationCode 'toSsIyGJ6JaxHCNK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ZmUqPtZLc5MTgOPW' \
    --groupName 'FYgDb8U8wzkNVyxW' \
    --groupRegion 'uCVOJ7y7nHeiXaez' \
    --limit '94' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'UiLQNXpYuWUhYaUH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '1llMvei5IKdjM50I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'HEeuTT8Dr58M9mg1' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '65' \
    --order 'XPTyNkGBKfSnpKsT' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "hTwgTNphXiRdQjAy", "memberRolePermissions": [{"action": 22, "resourceName": "pUWUHLtHu925P5Et"}, {"action": 38, "resourceName": "q6TpyRBHkx8rf0L9"}, {"action": 42, "resourceName": "zBFz7hgw8ZGNYYpQ"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '2eJtjRTYSeKcodXd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'l5JRiCrQBXEfe7sx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '7GlFKFfRVTHrL4DZ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "R0E79uJ6QHKTGZpx"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '9czLQRkkyYw7SXBA' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 9, "resourceName": "ThGmo2xGSUjvx8LJ"}, {"action": 81, "resourceName": "EyAoYueALgMWkQCc"}, {"action": 17, "resourceName": "D6Tx7SObCfrXKTzl"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'IdWcCjfeuKNb5b0z' \
    --groupRegion 'DQGulwRq7cWIago9' \
    --limit '39' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "IVe5HFAtgsoIEjnK", "customAttributes": {"nY46ayH19h8YKO1E": {}, "BVHvOI5mEc4JADJs": {}, "YNaZNZGNlDcMN95Y": {}}, "groupDescription": "tOdyAjJKE7BYGOul", "groupIcon": "oG68k9LJMU1jJUcl", "groupMaxMember": 31, "groupName": "LnCZgnOgQrfl1g2G", "groupRegion": "70b5vJdQ7EXBR1Ro", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "6hCfhwq6gmNbauBE", "ruleCriteria": "MINIMUM", "ruleValue": 0.2909369306839623}, {"ruleAttribute": "8Rzjln5XHXK4Mr7Y", "ruleCriteria": "EQUAL", "ruleValue": 0.5846294261731068}, {"ruleAttribute": "Hwzek64JIsXJ7CTJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5106745891754678}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "qGvJjQltaJW2TnwD", "ruleCriteria": "EQUAL", "ruleValue": 0.46857320637606825}, {"ruleAttribute": "zjGZP3kKMf3zaDgN", "ruleCriteria": "MINIMUM", "ruleValue": 0.5566273197346884}, {"ruleAttribute": "HgX0b98QiaU8p2kk", "ruleCriteria": "EQUAL", "ruleValue": 0.3850638085385868}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "9czGWdwe07dWOE8I", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6077086678841684}, {"ruleAttribute": "SsYoKk1uppQs2wf8", "ruleCriteria": "MINIMUM", "ruleValue": 0.8450153385766884}, {"ruleAttribute": "BDklPvqrgpcHoa1H", "ruleCriteria": "EQUAL", "ruleValue": 0.9482518267383037}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '18HoFU0hfwzRpFxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'e04pxca5lDbHYTnk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "3KX2V8ygrMCexnRb", "groupIcon": "YnjvzCPITxzXm7sj", "groupName": "rClMncxTEdImdKK3", "groupRegion": "4JqGJJkVeeRW3pdQ", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'GRgBNkDuxZc7j05L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '0aLylsP77vKn7BVo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "VPooNsmfw6j5fiod", "groupIcon": "25jGyFSYC376SMRB", "groupName": "DoPgNMbDfPD7k7Pi", "groupRegion": "OjJbYIb0iXAsqisH", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'q3i2eJgi38nKZEz7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TXUQBwpILKGaMgrs": {}, "G44dpPNN5FAbgb9T": {}, "7c6RxYhNF4JG4kaD": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'DtsJav94774832MC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'RRqqgF8sqj0Hhny3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'qpuj6ZRG7MSv0mTv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'OI1pjG66rm4M7sXQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'P4mpoiUIFAaCpUeO' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '7EWJV0aolMObrrIc' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '71' \
    --order 'qdph7NEdwgxdVYtt' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'jDNKbhZbI5BoRpIS' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"BenH9iGBv18HAMOf": {}, "z2IZn0Z11FQmOb2G": {}, "4vtx1G5IKqYFslH6": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'y7bghMY94waSF5DM' \
    --groupId '4i92XylsypDTVUH6' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "wb83gBF21FpoCP1Y", "ruleCriteria": "EQUAL", "ruleValue": 0.9242613252826642}, {"ruleAttribute": "ZBVsvt4dbP36XUFh", "ruleCriteria": "MINIMUM", "ruleValue": 0.5142806914871013}, {"ruleAttribute": "pdMpK005kFYh6ZvN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4156929999665757}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'CncqgXHXwvgHEktd' \
    --groupId 'Jh1btzcJTtYryjLc' \
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
    --limit '42' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'c8i8ZRVAYZLVsS0o' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Mu3jYOLddn6zZ99b"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'sOUgfgteojun6ZGy' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "5o4FPzSuQEyUvwuX"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Id4RFoW8JhFIPP34' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gikBtoixLPeHTMMM' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nUefwwBwMiuf1HBV' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EMi2RCpC7s7l7pzs' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XBERtxw82KWdH8VX' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["TrXIXKx6J4n7SRPz", "2ax9wwEJ5HwfJ9cw", "yJcaPCL6okp3sBLf"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '22IBXIqnBYHGsdl7' \
    --limit '58' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'od929xJyVQEmbSzD' \
    --namespace $AB_NAMESPACE \
    --userId '4OFEd1wVjd08flna' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZZcYDKSsZnmQeSrd", "customAttributes": {"Kbqn9ylPCR5dWLjZ": {}, "mFMAyF4wgtKQf89x": {}, "Wz5rC4xJ0h2qg5le": {}}, "groupDescription": "LKOS3o9qO4tjhFDy", "groupIcon": "RDd8YbAc1Q9CeSYk", "groupMaxMember": 31, "groupName": "uFXncawVKZyJXfag", "groupRegion": "iF2B2f5De7Fj40i9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "jejj9QN48saQoDi3", "ruleCriteria": "EQUAL", "ruleValue": 0.3151077228908522}, {"ruleAttribute": "oJm923o78DBtOuSM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8224132957496996}, {"ruleAttribute": "EGstjXzxt2YIKKVS", "ruleCriteria": "MINIMUM", "ruleValue": 0.39962335761262313}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "MvqUhwuEnO1WEvNi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5274529508146276}, {"ruleAttribute": "NuzKcKHsJLUm6ESv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9415193127435113}, {"ruleAttribute": "NN7WUkSVGiE4SkvX", "ruleCriteria": "EQUAL", "ruleValue": 0.9983723274769473}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "UgJEZJQJ1zlBPQm6", "ruleCriteria": "MINIMUM", "ruleValue": 0.1201595479943276}, {"ruleAttribute": "1H5M8Cr8bjiTqApP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1491906622523056}, {"ruleAttribute": "Dw9ltQQ24dLRZV94", "ruleCriteria": "MAXIMUM", "ruleValue": 0.38919632653142633}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["9W9cIgvpzIkMKJ9t", "xESvSfzekaDyHgpY", "cbLfJFuudcb5Fih4"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '0Jmlgxej7efm8yQk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "3gV04IebjX9K5wBm", "groupIcon": "YNOKBIpRUWwVYQFA", "groupName": "k9J2CvIb0sWy3CmR", "groupRegion": "MV0tEbn0qDQonF6h", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'I7Kv3HekPiS8ayhn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'kp5aLFUIj4K5sfbZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "djEy8PEEZh5FOcyl", "groupIcon": "cc1X90IjjHiSib1v", "groupName": "uJWIQikqxObtCE2P", "groupRegion": "t3xo2RgtMRxMW2HS", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'YPxbcKHe8pV92u8n' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"owFtyfhBaK8aWbYf": {}, "ypyPGmtSpf8lBfmU": {}, "K6sAI5b2gatkrC8s": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '4Gsh5lK4dDRK7u05' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'Rz7D66le9USYn8NC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'aM2yFVe6NlDNaLnk' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '2DFqNIJcQ7xgvIhg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'sfLD5hFFxetQ6V6w' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'aGMm57ZmIWZVHa1e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'IqmliYWqz1EmSjey' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"zHAn4Ka1xxDU7wAQ": {}, "1uVmb71sqLisbw2n": {}, "va3dfIOISTmPGq2V": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'RKKyhjnfIXrp81Wv' \
    --groupId 'WnXSZi86QwnP0IH2' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Zx5kr4O7e6fJaiDb", "ruleCriteria": "MINIMUM", "ruleValue": 0.3478069658386954}, {"ruleAttribute": "nJWAy2xeIfvXXZY9", "ruleCriteria": "MINIMUM", "ruleValue": 0.4600544047177456}, {"ruleAttribute": "2fxRBs1chZToMEtb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7192403692959572}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'fHH3MUTD9altIffa' \
    --groupId 'HNRiHeFNTYLVG0F4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'E76tLoGVkoPkTJeu' \
    --memberRoleId 'Ogrf2maZBYAaMEWF' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "av3e4FZwfB3bHtKB"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'owbna0ME4OcDw1kT' \
    --memberRoleId 'U3cGliMNUdAwjN4y' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "rw6pllE9VkBZN69X"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'DBQR9opJhMA92avi' \
    --namespace $AB_NAMESPACE \
    --userId 'CWETvVv0gzaO7YWP' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'PoYRmYm0yOfs0K2P' \
    --namespace $AB_NAMESPACE \
    --userId 'fLOpOEfbwSirJ1ZY' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '3cIsfOkiCxQPdLOa' \
    --namespace $AB_NAMESPACE \
    --userId 'GV91ZGVCXj3WMUaz' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'NtmGxqBSfmr9xVDz' \
    --namespace $AB_NAMESPACE \
    --userId 'PnNDnOrQilOE758I' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'P6XvXhr5xmMzqaFL' \
    --namespace $AB_NAMESPACE \
    --userId 'kXudJXQxsb9dz2fT' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Lls2zKakoVOByX3V' \
    --namespace $AB_NAMESPACE \
    --userId 'OApySrcENMsYlWrv' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE