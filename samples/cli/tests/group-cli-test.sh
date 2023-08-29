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
    --limit '36' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "juJPUFuU0lVe5Z0z", "description": "5jcqsn8hGccA71B1", "globalRules": [{"allowedAction": "NznrTTvtTx66Akn7", "ruleDetail": [{"ruleAttribute": "2K1xiHJlqM3OCbHy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9838295504840706}, {"ruleAttribute": "3sJXgBqBO1T3xQG9", "ruleCriteria": "EQUAL", "ruleValue": 0.7543283277319167}, {"ruleAttribute": "8VCT57COAqoNHLcV", "ruleCriteria": "MINIMUM", "ruleValue": 0.9085627933183769}]}, {"allowedAction": "yAgO62fv7Ukw2eJx", "ruleDetail": [{"ruleAttribute": "vPVPMeY4DTJY8gUd", "ruleCriteria": "MINIMUM", "ruleValue": 0.05886211864106927}, {"ruleAttribute": "CIvyFjkXT0ofiuyg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.56947686308005}, {"ruleAttribute": "zbgonx6e6Ibulpht", "ruleCriteria": "MINIMUM", "ruleValue": 0.6461510167875582}]}, {"allowedAction": "J2q4t5lV5THxS0eJ", "ruleDetail": [{"ruleAttribute": "8AGGHgYf3XJOFE26", "ruleCriteria": "MINIMUM", "ruleValue": 0.03579277093337163}, {"ruleAttribute": "XrifDyZlGis9A687", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22622595727523043}, {"ruleAttribute": "uJZKtf53NqUyUeID", "ruleCriteria": "EQUAL", "ruleValue": 0.42753667213681545}]}], "groupAdminRoleId": "DkTuDA3YQMLcddfL", "groupMaxMember": 54, "groupMemberRoleId": "Fd5nfi2K9Hs3iCeF", "name": "hgBG2yDuIWymK8nC"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '3y9HS13KzYjTiaHR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'SoLKPI2Pnli2NfUX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Sb3PpLCl8HOCfJKR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "E4rxvVJ645Mh01ad", "groupMaxMember": 10, "name": "ZCHBoeOTUC1x3x2c"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'uTWUp6qkg56Rkbow' \
    --configurationCode 'SqCN09YhJVklXRTU' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "R2mQFXsfyeJOrL6m", "ruleCriteria": "MINIMUM", "ruleValue": 0.18466067768649408}, {"ruleAttribute": "XnQgDW6qMIEwJZYq", "ruleCriteria": "EQUAL", "ruleValue": 0.014598734023960058}, {"ruleAttribute": "Epjh7lsVcmLigNGc", "ruleCriteria": "MINIMUM", "ruleValue": 0.06976762043184437}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ME1Unlf7xV9pXCtx' \
    --configurationCode 'xZj794USRlU64llP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'WNHT7rlkwdJIeN59' \
    --groupName 'niaBlOCxGLz6eX78' \
    --groupRegion 'VKn6Nluo0pMStgZy' \
    --limit '6' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'jYRDugygverLS6gQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Pz5yRqVD6gZbpZ6h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'lVdFLpNPCpF8KeGk' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '15' \
    --order 'XhbpFVzsKGztSEJy' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "X1gF0cxqnr6v8rBL", "memberRolePermissions": [{"action": 67, "resourceName": "8cN6MA5Y9kyoa4Yb"}, {"action": 12, "resourceName": "f02SU1C3s6rV5C1D"}, {"action": 38, "resourceName": "nTYkpU7bhvhrEjtd"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '1y6itBAjz3X4OXbC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Uk7CX98BSjD1whtT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'Z5h821PnOkkIgVUL' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "be7ghKFmtK0mvthh"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'HpR9ILjWD2DBnPPB' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 15, "resourceName": "yv5RJcZmT2QC6M3a"}, {"action": 81, "resourceName": "ROFgt69rlogj7Loa"}, {"action": 66, "resourceName": "8zCBuW9gS7lT9Qvz"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '2kZq5toR3llq5nPF' \
    --groupRegion 'ALkqc6oQenEUjobr' \
    --limit '41' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "2zt4kzGRIM2vE4TT", "customAttributes": {"mS5ArVipTaBidftW": {}, "jZVSb3UJxk485Gno": {}, "bg5fwn0nODpkz8WU": {}}, "groupDescription": "3MOtM0AxqmGCPgZg", "groupIcon": "i0XchNOtewFlfZ6d", "groupMaxMember": 7, "groupName": "kTr3yfYs6iDQ2llH", "groupRegion": "KaIaGkEzSw1wvO3G", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "APhzrAYwY2Tk6S3j", "ruleDetail": [{"ruleAttribute": "7rpdkYwCmNFM9wz2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4158689217031394}, {"ruleAttribute": "GGmgdC7hCPjcqjiR", "ruleCriteria": "MINIMUM", "ruleValue": 0.41093436392152405}, {"ruleAttribute": "zZXqewd1YFIDbQCz", "ruleCriteria": "MINIMUM", "ruleValue": 0.5058499836953189}]}, {"allowedAction": "vfK4zScUvneil3io", "ruleDetail": [{"ruleAttribute": "i0oEfofFQi0G1kvy", "ruleCriteria": "MINIMUM", "ruleValue": 0.7238512751813932}, {"ruleAttribute": "whrhmJByOOa6H5um", "ruleCriteria": "EQUAL", "ruleValue": 0.6541205648351814}, {"ruleAttribute": "jZy0JiZFhLXNPeiv", "ruleCriteria": "EQUAL", "ruleValue": 0.020276411418277962}]}, {"allowedAction": "ni29wLBQI0XSkhqr", "ruleDetail": [{"ruleAttribute": "6PxMuwcbbwQ66q5G", "ruleCriteria": "EQUAL", "ruleValue": 0.4160719598845867}, {"ruleAttribute": "HDUELgdoleh6BIi2", "ruleCriteria": "EQUAL", "ruleValue": 0.2622775834088539}, {"ruleAttribute": "YwssHyePY37TVH1b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21443391204378548}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'Y1SUB0Mc0YGd7e6F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '78sbC9sKOZm0KvUv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "9iDlMQwRpiJ0hoVS", "groupIcon": "QuK0EqH9Vs1xQg5J", "groupName": "PP5D7d5YHd7LpLnU", "groupRegion": "Kb5X2KHJKJBdjl4P", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'u16JcPVNK53SLHFI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '5kAThTTAOVfl3jiP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "p6XEBZzCwYPY1NjQ", "groupIcon": "Ht3cKahR9DHQtDxa", "groupName": "EpVcXsIM1e6bxecR", "groupRegion": "TMH8DXHu7rcN7yVD", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'HqFg4oMw3M5GlXDK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Syg7y0y92QWpy2xm": {}, "AWfS1NuowarsVSWr": {}, "jHIxOg4pS5DEpVxC": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '2GAXcsd9R2yCzrxx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '9IhB6J2MfFNls0jU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '7SsVjIexOKKDDcCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '6ZsjoIeVPVYUfAKJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'wUXVVV5EyOx7PFe8' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'tQT0440FTF5ZdbU5' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '21' \
    --order 'N6KVWNxHD9qd3vVC' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '40PzS8VNIaBy0xad' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"O9KdNxpjKwSEoNEg": {}, "EumUC4rniMIzczNE": {}, "pvBduiftJzEgrXqx": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'JiXf48HVb0bdDARu' \
    --groupId 'iU2OCIjyOOoiRmRM' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "wWar0q4Mpw5uZPLM", "ruleCriteria": "EQUAL", "ruleValue": 0.046339272945198795}, {"ruleAttribute": "opb5WLpZ96fHmWa0", "ruleCriteria": "MINIMUM", "ruleValue": 0.3600819169016106}, {"ruleAttribute": "DylJj1iCr70UMKzY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1771451120413272}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'AaMMYL80YZRxmvFh' \
    --groupId 'mHJQ8YYD69H9k4VY' \
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
    --limit '87' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'QMSlJ2iZrcKPCGHk' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "u2NwEGyzpGg3vvYN"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'ja7FNRdRUbUcbH8I' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fzjDekGPdDpJcouz"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3ohAfJl4OHt5NVKp' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'j4kyUAXf3Bz43VwF' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '20JG2gtvgbcY2sg1' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8r9XWJymFxOt2FHV' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eDNivOFeBbEPaedm' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["vNJFprRCF7OIemAl", "VvwzbJwfx1O440cu", "kkiu9q2NVcaUft3H"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId '2Wm2cjQChM9sQc3g' \
    --limit '64' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'UjtjAWWLQGHH2Psu' \
    --namespace $AB_NAMESPACE \
    --userId 'FwCvcBFBQ1WgWPff' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "hlVPYIni6axxoAXx", "customAttributes": {"N5Y6CTmhGrAZhO2W": {}, "izCUvVqw6T4Ac8EP": {}, "Vsv1nIofwKHLMbrh": {}}, "groupDescription": "iF1feM9Rz4CGtAU0", "groupIcon": "x8hyaCW5RNLhFEuU", "groupMaxMember": 37, "groupName": "zzEAkfI8Hn8LUDsf", "groupRegion": "Vsw60AOCtjlvOstf", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "NFFLPyUCxlRJYtN8", "ruleDetail": [{"ruleAttribute": "Ay3oPulhCiLssQBX", "ruleCriteria": "EQUAL", "ruleValue": 0.5052836796653186}, {"ruleAttribute": "1wAk0De3rM3YD1eK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6799778721148471}, {"ruleAttribute": "OPpKpaTAbP77KFAI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42471200897310635}]}, {"allowedAction": "Xr7yRQBsW48YO9Hf", "ruleDetail": [{"ruleAttribute": "P7LnTtKucrg5x5Wk", "ruleCriteria": "MINIMUM", "ruleValue": 0.1467535923033063}, {"ruleAttribute": "iDM25nnFskqQFVvm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9789093960548759}, {"ruleAttribute": "UIOu0OsODounNsSI", "ruleCriteria": "EQUAL", "ruleValue": 0.44739188326602797}]}, {"allowedAction": "dijrmy3vfQiWQVU7", "ruleDetail": [{"ruleAttribute": "lF77jyWV8GPIRDBa", "ruleCriteria": "EQUAL", "ruleValue": 0.42168215385727637}, {"ruleAttribute": "703bXjtyXD3dVfV9", "ruleCriteria": "MINIMUM", "ruleValue": 0.16783686375295226}, {"ruleAttribute": "K3zgBTWuXFEt4YLb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35347624860671256}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["MJ535Lxs1ga5ioGR", "h1Gy9cUrOIIMVRx4", "fnloYbYQ9ZFx9j9N"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'tQUNXHU0kSGc4xHj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QDhOeqxLUO0BoyfL", "groupIcon": "eaI8A7cbKoqm9uQV", "groupName": "4vwXAc6WHPMwPwtW", "groupRegion": "YyoCo17K5tYc7SB3", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'HNy8glOnwWUvn2SC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Ff0vfFAjMMZLNy9E' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "LO2EYJTj4eND3NGg", "groupIcon": "jg8Mr6y0DvEuRNUz", "groupName": "kawMxvmTObxm79ex", "groupRegion": "zonOuHitHO0G1qZW", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'N5Ks0uIQe4qK72j1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gymEV6WfQMIVbkIx": {}, "xMS5q1o4MIG3bFAn": {}, "DuKjYJqIGkLHKVGJ": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '6O1KJj4JaOerFTGt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '0jyFku9daMisXQuU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'uQ5FpRjzyiBBoq2V' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'marnclaq0AhaCM3m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'MzRVWgBz3faiR2WC' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'hpfXb5vEuT11Imcx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'l96wz6wV4kzJzFwM' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"w9tNNryeZTLTthtZ": {}, "x9CF0pEe5tpORDiM": {}, "Cg4kRacbGWbupePl": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '4nsELVqPNCyXoktW' \
    --groupId 'S5GiRnKQlIqD83MR' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "woOIQLbuHEZGNqDv", "ruleCriteria": "MINIMUM", "ruleValue": 0.21974028297001635}, {"ruleAttribute": "7NAaqZiRHNGr8XV1", "ruleCriteria": "EQUAL", "ruleValue": 0.6111461094664432}, {"ruleAttribute": "wj96s3nRP4M71KxR", "ruleCriteria": "EQUAL", "ruleValue": 0.7389635290724716}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '3DLV5pMOUdpICHSF' \
    --groupId 'zEYDZZhc1fiqPCyn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'PSb7avUxDEkBPs8M' \
    --memberRoleId '87RbToin5gg1F5hL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EB5Uk5lMR2A77vXq"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'MOkPf25aQwGrYRIv' \
    --memberRoleId 'uyiiZAvy0rwV8Fol' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "lctTTyNcy5ahEMr5"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'TiGoewVkh6ydUUUX' \
    --namespace $AB_NAMESPACE \
    --userId 'OgkL2khNUdtqrXzN' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '4zZaGozDvXioP4zn' \
    --namespace $AB_NAMESPACE \
    --userId 'vw4vGGRJBGsJcXBB' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'UgJ8SqL9N7oK22Tj' \
    --namespace $AB_NAMESPACE \
    --userId 'KO7wSbU8Gl6XkbS1' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'r4y9xha1dCpdRsn1' \
    --namespace $AB_NAMESPACE \
    --userId 'iIrDAfqBDwvc1vSN' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'I51qV0vilAwO5pxe' \
    --namespace $AB_NAMESPACE \
    --userId 'afxkHM16maG3hiwP' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'ctnEQdghqrA9i8C3' \
    --namespace $AB_NAMESPACE \
    --userId 'bV8nnNYOC8eD6iU0' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE