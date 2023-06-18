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
    --limit '23' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "1op74qCsiWEQ4Zio", "description": "yHiEaNOBRZh7jP1Z", "globalRules": [{"allowedAction": "OKqxmPrYMIaYvYES", "ruleDetail": [{"ruleAttribute": "5yO34k04kTWULCg6", "ruleCriteria": "EQUAL", "ruleValue": 0.9800197014765033}, {"ruleAttribute": "GwZbzFkYN0BnJu2L", "ruleCriteria": "EQUAL", "ruleValue": 0.3417526567687711}, {"ruleAttribute": "TqJCggUudx7w7lMp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6930845596992822}]}, {"allowedAction": "09GBVu0fhRU2I3gB", "ruleDetail": [{"ruleAttribute": "uu3DmBy1IxrrNe2d", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6295347552407371}, {"ruleAttribute": "hxb3uK44Bgn1RRk9", "ruleCriteria": "MINIMUM", "ruleValue": 0.7373443483654255}, {"ruleAttribute": "tZciLmMdD9JED8x1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8575454758520867}]}, {"allowedAction": "l0ATt2kG7pYa3NtC", "ruleDetail": [{"ruleAttribute": "pfRmjRMaFEgrzWs8", "ruleCriteria": "MINIMUM", "ruleValue": 0.7557464779324837}, {"ruleAttribute": "TVjmZ3V8gJwtTaYr", "ruleCriteria": "EQUAL", "ruleValue": 0.4476064822042233}, {"ruleAttribute": "kFbQHsCI7v7gdOCV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.950247947014786}]}], "groupAdminRoleId": "6iXjjKbpb7QbO9KR", "groupMaxMember": 64, "groupMemberRoleId": "QI3OAtdxnpddakUO", "name": "sb8XI6zufnKnxdyh"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '5pxA80BG7Hf77er7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'zA2tpPCrM3z8K2CZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'd4k1EO8G6258Ek5F' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "v6kbTUPbGOuZIew6", "groupMaxMember": 78, "name": "O4DxGjSJPeO0iKm2"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '08PCdrhe4Bz157aL' \
    --configurationCode '32SraEWLl1KGu9zP' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Dc4BgEOcSnzuMu4A", "ruleCriteria": "MINIMUM", "ruleValue": 0.9232256599329393}, {"ruleAttribute": "61vEo85oX0rXKGyd", "ruleCriteria": "MINIMUM", "ruleValue": 0.35760833941630366}, {"ruleAttribute": "mfVOMqwdFXvhsyvZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.913761363053898}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '5snUoyeuhxfdc94N' \
    --configurationCode 'ETTuEoMDOX5TfxqL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'qy9YTaMAOzisicYi' \
    --groupName 'B29RF7lhaO63DNPm' \
    --groupRegion 'ZLAXzOBpkuhVTI8a' \
    --limit '86' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'f3M6Bx9cpwurqDac' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'umSgaSB13VgaJSZD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'p2hel45yqfDgFpso' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '4' \
    --order 'uymw6DKVbuQXa6GO' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "y0ibRpWheeKu4U8n", "memberRolePermissions": [{"action": 73, "resourceName": "N6ohmVI1pnt2oGiy"}, {"action": 63, "resourceName": "jPwRyxCFEvVRJytg"}, {"action": 14, "resourceName": "XLsEO4bZUvMUBdqk"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'ppX8gdZs7pWgPb0n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'D5HFyMHwyQsdWKIt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'aP7RFryV7Enll0mQ' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "er5xG5GsQOTEaWIK"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'N6Q2IlK97RPfXXDa' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 52, "resourceName": "5pBtZ4BUE9TCSrSY"}, {"action": 28, "resourceName": "fHzH5brax2z5gyFm"}, {"action": 57, "resourceName": "lc6SoqBjosKwR2Bo"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'g108rCkJRqfkMZJn' \
    --groupRegion 'W38Tv5CzvOjvBwAm' \
    --limit '6' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "2pzRn3sDN9Nayrqu", "customAttributes": {"L7Dm2wdHGB0FwpAv": {}, "20wuICZWzAH5M76u": {}, "kgKOYhZqrEjgwH63": {}}, "groupDescription": "WGVldQ1zPGBIT5hF", "groupIcon": "QG0Ede6j4tthSVmT", "groupMaxMember": 22, "groupName": "P38bcFmRXeZnfSTd", "groupRegion": "j90xTuZxdp1CyePD", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "x96nAmlt5aRZ3oK7", "ruleDetail": [{"ruleAttribute": "FBlPpre3xBNLfdQe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9494802044377714}, {"ruleAttribute": "SWNFI411rW6d7TeK", "ruleCriteria": "EQUAL", "ruleValue": 0.7609183620703371}, {"ruleAttribute": "37OLRsPib52WkkHZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9050487132236414}]}, {"allowedAction": "4wvWUF2h3UQvwwLX", "ruleDetail": [{"ruleAttribute": "ajZvxoCIRLpRigEy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09902202397859294}, {"ruleAttribute": "Lvpc92GWbnUbNPMs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6619634911295095}, {"ruleAttribute": "RRQ6oB9OWW0QFwHa", "ruleCriteria": "EQUAL", "ruleValue": 0.854502659198598}]}, {"allowedAction": "eGjwCLH1slNqYWYz", "ruleDetail": [{"ruleAttribute": "78IENIBJtQNDDqUG", "ruleCriteria": "EQUAL", "ruleValue": 0.29674865157087627}, {"ruleAttribute": "GdNyRrSWjuKNwdhx", "ruleCriteria": "EQUAL", "ruleValue": 0.12778554357408467}, {"ruleAttribute": "xB08NIEZh2tPbsAc", "ruleCriteria": "MINIMUM", "ruleValue": 0.050374172042254806}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'o7uuUDngFDuzEabM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'IXh9uwqt5xn8oIUY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "RLrDzXvNnsHqPBP4", "groupIcon": "cHJbMcVWwJd202qb", "groupName": "nqE0UsWHYYNYA0MS", "groupRegion": "B5Cagd5QPT1WuKVw", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'sGMWMSdJap8DVufB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'dZ5Cgtl9QRVk2nfR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "0943Yanl7oFTyhNu", "groupIcon": "C9YgfsHlKM16di6e", "groupName": "tpEOnERjaGhdUzxS", "groupRegion": "n6bSTDjIoREQAW8h", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'a13M69aY7Lj8sj9u' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ny9g0Fth4gwcKtaY": {}, "FCz0o5dvtZ4BWgSO": {}, "2b4RudWvSZqopIHZ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'd8XolfcY7SdBzVFH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ETiKB26Jn2UvswlO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'lLBd1vKzDPEB2gzF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'z8oUhJbqJqBNX6Qw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'twoCaJJ3NyeUFsAa' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '3Qwy8jYWlxdbK0Xa' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '99' \
    --order 'm3IONNyj90XskHE4' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'JXfmJ4HI6yj8vBRz' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"jwT99gcC7WsDJRaT": {}, "KDE15aMaAVoITMdE": {}, "ERIUpHr8DpZcpF7z": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'AisG0axgehMjj8JP' \
    --groupId 'Jm0pdrWcItqXt7CK' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "rezGohXlUDSOiV11", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9370716097937906}, {"ruleAttribute": "qvJMoqkBkK82YL0S", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6262725596813771}, {"ruleAttribute": "SaClxaC7Xn1arWGg", "ruleCriteria": "EQUAL", "ruleValue": 0.2523783601005204}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'MyWS4JDYJ8EXqVtW' \
    --groupId 'M497ioPvzfBLo6bd' \
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
    --offset '73' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'KnBq0PuvE8pJkWa7' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "zigwHg6OwIm1SJ7G"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'FWKXNLRpSJhsiMCO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "aw2zjWHgcdX0it9H"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8RgPdqJPmZVIs9y8' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YXyH7Yoq1LBlU1ld' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hwrdpw2LMrVMCOCi' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mVqs4lPxXWC6wjZv' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fdObxd1k1juyTq4A' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["KG0jiI3DRk9YX2sQ", "pLcKVlF3GUWz3VyD", "t90SOsn3aG4TIz4v"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'qyU9Fg611cfPnTkQ' \
    --limit '32' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '0q7g7GwIUyvBPrFg' \
    --namespace $AB_NAMESPACE \
    --userId 'gOnKkdSd5mtEj7DA' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "wI7Y65c834v32kYY", "customAttributes": {"QiymaJYniDKrvaHx": {}, "PNGz9b3b6pqV3alc": {}, "0LH3woG5RIvzTi7c": {}}, "groupDescription": "ArTUXyVD4Q0UcFi0", "groupIcon": "knrsXSYVBgGED3s5", "groupMaxMember": 65, "groupName": "0futF8e91BIZ2WMN", "groupRegion": "VfJOkRpyDrD0eASB", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Ahb3eKWq4E46j3Ne", "ruleDetail": [{"ruleAttribute": "PajfGlVMft4zJMIi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05338481699318798}, {"ruleAttribute": "HtZ2XA9vCmt6p0YO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8876298681724031}, {"ruleAttribute": "3xMvyxwPPRY8WD70", "ruleCriteria": "EQUAL", "ruleValue": 0.0486227256784707}]}, {"allowedAction": "ILotGT69pEiSfqZ8", "ruleDetail": [{"ruleAttribute": "xbYmpvidhrm4ZbVK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14201623492538107}, {"ruleAttribute": "FLmSThwDmxXUnGdI", "ruleCriteria": "MINIMUM", "ruleValue": 0.27622714348637767}, {"ruleAttribute": "2wXW51lwkC3BU1l0", "ruleCriteria": "EQUAL", "ruleValue": 0.6650265430605488}]}, {"allowedAction": "Jex7fNwViPFWWENB", "ruleDetail": [{"ruleAttribute": "md3kxT6ezGiHwsAw", "ruleCriteria": "MINIMUM", "ruleValue": 0.9022790292288956}, {"ruleAttribute": "mbVJOv4Xo1mZWXO4", "ruleCriteria": "MINIMUM", "ruleValue": 0.4906472297997614}, {"ruleAttribute": "Cxp6NtmDOUeBVXqW", "ruleCriteria": "MINIMUM", "ruleValue": 0.976686984619746}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["NZWSWAyOsfT8ntQ4", "vg3mvpRgEOv2YSyV", "Z1o7f0aXFYX1igLb"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'BmZnhMtfGf4mpnPM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BcR2O9SnYTQWqDPX", "groupIcon": "rPTjv3jcAvZSJYUw", "groupName": "aErpHdaTxScqj62W", "groupRegion": "gRlAdGjeK3n3swk7", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'M5t4GRl0Q1G411Vd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'VdddAbQ6gMnfGrLr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "TMXgmFjMemHfFbhq", "groupIcon": "VKUvgTdMkfVtDTBf", "groupName": "l6ME2RStb0zzF5G6", "groupRegion": "oUSmRlTOki7e0kpG", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '5CpIQlKiL6bBcVAK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"mVF5q1ArmJ1I1CUo": {}, "tAiIVjZan30zUXcO": {}, "SjhPehSdlR88KHkk": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'rEBpP2I5PhMcyDRT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'DW9WFfY86ndutyd6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'Kz7YptgZY4bQkUHv' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'qOP03J1Vb94zcIef' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'iyAcl84SD3W5ufWO' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'v07F6Ljihk32vvMN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'o4dytT4ypTFXBPKK' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"k2iiNNw4115DoQWU": {}, "2BVuOs6HyFGCj75C": {}, "6bUvLDr78Hp2KKje": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'fT7iEdr8mNon3xm9' \
    --groupId '8adHdnE9JxhjYNaR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "jzV9RTeZFisUdCuB", "ruleCriteria": "EQUAL", "ruleValue": 0.2262079938038668}, {"ruleAttribute": "XRlya67eBekJycY2", "ruleCriteria": "MINIMUM", "ruleValue": 0.5321373367141661}, {"ruleAttribute": "rV3o6IAihPNZ7tUQ", "ruleCriteria": "EQUAL", "ruleValue": 0.971673959167104}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'iGLTZETWxwU4OqHg' \
    --groupId 'SSq3gJ4BNR7RgvvV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '21jYyWYFjLeQRq0x' \
    --memberRoleId 'RZKkfip8dvLxLMAG' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "SjJEwD8chpBP4Lmi"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'NBWHlfThTo0x8BMJ' \
    --memberRoleId 'WwB1rT3XgT1nCY0q' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Hv5omBgpN06olwzp"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'V7sVLVW7JEa3Bf1m' \
    --namespace $AB_NAMESPACE \
    --userId 'XxcUlkX274EXVVeK' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'eo2UUBTe0FgTFgnp' \
    --namespace $AB_NAMESPACE \
    --userId 'QOzttI0EpOIxMCXJ' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'l2P9MhJlp9AAjySm' \
    --namespace $AB_NAMESPACE \
    --userId 'ywbLvu26wEWI8ldz' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'm0gfc3BgYuTSoDji' \
    --namespace $AB_NAMESPACE \
    --userId '5q4b7MDLxzZluTiO' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'VXUZnVAzvJVKP0Zh' \
    --namespace $AB_NAMESPACE \
    --userId '6gfyynrK1oFNhDzn' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'hC1UEdbBMhgMyGkH' \
    --namespace $AB_NAMESPACE \
    --userId 'pENbNP5QTfXeaYNi' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE