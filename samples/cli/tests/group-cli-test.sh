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
    --limit '19' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "B7iHTxw5qg5FXhjM", "description": "rTTzMHHCdW0Uazqd", "globalRules": [{"allowedAction": "naS2RIhgWkQ0T7vJ", "ruleDetail": [{"ruleAttribute": "y8TlBNBUMrhwD3II", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4057949228560397}, {"ruleAttribute": "sCQLFaziiHY9leay", "ruleCriteria": "MINIMUM", "ruleValue": 0.6145968486617478}, {"ruleAttribute": "l0EsxVz3tqf7NOrL", "ruleCriteria": "EQUAL", "ruleValue": 0.4193485510678687}]}, {"allowedAction": "5iIeuDDjGFxS38uV", "ruleDetail": [{"ruleAttribute": "j6BUonNEcJmTltSi", "ruleCriteria": "MINIMUM", "ruleValue": 0.7219979694986988}, {"ruleAttribute": "KwSHDDbdHKF8NHjF", "ruleCriteria": "MINIMUM", "ruleValue": 0.3033339523092812}, {"ruleAttribute": "Hq7e74PXVXcMC5l1", "ruleCriteria": "EQUAL", "ruleValue": 0.33517420225863725}]}, {"allowedAction": "xnIZyPe61eYN8j1v", "ruleDetail": [{"ruleAttribute": "x7qM1rvqT22NB0uL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9090951751403591}, {"ruleAttribute": "KMPfwQ7fhEkhJW1Y", "ruleCriteria": "EQUAL", "ruleValue": 0.6227806202870687}, {"ruleAttribute": "MkKhuAhCZ5XG7IQp", "ruleCriteria": "EQUAL", "ruleValue": 0.50353448199424}]}], "groupAdminRoleId": "UIvMx5mtJY4w8PI1", "groupMaxMember": 8, "groupMemberRoleId": "ENpKNVQxa5KEVAoz", "name": "qK3pQRiv4L3irOnv"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '83A2S3YeCDTxpsbK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '8FrtghG3iSvEqA4j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'oXQfhtdmmVLKic93' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zUbwu6xGmtidn5JW", "groupMaxMember": 20, "name": "5iA12IcVLGMLzviQ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'nDukZSZ4B6iAutPh' \
    --configurationCode 'qPkmMvV2dl74XYMg' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "CmloaNIFJoZjKxnW", "ruleCriteria": "EQUAL", "ruleValue": 0.5830776770203178}, {"ruleAttribute": "SABsFMTFJ064gkHe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2600629195158539}, {"ruleAttribute": "ccvB6xDRL7q3uUpo", "ruleCriteria": "EQUAL", "ruleValue": 0.9473977111860613}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'UionMjO4a7ltcKLp' \
    --configurationCode '7NU91wfAaIv7ZcG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'GdO0L2L7IGYRvSyE' \
    --groupName 'k2wRNEhLv5IlpKtt' \
    --groupRegion 'gESGunMLyfVAet6x' \
    --limit '56' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 's3LnMvdKWHmMID6T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'TPEyta1dPMxdWWdf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'VMNQUDZyS3J9IyPi' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '24' \
    --order 'KYnCLifGbbd21IOa' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "gMwJenK1sGHrACep", "memberRolePermissions": [{"action": 88, "resourceName": "HfB12F2Hww3VVRON"}, {"action": 11, "resourceName": "Woe2yIaKnJjX1aFg"}, {"action": 81, "resourceName": "5d2RmeRHE4cQM9Mq"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '5ygaVSa1THf5y10q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '1RmjaaU15OoyjBLv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'MnNnISyJeHOYww2Z' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "jHO9FYwYGkVbZBbN"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '1EQ13piXHkBBXVmC' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 33, "resourceName": "BfPPPCoL5d6H6XsB"}, {"action": 87, "resourceName": "IGePXZnfYyNhhFml"}, {"action": 42, "resourceName": "k8BEN2brAzW61bzy"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '9tPTQPn5i2yfKQbD' \
    --groupRegion 'oBA7qdauMdK1FI1l' \
    --limit '13' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZHetLptqqKHBtjz6", "customAttributes": {"3qEqSCmz9P5B6cy5": {}, "RaIdHnHTdA7R8H8N": {}, "ZZOHe0bIYsGtavHa": {}}, "groupDescription": "hWaoRqqt7VZcraFP", "groupIcon": "z0IR5ejjgCQLBJei", "groupMaxMember": 55, "groupName": "WjnJ0RWR73HwE2u1", "groupRegion": "juyJqN2o2lsYwleO", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Kqmv53Jyex7UQA1K", "ruleDetail": [{"ruleAttribute": "5GSuiSYIq1z7eLzt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4813109969462621}, {"ruleAttribute": "ESRAZ8Jf1fxbZh5G", "ruleCriteria": "MINIMUM", "ruleValue": 0.1974743554951489}, {"ruleAttribute": "LB7rE2GPAN2bvLNC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5045132460598051}]}, {"allowedAction": "YXIzOUK6pWTd7b31", "ruleDetail": [{"ruleAttribute": "LgITqI5N0HNJWqMa", "ruleCriteria": "EQUAL", "ruleValue": 0.26128083460745655}, {"ruleAttribute": "45YRQVC1SJ8AotP8", "ruleCriteria": "EQUAL", "ruleValue": 0.5391057168715739}, {"ruleAttribute": "oHtKYg7fONL1HZ0y", "ruleCriteria": "MINIMUM", "ruleValue": 0.6290906170862186}]}, {"allowedAction": "BflO7D6yYd2wb3jf", "ruleDetail": [{"ruleAttribute": "Wet4otqyEvTgalm1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8748148025252644}, {"ruleAttribute": "S2WxcNqszB9azV02", "ruleCriteria": "EQUAL", "ruleValue": 0.5616298152351279}, {"ruleAttribute": "30PM5t2nG4sZiIfC", "ruleCriteria": "MINIMUM", "ruleValue": 0.20213628665629513}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '7pMGQr165HlIj9UQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'HflnZGSfLlOq5JBq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "K51Pbpw1eVLNFxcM", "groupIcon": "sREvspdpKIeXxjov", "groupName": "Tnv8SYJqXXRDsfvJ", "groupRegion": "CItWD1kozip0kFrH", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'GfkHLJWkZQnDLBoU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'EywEDZ7IrkCH9LwD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "3bJQLnI8ijl8oUej", "groupIcon": "MEilj8qWVqnodIuT", "groupName": "xlW6zIJERUV0ZOtg", "groupRegion": "d40yTRpe8JauDBQW", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '8aWI5xAjQ5SfAaUe' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xZet4Pg8uXbeRU7n": {}, "du8zmyrNnVjnPESO": {}, "m668ipL3yLq0OLoy": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Rt8knYwsInSaWTmN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'Wxk9TXIJU78qdD0X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'KCYDlrHdEltY1ggB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '95zxvwRsS2T7KBTf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'VCPaPC0lYP2Oab8i' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '82XAJONeMaTTsyPE' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '49' \
    --order 'Y6SuLmK3Y3W9z5Xv' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '7FEpT8Iu20akA6CA' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"3NZCl1p170sGHUU5": {}, "hxV2e7vTlXjcVGRa": {}, "wMofyEjOdpNf52Hg": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'vekfpmIGuwkYTIlr' \
    --groupId 'FyVAbjjW0UiAErkO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "rYcpUua592q3OtrG", "ruleCriteria": "MINIMUM", "ruleValue": 0.00970252699743479}, {"ruleAttribute": "aVnpJJVU2v6FqCj5", "ruleCriteria": "EQUAL", "ruleValue": 0.40586736847055105}, {"ruleAttribute": "fpOyeUVAfetj7cn8", "ruleCriteria": "MINIMUM", "ruleValue": 0.968826233035103}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'yJKZ8FnhEVR4WQcx' \
    --groupId 'iy8HpnmoT69E7bCp' \
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
    --limit '83' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'zGaCXG2tnRxLsiHk' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "B3WpoThQZIkzzMhC"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'g1nsZaelLd4VHHTu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "TYWKutUg90CtM6es"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FqCdkMw0vQJoAHR0' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tpxbf0pT8xceLkDA' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GYR8Zyy7YIsKkYKG' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qGmfFLL4HAmZ3GG9' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 't2w6Gun3jor81XZv' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["jnWX0gAP0DReiZvH", "H900YS9Kqmcqnux6", "78ARJv8V3Y3hNjtI"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'te08KA8EjFSdF2WQ' \
    --limit '66' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '5hren6aLJOYaWJ2z' \
    --namespace $AB_NAMESPACE \
    --userId 'sJCTyE9i89jcLFzp' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "sqKc6CM5ch0CNf2m", "customAttributes": {"a9KocqusVB9U90zm": {}, "yM7BAD000xEuiVkW": {}, "t2yqNPge4YlhRvqr": {}}, "groupDescription": "DlKfaYD7cgvznnit", "groupIcon": "nVi7FeAVxneK6Vzv", "groupMaxMember": 34, "groupName": "EQCz3YTmn0MUq7Pn", "groupRegion": "X8VNfQpMfYQbWMqs", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "s9bvFkp4l2TOgPjl", "ruleDetail": [{"ruleAttribute": "ORer39EZP0ms4QkK", "ruleCriteria": "MINIMUM", "ruleValue": 0.400020229430181}, {"ruleAttribute": "67cuZvxZkagw1Z5t", "ruleCriteria": "MINIMUM", "ruleValue": 0.4543224066523748}, {"ruleAttribute": "akx0L50tgysNyUgB", "ruleCriteria": "EQUAL", "ruleValue": 0.3725634640297596}]}, {"allowedAction": "AapPaeakxBfDACMf", "ruleDetail": [{"ruleAttribute": "3IXXORM9kOA407UO", "ruleCriteria": "MINIMUM", "ruleValue": 0.11502362828895096}, {"ruleAttribute": "MBfFBchttTT9kLkU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43231087005566693}, {"ruleAttribute": "Gl1KLqfUfW2b93xM", "ruleCriteria": "MINIMUM", "ruleValue": 0.6769307480012301}]}, {"allowedAction": "HUe7soLZa3wdKnTX", "ruleDetail": [{"ruleAttribute": "94LU8O4h2QWnUfsZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.20165243140429423}, {"ruleAttribute": "Sb838IsyJw9Uv2Aa", "ruleCriteria": "EQUAL", "ruleValue": 0.43245081115061823}, {"ruleAttribute": "xJ3xvCoccvBb6U6O", "ruleCriteria": "EQUAL", "ruleValue": 0.1311182864780427}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["nvZiAZJIiL8jhxr5", "K60mfcCCtmqMkPLT", "ypHThUM7IFDwCbbX"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Bi0wFD3OC0EstsoC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "tfQPxaQqW8FsJHWB", "groupIcon": "RPupMjwKjJMF9JoB", "groupName": "rtkDzoHLXEZgBXZJ", "groupRegion": "nr4A62hfkDWYD7PL", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'lhWeYpRAr13F1kzV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'gWaI9g6yHEtA4jYo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "jB2KvuionSAkeeAv", "groupIcon": "vGgWEVOp1oV8fAl8", "groupName": "G0fbA7TC3JHO6Q16", "groupRegion": "zGFlgUyEvdNdODZc", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'qRDEsgLmInwI2XNq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KGrl0fECBegajTSR": {}, "7WvtikTQr8qRswWX": {}, "cKydlpI3gd6FKXHz": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'mzvdGsBtStw3KAUL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'svQUpAFvLgEYNINs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'I583bwiPZP1otMR6' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'WvApBPRawQz8R8GU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'M7zJbSaxA0qff1mC' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'NqMLLhr0iafdi4T8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'tLkEfqmlmSEOFVJJ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"GsjQzKO4oRxvcFWj": {}, "A49Y3RoLFUPM8kOI": {}, "6OA2snvWzwXEnEBh": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Yyk5qT6EXWVuLPwp' \
    --groupId '5Ft2ZBJTqYtbLMUN' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "tT2qWdomt6dBhqu1", "ruleCriteria": "EQUAL", "ruleValue": 0.5633974472119907}, {"ruleAttribute": "7eAP5L8TdVIV4nPr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7849200135822032}, {"ruleAttribute": "SKbJ5YQ83ddG9xkE", "ruleCriteria": "MINIMUM", "ruleValue": 0.8661949947822916}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'bsPCce0wRFRbATel' \
    --groupId 'IEevU2z99MjsL5fR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'AM0GHrJXped4GIpi' \
    --memberRoleId 'OyKG4RVbXDxxRTVv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "as29SeMpY8cLZ4gL"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'nD8szwQ6lWg0gstK' \
    --memberRoleId 'GxPdLT5HKltoVm8z' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "85FNl77VWoSl03b4"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'ZsnCkmSz51vbgogK' \
    --namespace $AB_NAMESPACE \
    --userId 'LEfZlj0k40T1JNq4' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Fw7gHSfOar1ze10L' \
    --namespace $AB_NAMESPACE \
    --userId '55l8eY2VJpY7Zdub' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'ZVvDT5RBtjBTezNv' \
    --namespace $AB_NAMESPACE \
    --userId 'BPwyGBkuMBJg4zG8' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'dcHe25oWuZPGAzaZ' \
    --namespace $AB_NAMESPACE \
    --userId '6PjyRhs3nKitNJkV' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Y3S84fJFsH38bygu' \
    --namespace $AB_NAMESPACE \
    --userId 'XNKM4nfEG6CO7Jk8' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'CbADr5EUpzG0p2uz' \
    --namespace $AB_NAMESPACE \
    --userId 'SbAdWHj6DXab2thJ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE