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
    --limit '41' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "l9XceNuWkJzEZ8V3", "description": "39QSe00DoBsoibNI", "globalRules": [{"allowedAction": "KA3LDyl7MJBETZb5", "ruleDetail": [{"ruleAttribute": "fWdjAYO6pTE4n7B2", "ruleCriteria": "MINIMUM", "ruleValue": 0.5362778853303264}, {"ruleAttribute": "klgpMyrHAnRXXYkJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8309109075819021}, {"ruleAttribute": "bFgO4qKseaXFK3n1", "ruleCriteria": "MINIMUM", "ruleValue": 0.5647044510916162}]}, {"allowedAction": "VE1Q0aEKnEOiwhUA", "ruleDetail": [{"ruleAttribute": "KAuL0Jn6ocOdBCl5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5648966779148882}, {"ruleAttribute": "wGS3J6XeeiUXr0ic", "ruleCriteria": "EQUAL", "ruleValue": 0.19233296154156077}, {"ruleAttribute": "eb4cP9mUSVqgZG3o", "ruleCriteria": "MINIMUM", "ruleValue": 0.29902817633778667}]}, {"allowedAction": "t2NERRrkm6sZK8jA", "ruleDetail": [{"ruleAttribute": "ZML075Rmiu0SL8v1", "ruleCriteria": "MINIMUM", "ruleValue": 0.4714208316961257}, {"ruleAttribute": "FDrdgf3VQQQ0lSfW", "ruleCriteria": "EQUAL", "ruleValue": 0.6001038444598858}, {"ruleAttribute": "A9MOrD7CRkSqaMpO", "ruleCriteria": "EQUAL", "ruleValue": 0.9830654514519456}]}], "groupAdminRoleId": "cIlfcX21ROzfBIUC", "groupMaxMember": 46, "groupMemberRoleId": "5U4Ie9FLWlPGmq4b", "name": "3QrJiUlLMI655Geh"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'iFKOCrOuhSRvb6Fg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'bvoSJOFKIUqLqxjQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'nKQegOtaxydXpKv8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CUPvR1oUZcQ5gqk3", "groupMaxMember": 4, "name": "zWO06a0IEo6bTeok"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'R1jVw7wgHTMX4y06' \
    --configurationCode 'SQGCJWwFA63AiPzF' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "64OqI9niZLto0zu5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5254287790841874}, {"ruleAttribute": "9JNt7RTDIuOcwJaP", "ruleCriteria": "MINIMUM", "ruleValue": 0.43630905604777837}, {"ruleAttribute": "Mt6QOdgRFzztRWEZ", "ruleCriteria": "EQUAL", "ruleValue": 0.11314591682044939}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '573MN1JeakAmBTJf' \
    --configurationCode 'UeUjmcDvtM6EogeG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'yfkHENjJxgpkwtu8' \
    --groupName 'K1lYTSPdFaK0Rf8w' \
    --groupRegion 'bwMAXA5TFAUwmyyv' \
    --limit '29' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'ZotLkXquGWa4Odv2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'uywUeMnRg0R5plK9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'FPUJWQRVNmbVp0Kc' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '93' \
    --order 'g1apkPzACd9v6xAC' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "vCduKjnMh5JW9uOK", "memberRolePermissions": [{"action": 72, "resourceName": "APFUPjBWs7X5Xg2e"}, {"action": 100, "resourceName": "VxfDgocA4U1T3s9F"}, {"action": 23, "resourceName": "wKFC4dxE8bsyYIsJ"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'b1AKmMR9q2nVdzm0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '4ZrBaqnPpfoVdBUu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'DxDREj8HcelWPr5q' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "jlCCE1X3ai3w0WP7"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'WlB3UeY9Wgwe5I0V' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 44, "resourceName": "nqVyXSRczDgPmF3m"}, {"action": 37, "resourceName": "ns19cAzhB8qDJHcP"}, {"action": 25, "resourceName": "XGBiwOb9euQMISNy"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'Z4RQFCRvbkTKe9YO' \
    --groupRegion '1xwycuAHp4Dw7mER' \
    --limit '3' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "907hz1RYKldSK0cx", "customAttributes": {"1e7qxVWs69BN019u": {}, "gNbuQ1LTdowLHIpY": {}, "RLM4TZfi4VmyDuXo": {}}, "groupDescription": "SOlD3YeEKHCo5WAC", "groupIcon": "3cMG0rM5rnfZk1aE", "groupMaxMember": 47, "groupName": "n0kVbXuS9yDY4tzP", "groupRegion": "3vti3ikVh6AVRoH8", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Z0krwCwkSMPAnZ6w", "ruleDetail": [{"ruleAttribute": "5bc3dly0wnRrVLsN", "ruleCriteria": "EQUAL", "ruleValue": 0.5253197101023136}, {"ruleAttribute": "53ixBEKPjVGjOfWQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7078489017982991}, {"ruleAttribute": "9pB1F4ooQJ6wf5Tu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3774433103506555}]}, {"allowedAction": "QyVoYRtCGLnUhg1I", "ruleDetail": [{"ruleAttribute": "tjDEnXOxClAqwOFg", "ruleCriteria": "EQUAL", "ruleValue": 0.8913557313617082}, {"ruleAttribute": "E9EFdz4w1SEOUPU9", "ruleCriteria": "MINIMUM", "ruleValue": 0.6657330370724999}, {"ruleAttribute": "NTgd7UrnmytehabJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13800193117398474}]}, {"allowedAction": "fmVhlVSyIPur4yh0", "ruleDetail": [{"ruleAttribute": "tTZOnYaWPfzeRqg3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2200898412309399}, {"ruleAttribute": "WqOHJz7zuD4Pt879", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5545725603278175}, {"ruleAttribute": "OvoIE3OHNGV3b8ey", "ruleCriteria": "MINIMUM", "ruleValue": 0.33987268950413096}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'O4oWmfzCQ0upMthn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'XT457BK43NIBkbxH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "A3INxZK2effR9CzE", "groupIcon": "xAwOeWG2NzrCaKIc", "groupName": "xTj67k3yKyWarHac", "groupRegion": "uITOZ82125a26fSl", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'LgslTM4stMfcAuPo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'C35JcEz0rGg5JaIv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "NsxfuVKDL3ZcJHl9", "groupIcon": "gUX3S5M1KPgJx6X7", "groupName": "ClCW6q2oYAMuE8Dh", "groupRegion": "LnktDGutreahs1ga", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'v9ulK5ZK0V6uK8NM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yvWwrRArIQ9uisBy": {}, "fuaeLJ5RUOb3teKJ": {}, "Y2YHPWKbwhgO3XIt": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'yp3URvhNEn2CisPt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '9liv5mOTwWXQrXCh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '5dMW4oBv5LLRvU3Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'NbYeryplt4L9dmCI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '3FtYcbrnlEoIZDgS' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'wkySuhnKI0P410Af' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '6' \
    --order '9zx20ep7oYj9gXbI' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '3FuvV8UtQdcijfND' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"0BXbP0dNAb9JkM8E": {}, "K4iIDHiu7uJ8dwSk": {}, "19WBAyeKdhBN1yik": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '761Qeo2vXFVnMVtt' \
    --groupId 'mZITFpksZUnq3ZUC' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "SnhGBlF1c25pqQjI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3890624817064656}, {"ruleAttribute": "9gZkSWDgYwstXJZu", "ruleCriteria": "MINIMUM", "ruleValue": 0.34624794476950194}, {"ruleAttribute": "pC2utyV1IC3OH5bT", "ruleCriteria": "EQUAL", "ruleValue": 0.012680255696649434}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'WaLvZKKCDscKS5B9' \
    --groupId 'sESVUjskEPhWQRfb' \
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
    --limit '76' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'kInwJogAYIpQkX0x' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "l0KEuzFsBd5xHVlu"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'dpQzdbc420KVFmIv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "edgsBiw869t8khXE"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NsnRGG0TxX9D3lJp' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '7pr2u8x4wHdHnrPV' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kMQgyVLD9lDSuuJq' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SObCOxsIFWfmDet9' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '6MjQQUFhewC1FqpF' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["9yWtShsz8kV7k4Bv", "rrHjznl1W6OCDbK7", "3utxUQvOJAL1ryi2"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'eyVGx2mpl4fhpdO0' \
    --limit '37' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'kmBAGYIUBC5xGuBB' \
    --namespace $AB_NAMESPACE \
    --userId 'lQNMlYgpBog8RaMf' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "amMRfxFReIhWGrdr", "customAttributes": {"FR7GjaQobrcFqBvD": {}, "tKyLCEcdls2JGIwL": {}, "F0GGgOXfGvLyelD4": {}}, "groupDescription": "1aAlwiOHJ7vNJGEk", "groupIcon": "DM6XHkqBOkwEWleK", "groupMaxMember": 30, "groupName": "ZAnMVjuZ7bJrIn0o", "groupRegion": "OkAfqO6SoZNe07nT", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VTerGkmWbYx3QJbr", "ruleDetail": [{"ruleAttribute": "6v7UzUN81MT0YkK4", "ruleCriteria": "EQUAL", "ruleValue": 0.9274750705672492}, {"ruleAttribute": "zPJ5zZdGWui3u7jC", "ruleCriteria": "EQUAL", "ruleValue": 0.3443448164372215}, {"ruleAttribute": "3YkYIBgYaBFZBfNb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.37820465165047}]}, {"allowedAction": "zUF2KbHrkR5Jm3W7", "ruleDetail": [{"ruleAttribute": "pKf02B3G65VFoNKv", "ruleCriteria": "EQUAL", "ruleValue": 0.9492111416900361}, {"ruleAttribute": "PLTwNLCnRsfpxihh", "ruleCriteria": "EQUAL", "ruleValue": 0.3859287984138894}, {"ruleAttribute": "GdpdLYMazQSHVMyE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18951609774037526}]}, {"allowedAction": "kNrauYJTVTwpT5su", "ruleDetail": [{"ruleAttribute": "6UQ4BB6Dq13r0XO5", "ruleCriteria": "EQUAL", "ruleValue": 0.8932718303321739}, {"ruleAttribute": "5nu8pncdPbhAclrQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10133865338548287}, {"ruleAttribute": "x1psahNqEm7UxR2g", "ruleCriteria": "EQUAL", "ruleValue": 0.16984845947376326}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["5KCaY9xldfUPCeoz", "TavC9AX29ZCNX6Fx", "AfJ9ZfPFmtJutOim"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'qvvx0Ubnsb2wPOTI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "sNBLlIZ8pZsvYQrW", "groupIcon": "WDh5Cyy7x6aYJ0uL", "groupName": "QgmQDab18wWPE6My", "groupRegion": "HhSOZYz8vPSBToea", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'e0xCvmg8ydeHoefW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'QNHH9aNsO9QIg3cO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "ugUJTlB6dyGxjZWS", "groupIcon": "AOPFuoUd6Z74taub", "groupName": "d1mUNoZM1lcMbPuk", "groupRegion": "UkHtIXRtnpTed4Kf", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'LWEqzIwICr9IJK3h' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"FaktbqhScyqURuCn": {}, "DTtxx0Rz4PErN3lC": {}, "lAe1YbaJsiuSdKfk": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'pUJBF3QMgyLPV5hU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '0dU9MDupEeaxzioS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '4hzbwaIScBRG54sg' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'fXAnFGZQ7WRDAxe5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'bVK6GHZLT0FHf2dP' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'sFb0bId3qDozFPwv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'H0uHslv8Pd6W2UEV' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"wclSADn8FP5cvnoA": {}, "C3Ui2vtlSpGynfp4": {}, "4wmTsenhUMMpwsmo": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '67wuEYHYBeZaRaBP' \
    --groupId 'HbINEz3MrAqSLWEt' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "bWKq1tZZzfpGF2eY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8809319288289066}, {"ruleAttribute": "1Dydbzm0VZR5MkoG", "ruleCriteria": "MINIMUM", "ruleValue": 0.7937675701058051}, {"ruleAttribute": "DRwNhUWGUlhTcEMz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28645036105148225}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'fQClU5WxrbUl1mPa' \
    --groupId '3T28yiiIhk7lwjXl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'opIsbDa9gMGMXzVn' \
    --memberRoleId 'b7BPbIG7F3KdmlTa' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "62kPGVAVgiIwWjMn"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'fWrjfrJDpvF54XvQ' \
    --memberRoleId 'St0ncvt7WwG6zNBx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "g8Yg6mdR6Sf6aeMR"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '04bVqUHNjFPlWb9A' \
    --namespace $AB_NAMESPACE \
    --userId 'ihGaWGQfjQfW2ymc' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'mS4xh5adivVY8ZTz' \
    --namespace $AB_NAMESPACE \
    --userId '2ouYsR868aEhxmxv' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'KVJQZQiULHuijL5h' \
    --namespace $AB_NAMESPACE \
    --userId 'W4R4TTjz5ATvknkX' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'SzGrIVCXmzPGPYLu' \
    --namespace $AB_NAMESPACE \
    --userId 'yJXkxQHZV3lSTnAb' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'oscqDHXN6HX5PQJZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gti67EJkLGuOUHm4' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'eXWcGbGTmVC4hRkC' \
    --namespace $AB_NAMESPACE \
    --userId 'mNuG7MZrE5ON3SeH' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE