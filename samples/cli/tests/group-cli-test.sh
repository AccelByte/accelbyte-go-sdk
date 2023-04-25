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
    --limit '96' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "Qye2xmQZSEz0mZmk", "description": "gASZf4DW7krUM0nW", "globalRules": [{"allowedAction": "83mkHeMSVAkaxQqx", "ruleDetail": [{"ruleAttribute": "ncrsC2ZSCCsbriUG", "ruleCriteria": "MINIMUM", "ruleValue": 0.2884748395723913}, {"ruleAttribute": "rn8cCAG48PLJiIwP", "ruleCriteria": "EQUAL", "ruleValue": 0.7050614453214341}, {"ruleAttribute": "MnVIjI1acAngAcB4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9923292993173412}]}, {"allowedAction": "thKlUygSbbGhYUOH", "ruleDetail": [{"ruleAttribute": "BUIMNylpNtp3PFrE", "ruleCriteria": "MINIMUM", "ruleValue": 0.2265448321625395}, {"ruleAttribute": "CRSf49ix6ACL3avy", "ruleCriteria": "MINIMUM", "ruleValue": 0.5082596431105231}, {"ruleAttribute": "XoKtiacSGOY5W2Uy", "ruleCriteria": "MINIMUM", "ruleValue": 0.2475208921100952}]}, {"allowedAction": "UcgJd4X3A6eUGCLd", "ruleDetail": [{"ruleAttribute": "diuI62jBwpyYCIwZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9538011832941616}, {"ruleAttribute": "7nPPKLGNcFm3eaSr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.761597729030454}, {"ruleAttribute": "KZAVFhs6yYf4k0XW", "ruleCriteria": "EQUAL", "ruleValue": 0.9173456648854805}]}], "groupAdminRoleId": "3GDvL10q4koSJ4Ey", "groupMaxMember": 7, "groupMemberRoleId": "NZ2TQj0wltG345iq", "name": "cByzwLsDwz1MUhfh"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'TjzdgJmo5dLulfZ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'tZVACT8ZcfoEPzdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'IHusuF4TjqSURfWe' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GxSjV1NNmhr34yIP", "groupMaxMember": 96, "name": "gz5Aq8TjjLT4VGHI"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '5L9s32fpsilQ9jgd' \
    --configurationCode 'YsBxW1XRJzvOUkfb' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6uztBp6WjpSDRwN9", "ruleCriteria": "MINIMUM", "ruleValue": 0.4458377521115021}, {"ruleAttribute": "W6iuQbvEbM3pJdxj", "ruleCriteria": "EQUAL", "ruleValue": 0.4027969023918836}, {"ruleAttribute": "0mM2mqU7LievbZTY", "ruleCriteria": "EQUAL", "ruleValue": 0.7739394460326762}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'yadtmwpcMqjxxQ8X' \
    --configurationCode 'nrcUVd09yoXqzkZi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'cgTubQuvs3wcdvc5' \
    --groupName 'Bd5QFeF3t32UiN21' \
    --groupRegion 'O6KLdpnR9HA5UsUe' \
    --limit '1' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'kyf9me1DIjK68Axt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'pOrc86K2CrXyvjlh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Nu8YQfUe7qpRbASI' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '54' \
    --order 'zLY7yQ2k7dJXjWBR' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "rfEiVNG27mdi9Oio", "memberRolePermissions": [{"action": 14, "resourceName": "7wdi60m6qb3DD22v"}, {"action": 40, "resourceName": "45mAdojnrWG69zSF"}, {"action": 65, "resourceName": "yzr6mYT6szKUKYL6"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'P3I8Ord02pYwT8ZW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'LaO34gucRsHZ189e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '7lGTZayLJUAcxIcG' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "2V2zv4pF4YsG8Wj1"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'thOMutxSfBsaDelo' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 99, "resourceName": "yPNxVmPcdn2HGlZq"}, {"action": 54, "resourceName": "Ddvb13ppf8ZZGN5V"}, {"action": 43, "resourceName": "9B592JQBwC8Serpe"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'BYzkLqGqNytdpgbH' \
    --groupRegion '9H896GAcOGElDKn0' \
    --limit '24' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "A957TYtCdSSNwBhf", "customAttributes": {"LJs1HDillltCvNNw": {}, "voobhh7WvMpg0uSy": {}, "SOXikn1qzO2QM8ss": {}}, "groupDescription": "xF6OpYxlEhTCFL9K", "groupIcon": "tn578FQ9v23ZYYAY", "groupMaxMember": 41, "groupName": "TsfmOkZV1pIushDJ", "groupRegion": "ZdKuPhZO64ssa1KQ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FaB9f6uUD7RdSCPQ", "ruleDetail": [{"ruleAttribute": "BdZxbNR7f7N0c8ez", "ruleCriteria": "MINIMUM", "ruleValue": 0.47090427914373956}, {"ruleAttribute": "nCk6Z9kH3TTxa64B", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7047481978930878}, {"ruleAttribute": "FiPiVlpzvUDCrKDj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4625367742948071}]}, {"allowedAction": "70E6IYpOkaqHnOcV", "ruleDetail": [{"ruleAttribute": "68F0DKJTHjE1MwDs", "ruleCriteria": "MINIMUM", "ruleValue": 0.5764047115039123}, {"ruleAttribute": "MskUJRxyCsQrlC2N", "ruleCriteria": "EQUAL", "ruleValue": 0.17242196527281517}, {"ruleAttribute": "EztbaUWgAI2Rk9hG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21682744382031438}]}, {"allowedAction": "4BLsx9baP4EwQkh4", "ruleDetail": [{"ruleAttribute": "07KvUlfd7bXOflAC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8086433518153406}, {"ruleAttribute": "5lILxnXBbB4YYcJ7", "ruleCriteria": "EQUAL", "ruleValue": 0.49930628324087145}, {"ruleAttribute": "rQ6rWFpAlvRL1fAT", "ruleCriteria": "MINIMUM", "ruleValue": 0.5504527886623947}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'ot4XrT1ZBP7mkdgU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '9oOi5SqakssvH0b7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "429xt1yCt3YJ8P6t", "groupIcon": "OASJ5Z0XtEHGitrH", "groupName": "G02nIvpZzETV9A6a", "groupRegion": "TMcElGCm2jjL5ocg", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'Ru89ZObcMtYxZW5e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'IgPfyF0mhD52X6VO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "8bVSHHVlsa9C50nj", "groupIcon": "vZ72iLshd1GvBSA9", "groupName": "3sSsX6HKrEtuppfp", "groupRegion": "7FNVtyVmFFYFmW0a", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'hLmg2mlrrSuoup9V' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"PBaSRcPWgygn1DB2": {}, "wsG5HQ9861Yqi0iu": {}, "XQtGqD0s3w2QVVu6": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'anrSjLssJFXIEhwQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '9ju5rYVjhGuahQ5L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'b551yyE1E0osxvQP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'ahYubSgm9vmkJtlM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'c9DmN2J0gSfC9eSt' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'P9dBiSb11gTwbHEN' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '30' \
    --order '6v4P4Y9bwdpbEzyO' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'rXMOt990dmOaAGNP' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"payLfkkHEDHKkeF6": {}, "knT1GLwvGOmqnY4L": {}, "tFehj83IlRbl9QqA": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '93LThrPiNJuJnplz' \
    --groupId 'mEDxYJXJA6Xw3aYl' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "KRNm0vxS4cBvdL9v", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4401475674399734}, {"ruleAttribute": "grsmyC9OcEC3pYIm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2947630393104097}, {"ruleAttribute": "Y9x9vtaYqqWqQ6dW", "ruleCriteria": "EQUAL", "ruleValue": 0.8783461727815798}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'RK6VYmIQ2Z0jH6XT' \
    --groupId 'LUdTiySxPyqILznK' \
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
    --limit '3' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'voY1D6Q3xBhnz4nO' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "BzaXZUfyEgS9oc2p"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'Tde4eSb6MziuRDz7' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ymDK9zWmwcJaADDn"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q4cvgFr3Yk2aO2nI' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jPJYEKA9IKPyhQGH' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9xaERRxxIZzfd0oa' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0L7J2eVYeKzKCNs6' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '17ukNRrYJWdYkLlG' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["tkgJJCrGcKVN6ohY", "OOulpNcRJ94yf6bi", "gNSYxRu1D7dCuRIT"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'HRrUtZfN0GKLlwGt' \
    --limit '74' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'gL8bF4EqDWQlP69R' \
    --namespace $AB_NAMESPACE \
    --userId 'SysbFO0hsrXtg5Vm' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "fOSVpjRzGNw1o3Dy", "customAttributes": {"mdc70jdsEwc6Ou1b": {}, "MsOSGebp8Y4vxVtf": {}, "cfljxJWAGZMJvQAi": {}}, "groupDescription": "OrxA2gbP9cz8pelh", "groupIcon": "cKOfbiOmwVCPEslG", "groupMaxMember": 94, "groupName": "mGCH1Dcw0eRwTTsj", "groupRegion": "cd6qjQ47UjNimXsB", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "kxvxO5lhbzEM9qWk", "ruleDetail": [{"ruleAttribute": "HJdJsVrnHwtfjbv9", "ruleCriteria": "EQUAL", "ruleValue": 0.8612604526987189}, {"ruleAttribute": "I5NJzDh2uKJ9w5Ju", "ruleCriteria": "MINIMUM", "ruleValue": 0.9021030634173961}, {"ruleAttribute": "0TQzM8efuoH5Tsmm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9936488799490806}]}, {"allowedAction": "4wBDmXPkdc7IEFgP", "ruleDetail": [{"ruleAttribute": "mQbUn2pWnCLekvln", "ruleCriteria": "EQUAL", "ruleValue": 0.8366433667191134}, {"ruleAttribute": "RTI666e8IGfUJ2WL", "ruleCriteria": "MINIMUM", "ruleValue": 0.2182243289899075}, {"ruleAttribute": "QAi4uE5NrPEzZPBn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4659648736447227}]}, {"allowedAction": "2ezTwSxcsx62ygRB", "ruleDetail": [{"ruleAttribute": "I9zMflHgioDrfzoB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5602623307418645}, {"ruleAttribute": "9ZK3UrOc6CcTJsdy", "ruleCriteria": "EQUAL", "ruleValue": 0.0673241222459603}, {"ruleAttribute": "teiFCsD5SA4fu2mX", "ruleCriteria": "EQUAL", "ruleValue": 0.6499583676943694}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["JLcjcMhd852FOyyf", "nm1IB52TIq13lJyE", "4CCnzGzJjc0RPxwO"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'DGf0wjdlnTPO2ivc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QHJr2QNKNR28fKPg", "groupIcon": "2qFBhIewHzAH3P3i", "groupName": "x7fFG4cBAC56Nk6z", "groupRegion": "zGw1s5grVU0o2Ndb", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'KdfAi919v44avMzO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'UkaGZDt9d5TqJnv9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "uKBYoKLqsbSQe004", "groupIcon": "Vr4dN73MEzHuIfCP", "groupName": "JrGyLwvEblxkHl1O", "groupRegion": "Iakx3wTv6O0yXmt0", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '9MgwCT3XpCqbuZlG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"QsSlPauQg7AnPlCj": {}, "bLdPFo13FdKAhiYC": {}, "KUZwA49ZaTO1sDzJ": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'aQ7rq2ntjCDsWXne' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'qkRMYjWm9Q7LoSGw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'GRwqVDGh2xQ8FGy3' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'vcGIL1DBg0nuY3Cf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '5WSbpY67hB3yTJLt' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '6XqPacrfgfpSc5h7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'VEGwF02Gx0kIQbXl' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"k5HUWCOzDD7uv4AY": {}, "efLwiYGzByMntAah": {}, "v2WbeE6dUrEfYpvk": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'iBLXMBlKH1Fo5tD5' \
    --groupId 'HvTQHuvHPNe93N22' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "BPegdMzLfM7SOFZz", "ruleCriteria": "EQUAL", "ruleValue": 0.10650527171987989}, {"ruleAttribute": "zBiSYicSDI77Pw0F", "ruleCriteria": "MINIMUM", "ruleValue": 0.9545837709648285}, {"ruleAttribute": "G6c1QBnZYwyV0a9w", "ruleCriteria": "EQUAL", "ruleValue": 0.04550667292890398}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'x7P10SSPdKvG7Blg' \
    --groupId '17GBi03Vu47hYbDL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '2BwwYS98UDLQGTGu' \
    --memberRoleId 'jJorjafd1jcTdyiu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ErfyVMzfrdAIGXfb"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'J7b8Ef8ze1lUFdqS' \
    --memberRoleId 'xb8o7kl4hjojMqrd' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "g2Uv1y6agWN2n26s"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'YFx0bTksmzZIJBje' \
    --namespace $AB_NAMESPACE \
    --userId 'Ow97gcG7l5NMcUE7' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'V2sJD9BuANkmeKwE' \
    --namespace $AB_NAMESPACE \
    --userId 'CuRQpjP3Xf7obb9X' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'MJUPNmtV18ixq0PY' \
    --namespace $AB_NAMESPACE \
    --userId 'WeaFIs7YhEKDdnOD' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'gI68BSrHH9PFWQmt' \
    --namespace $AB_NAMESPACE \
    --userId 'gvCtj8bYxOsJyKrs' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '7Moke82IJ3zufcXD' \
    --namespace $AB_NAMESPACE \
    --userId 'dGdjroFgNXOkhwOw' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '2tSYsw4Iohl0VJCf' \
    --namespace $AB_NAMESPACE \
    --userId '3YTc8GeFaBHn2FKZ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE