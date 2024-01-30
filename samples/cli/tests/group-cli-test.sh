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
    --limit '82' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "lc74JLw2G0YEhODu", "description": "BreA8SaxiqNiyWSD", "globalRules": [{"allowedAction": "MMLl4pDEOo4IyDt2", "ruleDetail": [{"ruleAttribute": "k9iu0Fu01O2C2gaK", "ruleCriteria": "MINIMUM", "ruleValue": 0.6195581802518996}, {"ruleAttribute": "GZhBE3S1emhDa1yx", "ruleCriteria": "EQUAL", "ruleValue": 0.9278339161281076}, {"ruleAttribute": "gVGYFPCENkZjdNnZ", "ruleCriteria": "EQUAL", "ruleValue": 0.10962424624123235}]}, {"allowedAction": "cdRrROot1JUEQR0P", "ruleDetail": [{"ruleAttribute": "d9hJo5OGm0snAbGz", "ruleCriteria": "MINIMUM", "ruleValue": 0.9869779868415859}, {"ruleAttribute": "SZLjloSweX6bX9tw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3857236463715157}, {"ruleAttribute": "1kGqFCVjgoZXZ4Ml", "ruleCriteria": "MINIMUM", "ruleValue": 0.879109277437782}]}, {"allowedAction": "R2YwywJHN6d3fKMS", "ruleDetail": [{"ruleAttribute": "kTzmof7AlWl3RJ9x", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2817489798403423}, {"ruleAttribute": "MrMajuOXmqrJg9MN", "ruleCriteria": "EQUAL", "ruleValue": 0.8348444089025484}, {"ruleAttribute": "xd75pK7RwFwVqE9k", "ruleCriteria": "MINIMUM", "ruleValue": 0.5987123232749424}]}], "groupAdminRoleId": "4oZmeSQ5FkKqo9lB", "groupMaxMember": 79, "groupMemberRoleId": "YncnWrWIMz0exjCU", "name": "hPb1Or1HT5p394uw"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'sM5OCbvFonPI3b5C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'LnCp9ikFgRSOGbyd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '4GSHwIj0traAfh4g' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MgkblAYQoPzGbyCy", "groupMaxMember": 67, "name": "MAoMItLDTZ4rs4Aw"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'NSrh4fvbXid776wS' \
    --configurationCode '94csqyeKmGbgdzMs' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "LpW0r5a0xoTgVexK", "ruleCriteria": "MINIMUM", "ruleValue": 0.22766181221487825}, {"ruleAttribute": "zhssnu0TZgK4eHzG", "ruleCriteria": "EQUAL", "ruleValue": 0.20757641271849336}, {"ruleAttribute": "bRK5WfqBKefRnImk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.153870810155053}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'm4616THexrzsMGJv' \
    --configurationCode 'yhi4TuChJv5r0QRu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'tFwBgJ6ddVsyKNiG' \
    --groupName 'GMICYNA4YJDE1E8b' \
    --groupRegion 'cC7yTwmMIzulxCaX' \
    --limit '4' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'UPWZSvA5rnVJl9ql' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'pvfXjKwIdsqovCeC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'JB3FqWlfEm9f8jYQ' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '67' \
    --order 'fSfb3nYg09iQ6UVm' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "JSop4zLGZeabQrvd", "memberRolePermissions": [{"action": 44, "resourceName": "lG7GsPQK4ZwaT2sh"}, {"action": 90, "resourceName": "EfPjl56GxJ6IgdV1"}, {"action": 15, "resourceName": "fRns0jrXujyC02VL"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'VDG8lFj4GBIKEc1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'q9zwDqYgsOIIxy0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'ECm7VwYlgLEKgOFp' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "yxeOrCOAikKs03tY"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'yHO646E1iUVoJWcv' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 53, "resourceName": "ZIajazT1JvR33zEc"}, {"action": 25, "resourceName": "lF0e9xl72OHhnIby"}, {"action": 82, "resourceName": "t2VLJuHDbX1dzA27"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'UCiA9svAFmiaEl17' \
    --groupRegion 'Kbfr2ipltO6gvDcD' \
    --limit '84' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "KSqlXo5tIV43bifX", "customAttributes": {"EJ60XXLqChFAIvxC": {}, "l7AaMizqLfqDMBoa": {}, "eJ3i2983ZX7H8O0q": {}}, "groupDescription": "0voGNSDWI66D6OFG", "groupIcon": "aVxqGhMpd5J4aRrV", "groupMaxMember": 29, "groupName": "QH8LwBBzkRuS6KEK", "groupRegion": "mLVHAyc7K96NXJ96", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FvppjNTgrcmM0zgM", "ruleDetail": [{"ruleAttribute": "Zm58jn1fjeMv2mGm", "ruleCriteria": "MINIMUM", "ruleValue": 0.6419080089392044}, {"ruleAttribute": "vaEw8i27nnoLxIsy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18450040905393217}, {"ruleAttribute": "OwuW27xrF4gmUii7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2643061222145531}]}, {"allowedAction": "O8PQaN3PXyKdyAE3", "ruleDetail": [{"ruleAttribute": "JQt7FxMU0hU0JvQI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8896807908314208}, {"ruleAttribute": "WLBS9yXPJjico31s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19848853287911572}, {"ruleAttribute": "qc9RCMFT7lfl8NdJ", "ruleCriteria": "EQUAL", "ruleValue": 0.7689897182734001}]}, {"allowedAction": "WbGL9sdrGrVrReH7", "ruleDetail": [{"ruleAttribute": "QS29xEi1pFTA6UFv", "ruleCriteria": "EQUAL", "ruleValue": 0.9808715275876317}, {"ruleAttribute": "hlTCMFfFqcMYtibm", "ruleCriteria": "EQUAL", "ruleValue": 0.8215789137991434}, {"ruleAttribute": "ILo7R1IciN6t2to3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7510162097560484}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId '4tnTl40qFL4JvNt4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'xSfCMWBQhlWm4IZx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "1zXEOw9g9FvgYOXh", "groupIcon": "hmA3dqDdsG70Pj8p", "groupName": "XC1X47JfFKGeUrfk", "groupRegion": "ugceJWsWssYtEspi", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '9Y13WWIWPYWzXzwV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'DureJryIwOtIfE35' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "6Wv0uOzcF2qfHM5f", "groupIcon": "R1Kp55zqZnHjwkqq", "groupName": "rN9i99ynotidKMLa", "groupRegion": "tzRIMqVmosnFse8M", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '0cKOXQvxVFt58Mxs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"5Vwm3OgoOXFtEFoc": {}, "s2FpTqpOvJG3GVsI": {}, "I8C6ozisZoBgVG2Q": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'SoAee6uLHa2nVQSB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'sG9pwdqdG8pEKZV1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'ujBr3j0h1RXKXRF6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'wKApoD0xHbEOzhXB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'uACIVv40ZfrLTtrR' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'QN9EvtkVQUZ1pmkt' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '64' \
    --order 'ilyUtZiXNooFJqlE' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '80FgXrL9qtGQKSSt' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"A3mgM1EWnmHmqyM4": {}, "D8AKw2epMEe7ZFmg": {}, "ZZZKwcXEYsSCxi7g": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '9s6mVY4IxuYLzw8V' \
    --groupId 'orn0iOdxfg9YIQYL' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "LSHwL4h7dmCpxM5X", "ruleCriteria": "MINIMUM", "ruleValue": 0.4976419020503078}, {"ruleAttribute": "makFgDejbwnKF5xL", "ruleCriteria": "MINIMUM", "ruleValue": 0.9409482527642016}, {"ruleAttribute": "krWc9O4P50sqxEYj", "ruleCriteria": "EQUAL", "ruleValue": 0.04402848259777914}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'hZZyHpFJSVdfeBaR' \
    --groupId 'Ez6eEKzksEJhQ7QB' \
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
    --limit '4' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'RWUzFqHPLL3fZYRh' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "bJrkYc5uYur4TSQ9"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'ZBJZK3XL8APtUYhQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "w4AL0SloeAW0w1S5"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qQ2miwfxTOlXZ8eJ' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xefG921xdyQLPpC4' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HlONGVNLs0uTMxEB' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3209RpuFIffAUlVg' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZAEAc0qBSiQGMfgo' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["gCnaGSG44JqM87Od", "1bAuxsMHLnuCWdaF", "106HI84PZ8LjLjyy"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'aw8vjX1VeNReMYpL' \
    --limit '78' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'pVBmN4AazI72i6qu' \
    --namespace $AB_NAMESPACE \
    --userId 'ehlxuLF3x5nP7Lhb' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "IfSJDDkE2qDCxfXv", "customAttributes": {"RBvXIqjbr1FQT80A": {}, "Q2TCXUDeIxJ3DsXF": {}, "Deq9qsHbPYWRF8ka": {}}, "groupDescription": "1x22PaJ0K7rPkR0q", "groupIcon": "si2lOYABPL3cyzE4", "groupMaxMember": 99, "groupName": "UMeLKdH5C9okYUAf", "groupRegion": "hsQpwlg4Zl1mWqFS", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "MFpZ0PAk0SxMuvC0", "ruleDetail": [{"ruleAttribute": "dfXBsppy7ny8Pqnb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.49573244473100087}, {"ruleAttribute": "QE1OyURWtsbywPbq", "ruleCriteria": "MINIMUM", "ruleValue": 0.01867491647561792}, {"ruleAttribute": "lFiW9JhTwkDEPMEf", "ruleCriteria": "MINIMUM", "ruleValue": 0.00943111557024856}]}, {"allowedAction": "5zbFEdrjHL0xF6B8", "ruleDetail": [{"ruleAttribute": "txQ0SKJPUtq2U7lx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2491637564967072}, {"ruleAttribute": "mr9ELAGlphQwwXMe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4505887876929716}, {"ruleAttribute": "z0ABHCLerN0rHfq2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4315572693303932}]}, {"allowedAction": "RK8D6RbMRGbMUKBt", "ruleDetail": [{"ruleAttribute": "mCGUgKAE38OSBKWy", "ruleCriteria": "MINIMUM", "ruleValue": 0.8308587385601841}, {"ruleAttribute": "JUZfVSJYehaiaiv9", "ruleCriteria": "EQUAL", "ruleValue": 0.648185947390108}, {"ruleAttribute": "tb9q19eMXv61gpgY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.91621791789193}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["oeCg5sU4G02d7yRu", "ra2nYyUrkVnanJzg", "LQNMtTKx5Xke1TkC"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'IkOMnhtvMc9c0L7k' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "enVYw5R9zC872wfz", "groupIcon": "xi2CB24FsPMmcc6Q", "groupName": "srA2eplkbiUzUDIk", "groupRegion": "lFsKxD8zLLbxpG9e", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '1L4tjDyOaYNHcteC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'qpU7BtbkKqCuRaKU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "1QRUV7KL0sdFdfV5", "groupIcon": "Zv9jdgWPzKxwpZh2", "groupName": "sAHtosFSnWpQ1dl1", "groupRegion": "mFN2nH3cXUMkCdcy", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'Uo7VltK2py0bq48D' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"QNPxJUNMpLyiv8Uz": {}, "w8TOWLnJhNfT8Y2E": {}, "S6jtgdTdDd7XGXMC": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'h3zk9NHA4kzwfzjm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'QufO0ZDqZPcDzYWu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'C3lCxN3vcyHbDVsZ' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'bg8bB9DhuBnbBT2t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'OCWF74G91UD7DeJ3' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '3l3nsl4bsCJTBoFo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'VNSnpJgj3reEqfNb' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Kv4c95K2gMbdLPpo": {}, "edXe3FWgQYSbZscG": {}, "4JUDBO9RcFhAj5dc": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'KHtcH7PXhzGZtT3s' \
    --groupId '7eWKFDCOP6IrYeAo' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "YAidjQYywYNJdkvr", "ruleCriteria": "MINIMUM", "ruleValue": 0.44297696427717026}, {"ruleAttribute": "Do6pbJd1V6SlRlcE", "ruleCriteria": "EQUAL", "ruleValue": 0.32896495481231713}, {"ruleAttribute": "dAbnK6xiQYb5KixW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4105980849923174}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'JL3TYicSEON5576A' \
    --groupId 'L7pTiaOnR26RVFBI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'hP3kC97J1NkLl6UH' \
    --memberRoleId 'bp4701lyqkIp1EhG' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "4FnaO2DlnQrwoiRv"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'lzV2RyDLWs0luDx3' \
    --memberRoleId '38n2S3J4QDAkVcgZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "IFKi6TJ5V0IrNILx"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'p38zxNKQEqcKJVJA' \
    --namespace $AB_NAMESPACE \
    --userId 'qq5IxrDkEwcjFAc6' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'p6NLkBd4rwDWlmKe' \
    --namespace $AB_NAMESPACE \
    --userId 'CPRqNOCRJeAyMuuv' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'LnRibPQtovb5Obfk' \
    --namespace $AB_NAMESPACE \
    --userId '7C7cTzqDmRxxGVaV' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '5CNR0Sz6qrZgQTQv' \
    --namespace $AB_NAMESPACE \
    --userId 'C6aTtY9C2tSv8V7f' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '4sbHTABdVG1ESahR' \
    --namespace $AB_NAMESPACE \
    --userId '9Sh1X3XS4imuEcUE' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'aJQgiftLeLtUIVBS' \
    --namespace $AB_NAMESPACE \
    --userId 'WnUPdNyVqjPzgeii' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE