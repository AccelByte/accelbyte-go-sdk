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
    --limit '83' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "itceG0vG3vsPP1Yv", "description": "jnsFVMxCbeYQDIlF", "globalRules": [{"allowedAction": "15vvPqpjTlvXUmA3", "ruleDetail": [{"ruleAttribute": "6kxOvWzRDnXJQvhC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8949110667139514}, {"ruleAttribute": "PAOXorKMBFVozkSz", "ruleCriteria": "MINIMUM", "ruleValue": 0.3363190000027124}, {"ruleAttribute": "AQTt1anqhybsXVtD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3115070075187819}]}, {"allowedAction": "hKxHamsBraHQ547y", "ruleDetail": [{"ruleAttribute": "udxx8M6AJsGsDKM4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29187837223913693}, {"ruleAttribute": "2C3w5JC76bC7HRZv", "ruleCriteria": "EQUAL", "ruleValue": 0.4585779870084098}, {"ruleAttribute": "kr6WMtiSlMIJP0wZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8072143205377703}]}, {"allowedAction": "n7lbNrnaz9wyKhOZ", "ruleDetail": [{"ruleAttribute": "OnkoVqRfrGLVb84I", "ruleCriteria": "MINIMUM", "ruleValue": 0.07849371089448665}, {"ruleAttribute": "fjYUt4kgH6TI7zgv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3834599399559503}, {"ruleAttribute": "O2VRLZYMj58D5Ett", "ruleCriteria": "EQUAL", "ruleValue": 0.7116559477685059}]}], "groupAdminRoleId": "tEjGQM5lnedJ6xqM", "groupMaxMember": 62, "groupMemberRoleId": "KOCwHTn6pzMLSorJ", "name": "SveyAHyA3NiKM39l"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'KSVjx67KhnQglarK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'tb8E00vopT9Mjr5m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'lHADCG1KtGiehF5C' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fcqz7gsWo9nvFdkR", "groupMaxMember": 59, "name": "UnNCk8VqkfDt1DYf"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'HQ7uPIrtp3xRQvDR' \
    --configurationCode 'MguM89INpzaFEwk2' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "CZYAZjIxkJnINPle", "ruleCriteria": "MINIMUM", "ruleValue": 0.6148204731568995}, {"ruleAttribute": "rhJr5Uqic58LW418", "ruleCriteria": "EQUAL", "ruleValue": 0.9709882801339234}, {"ruleAttribute": "OigwRwBXaTG7sHtT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9059682033638466}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'PF89lxppoIYOKNyh' \
    --configurationCode 'O8TQytPIsC500t28' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '1fMt4rkNorB0hFvT' \
    --groupName 'VW5GJ5mJtoN5vg8U' \
    --groupRegion 'IE5EIGczITygvHt3' \
    --limit '15' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'yOhhJdABXKqrrR4s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'SrSMu43k5j6jWD1Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'V122kxbcHWwPdZ5C' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '90' \
    --order 'cd7HUxUrxpS1ZhCl' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "n7zsL1v6A3uiagMx", "memberRolePermissions": [{"action": 49, "resourceName": "dMYEneyiYdrO7ogz"}, {"action": 4, "resourceName": "aBlJNh1ftVMpoLHA"}, {"action": 45, "resourceName": "QC4JgxvUmKafgAoC"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'WFxv9pFJlF2KPAgN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'k8oYpOnOuquq4arj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'VT6QxOa2s1RgaVlS' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "RmGPwDpSl9FAOWet"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'mvuVLsYjQ1oOz8up' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 72, "resourceName": "Xcvp2fvEI7Kuudsx"}, {"action": 81, "resourceName": "ryXfRk5CJuDwposX"}, {"action": 31, "resourceName": "ytik7Yy66bVsCRsg"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'dqdvfozTxQXAAAJJ' \
    --groupRegion 'gopgRAmjQxkzfjef' \
    --limit '89' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "KpnnpLSrsFIdnZBf", "customAttributes": {"MZQoS2FmhlAuJWwW": {}, "g9IE8OTNZlRjNWRX": {}, "dO0VcU0NZbhteoYy": {}}, "groupDescription": "Yi22JtwvtY4FXsE3", "groupIcon": "7hCBj6kMFLKZbBSI", "groupMaxMember": 71, "groupName": "j4xSGhcDmQCdQ625", "groupRegion": "zCuOMioPdte9TDlE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "ce1IhgDdJ0SFhTY4", "ruleDetail": [{"ruleAttribute": "30jDF1yC2LGJbXLK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21365002912972064}, {"ruleAttribute": "SLMnpJzUuUvp5BiI", "ruleCriteria": "EQUAL", "ruleValue": 0.6052867179482181}, {"ruleAttribute": "MEUIxOJhKlqNIMe1", "ruleCriteria": "EQUAL", "ruleValue": 0.8464875822118533}]}, {"allowedAction": "5KOrj3w8Rh8o6LXQ", "ruleDetail": [{"ruleAttribute": "VTJGijCGVGP9GKrC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3751994581646235}, {"ruleAttribute": "eRSRzQlnaGJDI7qb", "ruleCriteria": "EQUAL", "ruleValue": 0.595980081820894}, {"ruleAttribute": "gNaBSJkwgIiYNIH5", "ruleCriteria": "MINIMUM", "ruleValue": 0.6618540782972872}]}, {"allowedAction": "QQsNT2CGUvlYwxiu", "ruleDetail": [{"ruleAttribute": "f7okmCpVkDbTRuxB", "ruleCriteria": "MINIMUM", "ruleValue": 0.4830349589665005}, {"ruleAttribute": "LMNwIWRcL7lA2hAg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.242045597389985}, {"ruleAttribute": "qgMfkxr7u0FJ2Fw7", "ruleCriteria": "MINIMUM", "ruleValue": 0.1604829519267773}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'sR6snR5oYjfxYRia' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'wLJ6ICU4m2b5r24i' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "2g2a8t7neZk56EyO", "groupIcon": "olFFMuYJLYnEKI5g", "groupName": "ul5NwFYlefLCRxO7", "groupRegion": "TdUeQpnbPECSCM4m", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'IczigoTWC0loXXJp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'f1aNZvDGqHHqUNHY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "edCSfnmJaW0cGSju", "groupIcon": "udtnnMj8vRe3ij3y", "groupName": "HtO263P6wYnHygSM", "groupRegion": "zsxVuuJMRNGtWzMh", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'yC9kaQmLcjTfNc8m' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xgOWSbOwVpIyGK62": {}, "S04UNAFLm4BQvdiB": {}, "x3vTdc5ANO8H8lha": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'HumM1xsjBLliQcTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'W5DB9SEwqI1efjqP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'Tp9LAtD6PW9oacvR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'g5l75rbEaGAWs099' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'dAggffObriuprvew' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'UA5wOpFKMaTNHpWa' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '50' \
    --order '0Mcfv0Tr3YLXU0kU' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'zE4OvWbzBvpAQ0Tj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"pbTF4WGphTjHMyzv": {}, "7xJTYA3v3PsyQSLV": {}, "eGxeF9aLLeVnxN4C": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'Gsag7kwTvhaydnWO' \
    --groupId 'AOlNxbnpr0dfeWVe' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "opPJ1QNQRG36Vuxm", "ruleCriteria": "MINIMUM", "ruleValue": 0.5125294881067367}, {"ruleAttribute": "4YlHcZCQyFQ7zFzq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24426331775581767}, {"ruleAttribute": "csJxcKCz0FcIZdcl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47231150723478876}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'xCvmB5BIs4HgQSMs' \
    --groupId 'ecEt83zqDtCkWMww' \
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
    --limit '38' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '3jy9TwvMoUXBxFhv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "E4wC5NXakEh3c56R"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'JpuErkixaySrNZit' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "s7K0U48bhfB8TWrW"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QlhAbzmBHX64qvQ4' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vDENgtiLZdItbI4b' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qi06gyMraXNPiHsm' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5nyH3ZV6I54bRf57' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3xqa7RXqSMzMRPTa' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["mPMG35XHxGM6Ex7C", "dVJyXGvecFa6vOQP", "0aWQbZt5sAFDsRwm"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Pa8cs3lbiNiM8sIQ' \
    --limit '2' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '0sKQ3KofeFEcehGY' \
    --namespace $AB_NAMESPACE \
    --userId 'wDjwqdBhZYTtoNwq' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "PSgu0BDYwH9gKycv", "customAttributes": {"ZtvftXWemJVwlmzk": {}, "UtpO7zXINGAai2pI": {}, "l4bVxNjbWedyiuc5": {}}, "groupDescription": "tWhTumZ0NIbJsJDV", "groupIcon": "btP0NCfmUvHf70y8", "groupMaxMember": 30, "groupName": "dcBP0HDbbNcTnJ6j", "groupRegion": "f92uR7uwxZmSCNNp", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "zD8SA3vtnqSlDzVj", "ruleDetail": [{"ruleAttribute": "fCpVCaBhz2vl18aA", "ruleCriteria": "MINIMUM", "ruleValue": 0.897696255034457}, {"ruleAttribute": "lIFequTHrofsONSd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1948036847127922}, {"ruleAttribute": "aycwVBcDvRUxGZDT", "ruleCriteria": "EQUAL", "ruleValue": 0.3608220083927568}]}, {"allowedAction": "Wb2irwPCeu4L0p42", "ruleDetail": [{"ruleAttribute": "I9ExaNsgdoBZiv1L", "ruleCriteria": "MINIMUM", "ruleValue": 0.7993592298297898}, {"ruleAttribute": "FBkaGZQyUJu9Llvx", "ruleCriteria": "EQUAL", "ruleValue": 0.9068067677799431}, {"ruleAttribute": "sINBYuviRrp0hf9W", "ruleCriteria": "EQUAL", "ruleValue": 0.5548888063229532}]}, {"allowedAction": "1LKrzMGvIeblxMoD", "ruleDetail": [{"ruleAttribute": "0DVr93SabAypkcpx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20436894825146223}, {"ruleAttribute": "qovUlWsGL0PKbj2M", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3519855769587441}, {"ruleAttribute": "40BVUjwATTes6xJs", "ruleCriteria": "MINIMUM", "ruleValue": 0.3537298028210286}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["7WErDr0GAHDIlkNV", "9x9PzORO4dzvW6e0", "Vs4AOn4XxnD2qIEZ"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'Cwaleu9JzaAQT6jh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "vLmlECcuHFD3g1SR", "groupIcon": "R7MGshZGCiz9f7Fm", "groupName": "QqtUeIqhjnfmhii4", "groupRegion": "t5mPDy7a6HiYAj2x", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'focyvVI74SzfxKUY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'B2jo1prNBDqd4BPd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Jg5m1Dr5CVVfI3Sh", "groupIcon": "Nu9giOu1aS4Ea1Ng", "groupName": "gN90f7f7x31JEYQU", "groupRegion": "QJs3XxGBvYlfb1AQ", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '3rwM798ZlPo5MqDu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"sUPV0Eh92fqkOOvK": {}, "dpwgnKRKOebN3Skd": {}, "BUeTLhU89yezKxIK": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'FfBpVKC6jxToNiLX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '8GJ5VKnGkfRqq1eS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'MuzcDiDaBjSFJYqm' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '26en5qS2jD2zGPZL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'u1NnHvE21bEkguBb' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'XyIHvz1M9vWCcAbS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'J8wMnc5UQ7uDWTl5' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"DUQ1u36jrxl5i8Kc": {}, "zCHMkYaTl51aQ0eq": {}, "ylcqnNCA2TyzBiNe": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'uaoykoJThkIkSum8' \
    --groupId 'RvD0OI6g0VmxDOz3' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "YlIBOc71H0yfLNQ3", "ruleCriteria": "EQUAL", "ruleValue": 0.7545121222530433}, {"ruleAttribute": "nDO0XJhFt4XE2kyJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9292909611502289}, {"ruleAttribute": "X7rUFfSAp5ZRts1q", "ruleCriteria": "MINIMUM", "ruleValue": 0.24117904820111669}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'FPuy4SGDG2Zr56Jp' \
    --groupId 'C4wy9WgFFGmn55Gp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'EZrz3c4OgGnWy6Y5' \
    --memberRoleId 'rzrl7utVcSvcVGqk' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "MBXEestomyfZu62S"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'u6U3BpOXBSkNh9xP' \
    --memberRoleId 'RIfbOwzNG9anHi9J' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "0IQ69R2OEI7nSjJJ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'K9wJce6ONMd3yrlA' \
    --namespace $AB_NAMESPACE \
    --userId 'Mx3v3uLNNbvO7yYs' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'cD6gRHlpZ17nHTcG' \
    --namespace $AB_NAMESPACE \
    --userId 'UyVkPogzpcuYB7O6' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'C8WI02FJXciBUo4N' \
    --namespace $AB_NAMESPACE \
    --userId 'wpxmg1vrCbNHioyk' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Gf5X89XuoSDpeSqW' \
    --namespace $AB_NAMESPACE \
    --userId 'beGd6jKTCJXg2O5G' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'zGmOZRuderB7AMR5' \
    --namespace $AB_NAMESPACE \
    --userId 'WQ0msTqS37zZkuHE' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '84q3Z2Bm9tScF6Zk' \
    --namespace $AB_NAMESPACE \
    --userId 'eh1bID1ZhXxCuBUy' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE