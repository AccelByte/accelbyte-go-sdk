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
    --limit '40' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "2cVHSiGbFvuPYAWB", "description": "B80Zap6hsS7jgGTm", "globalRules": [{"allowedAction": "BMwiUzLgc5YtibHu", "ruleDetail": [{"ruleAttribute": "u4yYj4LxwB9i39mH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.37368833364462106}, {"ruleAttribute": "AsBYXOFG6p1Q9OfB", "ruleCriteria": "EQUAL", "ruleValue": 0.22276985868298538}, {"ruleAttribute": "pB357sG6KPZqAdln", "ruleCriteria": "EQUAL", "ruleValue": 0.7704013228575}]}, {"allowedAction": "adkv92gHT9tYKbDy", "ruleDetail": [{"ruleAttribute": "MlHCB08hHEBQFk72", "ruleCriteria": "EQUAL", "ruleValue": 0.8305170178883574}, {"ruleAttribute": "guMSoOD0bDTguZlb", "ruleCriteria": "MINIMUM", "ruleValue": 0.5045460037003096}, {"ruleAttribute": "7XFBEVndNqjSeJuR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8455377190498882}]}, {"allowedAction": "7v0RgY9KjkuWFBV8", "ruleDetail": [{"ruleAttribute": "ZYd3EETk2Ay9uW40", "ruleCriteria": "MINIMUM", "ruleValue": 0.7459678774068089}, {"ruleAttribute": "0a35SaDCw41Ljfmi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9071900236382697}, {"ruleAttribute": "tSZpxr6rEDIRWkzk", "ruleCriteria": "MINIMUM", "ruleValue": 0.6712211903436093}]}], "groupAdminRoleId": "hVyFWxZ0YEYBb6ay", "groupMaxMember": 4, "groupMemberRoleId": "yZ20j0La9kQc94Nj", "name": "jUQId70YJ7lq3SMp"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'sMcdd3mc6YcgEMQB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '0DSQyr1iCe6MLEpF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'gO40Jp8uCabSRgQI' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ijQljjqhhrlZekbS", "groupMaxMember": 86, "name": "fEmZTHO7iNTQJyyu"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'BDxRqBCJ3sOE9aCB' \
    --configurationCode 'Oe18fTEcsHcNg6JZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3PTwmfPfY5xdZkb2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5740253457197837}, {"ruleAttribute": "JA9hGVEbFic7ERnC", "ruleCriteria": "MINIMUM", "ruleValue": 0.09088685182648815}, {"ruleAttribute": "K0WkJMGP0zmsnMic", "ruleCriteria": "EQUAL", "ruleValue": 0.030091234697665725}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '0F1JTT0NQdqocVKj' \
    --configurationCode 'CJEd7fqVnERw3y4u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'ALtCIUZit37Fv1Z9' \
    --groupName 'WU229GmXugwP4Pxd' \
    --groupRegion '2AjW66WxNhWbPP7B' \
    --limit '5' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'TU0J8HRgiyIw3v7H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'xWiTlGVPFbHYcICC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'KLT6crBIIL5UwLFt' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '17' \
    --order 'oLh1GStTQVawsLtI' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "QrogRAEt2T4VrjPE", "memberRolePermissions": [{"action": 72, "resourceName": "vSS1Pw8dP9Vm3o9D"}, {"action": 48, "resourceName": "5FDKkokjji8vep53"}, {"action": 100, "resourceName": "JkwmZQwJyuSfldCN"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'XK0VpaLuZV7BWebH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '0UfdKbx1YaOUxQnG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '25fSxDzavahI8at7' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "gS5t54dU9UMxX6tJ"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'nSZkVRX7CZ33tmJg' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 85, "resourceName": "RZ1sV9NrsKTmpIfG"}, {"action": 48, "resourceName": "zWUK5O1lzVCxGDOd"}, {"action": 53, "resourceName": "ZwY2xQ82lpBkRBk2"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'oenRPzBWJATDu4P5' \
    --groupRegion 'C5ZsZE0spQ2J1CtF' \
    --limit '27' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "dVoSnzyTl1PNlkKu", "customAttributes": {"KYoaRTWQoknTPOua": {}, "PP4LxyDIm4eiuNgd": {}, "sxtdkRkE4ZbULEVT": {}}, "groupDescription": "WUtx9TwuChT9LQAs", "groupIcon": "JFFmfYbkPJIJUtM2", "groupMaxMember": 93, "groupName": "pkVg8b66I8qUsgB0", "groupRegion": "UZWL5qqz3KKtDiNn", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "rgB7irXgCa8338Kf", "ruleDetail": [{"ruleAttribute": "SgsE4oAxgnOKgVP9", "ruleCriteria": "EQUAL", "ruleValue": 0.38492995788819606}, {"ruleAttribute": "D579liisgWujl3ca", "ruleCriteria": "EQUAL", "ruleValue": 0.9205506571565888}, {"ruleAttribute": "nKeOqDpoCuBh2OPk", "ruleCriteria": "MINIMUM", "ruleValue": 0.3923913424454071}]}, {"allowedAction": "WOLatxAmzzqdEPM4", "ruleDetail": [{"ruleAttribute": "80OxFIEXayPpHCvD", "ruleCriteria": "MINIMUM", "ruleValue": 0.5137578273296843}, {"ruleAttribute": "UKl3lr2CvTKRmX5h", "ruleCriteria": "EQUAL", "ruleValue": 0.21081158609399753}, {"ruleAttribute": "tT5IwbbBPMA7gGkR", "ruleCriteria": "MINIMUM", "ruleValue": 0.5961298738710868}]}, {"allowedAction": "nM0MEf2NaLKWuXPJ", "ruleDetail": [{"ruleAttribute": "1TzvMCNWgxdTRkMF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4341300863848273}, {"ruleAttribute": "6wtCTm3DtBAqGlfY", "ruleCriteria": "EQUAL", "ruleValue": 0.29511435669752806}, {"ruleAttribute": "hErHcgGUmGube6db", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6630012964825759}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'XXZ7zw15EdWPf3dH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '4vxFoVJl5SlFdKrD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mLBpXAVPIEkcM8ZU", "groupIcon": "FOPRMm5020LdaQdc", "groupName": "Acz2lcvAIlGSaWok", "groupRegion": "LCQ2czFzyzMepdfA", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'KKQXVZdI1nDJN5aS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'SbiwPkgm8Se4gFLK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "vGp2HkdzMDY19Zs1", "groupIcon": "CgbcBRNUAEg7U9W2", "groupName": "udgiljDoMouNE8gg", "groupRegion": "Xjasa20NALabSbyP", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'zx4w4HgYYhJ8smWy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"G8Twlb7hxyb2qTHz": {}, "XOIhCqrhUAu2aTUn": {}, "3ZF6Ws6629WcsSG4": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'phuOwLnaJkF3M7s9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ctDMxKtJjpxdgm34' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'yqtycUQtkAGMPiIg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'RuewO28UVaRAXC0T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'CZAGmI5eZJvR2Hc3' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'BXn9peuoqoReS6fr' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '84' \
    --order '6PfGL1EB96QsFyXd' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'xIuJ1Pu1mFvLB8dy' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"uhjtQnYR1Lh6Ao2C": {}, "bVio1l6cbadaTm82": {}, "wyMuH963ug0Z0SYs": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'z7EcLpxbwZqyIFT8' \
    --groupId '8jiPnBztrluGZYlO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "pRovneJHNXRVX2lB", "ruleCriteria": "EQUAL", "ruleValue": 0.6142318881286885}, {"ruleAttribute": "S5CLCrlXmgfKe6X3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3780650493839748}, {"ruleAttribute": "SNslDWqadbfcLaIP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8609272913000225}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'ijAl9kJgJ4NI2rVF' \
    --groupId '7TZxlOBymG1rft4S' \
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
    --offset '58' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'LvKR9qtrq6YedaGD' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Yt2RAmTi3SR8AnTE"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'NBovG9TBeQN7pU6D' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "o84oA8Kf1kwCRN9Q"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EVJ3M9e1cbrz5hDy' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BEedQhBYWqhF1JK9' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kHTYh4KxaVfEoLSy' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5DZKWKpCYgtEjDZV' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XlHbe7L6FLJE0Sf2' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["CRO1QxgIpkIfaI1Y", "aKkHZYsYRIAYssK5", "ZlgyXQBeaFaZrugj"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'thrHL6ZYldbTqFhk' \
    --limit '94' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'BqXnoWeJMuWYfEGq' \
    --namespace $AB_NAMESPACE \
    --userId 'gKpgDRSUHfU9ioDc' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "BjR7TaIp8zfGYlJe", "customAttributes": {"TgQ8OZmpURuTvt8U": {}, "Gw2f2xzW4vKKiInX": {}, "R2qJIQVCoqM99HHb": {}}, "groupDescription": "DRP1cLAIgRdObm7U", "groupIcon": "B0ocW3UzxEewuVHB", "groupMaxMember": 52, "groupName": "x15ojj1vZkIwUeHj", "groupRegion": "Dxsfv4fQ4fRC2AcE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "l4nUIwrB1mVo5Kf9", "ruleDetail": [{"ruleAttribute": "Bwf6puJlwXWr9DEK", "ruleCriteria": "EQUAL", "ruleValue": 0.6003495782741027}, {"ruleAttribute": "27rOjDR8hSYfOxjh", "ruleCriteria": "MINIMUM", "ruleValue": 0.5660209550880051}, {"ruleAttribute": "zwz8BFQ0xp6WadYs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7206440986006284}]}, {"allowedAction": "u2HtJOwrIcv9ck7m", "ruleDetail": [{"ruleAttribute": "ZDdSrzdbb71u3C5H", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12545483062836726}, {"ruleAttribute": "q2K0XgwqYVsNoVyC", "ruleCriteria": "EQUAL", "ruleValue": 0.34295434134491554}, {"ruleAttribute": "IZ1GVXaPlo8xeB3N", "ruleCriteria": "MINIMUM", "ruleValue": 0.5514484023336889}]}, {"allowedAction": "qy470kajxXkzaSq1", "ruleDetail": [{"ruleAttribute": "2Ww9IEg7UIJMWcCy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2801698004660035}, {"ruleAttribute": "Frk0FRTc9V2Dw7M9", "ruleCriteria": "EQUAL", "ruleValue": 0.05251705443887744}, {"ruleAttribute": "8nINTz2unmUekWEu", "ruleCriteria": "MINIMUM", "ruleValue": 0.11234926563369774}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["kKel8kWYKcgfI0Cf", "xFEXFdR6D11zctf5", "v94bzFbcQZnnooYc"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'RIz7y4cqPg08EDpi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "L3FdaGWQZhRKeJlw", "groupIcon": "mvWz36v8OmPxJWU4", "groupName": "rTQDskHvlqmswbVq", "groupRegion": "NkTEpJZJHwOyF5dC", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'PJF5YbHGfjGzQx3A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'yJt8Hr9uBVhTJrGx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xUVflYR5auOcjmDA", "groupIcon": "DxlN6tuqFHIIOK4C", "groupName": "wu4n7CvEVsydztVa", "groupRegion": "iftUvls7WvQ8M3rF", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'QrZXAC6UpRvk65Dg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"w5hsLit3WHR9MJWM": {}, "m1jA9EpONaEaAFHE": {}, "l4CSGYVSSNtaUOWE": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'nJRwPogcsEb6TMmr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'T9JCWz8wd4IQCQam' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'AlZz6CySqYlYQCI2' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'RWKIO7QWnbnLGUhQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'JWcRD1SfX4JpM0ay' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'nTmMjl7m54jvv2IV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '0S28brDoakIHZDro' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ojaKWtWWlqzFMfFf": {}, "m4J5rKtFatrUw6zk": {}, "sxlZF0sF0KjWFE4f": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'Ro24NhcNk2kgS9mk' \
    --groupId 'VrYNDwQ2ulD01Psq' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "PUTiYUu9fOFQTR3T", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6058338889776809}, {"ruleAttribute": "xUBfLIR45pYn143D", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7632716780111721}, {"ruleAttribute": "y8bCbaZpDLs6QarT", "ruleCriteria": "MINIMUM", "ruleValue": 0.2116857605767538}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '1A27feUkjCM7KjiD' \
    --groupId 'ZVlXuxpK0iH87Nac' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'dLkE2KQ9cgDKc0sD' \
    --memberRoleId 'YTwbBsQbbVFHfJKn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "WXyCSKcnPeJobP5V"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'tC9tBz4lVwHGKWWx' \
    --memberRoleId 'KO9ktW79xo2EAwu4' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "BbtTcjQdZ2Skv2H3"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'CvVFxY3puw3YVpXh' \
    --namespace $AB_NAMESPACE \
    --userId 'hr8aVUCEr71DD4oL' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'VH0VQZpl4oyImJ1W' \
    --namespace $AB_NAMESPACE \
    --userId '1YlXcZgr0UI2FDSX' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'A1ndRF8NidDlaQZN' \
    --namespace $AB_NAMESPACE \
    --userId 'RoXqBQRFCeU1lAul' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'I8dh12FEGApafqNl' \
    --namespace $AB_NAMESPACE \
    --userId 'DxfTH0V6AHNODVxO' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'qFzz5MxO6xfolZRn' \
    --namespace $AB_NAMESPACE \
    --userId '22fJx2SUNVyGo1xP' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'zafRWpSEks5rCguu' \
    --namespace $AB_NAMESPACE \
    --userId 'EFExFGmVGwqZJHkD' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE