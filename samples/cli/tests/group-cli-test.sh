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
    --limit '58' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "IXYkx26zZzXRPvQv", "description": "KteOY3jQpSUAr6dW", "globalRules": [{"allowedAction": "aYTLPsU9NyQucvcQ", "ruleDetail": [{"ruleAttribute": "ZpyICWwvRcZHyVyh", "ruleCriteria": "MINIMUM", "ruleValue": 0.6551064267142408}, {"ruleAttribute": "vsUq6G8WTzXKyhbd", "ruleCriteria": "EQUAL", "ruleValue": 0.37141970548033887}, {"ruleAttribute": "Y8MdOwAyrlLaKJ7p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2946421994687023}]}, {"allowedAction": "x61AKV3clXaqOUtC", "ruleDetail": [{"ruleAttribute": "4MmuIKndWebZn2XC", "ruleCriteria": "MINIMUM", "ruleValue": 0.5971982280869051}, {"ruleAttribute": "vgMmooVJo0ENZadL", "ruleCriteria": "EQUAL", "ruleValue": 0.5288443561189039}, {"ruleAttribute": "VRJsPi77kJf6GAb7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3645609778201667}]}, {"allowedAction": "v0Fd4w99YBf2tzVA", "ruleDetail": [{"ruleAttribute": "NXhnel8uNPqVZKpT", "ruleCriteria": "EQUAL", "ruleValue": 0.8105445293374471}, {"ruleAttribute": "2FVdbj7Ghevsi3Fr", "ruleCriteria": "MINIMUM", "ruleValue": 0.382140833091148}, {"ruleAttribute": "hGzoRHynQQwakJqb", "ruleCriteria": "MINIMUM", "ruleValue": 0.28315651557029153}]}], "groupAdminRoleId": "blUg6R6g4WNite7W", "groupMaxMember": 8, "groupMemberRoleId": "CR2rrbne9yckQjzx", "name": "ome01F6kNuK24wKJ"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '076QRXRVAqDjln8h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'ZN4jG3jMZL8URL8V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'iYuwIiWdmVr7YX4T' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fMBNQf2l7tiTIFVA", "groupMaxMember": 90, "name": "xN8IhbT3Hh4jPzTV"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Ir73lcUov8YnLaBc' \
    --configurationCode 'NBaRnzNP7EqJ091r' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "GraZ5Z3FeWFQAtpB", "ruleCriteria": "EQUAL", "ruleValue": 0.6637378541700523}, {"ruleAttribute": "LSvoWVBX8Qm9wb7f", "ruleCriteria": "EQUAL", "ruleValue": 0.6051716513745282}, {"ruleAttribute": "FJKBvsr8rrlOvnYw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.46770761101767555}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '7ZjpJcDkD0Vt0VPL' \
    --configurationCode 'vaMpfRBro8xBhTUx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'gsLBUnu60g5DdAyy' \
    --groupName 'bBH5uDWy1c5ihGTT' \
    --groupRegion 'fDV1dOz7xDxr39nR' \
    --limit '38' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'vApG1KkVRfe8zYJA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'nxyZWqXbNGvAo38F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'atCzmYKGEFAQ0TUw' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '13' \
    --order 'QGoHw6ob2odKKLP5' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "aCy1nN0Y0pGhYoBa", "memberRolePermissions": [{"action": 8, "resourceName": "FNRE94aKS3HfoZN1"}, {"action": 93, "resourceName": "72IJqVmWDfvbKcD7"}, {"action": 43, "resourceName": "uJeYG5nyhXodB9aJ"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '5ZpF8pN0RefD33YZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'vqS1nWNDKOrnvD66' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Q0Er1cWDMNVmzju3' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "9AFX4eyC7rmsguhj"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'I1Zj8qHOhSBPRI4a' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 95, "resourceName": "WD9ZA1AUk0b7vR0F"}, {"action": 34, "resourceName": "OTn1bBbuYkO1nSgf"}, {"action": 35, "resourceName": "qugKLDIojvqk4fXc"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'xrOsC5Pva9hrdbDj' \
    --groupRegion 'IHXtfpxFbfL54N5m' \
    --limit '87' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "3u7XmkvoLSdNaekd", "customAttributes": {"7pX9bhFAcgVYAKtR": {}, "5BKAKEmwXscRRKO8": {}, "sc8Earl0XQJcsapg": {}}, "groupDescription": "FsPptcnPcAsrsLPj", "groupIcon": "13KfroXnuCwC3YZ1", "groupMaxMember": 85, "groupName": "coZeM44JhC1Fa3YC", "groupRegion": "F2Uz8cr289jDsl3t", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "qmKW5TPY4FVPSAD3", "ruleDetail": [{"ruleAttribute": "hmMqtL26BMbbOP0b", "ruleCriteria": "MINIMUM", "ruleValue": 0.9509583310810331}, {"ruleAttribute": "NTD9bTJgOSUKskPd", "ruleCriteria": "MINIMUM", "ruleValue": 0.08851637091188025}, {"ruleAttribute": "8MnTP8Gp0P184nEh", "ruleCriteria": "EQUAL", "ruleValue": 0.9243685810820241}]}, {"allowedAction": "pvx5LaI62pTKADZx", "ruleDetail": [{"ruleAttribute": "T6U1i8TvSn0zLF28", "ruleCriteria": "EQUAL", "ruleValue": 0.06044176502770915}, {"ruleAttribute": "p1q2Ks9xED0yNCUw", "ruleCriteria": "EQUAL", "ruleValue": 0.5890789842929713}, {"ruleAttribute": "twAOz5TUrxK8kxGz", "ruleCriteria": "MINIMUM", "ruleValue": 0.6700568524659948}]}, {"allowedAction": "yvx1kpgqivMlv1Rl", "ruleDetail": [{"ruleAttribute": "eittTNUc1FeTaGZU", "ruleCriteria": "EQUAL", "ruleValue": 0.5962291588624036}, {"ruleAttribute": "jJuQBfqUDi4Hu2Do", "ruleCriteria": "EQUAL", "ruleValue": 0.04931732997948546}, {"ruleAttribute": "ze6YtlG1kqN965It", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7414563086736475}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '8yepOmhFdBLGQUwb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'DKATTC0ixr4fKZd4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "IDSLaNo4Ec5JGaso", "groupIcon": "kMQgYTiInqQDa5Bd", "groupName": "8TDay5CO7oj07t82", "groupRegion": "59YAOy0YmuFaJ0gO", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'Pd17mzNI5H3Ejqmx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '3rmjKMYQZV8pBevy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CEewHvyaD74euZZ7", "groupIcon": "OG1SnvUv6NddJJPh", "groupName": "qCRkq2NcJHnb7L9k", "groupRegion": "QgI3IhI9IyM5l1sW", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '0GGQbkw6YntICNLB' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"nRBh5sktqT3wRKNf": {}, "gnuJclAkRhE6KXOG": {}, "EOlAEGTH76OvtRo1": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'jlky50xUmABtYHYm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'OS4XbY3qqEM0uMG5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'H0BuwwnZjEp6tG5z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'YIPLys80OobDxAL6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '8KwywwzyTf2fZGak' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'i3PeJ9mWb5nJljYD' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '82' \
    --order '5IoV7YjQAuvFx1XM' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'yyI3q65bVA0OXTjE' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"nQOznhNHcyQdtjPx": {}, "FwAj7Br26QmA1aVt": {}, "IidcbTvSQwliEgvE": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '6oLNsFpQGBxcMNrY' \
    --groupId 'epSgEZ146MZuS5to' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Xc1Z4CX5rSxh8M1t", "ruleCriteria": "EQUAL", "ruleValue": 0.45797364116655226}, {"ruleAttribute": "iysW5YaM3RK3cjBO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7180212062146424}, {"ruleAttribute": "QSyNz64qwFCNbKqL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24405573033046835}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'bbyeCBQyS6FQQQg0' \
    --groupId 'Nz3VSzJq1aPOKL3I' \
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
    --limit '57' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'aOARYxY8Mptg0SuJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3C6X2Q9QJlf4CEB9"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'rS7TBpkH4X7iHfLE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "84gCC6pVvLJwChOi"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JYNn5DVSsWhrqwgi' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ahLc3W39537Nmhtx' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'd302JYTnOJfwHiwf' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MeBocZhGCnoFFYua' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eMbd65SNO7rQ4Gkg' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["yTpmQHUlFOaSifxD", "S19ZPSlMMExKvsFJ", "hOo22oJFYYDVsczO"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'w5NEYoGDtxuRBefO' \
    --limit '78' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'gOSsP6DII0QrlA9K' \
    --namespace $AB_NAMESPACE \
    --userId 'SC3KmFrQrxSR8zXj' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "FXiDQ00KH7SifLta", "customAttributes": {"p4NflE3W7qqxrLsU": {}, "thsDewveE89rwSlQ": {}, "ScEx46q42yA56uxD": {}}, "groupDescription": "C20jUKx0CZFicqAb", "groupIcon": "RtEx71XmM77ZG4UX", "groupMaxMember": 83, "groupName": "f8PY2aEh5pd0P8UF", "groupRegion": "UJqdzUmjWNPbu7CI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "4ZeSHbNr7Z6WUCdb", "ruleDetail": [{"ruleAttribute": "W1BzuLq5k1AJerDe", "ruleCriteria": "MINIMUM", "ruleValue": 0.3376052191538038}, {"ruleAttribute": "h46krAghXd4tLxBZ", "ruleCriteria": "EQUAL", "ruleValue": 0.08164467061948966}, {"ruleAttribute": "95tnqTs7b2UJim4N", "ruleCriteria": "EQUAL", "ruleValue": 0.34945288324242896}]}, {"allowedAction": "yTNNzaJTyIFQsL85", "ruleDetail": [{"ruleAttribute": "NMZnTu3PB7D0KgoI", "ruleCriteria": "EQUAL", "ruleValue": 0.8751217592231497}, {"ruleAttribute": "1EWBvlDco78edcsO", "ruleCriteria": "EQUAL", "ruleValue": 0.7229125279726768}, {"ruleAttribute": "R4B1is9yT3wW81ts", "ruleCriteria": "EQUAL", "ruleValue": 0.5819152898196958}]}, {"allowedAction": "LDcRhQokmtYQCBzY", "ruleDetail": [{"ruleAttribute": "Z6eRudcMtho9jJ8i", "ruleCriteria": "MINIMUM", "ruleValue": 0.7024921885996657}, {"ruleAttribute": "TXptX33YAlKEOJO9", "ruleCriteria": "EQUAL", "ruleValue": 0.6828935629502001}, {"ruleAttribute": "5NJ9Lf9Ge0FOmdOS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8257118650131519}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["57wGuTvcze5TFU71", "vZ47zTUXxMEpHKoa", "b6rVXDcT28R0LrCB"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'I0cRibmi3KLArEZ4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "rgfA6Stk6wHXy1DO", "groupIcon": "DXVWSe6aNRmsY7yx", "groupName": "N4v1oOkWmeBhVMGO", "groupRegion": "LFRMQjpUH6tmzYhr", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'V8joFK2ofXLO9dhk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'CPbQoSTLaznOqdjP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "jiPHnOzsOyS8K3rL", "groupIcon": "8hXCpxtgU6cNkCTV", "groupName": "UciZ0nRipcf3WQ2T", "groupRegion": "ya0uBaq01gKWl5Qb", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'LtQ0oiqWr4u1OPWy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"HBtAFG7QM0jsUEJf": {}, "JBlkBDsbriCPXdPN": {}, "yNhEoa7NDDBp9E7z": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'N3M4csTz2QhACVyW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'o5fVN3GYMnE75fI2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '7DwjxcoRGwGMVNrr' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'ZhEqpRwGTUoZC01T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'lBaTl6E5tK48d026' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'ZiiwPMZnBreASatc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'H2gd9n3VxUgNAyc4' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"iWkFBXbLUXNlGbBf": {}, "ShoESB9G7wrJYefy": {}, "mq4qiIdYoGsvJAUC": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'wdmRkeuUBlnGyJ0V' \
    --groupId 'gTyu9suYkeenOobp' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "xa7Ud47M6xt4YtId", "ruleCriteria": "EQUAL", "ruleValue": 0.7833244999749831}, {"ruleAttribute": "XKMDzBborFp4dP4E", "ruleCriteria": "MINIMUM", "ruleValue": 0.3780084239275382}, {"ruleAttribute": "9JnhWifjcjH9vGMF", "ruleCriteria": "EQUAL", "ruleValue": 0.7455158565573182}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'ua3mU5vBr0iHYCeB' \
    --groupId '2J0bNX93ODKYUquZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'AqEscgZHVWeKguLZ' \
    --memberRoleId 'XuTVsGa9mdcL2seT' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "IswSu2mg3FKat3Cr"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '3geHwKGlrKMUZ5R8' \
    --memberRoleId 'UIlp6mHlP0LSs4ZH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "FrcP1lEBYcwtRz6G"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'bRBg2FB8Un5GyKRr' \
    --namespace $AB_NAMESPACE \
    --userId 'dEjZQpQgBkqUWhcT' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'm2SB7Ow6lXRA3HO5' \
    --namespace $AB_NAMESPACE \
    --userId 'WQj0teEOBlYks80L' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'n6k5LykcrZGywggP' \
    --namespace $AB_NAMESPACE \
    --userId 'YAUgB8FyQHt9aHXl' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '2ggHXXW4QJ38Tjdx' \
    --namespace $AB_NAMESPACE \
    --userId 'k1UtIpzhmqAKYEIa' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'fZksYam40vYRPUZU' \
    --namespace $AB_NAMESPACE \
    --userId 'aQy0xDlYVpRBsHal' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'OlF4rlLUzqyLI5VA' \
    --namespace $AB_NAMESPACE \
    --userId 'eDPqnL1IqCXbuHJp' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE