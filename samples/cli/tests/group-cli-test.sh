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
    --limit '76' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "lovqURtsysmltyeZ", "description": "Xm26eS7TDnR0HOhS", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "apoYNu7fzexAlOBk", "ruleCriteria": "MINIMUM", "ruleValue": 0.6876668521099059}, {"ruleAttribute": "cujboA5LkYyoewqh", "ruleCriteria": "MINIMUM", "ruleValue": 0.08260234924799503}, {"ruleAttribute": "qeeFqePYvSpyNyqE", "ruleCriteria": "EQUAL", "ruleValue": 0.9391699483801292}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "8KntCyZopdv1t8Y2", "ruleCriteria": "MINIMUM", "ruleValue": 0.6439583675265639}, {"ruleAttribute": "mLX23ejI6juyp74L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.017813976366706452}, {"ruleAttribute": "fUh6XPdCm7TGkras", "ruleCriteria": "MINIMUM", "ruleValue": 0.5630618233358914}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "fJPWxVNkzQOu6Q2Y", "ruleCriteria": "EQUAL", "ruleValue": 0.5435534450171252}, {"ruleAttribute": "gd3RoOdPb0S71v94", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16034958912517838}, {"ruleAttribute": "ut2RRQSojLvkUIyW", "ruleCriteria": "EQUAL", "ruleValue": 0.3482113738611855}]}], "groupAdminRoleId": "YbiiIyyZe4Nfzf7Z", "groupMaxMember": 54, "groupMemberRoleId": "KnHoloaoHjUsU15l", "name": "mmF18fuOhr1wpbbQ"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'qqufP6HyLuc1pna0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'MVQ8dcArIyVeH7Me' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'h5yITmBdG7LaxLUw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BOhUZgzHQnIxr3Tr", "groupMaxMember": 22, "name": "uqVnyTc3iXytylj4"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Qy7Eyy1f0SbS2QDz' \
    --configurationCode 'Yb3SwZdJdpeXfevO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "K0TaA3hsaQ4CYhEu", "ruleCriteria": "EQUAL", "ruleValue": 0.9138394321603582}, {"ruleAttribute": "OALIz1MEY5hFIyBO", "ruleCriteria": "EQUAL", "ruleValue": 0.379030759095049}, {"ruleAttribute": "QQ0I3SZunUt5Qjxt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3862121758116772}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '61qMyOCL5Tq45kle' \
    --configurationCode '4lktGdFoj2nrpTHx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'RTI8tcAvPLNA0N4B' \
    --groupName 'fmHhuxfspyhusubV' \
    --groupRegion '3Lnf49HmKcQ1LmXt' \
    --limit '64' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '1yhGr054TdUn8cWj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'HUBRE8wolABg83rI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'XMAfj4OkjHHzKCtD' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '52' \
    --order 'GmmIut0dvvM1lh4N' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "z7qsY1beu6sqY8FB", "memberRolePermissions": [{"action": 14, "resourceName": "jhL3OT6AiL8R05RM"}, {"action": 53, "resourceName": "c0NaYLT0WJHYFna3"}, {"action": 56, "resourceName": "t4gjPWFZpSHnBGfL"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'mvNhsRWjUzbxr8eC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'JkkBZitDtdbToZXf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'q9Odw7Rrbhc7essR' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "jEJX2fVOEt0hloHm"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'QqGrzKkFbN6SQJ5I' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 39, "resourceName": "X0x6trbvGinKYuYb"}, {"action": 32, "resourceName": "QUZOPgCbqJZgq8w7"}, {"action": 11, "resourceName": "c1Tv7hzeOqlaUh7W"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'hkcw7nuuPoiQx1i9' \
    --groupRegion 'IkQcfHGJNvlop7j3' \
    --limit '47' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "O6anda19Do4HycI8", "customAttributes": {"zRoBxQZto7QhyrsN": {}, "HwHRiiXdZvMih4NG": {}, "U8PMH0bn57IrekXk": {}}, "groupDescription": "uFsxAMMXQPQUEggf", "groupIcon": "5FNVIPj5tOvZsNOm", "groupMaxMember": 31, "groupName": "kFZZu0Nt92msJz5G", "groupRegion": "ggT2Ul9HBu4vQb96", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "GIVkGfcC5bqDb7Vt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.425444220387038}, {"ruleAttribute": "P2GJalGnjCwQDhIE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4491664952138473}, {"ruleAttribute": "S6AjagX3v53YaXE5", "ruleCriteria": "EQUAL", "ruleValue": 0.8570450918218081}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "AQfiml7oZ24AkHQt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.417443675772769}, {"ruleAttribute": "PczKP0JqeWftuD0R", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8732970297484445}, {"ruleAttribute": "TyFUocrLacpVAsGI", "ruleCriteria": "EQUAL", "ruleValue": 0.6750590872062915}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "8kCZgQj3lQmcLo79", "ruleCriteria": "EQUAL", "ruleValue": 0.21463981244904673}, {"ruleAttribute": "lYcm0KQvvZMjSVWR", "ruleCriteria": "EQUAL", "ruleValue": 0.5396063813711276}, {"ruleAttribute": "24E55lEqqCn1BLpm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.26375207332870365}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'DjG8dJhfTmh2lLrd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'CwjHerzgM80IP4kI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "q7jXejmA1IOiBYoe", "groupIcon": "Rtveb6fOoen9Ipp7", "groupName": "02n1Fha2VwSE4C29", "groupRegion": "rNK0jaJHkNBxfsdP", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '08LW5VL47H1hD2RK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '65h73XRu2MIKvW6Q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "S5uB27Luam32llon", "groupIcon": "c65QkAMEFftHue1e", "groupName": "1q2V5ZQMjGGVPQa8", "groupRegion": "e6XOwsmVs33e0hyr", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'miVzOCYvQQ35QKt7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ZQ4IA9Y870N9gYbI": {}, "XJhD67RLZN0uy5BW": {}, "Tc2VwcfhL8op7nyV": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'RWD1EFo1d0RljaeJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'WJpqS3KwQOt1H1yG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '4IVfQqeOE54Syod5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'b1ebsxLaq0aoy1Ys' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'QKOyjRuF0M5cjfBn' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '9xaaHVskjLciUw0Z' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '96' \
    --order '5jWkBmD3dkjwwrGh' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '5F6Qd7FKAR5UHrwR' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"7QOnlcIA2cTaN4gx": {}, "KYu0dglfsHZ5hpRJ": {}, "7VT0JWzm5crba5Gr": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'RrXang6A2X2v5fRr' \
    --groupId 'BGiRzWwsBCiJ0nLe' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "tVgGOpbYlxGn5ju3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24928990732563716}, {"ruleAttribute": "o3QIQP0ei1bXS84J", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6684706439283747}, {"ruleAttribute": "2CuPAR3Ew9LjIdCL", "ruleCriteria": "MINIMUM", "ruleValue": 0.27994524815173205}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'mCOJQfr3rdBD0a2y' \
    --groupId 'DTHDxeKREBR0iw6t' \
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
    --limit '93' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Xh3kdErL5TpuPeMx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YSMLiBl8kTJ2qTBI"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'LlPBkR6zm6Om9zr2' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zPMfc65rLt3O4614"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GeITgsi1DmlDga9A' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8ilbCUHtMJeoQyEQ' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cR1jmvnM7oeso4kG' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XWpKnNlrTtLgJ7Uy' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xon1s7NfD8pxig4K' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["jO8moNA2GkY8Jate", "WA7XTdFXIZrtMDsj", "Uhmnz21VOYUvmKxX"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ExahCJH4302O3Xy2' \
    --limit '0' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'OZrsUaNtwQDlLHUu' \
    --namespace $AB_NAMESPACE \
    --userId 'YaCxV4HhXYSYuUuU' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "FADYgJEq79EDdsCG", "customAttributes": {"cLJRbDCYnCGpONlD": {}, "RapqnxDKaOdiHvPS": {}, "ujncgqWBMiUQr5eI": {}}, "groupDescription": "p8kzuJ4EF0aCzkpg", "groupIcon": "1iw24LcCxgdi0yFH", "groupMaxMember": 55, "groupName": "4qRE32ygAoBqpBcJ", "groupRegion": "3pwETnqLO8xtdVHF", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ezOzAxxCptXDY4g8", "ruleCriteria": "MINIMUM", "ruleValue": 0.554483383932681}, {"ruleAttribute": "Jw2tGAx8ejMeywOT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34245977711960573}, {"ruleAttribute": "oF3Q8up27oyGhuyT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7808625783396645}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "ffhxTjXEYNr80V3P", "ruleCriteria": "EQUAL", "ruleValue": 0.08442039491339548}, {"ruleAttribute": "5tyJEDMpiAr877Ll", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9758548281798528}, {"ruleAttribute": "yjdgHgjXxnZAtfph", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9762082455386395}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "iW7CBGSLDtj66kVC", "ruleCriteria": "EQUAL", "ruleValue": 0.5146039265891449}, {"ruleAttribute": "fwND1i7goNyVIOxL", "ruleCriteria": "MINIMUM", "ruleValue": 0.4869025208312563}, {"ruleAttribute": "sLTpazdXPitNjh5Q", "ruleCriteria": "MINIMUM", "ruleValue": 0.13834251776489548}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["c9tzYXmv05MD7eL0", "B6f4vDIlNS2dACqU", "SLklKQgXw1queoW1"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Jh87e5IJJve52Q6Q' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "RHitZEBqgdvAYcOr", "groupIcon": "8LtcTFPQgHBjt9bG", "groupName": "86tnU31jry0s0M1f", "groupRegion": "yEvdHqqZBtSxseA0", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'FHqZbirLdUW5BTTK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'kjhEcazQpXZSLlug' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Q7UiiNP95v4ECbaq", "groupIcon": "DrXhCj1aBvHVeayk", "groupName": "NriKC3tOseVRRFJM", "groupRegion": "ZghI9GdAV1Pqiket", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'KWYXvnt48rN8wVQO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LrfvGqsPRciqxUgs": {}, "EV7VTQDNuBnt4Dq1": {}, "nSpfhS61tSJ7L5Fr": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'RYbulmf2rB2c4qlX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'c6YNhqZLkOzMXOfD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'I1CLE1pO8O3WPk1v' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'k8jCb0arfZoMIRup' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'Z3zp6LU94YLAuFTm' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'hNOXozMEsL5R4ruT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'PoLN6eGb2BZOQDuC' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"usYw8GwIuTn08Xt8": {}, "exLTajt1VDcALyFh": {}, "mq10VI3Un5Oqnyer": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'iKopxzsMadT3nwR2' \
    --groupId 'rFHhLB98zmjek8lV' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3CjDQ6ugp85m6Od5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9212323112966974}, {"ruleAttribute": "zJm7HVEF0uI5Z7hc", "ruleCriteria": "MINIMUM", "ruleValue": 0.5727322273947204}, {"ruleAttribute": "QMpRmFrAVMpq302k", "ruleCriteria": "EQUAL", "ruleValue": 0.5356219693600854}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'ZDYlQazlfyclG6Vo' \
    --groupId 'yHjQFDa9b5uKNhGM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'cEWGJtLjQvFiqzVS' \
    --memberRoleId 'qHXXXhjCSSSi2EcA' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "aLwKf6VOJoOSDw8N"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '7Q8ZnVsorufiyuT6' \
    --memberRoleId 'BphOk0p15epa6IU3' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "apbuvvhVciQGJUCR"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'FFBgUJHaueJmmu63' \
    --namespace $AB_NAMESPACE \
    --userId 'ruW2MDYw7tXDMzyC' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'Cb2wRMfVgBVTMmid' \
    --namespace $AB_NAMESPACE \
    --userId 'RgOL8l8gqlNS70Ae' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'gQEjXIK0xxTMKpTk' \
    --namespace $AB_NAMESPACE \
    --userId 'B2ozEaiIZNx1N0fD' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'B5WPhusVBU18rNJd' \
    --namespace $AB_NAMESPACE \
    --userId '8sOdNIcEJE4AphB2' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'nGorHM5Lah20hmOM' \
    --namespace $AB_NAMESPACE \
    --userId 'P2MTNIb1F1nsWQ0f' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'UZt0bNixaM7sE10i' \
    --namespace $AB_NAMESPACE \
    --userId 'h2NEWCHO9HjXnaug' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE