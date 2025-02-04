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
    --limit '43' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "LEuMrFtVCHEb9bvQ", "description": "ewggA6FIsTFyXqcX", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "muprQIUNivth2aPJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8654883092036609}, {"ruleAttribute": "jF2SEXUCTCfFnh14", "ruleCriteria": "EQUAL", "ruleValue": 0.6104128580137401}, {"ruleAttribute": "69W7LLWUmBbvU1WY", "ruleCriteria": "MINIMUM", "ruleValue": 0.49207240932929686}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "zhpkc7vXIQo9c5DX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29022138424459354}, {"ruleAttribute": "bP7wCgnAC6APy10L", "ruleCriteria": "EQUAL", "ruleValue": 0.693764043129128}, {"ruleAttribute": "iN5qsSw3lyWoWTAd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2390409285706403}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "am6NpEzj3QSw5XEd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6945905655656515}, {"ruleAttribute": "inIYJioCUsQJBWAn", "ruleCriteria": "EQUAL", "ruleValue": 0.5696745931982085}, {"ruleAttribute": "Y8Ui5EeB6jphQGo8", "ruleCriteria": "MINIMUM", "ruleValue": 0.33406507912881245}]}], "groupAdminRoleId": "mWCGiEi2JQ0z6QtN", "groupMaxMember": 62, "groupMemberRoleId": "aowPhsrSqZBh5LdV", "name": "MJpXJOtltAn0QyBq"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'jCmlgTK5pY6JLv38' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '9TydQvvN4NzkDgrC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'aqxczAQOkNdA6Ohg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fA21srs6L5LjIvI7", "groupMaxMember": 3, "name": "YExQCF28ZVInQDL9"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'SulB38OhCiqFco0A' \
    --configurationCode 'SE12eZMY9lrzrjlg' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "UfDizHWZietdmXL1", "ruleCriteria": "EQUAL", "ruleValue": 0.36154465139994474}, {"ruleAttribute": "6gtYgj3Jt8YHByaO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34593028452151653}, {"ruleAttribute": "KvbNfse1kfxGtaIA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.921847605849968}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'jWiR9CtighqJFWh4' \
    --configurationCode 'flJxmQiFZAZ1jMHc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '7UMNgnWjOjxbvz8P' \
    --groupName 'GakcGeWtqjWMvUut' \
    --groupRegion 'ItJptREaaAc0rVzs' \
    --limit '7' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'LTEcDhFE3Got2S21' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '1DWnFWVQog67Bfe1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'gWHc9Rzggx3qtjTW' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '28' \
    --order '8vP44bYGOdltdcmV' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "x5Z0DHf1lDWAILa5", "memberRolePermissions": [{"action": 14, "resourceName": "xdziXa8mIFJpDWFo"}, {"action": 10, "resourceName": "C72LOxu4z17KG4mT"}, {"action": 60, "resourceName": "JD4V9hDMQtnTJcET"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'wcbKFIvb2hfMhbSf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'fHv0tmtoTQb4gUH6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Ih6TIgoaKYz0Nbbr' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "RkUOElfWPRyNbLUB"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'YSsiAqnoTA6miuAK' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 81, "resourceName": "DcgY6BsCVijowLN2"}, {"action": 40, "resourceName": "LEbjlBEj0VlCvx2o"}, {"action": 54, "resourceName": "KMvWhkdvwQHPaO9l"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'JrByibGMPjP033sM' \
    --groupRegion '3OGmVBTSeeJH5sWK' \
    --limit '76' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "UXFiUGECQVttx7k1", "customAttributes": {"AsoZXwgmL6tt8UcO": {}, "1f472rvRTu5RXuOG": {}, "t8qEpoOLYNQprqpB": {}}, "groupDescription": "o3ZZBk82iZo2TtlM", "groupIcon": "gODN9uUFk4RsWHfd", "groupMaxMember": 17, "groupName": "OHugVcp4YsBvFFLQ", "groupRegion": "EYaeBJHY6hUJPPPR", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "K368EYgJQMnkuc1n", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5337558383230573}, {"ruleAttribute": "LXu9Rw1g0VTTJUhR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20382179091236174}, {"ruleAttribute": "wzwtInmgie6kHGbs", "ruleCriteria": "EQUAL", "ruleValue": 0.1248344665795148}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "UnUyvXR4mCQBXmUj", "ruleCriteria": "EQUAL", "ruleValue": 0.954351346557657}, {"ruleAttribute": "8o6P0dZwKEdCoWj7", "ruleCriteria": "MINIMUM", "ruleValue": 0.8608309411007806}, {"ruleAttribute": "wcC8B4ZpXoFVFo9F", "ruleCriteria": "MINIMUM", "ruleValue": 0.9294431189134187}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "lMYFeSSTuauTB051", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7853937558458918}, {"ruleAttribute": "ZphsQnKD8V7ExG8v", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28085826355571375}, {"ruleAttribute": "jScWjknLbdd8S0HW", "ruleCriteria": "EQUAL", "ruleValue": 0.4238535005283096}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'tc6gfSq24wAQVAZP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'T3RMoPbWcCJdqeYx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "YD5yE1Ps7crEBEPd", "groupIcon": "oXoldDxtVrGJDhoO", "groupName": "Qk3m80u4daO8JvuQ", "groupRegion": "aGitIHoribODj5Ys", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '0ze3qRCLCB2TmuFe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'JuEUivPIZPSyLn9r' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DAbE86z092BLF138", "groupIcon": "Fw3q9gbTNPGeCfaQ", "groupName": "PLYrN8hddKEBRpji", "groupRegion": "WGQVUSq3sX8d6s8N", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'yFcTbeat0xBwEqjF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"aRm0oamoAhYZJlEo": {}, "xNmjYD2idW2X53Iz": {}, "klPnROhg556cx4Ds": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'YpdaMXXSKTW2mR6o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'zA5MTjlbune79olO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '0sCGy1qMo1O0UXJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'AjtuZln93MLiv1Df' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'kaMTcpIqqpFcUY06' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'QFGH1Zl8UKN2jkwC' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '45' \
    --order 'UHUcWZj7Ajbsnhj9' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'aauQEGKxz22j83GV' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Jq7J9G1CI1XRut9x": {}, "O4IicNUrLMZ0CVY2": {}, "KTeBWq6GsB80wS4h": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'eoYN0XAeZbn5YJH0' \
    --groupId '1u9a3QMqn33eqnQW' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "5v2P4fuMeaJgv7D7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4141919533409866}, {"ruleAttribute": "ihQzOcJwfMqfTGuF", "ruleCriteria": "EQUAL", "ruleValue": 0.5602383249246042}, {"ruleAttribute": "a1VBQnuZNUUWABx5", "ruleCriteria": "EQUAL", "ruleValue": 0.28813045524320413}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'VE8PKA4eqAwPt0QM' \
    --groupId 'iT9paF0nuotx2pK3' \
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
    --limit '4' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'UUYF1toLgBtHDXvy' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "b7CPa5U6oXgAVf1n"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'GrckIQemUAvIFIqg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "upMWSJgvwKjSJYRT"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aNazWNOkgbqQ3tZO' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RycgTV5MaaiV9Y1I' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HgyeSBK3uckKuFvJ' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UPOhsyw4SBUG4qcg' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EQ79vAkSxYhRbVSv' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["CjFIKDZ0dhwPMiWV", "jb4uVlqLO6VwVWom", "hdf3dtQEZtTW5Ztl"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fDFyez1WXhznLthN' \
    --limit '93' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '4ZCieKmB9zB2WeWx' \
    --namespace $AB_NAMESPACE \
    --userId 'NiAiIMNdZ0TPydpL' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "MNnAJCQoRF0ub2p9", "customAttributes": {"llMmN7d0DrcFGucp": {}, "0QQarq7WwAIbU4xP": {}, "xnTL0kRfjqa1fNsD": {}}, "groupDescription": "H3yERJYqIiz3sV12", "groupIcon": "SCp1CxCNdbHqdnCk", "groupMaxMember": 40, "groupName": "JhRla8XpAHTZXUve", "groupRegion": "6BGf5E4BLatvlSDq", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "F4IY4gH5L4VFUrSr", "ruleCriteria": "EQUAL", "ruleValue": 0.2716153722076303}, {"ruleAttribute": "xvNMitww8elMWazn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7128557971090507}, {"ruleAttribute": "YOXrlc7sCd0UPhA7", "ruleCriteria": "MINIMUM", "ruleValue": 0.7756194744464396}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "AD3GKb31JfEpf4FC", "ruleCriteria": "MINIMUM", "ruleValue": 0.8208790287424594}, {"ruleAttribute": "3Cas0c6uT9EF4cSg", "ruleCriteria": "EQUAL", "ruleValue": 0.41277146752590466}, {"ruleAttribute": "5FA5XhC8aARxpwxV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09908340146315031}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "8tDc8dMysNUMUdCQ", "ruleCriteria": "EQUAL", "ruleValue": 0.6297680272299783}, {"ruleAttribute": "wmVVMtg0oCsjDJ2q", "ruleCriteria": "EQUAL", "ruleValue": 0.03811390731127429}, {"ruleAttribute": "b33sYqkb7CSjVybK", "ruleCriteria": "EQUAL", "ruleValue": 0.4807743616786083}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["PI0i49ZL6nGpuoJD", "LtxpzJtolvrpjN4N", "OjspsWftkVcR2PQ1"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'EKYiVQKmoS8dZasY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mF1KzC4Mdp6gnLFs", "groupIcon": "BJUx2IounqJ1Ufl0", "groupName": "om08xWaeJm5Z0WLa", "groupRegion": "KPhgAQdGh0LqzHuE", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'XvBJf1wrLm3XRyqG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'DpoM2LnIf88LvgAz' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "nH5GcEmSNmWTvFcq", "groupIcon": "7IhOn47wenUH8kAJ", "groupName": "9yksbeCRAfyKDpJh", "groupRegion": "JBwqnKQWek1BYMSL", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'L8BVpm9va0aaghnw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"GUjloIxPz78gDgyL": {}, "Vw1qzi2cDdV7XQgf": {}, "V9TxyAlpgMj73dMr": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'BOU36JbdVVTxp1bB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'oZ7zbnFaT7egxALO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'Fd0Rr2iMLWhX56p8' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'mKC6RuU3vZuAN6oQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'D7OSGRqF0fYmymQ4' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'UlAMREMBeNgpDRDn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'vbFiNGALFSM3FDYb' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"t0j8mjHEdiMUqfRo": {}, "lkKdnT5v6B808h36": {}, "kOyBtawX0OBH11CY": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'qFBZuwlaIz2WcujB' \
    --groupId 'FMDa8zNiKVeawoa4' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "TukxxmWOo0lT2q0S", "ruleCriteria": "MINIMUM", "ruleValue": 0.12472999250317895}, {"ruleAttribute": "9ymWUCjrvWncltKG", "ruleCriteria": "EQUAL", "ruleValue": 0.8141597601442695}, {"ruleAttribute": "YWaCxN0SfZekhM7c", "ruleCriteria": "MINIMUM", "ruleValue": 0.35653232754426667}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'ikGEYh0akWVegjbN' \
    --groupId 'JSjJJ9USSRv9X8FH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '4rdH668Ju8dU19Pv' \
    --memberRoleId '08SXEiEifdNMPBdl' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lMWyjmCg3NnkwUXY"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'JTrDLBdbCWtAC0Cx' \
    --memberRoleId 'VQlQEmaUpymHgHSO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WTh1zxJjmwjUftlD"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'X2UXWYnqAAj6kt4O' \
    --namespace $AB_NAMESPACE \
    --userId 'zmXBZbazz30tRHQN' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'itoP1Jqjangjf73c' \
    --namespace $AB_NAMESPACE \
    --userId 'T1DXHcldzKJ6xFxy' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'QuUzAKZS3Yx0H3aH' \
    --namespace $AB_NAMESPACE \
    --userId 'eTHR8tnzAwOKwI3J' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'zy9XOO5CLAJ3Mwnm' \
    --namespace $AB_NAMESPACE \
    --userId 'XvJcwgP0QUIIP1B3' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'dZBsU08XKyew95mQ' \
    --namespace $AB_NAMESPACE \
    --userId 'KNVDmJGkdJJAAU7G' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'VelvLMudKbdGKEQI' \
    --namespace $AB_NAMESPACE \
    --userId '4gN0P0bjbpz1kGxy' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE