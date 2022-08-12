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
echo "1..45"

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
    --limit '17' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "sbvevYu0", "description": "69naUSR6", "globalRules": [{"allowedAction": "zUKeX6lw", "ruleDetail": [{"ruleAttribute": "etUvQtvG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6796700013107544}, {"ruleAttribute": "zkoDmqxX", "ruleCriteria": "MINIMUM", "ruleValue": 0.22710624931016932}, {"ruleAttribute": "v9r3NByG", "ruleCriteria": "EQUAL", "ruleValue": 0.35550939944635584}]}, {"allowedAction": "WUOrYjAH", "ruleDetail": [{"ruleAttribute": "MC9Hihw3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3220637348903884}, {"ruleAttribute": "TjGQupn8", "ruleCriteria": "MINIMUM", "ruleValue": 0.41211432097631195}, {"ruleAttribute": "mIU7kTvW", "ruleCriteria": "MINIMUM", "ruleValue": 0.19508939638487854}]}, {"allowedAction": "vqrdRvDv", "ruleDetail": [{"ruleAttribute": "YP7OuJ0f", "ruleCriteria": "MAXIMUM", "ruleValue": 0.53942742305371}, {"ruleAttribute": "cakHi0O1", "ruleCriteria": "EQUAL", "ruleValue": 0.1788671454992954}, {"ruleAttribute": "eS2kbRWJ", "ruleCriteria": "EQUAL", "ruleValue": 0.09469133545549824}]}], "groupAdminRoleId": "0ftszmsz", "groupMaxMember": 46, "groupMemberRoleId": "8zEEhbkM", "name": "4ZN6M6Vy"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'vXWs7FCs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'jniEkW9G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '4tXPqQ5Y' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KREvimL2", "groupMaxMember": 97, "name": "zbRGRUuq"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Ev1YDlOj' \
    --configurationCode 'bTXJk5MX' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "5BkZyDCe", "ruleCriteria": "MINIMUM", "ruleValue": 0.40734729393522395}, {"ruleAttribute": "KbSMq7qs", "ruleCriteria": "EQUAL", "ruleValue": 0.9159042140352498}, {"ruleAttribute": "THS8JTT5", "ruleCriteria": "EQUAL", "ruleValue": 0.9997250588790666}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '2tgL4ZJL' \
    --configurationCode 'YO1LUj4b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'JWiyMgdz' \
    --groupName 'KTvV55uk' \
    --groupRegion '3pBr9NTz' \
    --limit '54' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'UAqmeNeY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'B2EL2EQL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'RQCYG0tR' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '61' \
    --order '9NJAKvpM' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Zau5diQM", "memberRolePermissions": [{"action": 36, "resourceName": "YllkZN2v"}, {"action": 49, "resourceName": "x0ESzjDa"}, {"action": 72, "resourceName": "2TMqefs2"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'lfKk2eog' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'SfGvX3Sd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '8EGlrbFd' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "IyDV0Che"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'dps5sL9Q' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 15, "resourceName": "rqyFgNNg"}, {"action": 67, "resourceName": "IuXKy2ft"}, {"action": 16, "resourceName": "bYQkUL6q"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'iS2gaWr3' \
    --groupRegion 'g81eBxao' \
    --limit '34' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "w1ToRCx7", "customAttributes": {"42P7dG7m": {}, "LcpuEQaH": {}, "HALJ7LOc": {}}, "groupDescription": "uAz1EQfs", "groupIcon": "CF9xNHX9", "groupMaxMember": 82, "groupName": "IKsC1DbW", "groupRegion": "rUigHFt9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "d2fdti1s", "ruleDetail": [{"ruleAttribute": "JiSC2QZk", "ruleCriteria": "EQUAL", "ruleValue": 0.8793612493285676}, {"ruleAttribute": "0hAwGs0P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32987623222340645}, {"ruleAttribute": "oFtRalzj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9310017192725756}]}, {"allowedAction": "dEzIhYSq", "ruleDetail": [{"ruleAttribute": "a2mEXltN", "ruleCriteria": "MINIMUM", "ruleValue": 0.789429468472992}, {"ruleAttribute": "CeHx9eQK", "ruleCriteria": "MINIMUM", "ruleValue": 0.5669529676318996}, {"ruleAttribute": "Ou4OhsvU", "ruleCriteria": "MINIMUM", "ruleValue": 0.142874980366964}]}, {"allowedAction": "0XL0FCol", "ruleDetail": [{"ruleAttribute": "fpk2i1So", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01889978344615806}, {"ruleAttribute": "zxIaIWVY", "ruleCriteria": "MINIMUM", "ruleValue": 0.47150632806338155}, {"ruleAttribute": "juanMtEA", "ruleCriteria": "MINIMUM", "ruleValue": 0.8395306643123429}]}]}, "groupType": "rCnm88xu"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'ShGAgdyx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'bkSmu0dH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "nMamKTuv", "groupIcon": "eLRr80qM", "groupName": "YAt7BZOC", "groupRegion": "L0dvoH90", "groupType": "ADAoKNWF"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'X9bbGWRz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'NFdhkQpk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "kkz24l2A", "groupIcon": "WN3tg1Df", "groupName": "CMr5Psw0", "groupRegion": "w9D5nR99", "groupType": "SKszbGWK"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'UwelYgQH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"So6isNOF": {}, "iogtoXXD": {}, "cbZidLkJ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'FD6YZCND' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'FL1MPCk1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'wzsN3sBD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'qyUiuqB5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'hZqsjboZ' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'QhTZctk8' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '55' \
    --order 'l2AitEgz' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'yDh153Ob' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"DZWA8dbO": {}, "22mTDfK7": {}, "jawjAtWh": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'JqbL9L7O' \
    --groupId 'uMb8dKgR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "XByHHw9F", "ruleCriteria": "MINIMUM", "ruleValue": 0.21358106273185073}, {"ruleAttribute": "lmLYWSnc", "ruleCriteria": "EQUAL", "ruleValue": 0.6005376613941342}, {"ruleAttribute": "4YD69atw", "ruleCriteria": "MINIMUM", "ruleValue": 0.5654670971394119}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'ehdXrKDa' \
    --groupId 'mUItO8OD' \
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
    --limit '28' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'uuC1GGpz' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Oby448Sv"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '9LgiU9Nv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wdwOsqFo"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '4cSPTswf' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aFaKV7yn' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Je2x9Evg' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PmYJD9mH' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kitzO4id' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE