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
echo "1..82"

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

#- 2 IndexHandler
samples/cli/sample-apps Group indexHandler \
    > test.out 2>&1
eval_tap $? 2 'IndexHandler' test.out

#- 3 BlockHandler
samples/cli/sample-apps Group blockHandler \
    > test.out 2>&1
eval_tap $? 3 'BlockHandler' test.out

#- 4 CmdlineHandler
samples/cli/sample-apps Group cmdlineHandler \
    > test.out 2>&1
eval_tap $? 4 'CmdlineHandler' test.out

#- 5 GoroutineHandler
samples/cli/sample-apps Group goroutineHandler \
    > test.out 2>&1
eval_tap $? 5 'GoroutineHandler' test.out

#- 6 HeapHandler
samples/cli/sample-apps Group heapHandler \
    > test.out 2>&1
eval_tap $? 6 'HeapHandler' test.out

#- 7 Profile
samples/cli/sample-apps Group profile \
    > test.out 2>&1
eval_tap $? 7 'Profile' test.out

#- 8 SymbolHandler
samples/cli/sample-apps Group symbolHandler \
    > test.out 2>&1
eval_tap $? 8 'SymbolHandler' test.out

#- 9 ThreadcreateHandler
samples/cli/sample-apps Group threadcreateHandler \
    > test.out 2>&1
eval_tap $? 9 'ThreadcreateHandler' test.out

#- 10 ListGroupConfigurationAdminV1
samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 10 'ListGroupConfigurationAdminV1' test.out

#- 11 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "xFVWBqqAAPuRO7Xo", "description": "epnTom3paF0ie3zN", "globalRules": [{"allowedAction": "c9aLOmtG8OgHYNGd", "ruleDetail": [{"ruleAttribute": "aIQN1IkiWjdhhPp7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6443101339375944}, {"ruleAttribute": "yDsvXsggiX7In8bX", "ruleCriteria": "MINIMUM", "ruleValue": 0.28551695229767204}, {"ruleAttribute": "ZJW4W5QVVmlTa6qs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3009430685010446}]}, {"allowedAction": "injCfw30O5Usiuvn", "ruleDetail": [{"ruleAttribute": "zgqF88Psvo4TwlJj", "ruleCriteria": "MINIMUM", "ruleValue": 0.8294664059802294}, {"ruleAttribute": "zYRRs1J0rwLuP4kc", "ruleCriteria": "MINIMUM", "ruleValue": 0.1088660221835025}, {"ruleAttribute": "jyo0bht6pWqggodr", "ruleCriteria": "MINIMUM", "ruleValue": 0.258812761966574}]}, {"allowedAction": "Gz2gdrK1ANGof7n7", "ruleDetail": [{"ruleAttribute": "7vDrV7HsjgdB9QUj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.565065612116592}, {"ruleAttribute": "DvB3s5VfraOXWq3n", "ruleCriteria": "EQUAL", "ruleValue": 0.6337559485088864}, {"ruleAttribute": "hXRFfqHrBh78o3No", "ruleCriteria": "MINIMUM", "ruleValue": 0.018387369575718515}]}], "groupAdminRoleId": "imtK3FjrApBbTO3m", "groupMaxMember": 45, "groupMemberRoleId": "Bwob6P1ANAC2Zkey", "name": "kaRUanKClK7KTYUL"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateGroupConfigurationAdminV1' test.out

#- 12 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'InitiateGroupConfigurationAdminV1' test.out

#- 13 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'fOqgBgSFNbdTXxOm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetGroupConfigurationAdminV1' test.out

#- 14 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'vF7ctNqD9dtSZmbm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteGroupConfigurationV1' test.out

#- 15 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'u6DIxg3MW542CFat' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7ANA9ToBJkWLmVe1", "groupMaxMember": 98, "name": "KkD2FW0LUl67ITjB"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateGroupConfigurationAdminV1' test.out

#- 16 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'nRttdvAHobYM9Qhu' \
    --configurationCode '34KQNmbTDNe80oDH' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "NKOZA0eVZVgwkQkv", "ruleCriteria": "EQUAL", "ruleValue": 0.8500386536868755}, {"ruleAttribute": "p1bnXhhNSkxFvPXN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8207186583135428}, {"ruleAttribute": "2iJRIObhEO3yXuH2", "ruleCriteria": "EQUAL", "ruleValue": 0.6776034803878861}]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 17 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'EQU1ap5sAnEdGxlL' \
    --configurationCode 'YJNmFJdiZN7aVGzO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 18 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'k1wEy688feowsVqK' \
    --groupName 'S0qaN7CFbx2b44zU' \
    --groupRegion 'bKSt5MxWX4GScCss' \
    --limit '73' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 18 'GetGroupListAdminV1' test.out

#- 19 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'YJwc0ioY3QY0O51c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetSingleGroupAdminV1' test.out

#- 20 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'QrojFNieVZiciWg7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteGroupAdminV1' test.out

#- 21 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'kWLoVsIxfCRoz7YS' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '30' \
    --order 'WBe54Wb19nqwUZAw' \
    > test.out 2>&1
eval_tap $? 21 'GetGroupMembersListAdminV1' test.out

#- 22 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 22 'GetMemberRolesListAdminV1' test.out

#- 23 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "4QgG340XIsfzBzNc", "memberRolePermissions": [{"action": 99, "resourceName": "oTpHgqEXuf5h9vca"}, {"action": 86, "resourceName": "Tky1xUylbuTHgyzv"}, {"action": 82, "resourceName": "T645RnfTzW0Q1x7L"}]}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMemberRoleAdminV1' test.out

#- 24 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'n0ojn6yjoxmK1eYi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetSingleMemberRoleAdminV1' test.out

#- 25 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'YG3z2tf7st28E5ij' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'DeleteMemberRoleAdminV1' test.out

#- 26 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'dXnGS1ra6BaUWVrl' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "UJ9K1NLHD50j8p7e"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateMemberRoleAdminV1' test.out

#- 27 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'ngkyoM4bBm8rqVHd' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 9, "resourceName": "qPekfTp3OMBsNNul"}, {"action": 95, "resourceName": "bou1kXmaNepTdISp"}, {"action": 86, "resourceName": "IHMC8y34jeztqrnF"}]}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateMemberRolePermissionAdminV1' test.out

#- 28 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'gPUNtIf3UIbJKElO' \
    --groupRegion 'soQbYY8zAmHar4HL' \
    --limit '48' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 28 'GetGroupListPublicV1' test.out

#- 29 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "vRJjO8ju4O1yxCtZ", "customAttributes": {"Fz6h7OLniJYb9HhU": {}, "2cIIAS3BJ4GyipkI": {}, "wN9v9IdtCGPT3YbD": {}}, "groupDescription": "3dWKsJba89NDM2Yr", "groupIcon": "82M7Dgl7swDqvvS7", "groupMaxMember": 35, "groupName": "XxKUGs5sYaw8JUuM", "groupRegion": "GZRA9Zh8OhTfZDA2", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "YabvwYIDzmHCdbCC", "ruleDetail": [{"ruleAttribute": "kCdfdt5u0jYCzi1E", "ruleCriteria": "EQUAL", "ruleValue": 0.5071479332378356}, {"ruleAttribute": "I3QbeldBPP56HNAE", "ruleCriteria": "EQUAL", "ruleValue": 0.07073277877328954}, {"ruleAttribute": "M6B7ZQEHhggewrlF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17831514401905957}]}, {"allowedAction": "ARoONs3UThH221HP", "ruleDetail": [{"ruleAttribute": "Y0sLO8jdjXejgCAM", "ruleCriteria": "MINIMUM", "ruleValue": 0.0037598883778731107}, {"ruleAttribute": "bx1jnuthf9bLgCeS", "ruleCriteria": "EQUAL", "ruleValue": 0.29378335858792504}, {"ruleAttribute": "PGfrtIX9Hz5Z4RtS", "ruleCriteria": "EQUAL", "ruleValue": 0.48067802584286745}]}, {"allowedAction": "WmnCLcVy2DfpAgOD", "ruleDetail": [{"ruleAttribute": "jnxyEJ3JDRJ4tDWJ", "ruleCriteria": "EQUAL", "ruleValue": 0.9820443118948197}, {"ruleAttribute": "bajZBOB7Os69OF0Q", "ruleCriteria": "MINIMUM", "ruleValue": 0.12332230570416869}, {"ruleAttribute": "u3FXkuDzQzjSftQi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6192385054103882}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateNewGroupPublicV1' test.out

#- 30 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '1aZrLH6ShWpaIRg0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetSingleGroupPublicV1' test.out

#- 31 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'fkHTRhH0GaIAgiRP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Lf1XBvAi5IZcONZZ", "groupIcon": "jKxtJ21KgZ3KW3k3", "groupName": "jo22xu1MeOojnK7K", "groupRegion": "xNEL8UstSUHu2wfa", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateSingleGroupV1' test.out

#- 32 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'TXwm8jBB8z0tzcmn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteGroupPublicV1' test.out

#- 33 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'vRqFQQlTaWblXhHi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "w3dN3v1tRRA8Byex", "groupIcon": "0C05GQdsyGkV4hz3", "groupName": "dQLA3OGgnQacb7wd", "groupRegion": "CScjlOm1qSvotoX6", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdatePatchSingleGroupPublicV1' test.out

#- 34 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'eoo9TzJi1KwcAvqg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RtcT5qPISuMnDy4z": {}, "2tumTvk8up47WKDm": {}, "6qyT8ZfnVRo10CRT": {}}}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupCustomAttributesPublicV1' test.out

#- 35 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '9EGfAzU3Rmz3oiJA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AcceptGroupInvitationPublicV1' test.out

#- 36 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'rw9qmfhlerSy6HWq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'RejectGroupInvitationPublicV1' test.out

#- 37 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'eNWGLjrWXxIpDzjH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'JoinGroupV1' test.out

#- 38 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'HMvHFHAUSLAfjrPr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'CancelGroupJoinRequestV1' test.out

#- 39 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '2zRBzNwJwOnVW7LU' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 39 'GetGroupJoinRequestPublicV1' test.out

#- 40 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'cRHQHtVtG8V13eT4' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '74' \
    --order 'dzGnNg1Bz8kodwgE' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupMembersListPublicV1' test.out

#- 41 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'cgcc0B10QeWVePRq' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"mVah5nEECVuR2hq2": {}, "vYQ8gOdSlf9OZLhY": {}, "qDKGnytI650lidiz": {}}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateGroupCustomRulePublicV1' test.out

#- 42 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'CniMtp146lvAGb7j' \
    --groupId 'iRyzomHq3JRK0JkP' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ao73fBaWObapR4IP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03281783375848979}, {"ruleAttribute": "7dOEmFsUDuHm7Mai", "ruleCriteria": "MINIMUM", "ruleValue": 0.5550483166618132}, {"ruleAttribute": "t2HlK0DZX3BG0l47", "ruleCriteria": "MINIMUM", "ruleValue": 0.480761504871309}]}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGroupPredefinedRulePublicV1' test.out

#- 43 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'utk9civzkBHSVPdP' \
    --groupId 'IPFP4W9irirZoPvc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DeleteGroupPredefinedRulePublicV1' test.out

#- 44 LeaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'LeaveGroupPublicV1' test.out

#- 45 GetMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 45 'GetMemberRolesListPublicV1' test.out

#- 46 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'AMzJTAx0O9Pvq4I4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "k5gpMBI6wTquyAaP"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateMemberRolePublicV1' test.out

#- 47 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'Zeln1euaUhuN2sfR' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wewRfqRVJj2HDElw"}' \
    > test.out 2>&1
eval_tap $? 47 'DeleteMemberRolePublicV1' test.out

#- 48 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 48 'GetGroupInvitationRequestPublicV1' test.out

#- 49 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0heG5C17SGp4X6JN' \
    > test.out 2>&1
eval_tap $? 49 'GetUserGroupInformationPublicV1' test.out

#- 50 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rrVudb838MVyZdHd' \
    > test.out 2>&1
eval_tap $? 50 'InviteGroupPublicV1' test.out

#- 51 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VOTmUJQljhiirSQR' \
    > test.out 2>&1
eval_tap $? 51 'AcceptGroupJoinRequestPublicV1' test.out

#- 52 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '81KV7jDHLqBCVXIq' \
    > test.out 2>&1
eval_tap $? 52 'RejectGroupJoinRequestPublicV1' test.out

#- 53 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VNmRjreJCU3m9vWO' \
    > test.out 2>&1
eval_tap $? 53 'KickGroupMemberPublicV1' test.out

#- 54 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["imy14wrZRZfpgTsz", "wHHSXEhpRI1gVKVR", "iZFMPcHmIbjhgcIY"]}' \
    > test.out 2>&1
eval_tap $? 54 'GetListGroupByIDsAdminV2' test.out

#- 55 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sMewGXgvqJN7a572' \
    --limit '57' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 55 'GetUserJoinedGroupInformationPublicV2' test.out

#- 56 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '4vdNRUVbVa482lXu' \
    --namespace $AB_NAMESPACE \
    --userId 'GWpi44amwUeGWOwH' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetUserGroupStatusInformationV2' test.out

#- 57 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "24vRIiB3wvhFOKAg", "customAttributes": {"MwD2xo0emlwG8zpb": {}, "K7tZ5iKACOi172zr": {}, "mp91RMjtOabJ72QH": {}}, "groupDescription": "9ViUzfwYVsatgBRv", "groupIcon": "TRXNShmYn0AM4cIC", "groupMaxMember": 83, "groupName": "IrZW2WTdt19PltUk", "groupRegion": "qXZ7zqlmGhQXNwu9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "qs1IzQDHwZG3pOvu", "ruleDetail": [{"ruleAttribute": "pbV6WHlMpTQdUhcu", "ruleCriteria": "MINIMUM", "ruleValue": 0.8612156851775264}, {"ruleAttribute": "gDjjGxSNceCpNNmO", "ruleCriteria": "MINIMUM", "ruleValue": 0.9671324550320907}, {"ruleAttribute": "vmbpc7emnvbMfKVg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6369488588863654}]}, {"allowedAction": "Ow3Qv12x1SwWNXy9", "ruleDetail": [{"ruleAttribute": "Ln5NWxwp6ugjaAds", "ruleCriteria": "EQUAL", "ruleValue": 0.9313946801739322}, {"ruleAttribute": "SZCH8MgDMTuDo1t5", "ruleCriteria": "MINIMUM", "ruleValue": 0.5670484722346685}, {"ruleAttribute": "FltAMYQpzrlYpGpb", "ruleCriteria": "MINIMUM", "ruleValue": 0.29231324042156925}]}, {"allowedAction": "cVZQAxSczAoA6olX", "ruleDetail": [{"ruleAttribute": "H1CuzZVo0bYGf1vN", "ruleCriteria": "MINIMUM", "ruleValue": 0.1572411041968258}, {"ruleAttribute": "5jxAwvVRZ2DFYFHE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3646007799616626}, {"ruleAttribute": "FHGmhz9Wfyk0occ5", "ruleCriteria": "MINIMUM", "ruleValue": 0.9874728980466078}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 57 'CreateNewGroupPublicV2' test.out

#- 58 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["WhslgCttUVn43rup", "5IsVTLp8JRRJ7Lv2", "YxscxlHWcHwHLggG"]}' \
    > test.out 2>&1
eval_tap $? 58 'GetListGroupByIDsV2' test.out

#- 59 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'bd1AK7T2J4zonEWA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5SsUFFAnS45ssfnL", "groupIcon": "WeLRKTs3s8Y9LJx1", "groupName": "LR26uTa8h7gvjgIg", "groupRegion": "ZikGYbMVsJGTpY9H", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePutSingleGroupPublicV2' test.out

#- 60 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'OdRvZMsNep13H95q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGroupPublicV2' test.out

#- 61 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '0yhEluY0HYQoiaTy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "WDx1K678E5sH0tYe", "groupIcon": "5fICku6dGFeUHPCU", "groupName": "MvSfWI5Xd9dS5DlV", "groupRegion": "Mb6lreGhwatuZcVY", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePatchSingleGroupPublicV2' test.out

#- 62 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'OTMFW1tXSKJOmiI7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"WlBXq6JOILLVm497": {}, "vEDXHpwqcaaOkHpj": {}, "003zij7U4kTC8RfN": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupCustomAttributesPublicV2' test.out

#- 63 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'rb567AMpYC8QhZKA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AcceptGroupInvitationPublicV2' test.out

#- 64 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '92Rvc9TSqZW7Ti3a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'RejectGroupInvitationPublicV2' test.out

#- 65 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'I6gygi8SkrP3mUsr' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 65 'GetGroupInviteRequestPublicV2' test.out

#- 66 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'QgiKCRrQhoiawTm9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'JoinGroupV2' test.out

#- 67 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'bJnFdCTZEVXgOcEJ' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 67 'GetGroupJoinRequestPublicV2' test.out

#- 68 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'QChaI4EwYonUq3Vk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'LeaveGroupPublicV2' test.out

#- 69 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'LiRhBHbNn1RZFe8N' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"QAvwJIC9pll2k964": {}, "fpp9dOdIXGGp1lea": {}, "YbCiPYqongPItjf3": {}}}' \
    > test.out 2>&1
eval_tap $? 69 'UpdateGroupCustomRulePublicV2' test.out

#- 70 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'nhIvrSz2byIFekCL' \
    --groupId 'fWYjSgks1KEQhX2d' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "AIXKddsLKT3iS9S0", "ruleCriteria": "MINIMUM", "ruleValue": 0.9063720507828916}, {"ruleAttribute": "YDu2moXIzwYlsYhi", "ruleCriteria": "MINIMUM", "ruleValue": 0.3600440967633465}, {"ruleAttribute": "KWzoWS0e63POMkzT", "ruleCriteria": "EQUAL", "ruleValue": 0.42289815172341283}]}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateGroupPredefinedRulePublicV2' test.out

#- 71 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'GwR4tLhABWHajK2C' \
    --groupId 'BpdxZucUu4eKf9CN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteGroupPredefinedRulePublicV2' test.out

#- 72 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 72 'GetMemberRolesListPublicV2' test.out

#- 73 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'gEmJaxuhfaVolNgl' \
    --memberRoleId 'QhJosGteqg38G7dW' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Wsx8tx1dQHPXXMyV"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateMemberRolePublicV2' test.out

#- 74 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'bmDZm3l0KN4kJy3M' \
    --memberRoleId 'Z6U2f3wtvD5tnMNf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "09yxSVbYdoD6sI2g"}' \
    > test.out 2>&1
eval_tap $? 74 'DeleteMemberRolePublicV2' test.out

#- 75 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 75 'GetUserGroupInformationPublicV2' test.out

#- 76 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 76 'GetMyGroupJoinRequestV2' test.out

#- 77 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'qg2S9wizkodbZTZI' \
    --namespace $AB_NAMESPACE \
    --userId 'NrpXVVAG1CteeHmk' \
    > test.out 2>&1
eval_tap $? 77 'InviteGroupPublicV2' test.out

#- 78 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'uRWkQD2qYwcFYGyl' \
    --namespace $AB_NAMESPACE \
    --userId '3dszYNIEZg60tJHc' \
    > test.out 2>&1
eval_tap $? 78 'CancelInvitationGroupMemberV2' test.out

#- 79 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'V0KToUqjQgGWc0hu' \
    --namespace $AB_NAMESPACE \
    --userId 'ZaezF85x8CcaeT34' \
    > test.out 2>&1
eval_tap $? 79 'AcceptGroupJoinRequestPublicV2' test.out

#- 80 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'VOAt1qzJlVi6GdqO' \
    --namespace $AB_NAMESPACE \
    --userId 'ZgLCUjHRZbznqpEd' \
    > test.out 2>&1
eval_tap $? 80 'RejectGroupJoinRequestPublicV2' test.out

#- 81 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'LUJXhn9btEITYUcY' \
    --namespace $AB_NAMESPACE \
    --userId 'VlfVnpcAmqxEur8S' \
    > test.out 2>&1
eval_tap $? 81 'KickGroupMemberPublicV2' test.out

#- 82 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'ceos8PM3OX4KxjiC' \
    --namespace $AB_NAMESPACE \
    --userId 'C3UMONMsiXznHIEV' \
    > test.out 2>&1
eval_tap $? 82 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE