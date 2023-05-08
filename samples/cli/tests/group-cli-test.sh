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
    --limit '29' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "p9Gd2AxfBKGnZb5H", "description": "GxYEDff13nJQeGAP", "globalRules": [{"allowedAction": "naIxYNkQmjhyk9e7", "ruleDetail": [{"ruleAttribute": "GxChHtcx5h19Db6k", "ruleCriteria": "MINIMUM", "ruleValue": 0.006892291821107621}, {"ruleAttribute": "weP8aVd7OK882MZm", "ruleCriteria": "EQUAL", "ruleValue": 0.14814019653372879}, {"ruleAttribute": "faEHSuGYwUlNTn32", "ruleCriteria": "EQUAL", "ruleValue": 0.7567956592285312}]}, {"allowedAction": "BumX4kcgyWrl0aEi", "ruleDetail": [{"ruleAttribute": "yN9QcJAXEaWOuxAu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03091753492076632}, {"ruleAttribute": "fnkVmtK0lpMk3dCx", "ruleCriteria": "EQUAL", "ruleValue": 0.9482647072647421}, {"ruleAttribute": "PPa6h8QwJ4J7HZya", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8023894340471284}]}, {"allowedAction": "QNbM1dOdLGRQQS26", "ruleDetail": [{"ruleAttribute": "6cjwQblSdgcTE1ab", "ruleCriteria": "EQUAL", "ruleValue": 0.07326424318667502}, {"ruleAttribute": "hzWdophfRIENgPJU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1808539078546837}, {"ruleAttribute": "pNV9JgTnPMtf4odP", "ruleCriteria": "MINIMUM", "ruleValue": 0.794614585214305}]}], "groupAdminRoleId": "xyDmVC3CyuNGb5ue", "groupMaxMember": 86, "groupMemberRoleId": "VIv2vuYoDDz2MAsu", "name": "sL2bH7NOpfpBua9d"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'uuS9q0hOgbI7KeJP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'TCeIxI2X37mVmk5H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'wpY5vX9bGeSHJOKU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jmw5WvdCs4rnyn7x", "groupMaxMember": 17, "name": "2trMDaOoihDkGRPA"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'aHDwaREPP6CdtkWh' \
    --configurationCode 'eXatI1ijCKvkNTmf' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "BOtkt32nSNUqUqWH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6305668493872527}, {"ruleAttribute": "In8MKNdjHfIXPfUg", "ruleCriteria": "EQUAL", "ruleValue": 0.7877106934073776}, {"ruleAttribute": "4aYerK8FqDsmgS7F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8074295015620715}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Ox7MHThikVYY7EdE' \
    --configurationCode '0Y1COXDdJVz2961a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'O99fGb7CCaGxRVp4' \
    --groupName 'nLd5bvRXRLQisEXZ' \
    --groupRegion 'yeM8IDfGYwUjvWnw' \
    --limit '7' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'sgshRfrpjmpFLTYC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '29BkD3x6dMtw7M9Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'rDzvytKggSixuhLJ' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '72' \
    --order 'Mm1qPqFg7qbsrZlp' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "zX6JXv3QcaLsHMRX", "memberRolePermissions": [{"action": 30, "resourceName": "nLb0uhzkM9UConn7"}, {"action": 97, "resourceName": "cXFK039h122j9Qq6"}, {"action": 31, "resourceName": "ubyRechuWevmPAq5"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'YiGi29mJWsfz9j5t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'YTUiTFjQ8ZQyS7W9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '0sUaiIn117xhcXmv' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "qS5oyXjDpfKix9sN"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '5ifmepDpJuG0N3pR' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 5, "resourceName": "GNFCimk0GMRfP7Xm"}, {"action": 82, "resourceName": "CeOtSfSgVnbOOlhH"}, {"action": 11, "resourceName": "36ZffAg689UZrDpO"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'mW50hUSSbQApFmQ0' \
    --groupRegion 'cFBfHyOcGcDCxSLz' \
    --limit '23' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "bIZ2tsJg9LWFBkoc", "customAttributes": {"V6FuAoSaLxX8ND8h": {}, "ZQCnBBfXe4i5IAwt": {}, "TcbNnO1azNoi7H1c": {}}, "groupDescription": "RpDV4XAei6W78MpD", "groupIcon": "EIxy9cWjll3O3FVV", "groupMaxMember": 65, "groupName": "haRdaXDMvOkbW4Er", "groupRegion": "LhsBkvcuuy8RVjij", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "NV2FQlKsTrbvOBIZ", "ruleDetail": [{"ruleAttribute": "5zFWglplxprm5K06", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5147669186367059}, {"ruleAttribute": "6SQ2JSuz6dfy3IqX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06568650793444353}, {"ruleAttribute": "SBfi0gY5GVpCOX9C", "ruleCriteria": "EQUAL", "ruleValue": 0.5630402700605658}]}, {"allowedAction": "hJMGcgH5GdeLTbnX", "ruleDetail": [{"ruleAttribute": "34fowBJvazL3pc6Q", "ruleCriteria": "MINIMUM", "ruleValue": 0.5296344380823962}, {"ruleAttribute": "CrSSoVv4kgtQSvax", "ruleCriteria": "EQUAL", "ruleValue": 0.8675983058065048}, {"ruleAttribute": "xO0LR8xgV7cbE8LU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.044743175249670086}]}, {"allowedAction": "tbC2Oatkf1DeSUVF", "ruleDetail": [{"ruleAttribute": "gFsIdpVH5OOua8hf", "ruleCriteria": "EQUAL", "ruleValue": 0.6048411997015851}, {"ruleAttribute": "iTAkfs4G1lPVfAtX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.48636344737034254}, {"ruleAttribute": "9JmQvByd76cSJ88T", "ruleCriteria": "EQUAL", "ruleValue": 0.6719831915195034}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '7FOMtDupc4ID0ul1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'xpYhlwM4lmTQVwF2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xrU4biTu9uSAxAGB", "groupIcon": "SxnjMmoEGD8ACQGj", "groupName": "r6VWOL0nX5YtLBbX", "groupRegion": "y2GcNIVXTgQqfYlB", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'GKOw4GkRJzZBLtAN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'BUFHBudAz7Jsq7Ul' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "49peez2qEdSVlkZd", "groupIcon": "2AZzwl9EBAchEjZ4", "groupName": "O6PqCAlkTzoxgr0O", "groupRegion": "8A8fCORPXN94XXsw", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Fyxl8OLP8dgQJbRn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"PGBuehWUotW0F2EW": {}, "8fhJqCtWwu36JKtl": {}, "ApmwX0q4XyJfeGQ2": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'BKA38ZquuDasqVZS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'wvkdPAwDAiQcNmL4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'i5uz9OtVN87r26Dy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '4zzCgH0wnUEdxV2r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '9YxQtrLZFEzqUWkS' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'Nz41LVNrdv2znOWX' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '79' \
    --order 'H83MtsMGrboJusJQ' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'pZwlz3k9Q0vweazm' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Iqcp20094ZM10ukb": {}, "DoeK5bOliqNTZgW4": {}, "ty8J0kNdllKPdiBt": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'OG3CfBMYmN35StJf' \
    --groupId 'NOxF9ZjKqUz6sfDz' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "orWOuNSP86tf256m", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2737147222199311}, {"ruleAttribute": "FcZdFzezcyyntwnF", "ruleCriteria": "EQUAL", "ruleValue": 0.1915076453978397}, {"ruleAttribute": "dO8bj47yEtHRglPk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42145221648378206}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'xemi1XKnRQnkyGuq' \
    --groupId 'JEn4hMX3aY6cmmBr' \
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
    --limit '5' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'i5n2ieOlia0U66ds' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "2fYBcaZbix3GEG7r"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'puYQHqUiuUzjMr1m' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "uxFtoo8E9lziy3TK"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xOrm3lAH7gtf5ZtB' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CeU9bqY6eCi1Gkcd' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HEtv33TbRIHcTvxi' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2UZEVjhHcr4BGkON' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'khXlojAvnWlf5e4O' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["M9pyaoIXKxd7iONx", "NTBM6xABLPORaJJ1", "oxo3VMCXHrboTwyN"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'qZ3R14ZVN8fSKrdK' \
    --limit '61' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'ES7FgqObJDDagWAC' \
    --namespace $AB_NAMESPACE \
    --userId 'ExE69yPxLU5tTzjY' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "xI5idKGCxWl1QbWV", "customAttributes": {"B8e4mogKOeaQGJj9": {}, "d1MIOngBeDlRIcTc": {}, "4CQrhUfvgHTtLqXI": {}}, "groupDescription": "LhfFw5CBgPvIFLrm", "groupIcon": "k04niB3kJ86S5qFb", "groupMaxMember": 0, "groupName": "LPdVR7qXNM4Xu6AG", "groupRegion": "HgPYr8cAd0p8mx5v", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "LQ0JKv5RCgq81Na9", "ruleDetail": [{"ruleAttribute": "81AWAJB7j1g5l9W7", "ruleCriteria": "MINIMUM", "ruleValue": 0.8768839245629395}, {"ruleAttribute": "w8uh4dCsww111oie", "ruleCriteria": "EQUAL", "ruleValue": 0.37096280547059646}, {"ruleAttribute": "T1nN1eqpLLWncPyf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4978322951120948}]}, {"allowedAction": "Ugf4BEdqsJ07JGTd", "ruleDetail": [{"ruleAttribute": "TxjJawT7kMR0T1JK", "ruleCriteria": "EQUAL", "ruleValue": 0.30272565073621205}, {"ruleAttribute": "2kRfRECtzFRSDfAr", "ruleCriteria": "EQUAL", "ruleValue": 0.2474112216705986}, {"ruleAttribute": "XArxGGzbA8PD7RLz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.955553758467257}]}, {"allowedAction": "a0BtNfcJ7ALkEkjO", "ruleDetail": [{"ruleAttribute": "OqxxKJGolqzr9WVh", "ruleCriteria": "EQUAL", "ruleValue": 0.22586467742189498}, {"ruleAttribute": "1o59638ikBDYy2Jp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6280787380636768}, {"ruleAttribute": "8R8dhCts7aJkiKbe", "ruleCriteria": "EQUAL", "ruleValue": 0.8256022574521599}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["8QKpzVH7AlnkKH5u", "lnlPOsKsnEDky9gh", "GXdKTR5aCE0ISCNV"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Q6xkY8lq99k1osW7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "wpzCSTfWAoBMCU57", "groupIcon": "NgVl0hvg8oIaw0zE", "groupName": "B5mUnncLhtXHSZc9", "groupRegion": "F8q8szKvm90WwpBu", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'Bf0GW2LYALAdQjNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'fUFKW93hYMbZNjtK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "nktHjxDHYbgfkJkc", "groupIcon": "dXLETJpVzpYpindy", "groupName": "Xm6fzTrpraG8Irlk", "groupRegion": "hA6XjuDcTimpvh9z", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'ZX67WBo59mWA6c2b' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9JWFxyI8oXXLhoLt": {}, "rCJ3FvcmLXA9fwop": {}, "wdmuvpJXoVnoL5OV": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '8NT2S7TbcOlTLtqZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'KTIHAjKdNSM7lHJa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'NS6r7wIlnlThhbbZ' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'X0YRSmLXVZf4Wj2w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '9ufa4Zlg5FQWI62H' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'jODhJB90cLexdWkK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'BsPXthm68gZ54Uos' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"YTB4T68lLygNOnsG": {}, "vquUqF0bHE21OO88": {}, "EQXqbuwvni5qpm1f": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'PsdUKhmoWaybWWGP' \
    --groupId 'bIsxsq0MQT8m82R4' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "qHzWMUgDyJ0EhUDb", "ruleCriteria": "MINIMUM", "ruleValue": 0.9355224376482173}, {"ruleAttribute": "ig96NzZEMkQwt1sh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7039810149546987}, {"ruleAttribute": "tgBk2oOpI4E5kHc5", "ruleCriteria": "MINIMUM", "ruleValue": 0.3301710986943327}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'C6sc7KQh7mfbzXwe' \
    --groupId '5whhmGkJGKB9qSXG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'MvQGCtfUMIfmY34c' \
    --memberRoleId 'G4gKGzkLuhzaWbZJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nLFA0N23GCwiugzz"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'FUpBgSexvdZq01Bo' \
    --memberRoleId 'CFEtqVSOIcXSsZtb' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "b6zlqe9Z3lC70AG5"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'advgoGCUjRcv7zTk' \
    --namespace $AB_NAMESPACE \
    --userId 'nghqWmKt9CRMUFIr' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'UaOM9dFWrSizXMU7' \
    --namespace $AB_NAMESPACE \
    --userId 'RCtGQ8wuQyehjFhM' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'FCAHmSWE23OzaTjR' \
    --namespace $AB_NAMESPACE \
    --userId 'IprKs9E0CQjgpRjt' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'GGYJGjMnXkhwzRlD' \
    --namespace $AB_NAMESPACE \
    --userId 'ePVZPszuAkORMkbA' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'MC5usPTiInNGflEw' \
    --namespace $AB_NAMESPACE \
    --userId 'n2WAU0GQm967L75K' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '44LtBoX3WoInA6BL' \
    --namespace $AB_NAMESPACE \
    --userId 'xGG7CJpo8Y6icFFL' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE