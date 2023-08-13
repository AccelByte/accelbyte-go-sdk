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
    --limit '66' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "FUdBgfte1gPcZ9cN", "description": "vZ8wqGowGoTGCgcp", "globalRules": [{"allowedAction": "kiTuwP0EABGAhcoq", "ruleDetail": [{"ruleAttribute": "yrP3xXuw01QejXwq", "ruleCriteria": "MINIMUM", "ruleValue": 0.2518405857791771}, {"ruleAttribute": "eb3UnJREkYg9sGip", "ruleCriteria": "MINIMUM", "ruleValue": 0.5214831236850513}, {"ruleAttribute": "Nm7L2VnAWp7sKkEw", "ruleCriteria": "MINIMUM", "ruleValue": 0.6543275511531516}]}, {"allowedAction": "dKMz7HhB1coXb4ST", "ruleDetail": [{"ruleAttribute": "P4nQvCnW1BYIrIEF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.37120689546969066}, {"ruleAttribute": "2XqcUJ9EjEaQCZCJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8592788620676484}, {"ruleAttribute": "Ty4hQiwZBzBBFAcl", "ruleCriteria": "EQUAL", "ruleValue": 0.7107686229179276}]}, {"allowedAction": "SmG1168vsQVnr0N9", "ruleDetail": [{"ruleAttribute": "jKuQiBrXHkDwOts9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1438794943908127}, {"ruleAttribute": "56hHw8SSvEfSJ3g5", "ruleCriteria": "MINIMUM", "ruleValue": 0.9157145564676}, {"ruleAttribute": "wb8SQl45l7pNTilS", "ruleCriteria": "MINIMUM", "ruleValue": 0.4847035156081797}]}], "groupAdminRoleId": "tRBlTlIGTdP31oNw", "groupMaxMember": 94, "groupMemberRoleId": "0XSGFUMqXbXkVo7Y", "name": "NzqzIFOfQHYe8sTE"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'TjKLE9IbzWXyevBp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'oVRTo7r3v8QnEThw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'YtFV4lChgp04MTEE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7KZfAiRru2m1q4a4", "groupMaxMember": 79, "name": "UCSGeyk9vCLCI2ud"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8wiGBylD3zDrik75' \
    --configurationCode 'qj3S12rmdZqrkAkJ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "OvNnFC3It66G00CJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9718111431828503}, {"ruleAttribute": "QXTIEHtICy0c65tX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18702803773233379}, {"ruleAttribute": "zCUfqmGIkznzCWgD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13231223759004995}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'oiHAETif79jwbS5N' \
    --configurationCode 'KBvfSvilePc2nYNO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'N2HUkYIARwMyVSU5' \
    --groupName 'yAPoSNVL7MN90cOf' \
    --groupRegion 'IEkLBQRIaC5W9waL' \
    --limit '71' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'PRu571CPSzmfNtgH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'qBcwdSBpLLLEtwZI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '7Onm7HFIDJiK5EhE' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '66' \
    --order '2VtD8Yb2tMnVXrxB' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "4qRvNTT0cT9oiruQ", "memberRolePermissions": [{"action": 67, "resourceName": "diLUcnJcKGnH5d2D"}, {"action": 58, "resourceName": "yi4swGNYeiK5RmLW"}, {"action": 49, "resourceName": "g1v8z63KpVLlWcD1"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'rs5XNwhHRJVdo3eq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'QV9rN2hUv857YdVW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'aPlvu8oQQ3EMFaqh' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "gCMB6EzM5uWrCKur"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'pKi74AqnAS0Mdduw' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 3, "resourceName": "0wpaxtYNmPPOrcIF"}, {"action": 94, "resourceName": "bRS4DSlIvecOtUXI"}, {"action": 71, "resourceName": "5HUqZYRUmVn5WtbF"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'KLm7L5hVCsOaxt7N' \
    --groupRegion 'zJCY691Y0b3xeAKF' \
    --limit '14' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "kPfRJQCV9FJRQo4M", "customAttributes": {"U3JtNEUeZ63LrLpr": {}, "Xgc6vleSmIb6fK0b": {}, "yTacGntUpW7An5qR": {}}, "groupDescription": "lelE8YhQ8tjdzRpc", "groupIcon": "bJMQ8RqDVo0KdK4m", "groupMaxMember": 67, "groupName": "SaN8LxyN9UT5xiUz", "groupRegion": "DDy85Gt7Eypa6Ohh", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "64ZJOXw4HbTKT785", "ruleDetail": [{"ruleAttribute": "A8lCm2OIuy17ffip", "ruleCriteria": "MINIMUM", "ruleValue": 0.6739006166138443}, {"ruleAttribute": "OkTPd4DptXIfbLBQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.46294904693612926}, {"ruleAttribute": "n8r5wbx8VmLduNu1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04459599763658384}]}, {"allowedAction": "779ZmqX2QTUbejrz", "ruleDetail": [{"ruleAttribute": "TLYkybpgRPutGyyB", "ruleCriteria": "EQUAL", "ruleValue": 0.08431040309106363}, {"ruleAttribute": "zaBF32kweEMrmygA", "ruleCriteria": "MINIMUM", "ruleValue": 0.8700345472035552}, {"ruleAttribute": "WGwZWZ0ms4MDPP61", "ruleCriteria": "MINIMUM", "ruleValue": 0.1658825902425063}]}, {"allowedAction": "iVK2jKIKCYMHmf8L", "ruleDetail": [{"ruleAttribute": "VBJbu4kHlvVtrmno", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9324329641024932}, {"ruleAttribute": "m0NFyR3dRenJgntL", "ruleCriteria": "EQUAL", "ruleValue": 0.9853008277151232}, {"ruleAttribute": "8Fd48RHTksdgWvol", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8129938783058211}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'PXDKUc1RriiPh3mN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'kpLMLEviJCZ7Dxsq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "y9z7Pp58ka8bIsMw", "groupIcon": "TxmvR16SUnbAbTDD", "groupName": "V6iO5AtGg7UmfZx1", "groupRegion": "Rvb0HhyDHJkAH7i7", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '0EtvQbXAyVKh0tNw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'mXME1ripuQ2pL7iJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2jnQSQctBdVw8Lwt", "groupIcon": "wZD48QtZeNseGNR3", "groupName": "0KMImaLtcdkyyaGF", "groupRegion": "82nEd1Oww9TZW0Ud", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'RGGm8EtEftulXHGw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"w79AdUTEsFZwo959": {}, "6DNHraVMFlXFCFBb": {}, "oIeCxmE1yXDIlVQV": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'P9ZtmrgNI8lhcS0F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'vuMU2FtZbPGjo273' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'sfddWYpRlnqcsMku' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'vDwGWRdbqgAC2yHl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'SF3wFfFgwEvf3UPf' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'TUJhDVAB7Xt1FXzB' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '72' \
    --order 'ZeKfLKdnphIS4X8p' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'KNr7LeE5GtyyLchE' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SYfGZBnN9pgcl2KG": {}, "EuNcUHFbOaj2CxY8": {}, "jM8p5VKg1TxTXI5t": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'qjNRNzW9rFh2kvc6' \
    --groupId 'YeBWN7SoIfhEOFvQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "LkBuru5sRa9aFtYr", "ruleCriteria": "EQUAL", "ruleValue": 0.7842056516043275}, {"ruleAttribute": "AMHk1f84m6S6U4vF", "ruleCriteria": "EQUAL", "ruleValue": 0.9899071644224751}, {"ruleAttribute": "VrIycOoLuEBmA4Xt", "ruleCriteria": "EQUAL", "ruleValue": 0.6254609078266679}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'TzKvcucOZZCuFACC' \
    --groupId 'y2vEMleLSLhhSCtN' \
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
    --limit '18' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '2IS7CrfbuSIe4Dst' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "djV1E0KiW8urbNhL"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'AdnlwVW6aLNg1C0l' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wKYV6ZcTYTeJrZzd"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sJ64Qay25M98HT7p' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YrgcWD4gAT6ahmJi' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ST1qTnsYPM8DhlHt' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'isjarsUnbM4BF2Hy' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'q6ipjSdxZ0GvJVp4' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["DAKnHKuTq6bFFStJ", "S4k9uS6uOEpTrUkh", "PhAWodj994ZzCbEv"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'D0CDY4MsJ2HGS1MF' \
    --limit '22' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'y1nDEizmeZclqjCJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Zl952M1yTJVez033' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "4iMFYCbN1hAMOAeF", "customAttributes": {"FsKWmjXBr09c60EI": {}, "0IX7ndh4D33IzN7p": {}, "QUdZ3MxszDFqx7BQ": {}}, "groupDescription": "mBnDAVm6VbrnkXCi", "groupIcon": "QqYl8ZeCCiTWnC0d", "groupMaxMember": 8, "groupName": "MC7OnECtMWqENlRu", "groupRegion": "cFpSY9GnimMiTgSP", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "hAbUoRLWDzJOPK8b", "ruleDetail": [{"ruleAttribute": "PXWIZ8ThjDrQ8nf6", "ruleCriteria": "EQUAL", "ruleValue": 0.007980116354270095}, {"ruleAttribute": "joWJdzdsVN9BMQGk", "ruleCriteria": "MINIMUM", "ruleValue": 0.40797260907088595}, {"ruleAttribute": "LC7IxR1buXsVN3Kg", "ruleCriteria": "EQUAL", "ruleValue": 0.7217205668805327}]}, {"allowedAction": "nDq5w6dknkr78g30", "ruleDetail": [{"ruleAttribute": "R8KrobQ5r9l7jUiL", "ruleCriteria": "EQUAL", "ruleValue": 0.10390735644688243}, {"ruleAttribute": "BwCjgwk4xOfBq1Dn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.682352334857179}, {"ruleAttribute": "7Q0tvsRXHEs3vqHd", "ruleCriteria": "MINIMUM", "ruleValue": 0.7221951958525603}]}, {"allowedAction": "RUOkyqNtqJaJ7MVX", "ruleDetail": [{"ruleAttribute": "N3bJtQHpF7Onx5rl", "ruleCriteria": "EQUAL", "ruleValue": 0.59263599944645}, {"ruleAttribute": "75s8xkqX1P9rGSne", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3843341890495552}, {"ruleAttribute": "kz1TDgVeNjk5MYx3", "ruleCriteria": "MINIMUM", "ruleValue": 0.27115364493288463}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["BieertjyEVc5DIjd", "GUJpLaOCidxP6Xkl", "ktRwi3NhO7g6Kon3"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'kxlqD746FmGEN187' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Lm9QxDqcHIf9rsw1", "groupIcon": "FuZZvJIE5ttDu4jQ", "groupName": "d7UoQmJ7ahjU2FIy", "groupRegion": "QTj45eNzfP1u7fkp", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '8C78enjJa57mdNSX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'yphIibEFBAwjDi6T' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "T3shPHzgtx5h7tlV", "groupIcon": "mN8sqegKUh5eKVKW", "groupName": "GgaNe10Hl9jMfhkq", "groupRegion": "SYnlh7iBhyvM1CWT", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'dXDIF1zaXguEDPTn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Z43TeiyebKKdXS1y": {}, "iqxX1OEH92KDQCE0": {}, "44zW5u7YzVnGC2Vg": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'GDG6n2IT80EIxyIM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '9DKE3nFeIJfmCBz1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '28mmPyLXvL4cstIf' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'bM3ShL3ABuFlTpQl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'cxWUXbRoAhJoqPEx' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'PJr1AaDK7NoNaIRD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'D52l7gFLeTqYdMhY' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"dfHK2oCB2fcEpKdU": {}, "DjB3RWCMx0ZYOBCj": {}, "dyrPOdPTA4gRcAki": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'AbRd3UoQ9W8s8hlg' \
    --groupId 'WjvWlM7hVlPgSfUO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "h6PaFnE53s1ieZgK", "ruleCriteria": "EQUAL", "ruleValue": 0.7127810488337321}, {"ruleAttribute": "HSfn1CvJWFQy1zIG", "ruleCriteria": "EQUAL", "ruleValue": 0.11160331523358435}, {"ruleAttribute": "FSrkEEUvLH9oQ1q9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4683920506190641}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'kQoHwb9M7YsHdrLz' \
    --groupId 'NLxmOLtgTE9NGSXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'hRzL0pyvtS6vKqjm' \
    --memberRoleId '0xfsIbw3vd7YprCd' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ZbAcIPt0sYchNt2w"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'dhODw2PlXKThMzhZ' \
    --memberRoleId 'ehkEFeeE9qvMINLd' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "89e9mvwuAcsBy2v0"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'xD1oeBZZ9BMRXHcH' \
    --namespace $AB_NAMESPACE \
    --userId 'hvc9AjqvCcnicT8x' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Y3xyXt3sMiEFFMRj' \
    --namespace $AB_NAMESPACE \
    --userId '8Hvy17jZN4isXebq' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'wx7XCTUiAfpKc8hK' \
    --namespace $AB_NAMESPACE \
    --userId '61YNw0fepbSKNbYp' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'nWBT2UCZQ6gZbQSW' \
    --namespace $AB_NAMESPACE \
    --userId 'LxGavLKdmSN2szmp' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'u1vjg8wGBD781kUI' \
    --namespace $AB_NAMESPACE \
    --userId 'efPPVzzROpEzM1ey' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'AFXGbdSnez8HSLn6' \
    --namespace $AB_NAMESPACE \
    --userId 'WjjPHtnW5yIUYeuz' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE