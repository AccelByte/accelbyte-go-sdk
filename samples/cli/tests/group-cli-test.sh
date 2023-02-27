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
echo "1..73"

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
    --limit '64' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "q5uztRH7", "description": "0JAjtnmP", "globalRules": [{"allowedAction": "ET4ijCcs", "ruleDetail": [{"ruleAttribute": "M6LAohZu", "ruleCriteria": "EQUAL", "ruleValue": 0.605791197800666}, {"ruleAttribute": "2Z8NQDeM", "ruleCriteria": "MINIMUM", "ruleValue": 0.2622587616414862}, {"ruleAttribute": "GhLOjTi1", "ruleCriteria": "MINIMUM", "ruleValue": 0.582825507962297}]}, {"allowedAction": "Wsw8tkTL", "ruleDetail": [{"ruleAttribute": "R1wRC8wc", "ruleCriteria": "EQUAL", "ruleValue": 0.059500485341270726}, {"ruleAttribute": "C2a2Eb1E", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7385526705877028}, {"ruleAttribute": "XWAfor2W", "ruleCriteria": "MINIMUM", "ruleValue": 0.5673222488517217}]}, {"allowedAction": "mZuDGTsG", "ruleDetail": [{"ruleAttribute": "Az29dZIv", "ruleCriteria": "MINIMUM", "ruleValue": 0.28373450055728466}, {"ruleAttribute": "I002xbHI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7596422206345219}, {"ruleAttribute": "3Ukf9ZOL", "ruleCriteria": "EQUAL", "ruleValue": 0.7328165738760833}]}], "groupAdminRoleId": "eoJLNQMk", "groupMaxMember": 19, "groupMemberRoleId": "3QErjEDH", "name": "UQMSaq7Z"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'EUu4VE9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'x0LdFFrY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'CKxpE0tN' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1MY4KNGV", "groupMaxMember": 29, "name": "q05tx9wZ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'E2ngggtp' \
    --configurationCode 'sSqGIq00' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "nNUCWDcV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9374485148304598}, {"ruleAttribute": "DTEVU1mY", "ruleCriteria": "MINIMUM", "ruleValue": 0.2680883976454601}, {"ruleAttribute": "huWLmOve", "ruleCriteria": "MINIMUM", "ruleValue": 0.5784054095739604}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '86VGaLHL' \
    --configurationCode 'NO3KuDzh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'pYADnk6O' \
    --groupName '4FdmVD8M' \
    --groupRegion 'MVzYzXIf' \
    --limit '51' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'LD5sUFms' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '7rnFuguM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'UzDHaQ9h' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '62' \
    --order '9r8KeSnd' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "38OPcN9z", "memberRolePermissions": [{"action": 93, "resourceName": "eQchdTE4"}, {"action": 66, "resourceName": "KwoBFNdr"}, {"action": 92, "resourceName": "dGXRoEsz"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'j0eVt5uL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'OW44LB3v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'VOhz8NJo' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "bxAhz92I"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'kmYPi2hx' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 64, "resourceName": "TI1GyUA4"}, {"action": 50, "resourceName": "I8wx8jrj"}, {"action": 71, "resourceName": "mTbdm355"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'qWNOtPve' \
    --groupRegion 'hd7X9hbZ' \
    --limit '44' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "3GRlFlZA", "customAttributes": {"v0YQCs1u": {}, "JyXHS61N": {}, "yvq9rI4E": {}}, "groupDescription": "Nt3IUnMF", "groupIcon": "dNkwpGkN", "groupMaxMember": 10, "groupName": "zTTljUqT", "groupRegion": "bieM49N2", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "mW3S6BSM", "ruleDetail": [{"ruleAttribute": "iOYMniby", "ruleCriteria": "EQUAL", "ruleValue": 0.16336131744394422}, {"ruleAttribute": "XP0IfRlR", "ruleCriteria": "MINIMUM", "ruleValue": 0.9196395953056365}, {"ruleAttribute": "tcxNouA7", "ruleCriteria": "EQUAL", "ruleValue": 0.9901628846521381}]}, {"allowedAction": "LJMNK6lI", "ruleDetail": [{"ruleAttribute": "o4lRdGbg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10412309723292446}, {"ruleAttribute": "NGJsYJi3", "ruleCriteria": "MINIMUM", "ruleValue": 0.4160389161211058}, {"ruleAttribute": "XfUBzcpN", "ruleCriteria": "EQUAL", "ruleValue": 0.3045918238632803}]}, {"allowedAction": "TJ1ayzlg", "ruleDetail": [{"ruleAttribute": "FxfpW4xj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9688199756677502}, {"ruleAttribute": "6DebdszH", "ruleCriteria": "MINIMUM", "ruleValue": 0.957464929451542}, {"ruleAttribute": "kuVZQ93y", "ruleCriteria": "MINIMUM", "ruleValue": 0.3325090039992977}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'N2wh97R2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'QZEKCXrK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "R98IHAi6", "groupIcon": "zOUUWnVa", "groupName": "4qWaY2Hy", "groupRegion": "UXiW8Ie8", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'JdK1I4N4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'nA4vBWG9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "uTtRl3W6", "groupIcon": "H2apqqKz", "groupName": "W7mIKSlc", "groupRegion": "vEWxdqqD", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'mj3LqWuI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"r2xfQeNl": {}, "zc1jEcIW": {}, "sE7kCwDQ": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'SOvs4fmI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'MPzTizY7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'fAJTLyvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'z8FFq6fQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'b9S4oYwB' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'GpIDdaX7' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '25' \
    --order 'dbe7NHL4' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '8BqQkX6P' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Kd7xmB5l": {}, "bqmNTkAJ": {}, "DMaHYh7C": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'qiqcbkW3' \
    --groupId 'Ga7U8YmB' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "vV0yc0tg", "ruleCriteria": "MINIMUM", "ruleValue": 0.11067489896168092}, {"ruleAttribute": "2fI0OyLh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47129338560768363}, {"ruleAttribute": "IClpsRhC", "ruleCriteria": "EQUAL", "ruleValue": 0.8006066126294139}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '5ucusAmV' \
    --groupId '0sMEK7jo' \
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
    --limit '72' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'qbsQuo7z' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "nPqa82L4"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'B0o5ZLnt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3lQr4r9C"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kE5r018t' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hCPwoKyA' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tNEZ39eL' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Jsdesrwe' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KqOwqCKW' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["NYrjp80f", "k9M5DrWJ", "PRMxB40C"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'uY6UISCs' \
    --limit '15' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "pe0gHAxV", "customAttributes": {"8lnkEI1c": {}, "nqZ8Lajh": {}, "hUBL1cDY": {}}, "groupDescription": "t5PHzJJI", "groupIcon": "gJisJWRk", "groupMaxMember": 96, "groupName": "9GJ51OwI", "groupRegion": "bapyrQH4", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Gr2QlT7Z", "ruleDetail": [{"ruleAttribute": "Xx53JsWt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33145218897768725}, {"ruleAttribute": "emLCMIWy", "ruleCriteria": "EQUAL", "ruleValue": 0.5950160011395841}, {"ruleAttribute": "rKf3HOhw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33893832723199746}]}, {"allowedAction": "8EkkfHaA", "ruleDetail": [{"ruleAttribute": "nzllVppi", "ruleCriteria": "EQUAL", "ruleValue": 0.9830788985956955}, {"ruleAttribute": "15besCXU", "ruleCriteria": "MINIMUM", "ruleValue": 0.45827765756378747}, {"ruleAttribute": "bcU7qXtt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9916347266291202}]}, {"allowedAction": "S7UouuBU", "ruleDetail": [{"ruleAttribute": "6G7zIQ5u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5591149245342767}, {"ruleAttribute": "ioi9LS7Z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.006867290093942269}, {"ruleAttribute": "w5lhFGpg", "ruleCriteria": "MINIMUM", "ruleValue": 0.20485079726700994}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["trKzL8mb", "yvn1VuMz", "7C5vcqIZ"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'HHz4ylKd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7Bx2b6Mo", "groupIcon": "8GkZkmAn", "groupName": "p5PuD6Xy", "groupRegion": "msoKvF0U", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'xSUom8Wk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '6FLf81jf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "kTj1AeAw", "groupIcon": "yGbS6MGl", "groupName": "cOja2uy4", "groupRegion": "EOaS2mXs", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'ZXf7eceq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"BAOoJ8zH": {}, "DwUXfisQ": {}, "3SlKeB6I": {}}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'fncZTMgo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'zgevLdgs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'Mucuhdsh' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '6lLx80I5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'gjnHxb3n' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'AnPFDgmv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'YJkwSQT2' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"JnzwPRa0": {}, "916Zqwfw": {}, "lMkIlBCu": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'ELtUHDEo' \
    --groupId 'LWccNHF4' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "cA3Q2FDA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9892369892351611}, {"ruleAttribute": "PyNA87nc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7661859692512472}, {"ruleAttribute": "Q7NTFvrA", "ruleCriteria": "MINIMUM", "ruleValue": 0.7340262944473951}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Qpu7wDlT' \
    --groupId 'CPpbW4Wn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '19XghiQs' \
    --memberRoleId 'YsG6SPMS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "M7klLlpP"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'V9FYdlxJ' \
    --memberRoleId '4rpnQWgT' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "HyIh9zlj"}' \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Fb53r5Tx' \
    --namespace $AB_NAMESPACE \
    --userId 'dAS4BZ2c' \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'fFX09GWI' \
    --namespace $AB_NAMESPACE \
    --userId '8BrYHMLY' \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'Py3UADg2' \
    --namespace $AB_NAMESPACE \
    --userId 'kMo2TUKi' \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'cXbaV9Oy' \
    --namespace $AB_NAMESPACE \
    --userId 'gSy27Xii' \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'wbvvKvCK' \
    --namespace $AB_NAMESPACE \
    --userId '7aHGwKl4' \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'g9ue1Jpm' \
    --namespace $AB_NAMESPACE \
    --userId 'mZm7GiiW' \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE