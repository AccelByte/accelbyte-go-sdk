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
    --limit '15' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "rDuHWBAUzBM56CZH", "description": "UZbU1BCL0m0hmhMb", "globalRules": [{"allowedAction": "93K8nBnAjEbCNyRb", "ruleDetail": [{"ruleAttribute": "WeVWY31NrzV4MGQ3", "ruleCriteria": "MINIMUM", "ruleValue": 0.8388967826868345}, {"ruleAttribute": "fIe53bG7IimHX36Z", "ruleCriteria": "EQUAL", "ruleValue": 0.9726206368753133}, {"ruleAttribute": "CwFfcxv6ZLOsKVOd", "ruleCriteria": "EQUAL", "ruleValue": 0.4034827020174029}]}, {"allowedAction": "R5gwIOdGhKO5zZHA", "ruleDetail": [{"ruleAttribute": "MFWgZMp2iFxQZF2j", "ruleCriteria": "EQUAL", "ruleValue": 0.559918867888016}, {"ruleAttribute": "eEQLWk9mbZkOp1Zy", "ruleCriteria": "MINIMUM", "ruleValue": 0.4842336856916687}, {"ruleAttribute": "7DDjRYBr9LefxrMa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6705683564703869}]}, {"allowedAction": "wRvC2Js2QEKLwJtH", "ruleDetail": [{"ruleAttribute": "0ua3p0e5a2UHslQP", "ruleCriteria": "EQUAL", "ruleValue": 0.5011152043410236}, {"ruleAttribute": "9qmXpXQhcEFxbzfk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02701971704488637}, {"ruleAttribute": "4OR3drcWDCJ645Kt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6546065174772522}]}], "groupAdminRoleId": "nvrUciiBfNm9gwr9", "groupMaxMember": 56, "groupMemberRoleId": "pUVdlICbhvEb41IY", "name": "A80YM1Xok6L2WtCY"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'lD1MA29WFK4oZ7HU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'P2ypi9CWLJTgtKEr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'x7HC5AFt9YmRSckS' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RZpALicqG5MiqtVI", "groupMaxMember": 64, "name": "l0oY1eRYmuIFcavj"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'BxbgSvx2F38PgZ6y' \
    --configurationCode 'rWKllnM7lQcMdc7I' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Z2T7gjm8WCOMjrla", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7974295487341241}, {"ruleAttribute": "6SU4xQdD58aOX35K", "ruleCriteria": "MAXIMUM", "ruleValue": 0.521505942688436}, {"ruleAttribute": "G3Cj8DY7IIaXzLnD", "ruleCriteria": "MINIMUM", "ruleValue": 0.3543225836465914}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Iq9LkyFCNZwotwFl' \
    --configurationCode 'R3kVCIkRVfjcFyDI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'JeegnitsGkNf9m3K' \
    --groupName 'SmD7bl3Vh8deCe8g' \
    --groupRegion 'aF9dVYhRtDZAM77c' \
    --limit '69' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'lRgfES9fAc1HIST6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'ACCtEVb4q5JX7raT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'yaTm8XY6e16RYLtR' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '37' \
    --order 'oBXLyiD1ersj9Jra' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "LpSXLIdfv6p6k9N3", "memberRolePermissions": [{"action": 12, "resourceName": "3rCjWUcFA1DYrio3"}, {"action": 16, "resourceName": "JLiRibKIqskLbZf8"}, {"action": 65, "resourceName": "DrXg3pXvhJaUiuwo"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'OKIiyjcKA940ZgY9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'HNBUvlABsHmIgAIA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'pu3DSJ46dLD0YgPF' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "NfjLiiQnlOpngmhb"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'tIbsmeImnYE4t1Gy' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 94, "resourceName": "dbxczqx5APVN7hAN"}, {"action": 20, "resourceName": "wdNKebj9sTcUmSVt"}, {"action": 88, "resourceName": "OAABm6lAjXCjRKwM"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '8XbSvf1DRDhyQHqa' \
    --groupRegion '6wE9JqiYmzb0mWdo' \
    --limit '96' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "3zABT72kxZUwtzuf", "customAttributes": {"q2wzPyxvPs1PNXzw": {}, "WVjp4dyBZKa50tEH": {}, "iejnWLrJq6rUpthr": {}}, "groupDescription": "yPcpBF2bKZII5CJY", "groupIcon": "OzOffJwyjYP2YxIB", "groupMaxMember": 43, "groupName": "EsqyW4uDTB0w1yyl", "groupRegion": "vNgO0cLlFIvQQbYy", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "YmllwIEIUKZJYFYn", "ruleDetail": [{"ruleAttribute": "iLdEVtmoASRq9ujT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.463207475583827}, {"ruleAttribute": "f9hk5FH2SeAfqcD2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9506046346336476}, {"ruleAttribute": "dbnnf8LjVOCmEVoY", "ruleCriteria": "EQUAL", "ruleValue": 0.970300275843119}]}, {"allowedAction": "6zatP09yUHP4uFpc", "ruleDetail": [{"ruleAttribute": "orXCXspQIfV8GpSV", "ruleCriteria": "MINIMUM", "ruleValue": 0.8872863869087014}, {"ruleAttribute": "c54mXUsUHiEeOQNb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47087604351273726}, {"ruleAttribute": "wH80cdl8buomzANi", "ruleCriteria": "MINIMUM", "ruleValue": 0.27065750371899056}]}, {"allowedAction": "IfzbPbHcHPtP0u5v", "ruleDetail": [{"ruleAttribute": "k7BzuSG3US9Q5R5i", "ruleCriteria": "EQUAL", "ruleValue": 0.48114188615670017}, {"ruleAttribute": "f5Rqo68nyXx7pB0a", "ruleCriteria": "MINIMUM", "ruleValue": 0.7521618467943003}, {"ruleAttribute": "nXHMGJ9M8X6zrZ6R", "ruleCriteria": "EQUAL", "ruleValue": 0.26376692900635634}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'GBvnBHuSrEkvLOQ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Ri07esemu8TfvMvs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ZDoPbdkIEAE2yjXh", "groupIcon": "HpQtwWpXpBGdNiP3", "groupName": "mkcnMrgVmXQGyZDu", "groupRegion": "DNuzVaPLQKelAfeF", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'If1TGQKyXJUw0sVX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'geJ0eaKELK9ytlsS' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "vwAyxRnhwtUxWcvH", "groupIcon": "yv30BNsNQr1ZkwYr", "groupName": "Vfb82yyT9rjtAuwf", "groupRegion": "4eVwBzsdGMM0uazo", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'j46vn9VtH7Q3Ozjo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"UFZrF3cpdZh8X7yU": {}, "ztyeM70YQPLc6khe": {}, "AmcDRyYcnuhL1GQv": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '7N7PgZIpR0TPGlqR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'IIdnzX7J4pibsie8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '8C2csWcmqQhNIQZw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'OibePX8exq6xa0hU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'VvrDbueBXhs6T0FH' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'zZXSUcpaVN2oA3B7' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '25' \
    --order 'EBRtixhPHykAsKOW' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'KWj1RTvjG8q2WrIG' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Xx4AqTHY44wnruBm": {}, "vVDVDNZ4YP5Scf1F": {}, "ZAw6YBsridpeUfbm": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '3epWh0kxwiL7OOwd' \
    --groupId 'JzmBc24XblpSXL6M' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "aPsnGg9I1FuFhvvA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8136154256805709}, {"ruleAttribute": "qDzn1CzXT8vhAU9K", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9152519133904199}, {"ruleAttribute": "P8J9SfDXpcRAjsup", "ruleCriteria": "MINIMUM", "ruleValue": 0.8031527186245162}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'gd20fnY7y6xrlbl9' \
    --groupId 'cfRtzWb3JJsicU3u' \
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
    --limit '81' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'YnejU5663CIpwag6' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "5koBMNCayrxaMLxW"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'OTpT7LOFzTnkiOjd' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "HIizwXis5JDGXfh9"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8NmQ0EgvD0p7UL1h' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mE5Ob7MhYYphIs8l' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '70gqq6tdc4U3cMbU' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '78325nZIXsYSzewe' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9Had9jSJaV9GXYPY' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["MyhefZsg9O2I7G1E", "sHSk1nllyvSsOl9a", "GKZ2oWDFX2WUWrM6"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'IpOFPQJbD4SwJmlV' \
    --limit '26' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'jff2LXGLpSJp1Jed' \
    --namespace $AB_NAMESPACE \
    --userId 'LSppWUts44efiZtp' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "882N4J5rrSIsITB9", "customAttributes": {"BW1LsFCeScFV6HdS": {}, "NZrjZ9oJTf3aGEws": {}, "47L8q9SuBY8t1SOt": {}}, "groupDescription": "nJxqhsIxyCa1FI4v", "groupIcon": "f0RHc6g4OYIMpktK", "groupMaxMember": 80, "groupName": "E531uykqONZ2mrLA", "groupRegion": "paNHgb3rC977mkgz", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "HyvuImdpDYKNRMRQ", "ruleDetail": [{"ruleAttribute": "8ugI0L4BJR7BtAWN", "ruleCriteria": "MINIMUM", "ruleValue": 0.6291096584647479}, {"ruleAttribute": "pSOM2989ZXuwa2Gz", "ruleCriteria": "EQUAL", "ruleValue": 0.910257648407601}, {"ruleAttribute": "kyOMFd7StMuzfwlY", "ruleCriteria": "MINIMUM", "ruleValue": 0.8329898138508073}]}, {"allowedAction": "Mrkpq41xXjV0onqH", "ruleDetail": [{"ruleAttribute": "am1WZYpeFqgpxkXt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07568351303108167}, {"ruleAttribute": "GBmwKLGFB7UTpwQc", "ruleCriteria": "EQUAL", "ruleValue": 0.18411561983076086}, {"ruleAttribute": "eCtAPQseox8equiq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8823863411383371}]}, {"allowedAction": "yvXls5hGN6gUdkqR", "ruleDetail": [{"ruleAttribute": "pGNusabaNcounCTI", "ruleCriteria": "MINIMUM", "ruleValue": 0.8483848815701592}, {"ruleAttribute": "CsS8YKxMF7IlvEKj", "ruleCriteria": "MINIMUM", "ruleValue": 0.5443392060489725}, {"ruleAttribute": "sbLcCgflX3IJuQpg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.40164761538177174}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["jcvWsXe5q9gCsCYC", "GutOmyuU7lPL0w00", "iMcsmiH21aU0OSSG"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'TZSFR335YFXrmu9K' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "wtDJ9CllTSvynF0V", "groupIcon": "jZazFVrEejXQMZSc", "groupName": "LVgr35XxpAD8M3x2", "groupRegion": "7no9MXdsaP3jER74", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'iCjRLGtq8lHIZP8u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '4OcDgOH5lJiMA6uq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "hpAD7Am7kn7EGimD", "groupIcon": "Soh7t2934g9bPwCB", "groupName": "ykmIwiSq68j5Re4R", "groupRegion": "vFBB9oYLGD6hA1pl", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'W0KiTWOHAHtpg47o' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"cQwqbso5KFQtsLLP": {}, "2wym75HLB0VPyS6g": {}, "QeIwFsSMICtobhHo": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'OiV3iMxXrIdJec8f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ZZHR4HYjF1reKAEI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'ejFoBPyiBaYWpK7Y' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'hkAMaJu04G0IFjmW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'QA0AU5dkq74NvPiC' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'EbG3k3LSnS0TGQxf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'UzE6TI3EnxJJfVzZ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"3UYyYvNcZZkEbWSH": {}, "LRJLvMDOlMXg9Cjn": {}, "pKnMtyvJy1EVFotw": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'g7GIfZTEp8G5WEjb' \
    --groupId '2Pi0l5KCEZzbEnbI' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "uIwNqzUSiYoXPm1R", "ruleCriteria": "EQUAL", "ruleValue": 0.058406593382146044}, {"ruleAttribute": "fn2WIW2SbbesIXUo", "ruleCriteria": "MINIMUM", "ruleValue": 0.9778189353079407}, {"ruleAttribute": "uMqbrnDvzZA5hCQ5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1410599759457456}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'CuT8o81fkR8dvUzC' \
    --groupId 'JqFiViKYi1DDvjDX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'eQP0HrpKknqWUMhv' \
    --memberRoleId 'ZnbZdlTPLuSs2274' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "S0ye5u3HtDh6iqfo"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '8E2goWxC4vQ9rpUe' \
    --memberRoleId 'Br4f5AjZWTDgWMQe' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "paaO0xz3VO2tHP5l"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'uX7pNGkEzWXGaEtj' \
    --namespace $AB_NAMESPACE \
    --userId '4JSK06WisKzGNhPc' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'PVaE9YnqcNcgD5hp' \
    --namespace $AB_NAMESPACE \
    --userId 'j08omct8ax8cTZjM' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'V34mX3PJwPn2Ykpf' \
    --namespace $AB_NAMESPACE \
    --userId 'R1HdGqSfeyaWmssa' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'RjCZt1Q207DtYCWp' \
    --namespace $AB_NAMESPACE \
    --userId 'EfT5QGX2y3Pa30B2' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Ai77IcLWt7VmGNjV' \
    --namespace $AB_NAMESPACE \
    --userId 'fYKY6y629TJYe3D0' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'rfcAYTNnE6p3l0BF' \
    --namespace $AB_NAMESPACE \
    --userId 'Cxb936SY9eYd5T9n' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE