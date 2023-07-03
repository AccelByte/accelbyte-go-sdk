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
    --limit '74' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "PQrlCPC1cwIDIX9h", "description": "jJFJVYZ99y0Oxgcm", "globalRules": [{"allowedAction": "s7Gzrf9GygmpRQqZ", "ruleDetail": [{"ruleAttribute": "vCovtqo9VE75ISD9", "ruleCriteria": "EQUAL", "ruleValue": 0.5580233384053768}, {"ruleAttribute": "Wf3sNrpGDGXqvA0T", "ruleCriteria": "EQUAL", "ruleValue": 0.9653931105899378}, {"ruleAttribute": "9zlN3HQwBBhsSWRt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6651993769574781}]}, {"allowedAction": "pKjL4xsDqmigpyRo", "ruleDetail": [{"ruleAttribute": "sl7vVAzUElIYieMz", "ruleCriteria": "MINIMUM", "ruleValue": 0.01388067848780783}, {"ruleAttribute": "xY0TD8BweeOrXCMu", "ruleCriteria": "EQUAL", "ruleValue": 0.48665793600565665}, {"ruleAttribute": "s8IjjvvuTxdmMDE1", "ruleCriteria": "EQUAL", "ruleValue": 0.8463536430851638}]}, {"allowedAction": "LNCUhsAsWHthMdgF", "ruleDetail": [{"ruleAttribute": "bwCtoskdZE4A5qTw", "ruleCriteria": "MINIMUM", "ruleValue": 0.8410112694360741}, {"ruleAttribute": "ncTQ4uplYK6uVwJS", "ruleCriteria": "MINIMUM", "ruleValue": 0.5490589235503285}, {"ruleAttribute": "7dl7SXVLPrJVMOn6", "ruleCriteria": "MINIMUM", "ruleValue": 0.30837440851878517}]}], "groupAdminRoleId": "lsUj1MIhcvQTibVZ", "groupMaxMember": 25, "groupMemberRoleId": "Tn8RYwfj3AhqQaqH", "name": "fxMyICIrJKuNDSxK"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'bIRnd2JFGswJDDA1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'I6EsLOC0jRX77UDu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Rgz6kr3ka0DVRaAu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "W7gFLOcclICTAZDp", "groupMaxMember": 59, "name": "u2lBgg5qlh4FKHAh"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'LKhxbMYqWhjXqEBI' \
    --configurationCode 'Vk5KrkdhhWF8w2Zk' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "vMEnRpHsB6eoIovR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6989515167344692}, {"ruleAttribute": "1LXZxmZ77qoW3Yje", "ruleCriteria": "MINIMUM", "ruleValue": 0.2502229877810642}, {"ruleAttribute": "QTGF0V6rBQyKCQwQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6894046328009502}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'U42tzk2Mf0y0OuoQ' \
    --configurationCode 'qMCkYPq2veo78owr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'bhGjsgx7k3FVkWCl' \
    --groupName 'IHXxJXJzXm8DUrih' \
    --groupRegion 'YALe1V1Oo8Z4ymSk' \
    --limit '31' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'xO9dMo3bSIkyTuXf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Ea7Vzo21i6v5Tplu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'd1bGBK9GVCesgjES' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '62' \
    --order 'm4t3dzWuwSKLCg1M' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "olY4tBAJW5oq6Nkl", "memberRolePermissions": [{"action": 61, "resourceName": "QuX39bfcTbVlXi7A"}, {"action": 76, "resourceName": "PTZB2GAtqZA91rzB"}, {"action": 92, "resourceName": "BM29OqA2MV5BSjrK"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'jpe5JWAkW9HRNemK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '2FD5fQXTXaWlg6YQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'bHK8cGaCBOBMkbka' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Rs9W3gHcM4RJP8e3"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'rdyninfdM8rIoL4T' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 68, "resourceName": "UcmBL4SNfinmITSA"}, {"action": 24, "resourceName": "vqG8Ligm8wnJ7LbW"}, {"action": 86, "resourceName": "J4ny6MHoJbkxgpm5"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'RckN5lhKken7Lrie' \
    --groupRegion 'E4EJq8FXOWYkeGKQ' \
    --limit '72' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "jvUwoUtESMXDvSdU", "customAttributes": {"rM6ROgUi6uriQvWB": {}, "G9xODsb9ddpahPrl": {}, "3RwYCJWDJPnc2OCR": {}}, "groupDescription": "Gqi7scSAhFWZZ6eF", "groupIcon": "PzjjApdEz4zrynnO", "groupMaxMember": 92, "groupName": "6v2Vld7IFr2pfnmb", "groupRegion": "mumg78YyQ9huPuLA", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "l8zV5CloAZ1qVkTT", "ruleDetail": [{"ruleAttribute": "02zk8vcZaUHx3SDF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.295588265258137}, {"ruleAttribute": "pwVMpUkQ4FU5oYsm", "ruleCriteria": "EQUAL", "ruleValue": 0.3840036458901881}, {"ruleAttribute": "s6pYTIzbWYo4mxYg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.990044587778064}]}, {"allowedAction": "FCUL9mCFtkDLJTPT", "ruleDetail": [{"ruleAttribute": "lXpx4n64cfAVBbzs", "ruleCriteria": "EQUAL", "ruleValue": 0.9416078481834991}, {"ruleAttribute": "6dcl8TuFWre81pTT", "ruleCriteria": "MINIMUM", "ruleValue": 0.8795237582139128}, {"ruleAttribute": "0aGZD45GaMZeRJ0s", "ruleCriteria": "MINIMUM", "ruleValue": 0.21924235861584263}]}, {"allowedAction": "O2kRFcBRBrYfXeo4", "ruleDetail": [{"ruleAttribute": "kfmPAgycZqEOgBZF", "ruleCriteria": "MINIMUM", "ruleValue": 0.949125073634799}, {"ruleAttribute": "Pnu8VJ3fFI7eODGC", "ruleCriteria": "MINIMUM", "ruleValue": 0.27843064225457936}, {"ruleAttribute": "xippPP7HRUkpHi5Q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.953412953525592}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'uzzpgTzkU6zNqU5G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'NzM0kGDRvnY02H1t' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CpYtIPvSkJ0P9jER", "groupIcon": "qwISE4aIxHdQ2lJ1", "groupName": "PoMDwyKd95A2VkVd", "groupRegion": "16W9CZKUdGcztgOO", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'BHqBDiFQiMAfOWLb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'ab7ZqyL5ObtB1Zis' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DTECBXG8xsSY8Edn", "groupIcon": "uN9Qn7BHWZiSgN4s", "groupName": "FWK9zTCUT06NED0s", "groupRegion": "O3I5frOGUkIB6HGo", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Pf56JksyMUk6q4ES' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"tyfgnrZAhXxYLe1G": {}, "jL08ezEDaPpD3Lz3": {}, "WJT4OOkEgSuqsXXt": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Su21eC8IWXHtzZFb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'FIqACX52uyuwe8rw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'Hy0hCykyy98h5ygN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'uPyEKG78HANejKcI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'Nbmx5a9GwzCf7C3W' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'NQCvoEXRaZGS2aVv' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '93' \
    --order 'FIaPatFcyeIfshbv' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'phxWYqkfRm4mEHfj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"EhIpPa2Sdt5AaOPV": {}, "rIXeqTPdve8uMyQL": {}, "7R87OliEYfagScmD": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'A8BedgSxcybvoPhO' \
    --groupId 'cyoU6J5CvkNH63qQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "x76esPKEmEpNCCcu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7245312867100705}, {"ruleAttribute": "8xd4iIA8tfSMvgLW", "ruleCriteria": "MINIMUM", "ruleValue": 0.3367201429372312}, {"ruleAttribute": "sAPWYJJiSoUmOlZL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19472394789866942}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'D50bWjd3yJNxu6dp' \
    --groupId 'ojzpIcGCrIuyzNlp' \
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
    --limit '84' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'u06Jk548Jp9g2NPg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "9uTokx3375j4Hyh4"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '7n8osGAdqMui5X9r' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "DUp491Y9TBnQMAoM"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 't3TXDFt450TP6wWC' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZpBiZiCZZWFAEc74' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '74c31478cZgA9jdZ' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bSAyYdUcH1G0zWBI' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QW8acNZa9tS6tjbW' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["QKID78aP1v2KWMdO", "NLe5uMrxmRI0Tcg4", "Kk1yBOIPLxPTzGum"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BaeWAeriFp4mV2q7' \
    --limit '59' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'CqyZVatnbjLcOIXc' \
    --namespace $AB_NAMESPACE \
    --userId 'KiwyCRgdlkKnDTdB' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "hgwJyS288eo55jEw", "customAttributes": {"KAvpBOf1w1PBI5Ad": {}, "N951JCobl8O5psD0": {}, "jJe7YPa1GNSToPE7": {}}, "groupDescription": "sJJ7twHd6Mo9otpi", "groupIcon": "BLsIrQhY0QORzn9c", "groupMaxMember": 94, "groupName": "sHkzNSGRjkaBUtgg", "groupRegion": "CBbONpQDwRw5szQF", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "liD2A94hVzvKyEch", "ruleDetail": [{"ruleAttribute": "BFYEe7vZSJPJ2Cby", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6271575103603537}, {"ruleAttribute": "b7QxMHitZ6O6bhsa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7219253734228712}, {"ruleAttribute": "UHo1UwxQhMTIxedd", "ruleCriteria": "MINIMUM", "ruleValue": 0.8967688295129701}]}, {"allowedAction": "vSvKx0cVHRit8uvk", "ruleDetail": [{"ruleAttribute": "30cRluTqW6NmPev8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8597704047153314}, {"ruleAttribute": "WZlW85IQUMsfROPv", "ruleCriteria": "MINIMUM", "ruleValue": 0.9272612635771744}, {"ruleAttribute": "jue3yomnNZQAyP3f", "ruleCriteria": "MAXIMUM", "ruleValue": 0.97954491166324}]}, {"allowedAction": "5YwLFRNbLfn3Vjmc", "ruleDetail": [{"ruleAttribute": "1lCKq3y7tnFa5o8t", "ruleCriteria": "EQUAL", "ruleValue": 0.5603408994370767}, {"ruleAttribute": "LnO94lr4USUTUoOQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7204653221139895}, {"ruleAttribute": "rjLsKBDiZtXRXrT6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6597539081146465}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["QwMy6NQZMOytSQDK", "HMZEdBSSnFQNuLx0", "SUB2oXnORAguaSGJ"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'SKadSPpybEH6WJkz' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "d4IGEb5OuOR1AppY", "groupIcon": "gjmOISPFyekOUtNU", "groupName": "Z2BdGGCRApdBw1Ut", "groupRegion": "YLJuzVquCN9IiOyu", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'HkR4dudwVZr4mOd2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '31qGOJnBjxqYc5Vr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5M9d6HyDYbEVO5o6", "groupIcon": "wwdqrxIgnG6BGHrV", "groupName": "YtrRrJjHb6J7p6DV", "groupRegion": "OXRlTiU8YQTlf92W", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'HIJqsW3Wods8z5XU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"UPcuVM0ldbfZx3P0": {}, "vIR6lrR0IgY8S8IF": {}, "DpSS24Z8EQy1PesN": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'PbUi7BkrsTyKKjGb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '8bnhDW8I3SYrFqok' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'HYaKoxQEUQOHOUws' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '20iTAHSSZ8om1Tb2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'lLQizxv3qXKkrSd7' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'kg4zfziXdqpyVJ9m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'PmJHtVYba6dp7HzA' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ekm2eOlNPYjlJTEC": {}, "rWmRdigSQMPVjWXh": {}, "LF9D4ngs6igg5rpU": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Gb7JPzxCiutJ1Zm8' \
    --groupId 'iTMIQIprXwsN02fW' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "7XquqyxiF8umZKA9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32706406041536873}, {"ruleAttribute": "m5oYzauAPFXreqYB", "ruleCriteria": "MINIMUM", "ruleValue": 0.6384486458025529}, {"ruleAttribute": "zI3QPcvtUCf745Se", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34898416230984797}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'uz5XDzU50QaRpoqr' \
    --groupId 'pGx6ICuCc7ZZD2vE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'GbbPlbqj8CEYklUb' \
    --memberRoleId 'apKyHXCPsdWPTNUP' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "i4YufgkMO3HabhCZ"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'qSTWqxM9mysWmiUn' \
    --memberRoleId 'XkuKBmtZ0VuaMkAb' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "R3BgmiU0Ulj1WBl2"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'PNbAmy6CInmRvV5A' \
    --namespace $AB_NAMESPACE \
    --userId 'c5UwurCfHTVfOQ5J' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'VaIl6qZjOSxANo9s' \
    --namespace $AB_NAMESPACE \
    --userId 'xN1KKRKQuFfV8LAp' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '2xnmK3Tyqlm3kJ3y' \
    --namespace $AB_NAMESPACE \
    --userId 'QqsO7qPGkiXTqgqu' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'LcD9fl2jgVHSnbC5' \
    --namespace $AB_NAMESPACE \
    --userId 'rMWdgMHkULCVdR44' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'nd8eBZYL1jjjWpkz' \
    --namespace $AB_NAMESPACE \
    --userId '4C9xVRauXZny4CZ7' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '88Gi8QujhVChbKmo' \
    --namespace $AB_NAMESPACE \
    --userId '3CvWM7YcKO41PwGA' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE