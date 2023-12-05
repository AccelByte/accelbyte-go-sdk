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
    --limit '57' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "A4yCc6Krn6S6blbJ", "description": "TucUZkBo1dyWXXfw", "globalRules": [{"allowedAction": "4dF6dGK0cFgUg4ho", "ruleDetail": [{"ruleAttribute": "XsHJZ5A4WrUFV2yO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8003026833190532}, {"ruleAttribute": "6i4I5G9pttqDPdu0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8266439423546436}, {"ruleAttribute": "H34eMXtiPQPvucFD", "ruleCriteria": "EQUAL", "ruleValue": 0.23715493037878976}]}, {"allowedAction": "3KAWcgOXmplpeOiu", "ruleDetail": [{"ruleAttribute": "AWYzPrjbQoGhjosx", "ruleCriteria": "EQUAL", "ruleValue": 0.5610881132179155}, {"ruleAttribute": "gRZRyWjXI7wKISdK", "ruleCriteria": "MINIMUM", "ruleValue": 0.12994404603775}, {"ruleAttribute": "T2CwXo9AUNCfLz3F", "ruleCriteria": "EQUAL", "ruleValue": 0.28778919816724}]}, {"allowedAction": "xTOjfbosWxilGQF0", "ruleDetail": [{"ruleAttribute": "p5KQRX1YGUy8wEVr", "ruleCriteria": "EQUAL", "ruleValue": 0.025882643657060722}, {"ruleAttribute": "rf8GwdGKsgI5pPfY", "ruleCriteria": "EQUAL", "ruleValue": 0.6700081122063632}, {"ruleAttribute": "FUKVSuntn0H3wGwx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7494315725104619}]}], "groupAdminRoleId": "Z1oXF4Wh74joXwXz", "groupMaxMember": 77, "groupMemberRoleId": "hOj73PImLnYaJLJ1", "name": "WmA0vUYvuoyooovf"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'LASIGwIIIFY5dKTE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'hTc3UBM3QRk5h7G4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'AwgaAQb48m9WARy1' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iAZVA1pUOWqqCjDz", "groupMaxMember": 66, "name": "PtAoqVdHHloZCgFX"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'k0XRsOTGEjwet94O' \
    --configurationCode 'KVjH5isKIRkeQbv3' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "1ABx0myZTtroK4ET", "ruleCriteria": "MINIMUM", "ruleValue": 0.7309684934250458}, {"ruleAttribute": "P0HpRvGN6MrnpsBO", "ruleCriteria": "MINIMUM", "ruleValue": 0.20395440298906753}, {"ruleAttribute": "XQn4hr1A16NUdmRP", "ruleCriteria": "MINIMUM", "ruleValue": 0.05081148026108129}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'f3hvKxmQjRK6JMY1' \
    --configurationCode 'NGVPk9oZHSAyPldb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Zo0DS2z9H5F7UNTi' \
    --groupName 'EgHf4ldRhft2V5vG' \
    --groupRegion 'TrD9UCYWUNhabzmp' \
    --limit '98' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'TF9frcrrLzcVfRXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'pBh141QHlxWpK6zQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'rnoV9oSBCeIhHJvP' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '19' \
    --order '9U1X2NGbuwBkXudL' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "fkhrmXw9tBWcBfzM", "memberRolePermissions": [{"action": 96, "resourceName": "vxr6LLqYZnePo0tC"}, {"action": 60, "resourceName": "KQnPOAqt5WFRs5sD"}, {"action": 38, "resourceName": "aLlcfxQsnPkhpdw0"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '8wW5mPWuRXodspLD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'JWwu7cI4N0Mf28EI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'bfd9eDtWrdTdEpR5' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "GgAIrqfojlCilLs0"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'pdImxMvk1263gQZE' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 23, "resourceName": "0nZcGHc0J94ey0aw"}, {"action": 44, "resourceName": "dJfZlJWqr0rMo67q"}, {"action": 22, "resourceName": "is4ra4QPewNxhtUS"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'kO59V3bjLTHkzYWP' \
    --groupRegion 'PzZ4x6O3nsUrHSfP' \
    --limit '52' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "gzlKolqQ9XWdkozW", "customAttributes": {"gboRaBTcu6B2DyRC": {}, "XC7X1QJTNMyDw4yC": {}, "M5WO2hnecOLNLDZK": {}}, "groupDescription": "LNRWL076JqjkUyjA", "groupIcon": "FhQibMpCgPFpwUHF", "groupMaxMember": 59, "groupName": "QoV46HpqnPwpdCW0", "groupRegion": "6QngC3lFvmpElLw3", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "kBNmbh1EUchBWBL5", "ruleDetail": [{"ruleAttribute": "sMvqH3C1F1kDmCXw", "ruleCriteria": "MINIMUM", "ruleValue": 0.5162487867484961}, {"ruleAttribute": "UxMZeQ18Iax1t0jP", "ruleCriteria": "EQUAL", "ruleValue": 0.10841234653711973}, {"ruleAttribute": "xbZCz6uK06qq795x", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8113285583118729}]}, {"allowedAction": "XihNkBeg3BfpyIFj", "ruleDetail": [{"ruleAttribute": "OyBoInB7qnQcUcZa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7008300857665906}, {"ruleAttribute": "Xg53sVbXcBaqltuV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.179669295198276}, {"ruleAttribute": "hg3J3ojIyMLF7SN2", "ruleCriteria": "EQUAL", "ruleValue": 0.868532551226284}]}, {"allowedAction": "Oo6YBu54fEiVx3h8", "ruleDetail": [{"ruleAttribute": "d09359mj2qR64nS6", "ruleCriteria": "MINIMUM", "ruleValue": 0.1892131006902642}, {"ruleAttribute": "Pjkp1p7cPIHK7EeN", "ruleCriteria": "EQUAL", "ruleValue": 0.2662927322512205}, {"ruleAttribute": "OUe6imAD8b3nnspn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02817429805393301}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'buLJ7g7JhkpPwI2Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '0jAgCuzyYd8DyfvH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "von5DlR7zxuvDQ5i", "groupIcon": "P11FHtvOSxvfCsDZ", "groupName": "MemrLni6CvZyyV7r", "groupRegion": "6HYFGMJZjFDwUJoB", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 't3yCXWfmQCntQMM1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'ZPs55mb4HxOlW7vO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "8Quz8uWtQxR8cydf", "groupIcon": "ifPNwH7GjrB9Zx2R", "groupName": "y2StmYp51EfO0X8Q", "groupRegion": "WZG9y1hE6pwVaAU4", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Olcnt0dCUEYm8OkG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"tAzzH0s12Wzo6k6z": {}, "ldnukKzVHlv8F3MF": {}, "4o7S8hSpbvwyivWH": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'XOza0QiNL6Y4NP3v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'FWWSSnW0CkGVXkX4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'zP1EOM4FyrJLgE5J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'HhonvMZ0t7hYQEkG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '1zDOAt4A3P3nY8uR' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'ffRgJleX12OSq84Q' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '87' \
    --order 'DbuMRNespE6e2GaT' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'mzIvieus0ub1ruys' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"bHSYmq6GPpCHZmm8": {}, "L9l9VwmijCvl3az9": {}, "D8QuENVk66agYbMV": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'OQg7cS1Hw6cocZdK' \
    --groupId 'fhYLcc33vtcMbJ0P' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Z01fl54D69rLq4N8", "ruleCriteria": "MINIMUM", "ruleValue": 0.7888358123546293}, {"ruleAttribute": "bqLyVhEqZWAf8jNr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.718525867454144}, {"ruleAttribute": "Iv25o2gA72od5JuO", "ruleCriteria": "MINIMUM", "ruleValue": 0.8122915251712569}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'xPjW2LoBZqSdTw7A' \
    --groupId 'w8RSg3g5xYwqXjrE' \
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
    --limit '74' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'sQ9InkpK4H6cRiEX' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tPhyWfRtOu2xnMq7"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'oxt5fpxQ67AH4000' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WZsb2XTgrSOBqYHJ"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fzkjjZjYV3kgSkTT' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qdgyQEjKzm026JUd' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kLclFq5EBhtyOeZk' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uoeO9Wt0B4rYj7K1' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xaLzJIQPlQnst2fP' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["LAaKZXsMwxBl6bBq", "Q7e8gdnaWIfyjwOY", "fHknQQD8wCeOatI9"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'kNZ30QTC1ggjZCRv' \
    --limit '76' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'tkfw6qhnyqkZy6kO' \
    --namespace $AB_NAMESPACE \
    --userId 'Q89kBSeJOO4QhNtY' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6M4ig9y0sFEIRoe6", "customAttributes": {"fdzajW6K2n4eaKLp": {}, "aMPxC8G6JeZhiQo2": {}, "lS7xxv5w3NHXcAOv": {}}, "groupDescription": "eb8dlqFxi7dow3c1", "groupIcon": "gCO4JIxgKnwNvnHy", "groupMaxMember": 92, "groupName": "l3srLmRJI65RgrXg", "groupRegion": "uJxAmR0ekhWfzLk9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "UcijQlBfoP78rMwY", "ruleDetail": [{"ruleAttribute": "CaSkHC6nkTokJGb5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5598065754686314}, {"ruleAttribute": "ZBBD6AUu3vEhi5A5", "ruleCriteria": "EQUAL", "ruleValue": 0.641391714804236}, {"ruleAttribute": "mEolX4CTskQXQnlV", "ruleCriteria": "EQUAL", "ruleValue": 0.21259393453088804}]}, {"allowedAction": "jI7lHGgijukvmYYG", "ruleDetail": [{"ruleAttribute": "QVDAQJAkEIXTRKbB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.15887410173123795}, {"ruleAttribute": "ZJOFLkUeNW1jclII", "ruleCriteria": "MINIMUM", "ruleValue": 0.14958507324351877}, {"ruleAttribute": "Vm4rT67k6o3kjjwe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6051327340381127}]}, {"allowedAction": "hiWpS3pXJjzv4Zsf", "ruleDetail": [{"ruleAttribute": "IoJtkhhmXWHKomQc", "ruleCriteria": "EQUAL", "ruleValue": 0.8210584187313053}, {"ruleAttribute": "N1V1bh5YJdSX6UPV", "ruleCriteria": "EQUAL", "ruleValue": 0.14168153842959463}, {"ruleAttribute": "W7RBtD6AAY1tnmHV", "ruleCriteria": "EQUAL", "ruleValue": 0.11542860027051927}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["7xDjIbVGA0UwFv7R", "OvrzUB1xIUkaucG8", "vuCCBBgn6FtG9FU5"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'GuzV81KN7eY0WRvE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "9GNVHIyj8TNVj5p2", "groupIcon": "1pCszo7fQa1PVFVI", "groupName": "doxPNH7zG6huFkSx", "groupRegion": "mLxEnvaGFNiRnVO8", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '495cuGKtR4fXKsqx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'KyDnqTHQeOdzK1cD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ayqNhoZ1Buvi0eza", "groupIcon": "79PQ9BAlPKAEjHEf", "groupName": "iSZVNkyInunyKmy1", "groupRegion": "awHupQnjmmTFOY6m", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'qI2Nyb08vOi3YEwc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MTPDlpsyMmWT4tOz": {}, "dCnf9BXESk9i4pOF": {}, "rmYzanLU3AdlphsR": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'fTvBNp4FBGFsuEm2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'WSgFg3LnwR76OMuA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'eBbe9pexmcOcOaUe' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'UJr0ULqpW0nD1n8a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'wuHIcyQexz6R08iX' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'MLpqpspJXmlYcv0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'Mk9oVxn9lNXzLoqt' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"LNIwKztyBt9zlwSG": {}, "KBHDQU4e2fnwgkPM": {}, "I2lU31qRip6JATAG": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'gS5vQFPbKymUTfLT' \
    --groupId 'hYIwmis7onViIrQE' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "P7uV9v95XMYKSi4Y", "ruleCriteria": "MINIMUM", "ruleValue": 0.6564929190855217}, {"ruleAttribute": "WcPHPWMZlKu1iRnb", "ruleCriteria": "EQUAL", "ruleValue": 0.8550902117434718}, {"ruleAttribute": "z3XEfFFiwSB7SZty", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24968654246483635}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '1zHR6fWo9jyv9dWk' \
    --groupId '6NLxlIKhQ3Pf8aQE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'iKVFVPgKV03VqcqI' \
    --memberRoleId 'CtILlookKyCXztOw' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "xqkKLvxaK7hXpXqv"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'dYoYqzJTiHNrCGWa' \
    --memberRoleId 'rdtihh9j7Vs1jeQF' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nMGYeTtuuiI4ZkMG"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'M70tNDbzdGCztljS' \
    --namespace $AB_NAMESPACE \
    --userId 'v9Oe4oWMCYT7Yqq9' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'tIcqJdtxjlXRf6pP' \
    --namespace $AB_NAMESPACE \
    --userId 'yBYoBiLZRD7yKatS' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'PKiw1IGX4JAaLkx8' \
    --namespace $AB_NAMESPACE \
    --userId 'MgSCcebZL9rQSGA5' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'qCQPyZWK1txCndOZ' \
    --namespace $AB_NAMESPACE \
    --userId 'L1vAhFeHpLgOT72Z' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '7nQZfalOgHgKSA42' \
    --namespace $AB_NAMESPACE \
    --userId 'RgnUTT5irNl5Kgb4' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'u9IrTHQmJhhdrziF' \
    --namespace $AB_NAMESPACE \
    --userId 'PdXUW0C1V6hGbwmL' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE