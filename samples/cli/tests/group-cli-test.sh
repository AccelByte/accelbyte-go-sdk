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
    --limit '2' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "m2GAnCeZtHXoDDLC", "description": "weXwgG8hUP6ueYou", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "loC2SVJ90dCyqxgA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09544869394860234}, {"ruleAttribute": "LaTpW1HRmjAusrzn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8021242458401816}, {"ruleAttribute": "xUX3k5x7fFJ8fvrG", "ruleCriteria": "MINIMUM", "ruleValue": 0.48316975819364905}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ZGtRJWjGpOWHlSpp", "ruleCriteria": "EQUAL", "ruleValue": 0.5600194373588196}, {"ruleAttribute": "DLFFRucyJlverHx6", "ruleCriteria": "EQUAL", "ruleValue": 0.4900117213927768}, {"ruleAttribute": "YxSfifolDSndaXnC", "ruleCriteria": "MINIMUM", "ruleValue": 0.4014317227746741}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "X8tbNgWKQBR7qyAz", "ruleCriteria": "EQUAL", "ruleValue": 0.8655757370825459}, {"ruleAttribute": "W1rC1sOfOyr1lKO6", "ruleCriteria": "MINIMUM", "ruleValue": 0.9589770492871138}, {"ruleAttribute": "pS8eEo7EP4fizS40", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8825251782608075}]}], "groupAdminRoleId": "mkL6UmNdqejueHlD", "groupMaxMember": 62, "groupMemberRoleId": "0vaa6dnaAeyBBT01", "name": "U8iYFMCNVQBSzVyw"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '4norQVwSsfQMECFW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'vVCKFB8JxS162lXI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '4Lb0cufb1Mnh5gma' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0P06paUK9oqtTxpo", "groupMaxMember": 93, "name": "qEaORCUmY4LLsiFA"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Ok8B0ELjBjeSyBtH' \
    --configurationCode 'eqSl3WkwrYMFVTg2' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "oZiE8B30Uk6oyG0B", "ruleCriteria": "EQUAL", "ruleValue": 0.17874162242296543}, {"ruleAttribute": "BZzy8g59adr5EOpU", "ruleCriteria": "EQUAL", "ruleValue": 0.051553256428726546}, {"ruleAttribute": "gXfdbtLa2O0CMLda", "ruleCriteria": "MAXIMUM", "ruleValue": 0.992915127528415}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'AXI8P6Ro3NBe3uxH' \
    --configurationCode '0eTCZtLNb9ujXFdU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'LNtZv7tNvar4v6fS' \
    --groupName 'rO12ipYZQZvmxWeg' \
    --groupRegion 'inXNhpKYlcyqo5GT' \
    --limit '54' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'RTrD9FG8QsSO0jbl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '1vFXITaFtUyKXcO1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '7OD9yYS86hBEQmH1' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '33' \
    --order 'APusQdgme0Leo7Rh' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "jOVFIuEcaqsNhdwD", "memberRolePermissions": [{"action": 88, "resourceName": "PioLm0b7qVKHIwO4"}, {"action": 85, "resourceName": "BosAhng49BuJ1DjL"}, {"action": 12, "resourceName": "2jDO9an30PR654Lm"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'y1viWSvpXTW6CeSY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'YICFmFCX2Q4kkM5G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '8Paw5PIUSHdNAXXs' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "I36sXRtMXcBkJyld"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'NHYPdym3WYKYvwc1' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 93, "resourceName": "BrciyKC6DZfcuJBi"}, {"action": 54, "resourceName": "QDZPdvWd2RK1Itwb"}, {"action": 44, "resourceName": "WiikZqueckcsreiD"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'fKwOuFJXKMnXrWaB' \
    --groupRegion 'Y38mImu2i0jegz9g' \
    --limit '34' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "FauQpXT2i7R4oaBJ", "customAttributes": {"ccRre9A0gg5UJfOZ": {}, "YjO6Z2IqOUnfmBGj": {}, "B3u2tDHArTsTtSQ0": {}}, "groupDescription": "dCsbK1rkat06QzdX", "groupIcon": "FN8ZCfpTd6ofbRTF", "groupMaxMember": 33, "groupName": "znrE7cs1gLuiBopd", "groupRegion": "SYGGS1xl67lSq76s", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "BZGV3J6KwvjD82Dz", "ruleCriteria": "MINIMUM", "ruleValue": 0.1064038473539598}, {"ruleAttribute": "Xp0f8ZJLTwRPXBJu", "ruleCriteria": "MINIMUM", "ruleValue": 0.3492341037252721}, {"ruleAttribute": "Q5KQiqEaXAVqWz83", "ruleCriteria": "EQUAL", "ruleValue": 0.05216657980166306}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "riblQHKfvuWYKL8M", "ruleCriteria": "EQUAL", "ruleValue": 0.9848509685579364}, {"ruleAttribute": "D3YZQZTaVWw865qo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43286856109030636}, {"ruleAttribute": "GLMtC8jq3iB54O71", "ruleCriteria": "EQUAL", "ruleValue": 0.2542926627187998}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "41K0TS9mYCkxv9dM", "ruleCriteria": "MINIMUM", "ruleValue": 0.838182384331048}, {"ruleAttribute": "QyuyZ9xqtpfnApl4", "ruleCriteria": "MINIMUM", "ruleValue": 0.13535975155030222}, {"ruleAttribute": "LHIkBL6adjihpEB8", "ruleCriteria": "MINIMUM", "ruleValue": 0.2542368448305994}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'j1QhKSAT6cMPt48R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '6SvzL8WeuQx0o8M0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "asYwpm94PSy0IGI2", "groupIcon": "tgnf0s9J02VDbMng", "groupName": "BUNTMxsAbAJJFpYC", "groupRegion": "Dv4BwCL7LBNEEMXz", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'rrqKhWGyFlrzmAPr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '1UWvzZU4u5EzHmyZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2WGf4KPeZyvSbnEp", "groupIcon": "s6Mdru6OHQ84lrRA", "groupName": "OcZ8e3psXayBn1M0", "groupRegion": "Dac6tMuF9lWd0aBP", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Nxk1gFjIJrlxX4kJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"sWsI1J60u3M6wZvU": {}, "GbYUY6PgRDhZyVAI": {}, "jFVJppsd8HnIzpBb": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'ErfUO3f2IS4h6lzR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'AGd6ZlchgKwyvlPi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 's77fkqSvamx5Gzi7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'OqOT2T8soUbFIcRr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'On6GwItnvUe0tS38' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'u4rVQNydQsk9eSMf' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '36' \
    --order 'wGnhu9b94rVY665P' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'pL3XVYhKfS3N6f6g' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ljPC01hVdyk5o38m": {}, "A263gBzyFOnQFatm": {}, "xln3QT2BMn8yYRng": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'aemddbaGqfX8vYft' \
    --groupId '1wPNr8UHbtyxOBDc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Ma0T6bRJoX4HNyUF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8588988790230122}, {"ruleAttribute": "WVQJNzieINgOfXtf", "ruleCriteria": "EQUAL", "ruleValue": 0.3295037284387332}, {"ruleAttribute": "eSiwqibE3zXnHu0s", "ruleCriteria": "MINIMUM", "ruleValue": 0.05685074061271167}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '4KMJ5drbBoe8GpbZ' \
    --groupId 'jE5bedFEMfI8a0OU' \
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
    --limit '26' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'RlXsGHZ7O0j2WfM2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "IwAElxblNDKTPhmn"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'DX4BoG4EBkXQBVZD' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "RF6l73hqsalCGOsm"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0kF8nqrouH6rONe3' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IKY1dpGRjjkvezuq' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KZ7v2m2PUj06Fj4u' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dLvPXEIVqTOO4uRm' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EgcinLgEdkKeCRsF' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["U455uuqQ8K5hF9V4", "JuWQUbKp4yp8cpOw", "x4bxDlfbPPuJLdKK"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OLhABTGanOWzVTHT' \
    --limit '24' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'xe2GiX2inUzIVuFG' \
    --namespace $AB_NAMESPACE \
    --userId 'lRtSXLqT3EzHY7N2' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "tltVTJUmVoHaoyW7", "customAttributes": {"5srWLv8SFBIWTaFG": {}, "NgpOzGrFiThAwGVi": {}, "OdGOQN7cg12b3j4C": {}}, "groupDescription": "BgYqgJ4c3tum1CwI", "groupIcon": "kFEYHDVnNh0ycDwT", "groupMaxMember": 45, "groupName": "UfCAUaNkCsP5XCxy", "groupRegion": "KFqB3urWrbne4c8r", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "hldrw7qA5CcOEFeU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20784129401422413}, {"ruleAttribute": "Qp1eiTn9vwnq8ta4", "ruleCriteria": "EQUAL", "ruleValue": 0.48303524616629034}, {"ruleAttribute": "9Mn2ibbX93y06RAL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5810891692366609}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "6GoK2w7QAUa8ETdj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7837000962196008}, {"ruleAttribute": "fjN3znEHeuJJI7LK", "ruleCriteria": "MINIMUM", "ruleValue": 0.6562769118699864}, {"ruleAttribute": "SF1NHfKQzYSvEdLe", "ruleCriteria": "MINIMUM", "ruleValue": 0.8065131914852651}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Rl6BvDwalr5iSf2h", "ruleCriteria": "MINIMUM", "ruleValue": 0.2144495825790571}, {"ruleAttribute": "LwU7iaBhDcpx3LNM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24471458727891748}, {"ruleAttribute": "cF7fnKmHfYnFc1GD", "ruleCriteria": "EQUAL", "ruleValue": 0.5109329034602729}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["2UzfablgbFZqmwqh", "EbcFjgefmGcKJAYp", "yK3HVlvbcXiwU8pS"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '0nK7IH4ARCvOZd5C' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ZA65nsAISwS7bpSU", "groupIcon": "To39w3dH8UnYDJuI", "groupName": "FusJDMNsu7jJkOop", "groupRegion": "JBvcgZgaPwHuKGyk", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'mWjcDO5MXq7axoDU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'D2eA8Rbbps1QOb5j' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "9Hi0WeLJCWAnCRPj", "groupIcon": "sEwXj1HObUsAAagc", "groupName": "vqQ6Vn7N5LcKF1lJ", "groupRegion": "F94LPVjCoF1nTf1Z", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '85dW6zUUu1b5lVMh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"iGp0h9rLvdxjdzG9": {}, "AyRqL2iOCBFXh1eA": {}, "z62ftFxuGxO2oZjy": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'taWa2wlElZfq0AUa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'gUY4kf5GETh5VxeC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'iBfjNVZ8NCfhiZEl' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'N4jkI9qEJrp5YJPv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'UaFPWJPwJayYAWbn' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'nRzE5UD9mmyZ5ZEM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'JuEoiqQp6o5xaNyi' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"VoG22jEVBzYyWbXu": {}, "GAGvP2rkPEnbVfmk": {}, "u2aI1eLKzUqtgETi": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'qcGHr5i3wd8mippW' \
    --groupId 'vktjlvCyPocMWt6A' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "CKFisXBnHVvPNzty", "ruleCriteria": "MAXIMUM", "ruleValue": 0.95303052865785}, {"ruleAttribute": "TFAHZXloFNAXjD3O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7684900775382969}, {"ruleAttribute": "JuJYfu3QvcX4A10L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8671473558833378}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'ABPZ9zYOSYmBsOI0' \
    --groupId 'o8TS34t1WK9bZ9mN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'GgF1CZDqEqIjnmQW' \
    --memberRoleId 'cyp6qi4nGupzMDYi' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "UJS8fscdpVq88zy8"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'O9tM9t3m2N2oSgOi' \
    --memberRoleId 'czaoD1gSdZwUdORB' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Y7rcs80eXE2KGZjM"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'MuV86hOF9SIHeIu9' \
    --namespace $AB_NAMESPACE \
    --userId 'AczcZzt5pfUKmgOF' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'iLRYkuRkiPO4tKyc' \
    --namespace $AB_NAMESPACE \
    --userId '8plds8WQOupXrAkg' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'IvYzuPKZhG9oILoZ' \
    --namespace $AB_NAMESPACE \
    --userId 'w8iuRJQ7nbSeud0F' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'nI58qfs0nnmYISiN' \
    --namespace $AB_NAMESPACE \
    --userId 'ooDOmMFi2Qu41AkQ' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'N4c18I9Bt5VQLtlF' \
    --namespace $AB_NAMESPACE \
    --userId 'DwkdmUD9aYg3Hobs' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'A1Xg1JWvnWizS9vl' \
    --namespace $AB_NAMESPACE \
    --userId 'QmK6KhhwvKa4iogr' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE