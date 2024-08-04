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
    --limit '44' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "UVDMWVy5wRwv0agC", "description": "LX7oH87kkzeUQP8h", "globalRules": [{"allowedAction": "2Pw9Fz2pTRrNgGtD", "ruleDetail": [{"ruleAttribute": "GNVlYvqcwbYxBL02", "ruleCriteria": "MAXIMUM", "ruleValue": 0.538057644341225}, {"ruleAttribute": "960OSELK2NZvHv7L", "ruleCriteria": "EQUAL", "ruleValue": 0.18693752905215855}, {"ruleAttribute": "MOHrhVJBYAGTpPng", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6060396827794562}]}, {"allowedAction": "lZOxPubcu86hFSvp", "ruleDetail": [{"ruleAttribute": "0ljW5sV1tniF4bWc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.380932731886489}, {"ruleAttribute": "bt3aT30tAnVhYHne", "ruleCriteria": "MINIMUM", "ruleValue": 0.4287010316956835}, {"ruleAttribute": "exolApiFk2I3TjlE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9517935002947628}]}, {"allowedAction": "YuOxUXLuViVVEQ44", "ruleDetail": [{"ruleAttribute": "L50cR8F3iGJ8tS8a", "ruleCriteria": "MINIMUM", "ruleValue": 0.11284291313223405}, {"ruleAttribute": "1MXaYJUrJy32LZRm", "ruleCriteria": "MINIMUM", "ruleValue": 0.006339181550088613}, {"ruleAttribute": "o8EB7oR0UJL16kdO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6655073129656925}]}], "groupAdminRoleId": "oIDY0372vMaidO9u", "groupMaxMember": 33, "groupMemberRoleId": "ncsuYUthDTUJlhaM", "name": "awELgpGLahvvHPnN"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'KP3Whg4dBhfq4bYo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '4va7lL1Tp5PdWS7u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'YAqG5vzuhJ9m0Yrg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p1KznABHyZtCMZ70", "groupMaxMember": 62, "name": "FJcdFayCC7vUqYQQ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'SWJR7cfvvdcHilTb' \
    --configurationCode 'DcGT9Pl0UKYcrMxV' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Ks7kRkwAluoFUhfJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6130583104622508}, {"ruleAttribute": "jnMXlpf44zkx05OL", "ruleCriteria": "EQUAL", "ruleValue": 0.413987281058833}, {"ruleAttribute": "QJp4zONyUx6H8h7r", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3561715732182824}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'p5WIq9yr7PlY7SPP' \
    --configurationCode '1U2rxgFqL6DTKmxc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '50KpMcuM1ymWIeJi' \
    --groupName 'lOD14HmSdfaDU7XR' \
    --groupRegion '5E90ThZgbE130h2c' \
    --limit '97' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'T7XvCXtBeYekh9g3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'RSFSlqyxI4HmEsqY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'CGYIhIWza2ARRGtn' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '62' \
    --order 'EGJNrROXySfE8USF' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "IaxSut3VJxID6g0h", "memberRolePermissions": [{"action": 74, "resourceName": "C5G5D1oGjVcGkmch"}, {"action": 37, "resourceName": "FLrpNxbzIzEI5hoC"}, {"action": 13, "resourceName": "ZGEGFAF2GtA5e4E0"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'JVh7qis250xldjsS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'UjU3UgvLc4QOEfO0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'HM4baRm0FMX1G2HN' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "wv1z5TyWKEBlr5hL"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Szi1Xr8B901Q1OXJ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 34, "resourceName": "d42gH34742ly1VlS"}, {"action": 82, "resourceName": "s8DssC7GL8MpR6gA"}, {"action": 85, "resourceName": "8KVfJTwfkC42JB0Y"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'ruVLiSTDTUqZsZSj' \
    --groupRegion 'Fs2kBC5jN6JAz7Fg' \
    --limit '14' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "FKxmp6oN1Ml6zyrX", "customAttributes": {"KW80GYho2GRsZu4Y": {}, "3Hyy60BKLrBk9kui": {}, "UwO8FItSrtWcjg9g": {}}, "groupDescription": "yCiRLanZC0UQkx35", "groupIcon": "2cF250hPTkonai3t", "groupMaxMember": 74, "groupName": "lQeVVk6rDJWBSyW9", "groupRegion": "BGS5rEtOgjvmpcog", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "AnJOfJmMxpLeGnjq", "ruleDetail": [{"ruleAttribute": "a3a5DScC3glGVrXs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9770914191983853}, {"ruleAttribute": "iH6upxKUvyJK5yyt", "ruleCriteria": "EQUAL", "ruleValue": 0.3951856571842498}, {"ruleAttribute": "1e9IoOYPFMUSXRRz", "ruleCriteria": "MINIMUM", "ruleValue": 0.17686922369038438}]}, {"allowedAction": "9e3sPD6ckVlR2H9Q", "ruleDetail": [{"ruleAttribute": "WhaPOZFNVCf9zwih", "ruleCriteria": "MINIMUM", "ruleValue": 0.847513575322999}, {"ruleAttribute": "IHPL4MuPqwg3sVTG", "ruleCriteria": "EQUAL", "ruleValue": 0.9216102283606168}, {"ruleAttribute": "Yr99ph32WKwIm7ja", "ruleCriteria": "EQUAL", "ruleValue": 0.7798416626501941}]}, {"allowedAction": "QriwMDTsPNHEFLSG", "ruleDetail": [{"ruleAttribute": "wem9rhznS61ImlXw", "ruleCriteria": "EQUAL", "ruleValue": 0.5036935999980745}, {"ruleAttribute": "dD58WldWPu9SUG0W", "ruleCriteria": "MINIMUM", "ruleValue": 0.7937947819130944}, {"ruleAttribute": "8gcqZ7EAhM8BUFKD", "ruleCriteria": "MINIMUM", "ruleValue": 0.6033531222796926}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '4rxhlBwusjCNov60' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'f0q7umW8UVoMyvbc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "zVuiqoWlSUlIu0Oc", "groupIcon": "afHqA1qC2c1YIXmp", "groupName": "zlwQh90i24jsEIjA", "groupRegion": "5krKk8QWaQE9RHz5", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'vh8bA3AadpZv8gDd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'C2oigyFGq1uUw2Fu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "saIGZUJYmH82TuGH", "groupIcon": "amdI4hWYTgn0BXCF", "groupName": "PttaKKSXYGTJOS3n", "groupRegion": "nYKQatMeX9tFiYWI", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'ASvzNBmQrJyfEMJZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"i2dIkmTuJWF2RR1I": {}, "AzEEOYNiD7s6M2Y1": {}, "XxgMz3Ifxz15BNpl": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'SqKzaaIPOHSOBDIY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'SaN3Ocrudae5uzb0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'p4nTKgJKHi4qcmo2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '01S4RsPZPhvQRXPi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'O9TZwPfwECTDFSoF' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'AkNV2zOKwqLtXqwj' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '4' \
    --order '8TdFRSWmEXX9SYG1' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'dcg4IK5qH5RVbiRK' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Uxx4trqICenK3zF1": {}, "S721EU8y3Ks9cuzt": {}, "DSKyXtBq595SrMgB": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'e7OOlGUww1VVzw5f' \
    --groupId 'kk5jkYdn4zP4h4gq' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "jYKKwcMDZJJIGtFq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7428609601568864}, {"ruleAttribute": "r2cmdCKEHdOxMKhU", "ruleCriteria": "EQUAL", "ruleValue": 0.4113792148831372}, {"ruleAttribute": "IUej4XMz33bVj6Vq", "ruleCriteria": "MINIMUM", "ruleValue": 0.2087000668663329}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 't9Rs2HQPJwrh3DA5' \
    --groupId '334BbEx6umbV451M' \
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
    --limit '64' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'OrJvNO0hvF36pTel' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "eMeQhG7FHHQaSGyG"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'KdyFunKSuIk4NdOl' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "80M56bAQtJZ7HOXY"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OG7olrnbOzsxCJVN' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PbvArgmQMIrGITic' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5HJYbW1zB41Imtpa' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GvfDhJeKHMxVblUv' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'P8LQVXaWMFz7YZ5B' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["EsvieAaDS0XRhXgG", "beZNjobG5ynq8JVD", "YyNBkivFwYIbK5Hr"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'JgruS50clk3Ixnkj' \
    --limit '43' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'XcfXeGOFDwjpbuFa' \
    --namespace $AB_NAMESPACE \
    --userId 'k2DTr7fbLnFNSUKl' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "qnJ6e9Bp8LmfhZGC", "customAttributes": {"Aau5AOXEwDjxrtgJ": {}, "K0zKhes8cl9s5P63": {}, "lwzaW9Rs0plsPSYC": {}}, "groupDescription": "7zBbPFNy19tBDIE4", "groupIcon": "VGmIq64C6cyjiM1k", "groupMaxMember": 51, "groupName": "PeUd9XfI1B3V2aIo", "groupRegion": "W6SH88l1qYj27YYc", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "uyDp4cY0UlzVZplL", "ruleDetail": [{"ruleAttribute": "jzp4u63nM9frvASI", "ruleCriteria": "EQUAL", "ruleValue": 0.9081724775943381}, {"ruleAttribute": "aN3aYmv9j0EQQzIY", "ruleCriteria": "MINIMUM", "ruleValue": 0.7880419899622687}, {"ruleAttribute": "OjKtqTmvKBJbrccp", "ruleCriteria": "EQUAL", "ruleValue": 0.4921135680351808}]}, {"allowedAction": "oLWWzXbWfF9z6aRO", "ruleDetail": [{"ruleAttribute": "UzuA9riveeJ62u6f", "ruleCriteria": "EQUAL", "ruleValue": 0.3150339947821442}, {"ruleAttribute": "Hq84Q495Cf5xSg4N", "ruleCriteria": "MINIMUM", "ruleValue": 0.045315441938304835}, {"ruleAttribute": "Znf1oXdwHReAzP5p", "ruleCriteria": "MINIMUM", "ruleValue": 0.7677374145518653}]}, {"allowedAction": "nHoJ5XyDkAPepuph", "ruleDetail": [{"ruleAttribute": "TnnuqorFOJqTiOei", "ruleCriteria": "EQUAL", "ruleValue": 0.6045818925931197}, {"ruleAttribute": "dusn99ItbZovWB8c", "ruleCriteria": "MINIMUM", "ruleValue": 0.9197974246708313}, {"ruleAttribute": "hsoCGeDXf16vHBCG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18633402828315437}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["C56K9Zbuv4x6U5pk", "DLeRXoZEB3EP0CLh", "k0Tnxv7yjfbljJfV"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'XnnQHL2n8ojrsGW7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "XOfNKXo8YDewwWWI", "groupIcon": "SIqVNgYj5RedEPXj", "groupName": "Yl4BMFvQ7c5GFEwa", "groupRegion": "a4YusBZtLEwVrQlf", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'cm4hxXkuEycgaOnS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '218PdNrptGfKZCRi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ddbPfNx6pBZQmWnz", "groupIcon": "gr6LNtQUuPq74IDC", "groupName": "AmpY9jXxEYp69jFN", "groupRegion": "7YlSNe4qSybvbIxR", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '1GxP46IYro6q4j5U' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yDOwnJ6zfXqVakuM": {}, "1Hw526pEUgpPjpos": {}, "AjK3InMgkbAaXwYJ": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'zNbk3tCF3YTSJkPq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'W9WnrDcsSWEuAZ9C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'MRhYGcIPkr5VRKR4' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '7AplCCfwtarfAnYD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'WjFC8lZE2QGcYypY' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'dABLhlYkBZUn5ia9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'vAhvQouKnNaxxnGe' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"h4WXBQKRa4Nka4F9": {}, "QgZr9NrSR4G5GV0G": {}, "OePMoPipRkVe8Utb": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'pcw4xftpnpm04STj' \
    --groupId 'PX1uqBy6VZrAVHHA' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "z5ihsa0Cwr6GBZU7", "ruleCriteria": "EQUAL", "ruleValue": 0.3215512722451054}, {"ruleAttribute": "wYdbKroSIwFpu8kC", "ruleCriteria": "MINIMUM", "ruleValue": 0.5560619499055347}, {"ruleAttribute": "09Z6v3zySFeh1UKk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13766029388889267}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'ymiOWdTbz0LPcmtp' \
    --groupId 'hwcNNplWI9ahVRiL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'dRE4XPCFIrhOLMH1' \
    --memberRoleId '1I2RsGAXC53vXWWf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "hPC6obH95rCQiKfh"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'OczXbUGLRaiIOGb5' \
    --memberRoleId 'GCEogzuKtu4h6yDN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "693nSJ69t10HEWrH"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'wM3IiBXVzNIlaw1q' \
    --namespace $AB_NAMESPACE \
    --userId '14doLA5FsYi6Snur' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'tfVxgTxJGmflLxba' \
    --namespace $AB_NAMESPACE \
    --userId 'byO8l1SbJg0vrTRx' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'FHZvYnjblkwLMk1M' \
    --namespace $AB_NAMESPACE \
    --userId 'XqYZNsaKQMOZyqQU' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'GcotRqHMmoJrTBUI' \
    --namespace $AB_NAMESPACE \
    --userId 'XOBruUr17qL7HFZ2' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'EqMv1HNjwihGMj9j' \
    --namespace $AB_NAMESPACE \
    --userId 'lD7JlFfOzcYXw3kT' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'tkRcEmBrebgsif1b' \
    --namespace $AB_NAMESPACE \
    --userId 'UKZAGspcv50mA7QE' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE