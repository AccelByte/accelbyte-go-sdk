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
    --limit '10' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "qJr0fQ5hMFxzwPFI", "description": "gaMhcaHVLH5zCLhD", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "uIyfHswjmkgEC20H", "ruleCriteria": "EQUAL", "ruleValue": 0.9021529844886818}, {"ruleAttribute": "oI6dBDRzc15pmMKV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6808336669685341}, {"ruleAttribute": "HFN2EQSThn0tzJHG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08150470890290828}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "rKNtXMNEHU6ifarb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22164807084871208}, {"ruleAttribute": "yFRNOb9rL3TrKpa0", "ruleCriteria": "EQUAL", "ruleValue": 0.7528981073022273}, {"ruleAttribute": "C9vI1hxOBelzB9Le", "ruleCriteria": "MINIMUM", "ruleValue": 0.5835895778729739}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "it4wkJi0gzdq00Jo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5671070299370001}, {"ruleAttribute": "s0KiRApILWqcC3Mn", "ruleCriteria": "MINIMUM", "ruleValue": 0.9026036571029709}, {"ruleAttribute": "oQGF8KXjrZExDj7B", "ruleCriteria": "MINIMUM", "ruleValue": 0.8975301570782473}]}], "groupAdminRoleId": "kUeCgzMvr3H7mOCk", "groupMaxMember": 28, "groupMemberRoleId": "ZYp1NlcUinMkntqy", "name": "k4HGIYw7mPMeOLST"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '3KepxdK4NHMzLMNn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'DXiUsLLpSqFIcOgW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '0kBZec7XsRGR9pAx' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qf0jf6NzQPBPptdt", "groupMaxMember": 97, "name": "cdBS69XG0dTxMYhR"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'lNlu17ZuvwqVGVlF' \
    --configurationCode 'qNRSX6vaNY1EmfqO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "W4FzfjqV7ZBCechD", "ruleCriteria": "EQUAL", "ruleValue": 0.954065565304009}, {"ruleAttribute": "IgmVzUZILhkF6C36", "ruleCriteria": "EQUAL", "ruleValue": 0.3980753756341763}, {"ruleAttribute": "uoZ6QMHteH05B5Mw", "ruleCriteria": "EQUAL", "ruleValue": 0.8642980896548955}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '3VjPM8IqaeHFaNCn' \
    --configurationCode 'E2pdfRd1wkU4YHxL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '5QpHQP8auN95dT5w' \
    --groupName '0HZx3EMLVxsXaT8h' \
    --groupRegion 'mjLAYG0HhJNxI19K' \
    --limit '20' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'g2pgs3r08YBIXU80' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '5RYdVw4veuxvVNyO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '0milkfnkyhswrece' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '65' \
    --order 'ox547JaFYFllLHFu' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "plnLHegE5HrTGYaq", "memberRolePermissions": [{"action": 26, "resourceName": "7sJXiWXg5skihhsn"}, {"action": 42, "resourceName": "O1Bf9YYxLgKrM08G"}, {"action": 59, "resourceName": "o1bMbcrroZkzT0yu"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'EjkIXSkvJY1dipPg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'rliZRlzy4tOmjifR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'W6RnlGmHoEI06SfI' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "obkqvdiqEznBpB3p"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'u0Qq3LDWew7dlKaH' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 3, "resourceName": "awGmPygVr7lQVNL5"}, {"action": 29, "resourceName": "EmGGz9BJEz8uP4CI"}, {"action": 71, "resourceName": "LzbaIq98SZix0Jbc"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'sy3Acf9NIrgSIWvm' \
    --groupRegion 'W6cS2FflPYmaaLOO' \
    --limit '24' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "rClGxTpTek2Yg83J", "customAttributes": {"0Rzhc3DcoJRuT1z4": {}, "bQqMZ48b8v1k15pl": {}, "Dym0phRAH8I9kMm9": {}}, "groupDescription": "DxuFWVSFBWvJFdsY", "groupIcon": "i6qic2NZZeJsi3rl", "groupMaxMember": 53, "groupName": "ewzXK33yDJ2IxevA", "groupRegion": "F6Egf8QYwgC3RFng", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "9KawkKueschCYPhw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19329128218634573}, {"ruleAttribute": "ovSTZ6bRu82LCP07", "ruleCriteria": "MINIMUM", "ruleValue": 0.044018733508470076}, {"ruleAttribute": "bgwxCRaVXhzoB5Rq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32114591325414776}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "fAjvVaOx1tQfrTQR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7860746634810907}, {"ruleAttribute": "rDY54oerhugLtpXy", "ruleCriteria": "MINIMUM", "ruleValue": 0.5726628757669039}, {"ruleAttribute": "sYUTEfbHPgZhkwzS", "ruleCriteria": "EQUAL", "ruleValue": 0.8710936935625907}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "zq7j49pGABn6LrIc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9615416900986625}, {"ruleAttribute": "YSITw8USS786TtWA", "ruleCriteria": "MINIMUM", "ruleValue": 0.09418507093113271}, {"ruleAttribute": "9UJFXCpJ16D9nOHD", "ruleCriteria": "MINIMUM", "ruleValue": 0.5997490327809333}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '7ltPqBj19eL4qj3D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '4gm8WekffsYth06Y' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "T5ry9DqhA4ykcaA4", "groupIcon": "kmfJfbH2sQpwV588", "groupName": "MQAPd85pt5QhGPI0", "groupRegion": "73ix94zQ9ekWxGxK", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'E08XR8EUnq3DnTd8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'kEGPWzpCHYHyMfv9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "jkTe3lvOs6FsmKVj", "groupIcon": "aq0DXrxWpxxwBT2e", "groupName": "Jzm8jGfaObI7hYKs", "groupRegion": "KE1mJkQyeCWmOg73", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '1cCBw5hDfgl32Upj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"v0Ld796sumezyGOZ": {}, "xSVMjWnMyuSn47nu": {}, "lPoNjQzxzJX3GtoK": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'SDXnZkltI3O4JfTA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'AJrerdNp3YWU6ukU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '5hMvaanL9lF4yLui' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Uk6Ofz9EMr3a7Wdo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'eCxtTDfsYTwijUCZ' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '5PHbfpVGPkAnRTm1' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '52' \
    --order 'bMKxnmnFM5VBR4M1' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '9I00sGhxOcpbAasv' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"tjFP3Wkz8bb90jVq": {}, "g21jKRiJz4SyVpma": {}, "sW02CLtYVAWtRtic": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'loxgjuH6Hhje1b7j' \
    --groupId 'xRGlRc5qz8RjPFiO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "h3XuGgpF107Palr9", "ruleCriteria": "MINIMUM", "ruleValue": 0.9440733830359221}, {"ruleAttribute": "fIBfDAQZpEbLAsHe", "ruleCriteria": "MINIMUM", "ruleValue": 0.9398407653140881}, {"ruleAttribute": "yQzbuZLt8SYCIAfo", "ruleCriteria": "MINIMUM", "ruleValue": 0.04154592647233912}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '7SWYoICKjxDCrpp1' \
    --groupId '2Lkm9rNjVKr40pQd' \
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
    --limit '43' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'gZkwSJGWUZ9oq5jN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "2RvPnrPMvNnWnfnl"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '59v4lAyD5rcYa8yY' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "up7IaQmR8UACtQ0v"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KP7xqZouUIFgoRG7' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nUJp9n36V5lyVs3g' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tslRr6mKM61NVDNv' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'h3J8FjQtb5glWyh3' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eh1G1I1bAvJhoFLB' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Q7xtCFSjeIG9mkqD", "wauQD8nYQ2TpYTvM", "JmdKqQZ6iOxXTewi"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'uiHdwA5mpEtuHIVx' \
    --limit '61' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'P7CcaNGRUT5tnZo5' \
    --namespace $AB_NAMESPACE \
    --userId 'dHN5GfHzuNx4gV7N' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "yJaBym8zu5JdZSW1", "customAttributes": {"pFoFz2GGW0Pcfnbr": {}, "UQXZEFw4zl4pXhnh": {}, "c2BAjc4M0zE4peA9": {}}, "groupDescription": "uxzUgC7x4rkT60mc", "groupIcon": "gM0mLuxfIQnM2udc", "groupMaxMember": 94, "groupName": "c7dgyP4MSDOBB2VC", "groupRegion": "6ww9VdzX74bhsAUH", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "weNUKhkIrVkLvt0z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6958369502809336}, {"ruleAttribute": "bf6GUxilPZNNLpKt", "ruleCriteria": "EQUAL", "ruleValue": 0.6541546456984575}, {"ruleAttribute": "eztXAYHhSBlzWymN", "ruleCriteria": "MINIMUM", "ruleValue": 0.42220699765212777}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "LlKTwqey40Lzc6e7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6792666810179744}, {"ruleAttribute": "8eScRk2bKLOQZdii", "ruleCriteria": "MAXIMUM", "ruleValue": 0.38005981068267614}, {"ruleAttribute": "4kNdsgo5gZgF0pou", "ruleCriteria": "MINIMUM", "ruleValue": 0.6932280012744461}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "C0sSYVMlAzhUovjp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43738865713963215}, {"ruleAttribute": "wJPixhqmLIQ22HQV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9364807158904068}, {"ruleAttribute": "nc2OUAvpdzM1fiTi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8329888204036718}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["ShhqdmMzGDovX3oV", "btzKmXmz1xcF0O4E", "lGQIisCj20Jj4Ash"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '0j74ezWZ80Y09mCa' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KcYZRjud0aNZqicn", "groupIcon": "LSx431XTODNH1NWL", "groupName": "FvNobN4zEjhEjxon", "groupRegion": "85nVzipXIpM5gFwh", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '3fIdgNxDFwX5AVTT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'aFm6EAvXkdKT5Ee5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "4YhgqzCRFQysTNZR", "groupIcon": "b0TaWXGvWHa8Swwr", "groupName": "B1HKZfT6oE9JC5qj", "groupRegion": "e6BbIc600uPz6YLr", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '14Q3ycKwLvVuDJPN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"M9xvB7Crq1LQZ6yH": {}, "Ara7yBEgfdJHTWLp": {}, "ZLznUil8eQAg4eF0": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '4BR9zz50E2Yqqoej' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'XlODgJYNtiDKsGAX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'Mei5TPhRWUmWz2Jv' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 's3dlQix3WrCJTATM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'krmS6zKoqAzjbori' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'A5oud0d4wg0usow8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'Mn6zScsV6q9UCRxQ' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SEIFiE94lZpuSIaE": {}, "4961ndBx9uwBKmF3": {}, "PQhfNnfjh7vV9JnI": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 's70gGkizv9sR2d5K' \
    --groupId 'yF8KvApGzEB6TgmN' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "lebgfMEY9Y1RIXbi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9033185670347667}, {"ruleAttribute": "2Zb037ZMTCCRksg0", "ruleCriteria": "EQUAL", "ruleValue": 0.832748409820107}, {"ruleAttribute": "h3fV50mBFGnDwjz3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4163621649590318}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'BZyCpd4h8Ey8XTk6' \
    --groupId '0rH8qMnva640Y398' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'KQihyYZOtczp94A3' \
    --memberRoleId 'QK9gpw7ycyF3NF47' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "hxcWts2S4Jelwb6e"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId '7K1CNQjYRmeEQnmy' \
    --memberRoleId 'o47pEYAtfLdhL9oz' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "eUF7fxgMO8VLTAwv"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'XclKP2OzLN8YY94p' \
    --namespace $AB_NAMESPACE \
    --userId 'JDmuvaKHy4jYXBLu' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'wVOr8YZzFPrYaYkG' \
    --namespace $AB_NAMESPACE \
    --userId 'n0l0fAXENbJSclSl' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'TPX2E3oDftJsX8gT' \
    --namespace $AB_NAMESPACE \
    --userId 'VEM85qhSKDzDvVEb' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'z3uIRBzKcgOBR6T1' \
    --namespace $AB_NAMESPACE \
    --userId 'IQ4BWeMpyoud8ZoT' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '5labaPytKKWUQ70v' \
    --namespace $AB_NAMESPACE \
    --userId 'Uoa3or2Dfl5Wm26b' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'bS42G8Six2oxLLXq' \
    --namespace $AB_NAMESPACE \
    --userId 's3aA628Ga17sW0DA' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE