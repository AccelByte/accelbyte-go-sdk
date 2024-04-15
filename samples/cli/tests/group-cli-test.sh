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
    --limit '78' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "ckY0NS0HF5HSziIv", "description": "brNIYnePgpS0HOPJ", "globalRules": [{"allowedAction": "VLX1blTKhsk2GwoQ", "ruleDetail": [{"ruleAttribute": "5WlSKgB3I55r3jLg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5503727416072981}, {"ruleAttribute": "2bHVpqLU7nKSTKaZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.4069521739443893}, {"ruleAttribute": "loc2Uz55yi4AD0Ld", "ruleCriteria": "EQUAL", "ruleValue": 0.9871589871487662}]}, {"allowedAction": "VwTiJB9ng9hN02NO", "ruleDetail": [{"ruleAttribute": "ZcqK4xc33p7wSopA", "ruleCriteria": "MINIMUM", "ruleValue": 0.9008439511878641}, {"ruleAttribute": "dO90H9FCqQ6huK5h", "ruleCriteria": "MINIMUM", "ruleValue": 0.5429138109932128}, {"ruleAttribute": "ZQf6PgeUF76aqIjp", "ruleCriteria": "MINIMUM", "ruleValue": 0.5189720041846198}]}, {"allowedAction": "qzprxoWVmcvr4iue", "ruleDetail": [{"ruleAttribute": "v75S0nKHhQHKXrhu", "ruleCriteria": "MINIMUM", "ruleValue": 0.3932296693093744}, {"ruleAttribute": "OnQOPtBoYgJq9Qrp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7442286341335262}, {"ruleAttribute": "Qd8Tad0oxgiprPzP", "ruleCriteria": "MINIMUM", "ruleValue": 0.6105845401768238}]}], "groupAdminRoleId": "vrlxtuas1xrkiqb6", "groupMaxMember": 25, "groupMemberRoleId": "PkSn4Nk8j5ev1WTu", "name": "CPjOMJruVZYLNDGz"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'REgHbUrxq8lrCc6Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'YtVf1xyr93QktDkM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'YRZuz1Eomgjiy1hQ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JZfyfr2ryxiZJq1Y", "groupMaxMember": 99, "name": "60otgNXqDd9QAXjZ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'k84hgFNEJO1WMk6z' \
    --configurationCode 'peooY8hzAgbjm62t' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "UEuITwFtZF8sNEFS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4417960306287858}, {"ruleAttribute": "1j1izeLpsemxI8wL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01246664639651962}, {"ruleAttribute": "aiZaUvBmGGDDTXEp", "ruleCriteria": "MINIMUM", "ruleValue": 0.8601720865679799}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'CwzgEW9AyUhOrUH3' \
    --configurationCode 'WeZtV7rFSFYKM2lz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'L0mriALuNlLpiFJp' \
    --groupName 'KExZ809qEv4pTDM5' \
    --groupRegion 'hdaxwe4FcTirdx3S' \
    --limit '45' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'qMJ92NCnrFmj1fwH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Kjpl7pm2lXPNEC44' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'x9LE3kyC29xrokDv' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '72' \
    --order 'WU81mDJ9c65xpPmM' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "S4fokjBmTBDutGfN", "memberRolePermissions": [{"action": 21, "resourceName": "M53GufkmIONFopjC"}, {"action": 42, "resourceName": "OVpFw3AX71bEFv5X"}, {"action": 75, "resourceName": "3ehMkybQOzUtn5Pu"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'UUaIcKzX7hTdqJIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'z89loEZZKxjTaQPH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Kb5cM8QBNArijPO3' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "M9PX47OuzWax3ggt"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'h7Gt0YKV5adlv5kW' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 74, "resourceName": "suQ35lD7x4TXW4un"}, {"action": 91, "resourceName": "jntQDLHzZo6yR4mq"}, {"action": 4, "resourceName": "y3brb6hvSSw2eXh3"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'Hlet17G5wyHCy8QE' \
    --groupRegion 'AdoReFc3AfNjiUdQ' \
    --limit '61' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "tTqe9EHFmFiBIKYH", "customAttributes": {"Kz5T88lCjIuLTY9j": {}, "rOmLbAUgV1tUvilU": {}, "puzkeM8UEokNHHsQ": {}}, "groupDescription": "qxDggqmDx3udf7H6", "groupIcon": "fmBJO0TnSWd6VptX", "groupMaxMember": 66, "groupName": "P14UauD39Vc5ogOO", "groupRegion": "BfAn17WaHX4TQGIp", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "cQBy7QXik7pb4ps8", "ruleDetail": [{"ruleAttribute": "Bpgfe0MnpS0xZQa0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8947526947888255}, {"ruleAttribute": "ZVp3CP1PCghA5lIZ", "ruleCriteria": "EQUAL", "ruleValue": 0.6614239436691408}, {"ruleAttribute": "8WNSkV7JxBnulZ16", "ruleCriteria": "EQUAL", "ruleValue": 0.6587112365373892}]}, {"allowedAction": "ai7eBlT3e1ojTPDa", "ruleDetail": [{"ruleAttribute": "21nnWhoFf0KQRiri", "ruleCriteria": "MINIMUM", "ruleValue": 0.24520712268379496}, {"ruleAttribute": "Z3vyKN28Ny3DT1vl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5593241821068227}, {"ruleAttribute": "yQIK8DEZVGanS6Di", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3212785979856507}]}, {"allowedAction": "CmuCEVFpHzi5cKOd", "ruleDetail": [{"ruleAttribute": "ReSYhfb3TEdbHjVA", "ruleCriteria": "MINIMUM", "ruleValue": 0.7960574795161639}, {"ruleAttribute": "ROl2oEqVfYPDSumw", "ruleCriteria": "EQUAL", "ruleValue": 0.886519254803743}, {"ruleAttribute": "8OfOPwlBBzJNUDHe", "ruleCriteria": "MINIMUM", "ruleValue": 0.238677160135099}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'CrYovf8YuKYezuEA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Fu7ZVF4sNSdb3YBZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DxzbUUffmn6hbnWE", "groupIcon": "m1aec1pwAlB5fHWV", "groupName": "YfMWw0LKcdigVH42", "groupRegion": "in495rfrtseXjo1m", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'psKcYwnCSnEv4D2J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'BinED8rW63BY5v69' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "fBIAsG507aUsnhtj", "groupIcon": "MbTU1Dt3Y4Kq5Fq2", "groupName": "djtFIWA2zh5uSZHj", "groupRegion": "eqfiXy4KuLHq7LoR", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'ucswgtHIhJKX9d2m' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"fbd2qM9rWCgyUYqg": {}, "1mbx138C6DCQQ3mx": {}, "i2C4Klsr6ImxpgZc": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'sGRRWhTyWtmHtQWQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'y65bbeWe5ioafGQN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'kCSFEHWZL1UjaTSz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'gDFUSOqzubjtv4QD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '937RIRdXDVTVTjk7' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'DUNRoUw8IbEr1Yc8' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '11' \
    --order 'q8z2N4eUaJn07Ge2' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'Bx52NCAaHRIhHPxD' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"POm5DlDyOaYjHwXu": {}, "2jzSD9TYUtkhBUTz": {}, "Ius8kQxHkSyIeMYw": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'da8cLCPoHcOTlAwx' \
    --groupId 'sOoPKf65DC4ovmJK' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "QD9zWhPFv0Iar7D8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9830322902826671}, {"ruleAttribute": "KZ5Rd5u7RgJtzfJP", "ruleCriteria": "EQUAL", "ruleValue": 0.3599014137702876}, {"ruleAttribute": "QIYXoixwjI3arzDK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8737742405646163}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'RdnAGZlxMnD7B8W7' \
    --groupId 'W9Q12Um18gsnrTbZ' \
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
    --limit '66' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'D2SuVldrvNy4VBAf' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ynJRnPNQO5BCxxqG"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'd3wDKF35vCcKSzs0' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "vJUqeIJzwiiK6meg"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SbxtGjlF3y44KN14' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PCFG5C7wpPHZYbtL' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '04n37DFltS5LCrTg' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9fmYWNujqaQEF18p' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gh3iFRFAKwn7uNVZ' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["FRhfcglxKK0cM1qY", "18qUNopuyaf83r1x", "AzqwKy1Vhxcfau54"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 's5kmrGQ0YC31T4FB' \
    --limit '83' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'q1pRPWhtZbDWrBOS' \
    --namespace $AB_NAMESPACE \
    --userId 'Q0l4wLq1zUwhJ4qX' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "arvzVEDMWLdVgBFZ", "customAttributes": {"UgWrJa5bhpq7uJ75": {}, "Hym7EQXyOl2Tsr1d": {}, "N4TTPPzVYQGNP2Qz": {}}, "groupDescription": "uTixkFD0jdAXFz7J", "groupIcon": "Ey55WJk8bdIt1B0V", "groupMaxMember": 11, "groupName": "rspRC3JPWZFs9kAz", "groupRegion": "Dc8fDlwl6CLUcGh1", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "ScROlZEqyJrxm9Kn", "ruleDetail": [{"ruleAttribute": "Y4mLkEOC3Y1z6APU", "ruleCriteria": "EQUAL", "ruleValue": 0.3561033258943864}, {"ruleAttribute": "QPy4ZDfzZP9PVZjs", "ruleCriteria": "EQUAL", "ruleValue": 0.47246331308560696}, {"ruleAttribute": "uHxQagdJHaogxC8o", "ruleCriteria": "MINIMUM", "ruleValue": 0.43719288242761345}]}, {"allowedAction": "oj22oXA1HTwVnvQ2", "ruleDetail": [{"ruleAttribute": "Df58gV2lLJOafnux", "ruleCriteria": "MAXIMUM", "ruleValue": 0.04683777440939685}, {"ruleAttribute": "Ba5nTizGQJcDxkZQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.16764677213463264}, {"ruleAttribute": "XHFzpoTNaMY48qmO", "ruleCriteria": "EQUAL", "ruleValue": 0.09313100277193198}]}, {"allowedAction": "qaGSIsbSCBZ6whCt", "ruleDetail": [{"ruleAttribute": "KjcUCwDkdX1RC73E", "ruleCriteria": "MINIMUM", "ruleValue": 0.8440380392889962}, {"ruleAttribute": "pxKxcr8jpmtGum8U", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14258716137566696}, {"ruleAttribute": "4YxpBmoEVsh85Xjx", "ruleCriteria": "MINIMUM", "ruleValue": 0.865152358070508}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["DldaZd0PsnZPmBeK", "3NeY5hUXjmZVSsgl", "eNZ7lKGiYeSgKLsp"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'qOpEQStxJUYm1uAj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QvCelsy0Kq3lwYn8", "groupIcon": "I4yNVD8zkQ9tprq1", "groupName": "xNTUicEBHPQpPsIU", "groupRegion": "mYZ4dag902ueOGFg", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'D0sl0aIHF1B9gq9f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'XZjfWh4PKL7WhHP8' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Cr3CqFay99PK59iw", "groupIcon": "bVXxdI358Ox1wflE", "groupName": "I37cgU4CYRjzApN6", "groupRegion": "HmzjWwzrf86ojYvO", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '7Nepyywu3OUDxX5o' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"7Rj843h0Hvnmwsx6": {}, "QoeT4DnLYSaGDDsU": {}, "X2ejaKOloaMhUFFI": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'aJmHUJvADKx6vxZI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'uC7ZIFRByZHwTmBN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'LkALoEhD04bvEQIf' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '40LHe9902ETVACDt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '4dz8byk9qj6coQQ0' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'SQQ97WRAN8oODOsJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'DaHV1KbGFKqozwsz' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"wurdz9M1blUOuJFH": {}, "voh1Wktt9sDRbK0Z": {}, "LlGoKWV7g2mzoyix": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'hDAt94BYTHPJrUo2' \
    --groupId 'Wdf2jOoin8I61OSx' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6SFhGD9bGI8Fa6uv", "ruleCriteria": "MINIMUM", "ruleValue": 0.6562134594775029}, {"ruleAttribute": "SNGnrgI5czRijMbW", "ruleCriteria": "EQUAL", "ruleValue": 0.732264905495161}, {"ruleAttribute": "0M3IGUk0dK1VuWWS", "ruleCriteria": "EQUAL", "ruleValue": 0.6032995172313749}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'jWCwdOoGTMm7Jy1W' \
    --groupId 'YWtsCHSnUosGIBbS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'wVJQdAqHbn0eEh0r' \
    --memberRoleId 'XjYWbIpNqUsSrA8I' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "u1kVwELKek3hNUCm"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'gsx0FLo9QS3rJ9Cn' \
    --memberRoleId 'Y3lJVCAVItj7AgbL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "RLZ4q9JfMVS1K09F"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '1R299bOdnkggOszU' \
    --namespace $AB_NAMESPACE \
    --userId 'VZLKmsC5tIR0Qzir' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '792p4YJ0uK84JgCQ' \
    --namespace $AB_NAMESPACE \
    --userId '3PN0PvDfLLHBZYa2' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'XpGLnigtgaLwdYPZ' \
    --namespace $AB_NAMESPACE \
    --userId 'eIf72lfAhSlrPcaf' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Gl10mfyyGd5VGlss' \
    --namespace $AB_NAMESPACE \
    --userId 'oHx0mbHnGM1UVXzP' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'wpbQ9xeQ1oPvTN7C' \
    --namespace $AB_NAMESPACE \
    --userId 'ioxa01BsxdSjcMUp' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'arFgyrLOh4LmQn7s' \
    --namespace $AB_NAMESPACE \
    --userId 'U0kvgri9WUiLH4Wh' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE