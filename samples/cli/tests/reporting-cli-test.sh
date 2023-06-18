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
echo "1..36"

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

#- 2 AdminFindActionList
samples/cli/sample-apps Reporting adminFindActionList \
    > test.out 2>&1
eval_tap $? 2 'AdminFindActionList' test.out

#- 3 AdminCreateModAction
samples/cli/sample-apps Reporting adminCreateModAction \
    --body '{"actionId": "MQt4SQcibykumeyl", "actionName": "O6YLKik3EQza0D5h", "eventName": "23yfgBI8q1zcTinm"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'desc' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "Pnwl8VQZAvQq5UmR", "extensionCategoryName": "qk6B2GbfPWJzNFq7", "serviceSource": "ixpfWTCxDeuTcaPK"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
samples/cli/sample-apps Reporting get \
    --namespace $AB_NAMESPACE \
    --category 'all' \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
samples/cli/sample-apps Reporting upsert \
    --namespace $AB_NAMESPACE \
    --body '{"categoryLimits": [{"extensionCategory": "9zvCTGFoANmxwFgK", "maxReportPerTicket": 100, "name": "Bwzb2KwIYE3DTHFb"}, {"extensionCategory": "ZHokGkP6yCUYU2Q1", "maxReportPerTicket": 37, "name": "Xeo4hVE9heZyfRcP"}, {"extensionCategory": "G33Dki6TVirU97WH", "maxReportPerTicket": 54, "name": "3mHFWqvikTvj9BGj"}], "timeInterval": 7, "userMaxReportPerTimeInterval": 9}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["6YK5UZV2VPFLTp8Z", "om653EQEwjGHFGp3", "h95V14U1IfBh1ogv"], "title": "AmxsEjrzW9VICAFR"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'XV9Ju1iVJRWNLudA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'x41sCGBFb9G030bl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'aQ6etSbzrHPHfsqN' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["axYFtosAPDowjchw", "ipamyCuLBkDRXYIP", "WRJrFbM413WqNLw9"], "title": "OIZAgJjUdxp2brhh"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '3jdZQ8YbpYbwhbRs' \
    --limit '88' \
    --offset '88' \
    --title 'GwIgsRwjbbV0IbCq' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "t73ODAusWqLccOAI", "groupIds": ["MF8SDBfpbXY3Tr2c", "XCEQa45Hc8uXcXbr", "qPg2DcZkK24IzoA2"], "title": "6n2j1uuYV1gFv8Oj"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateReason' test.out

#- 15 AdminGetAllReasons
samples/cli/sample-apps Reporting adminGetAllReasons \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllReasons' test.out

#- 16 AdminGetUnusedReasons
samples/cli/sample-apps Reporting adminGetUnusedReasons \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'TLII8gg3f1aAGW2w' \
    --category 'EgJffXhrEquBT3nr' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'A3cWKR389sV9R7jI' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'VvmDirIo8vLNcVbs' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'NiV1a4eyLe5Z53FR' \
    --body '{"description": "J734mgwSDtjz9f6n", "groupIds": ["1uL9jSrLdUHvK277", "azzIXoFr1EFGGpWe", "AotBx6MT9VBzxSsL"], "title": "z8apJNjnweuLIQ9R"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'r960SEnQ8dFuMb71' \
    --limit '77' \
    --offset '11' \
    --reportedUserId 'MO3FSmHfndj8ykby' \
    --sortBy 'feE678Fr6a7IOO9o' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"lY8Tqshc4BWapbWU": {}, "89mXygPsuis1FV6h": {}, "mhSgBxfg3QaVMhz9": {}}, "category": "EXTENSION", "comment": "clzUI3vLF1Knlumm", "extensionCategory": "VgaygztNLXdFjigh", "objectId": "YVtZJzcPSKA9YuSo", "objectType": "RYyxoTDbosA9ZPhq", "reason": "yiaU8ia07sakteZ0", "userId": "dBx53zp8UK5bMKbM"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "o2OvRi7T9G3WAx5i", "duration": 58, "reason": "cRGm2e4rppXpO1r1", "skipNotif": true, "type": "WlNbhvfii98t3oAF"}, "deleteChat": false, "extensionActionIds": ["30ZNaxJRQDqE8zZ1", "E7p8XhrRcNQ9sTwb", "qkM5NfCpPkLjQCaP"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "3JtyKXyHp2sALKHS", "reason": "jlkj1wUmp0vwkPpf", "threshold": 24}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'ucfspovn9Uqn7CZw' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "RfgsP0VuCMZRncET", "duration": 52, "reason": "BGTwEAUGFVtLyGnX", "skipNotif": false, "type": "sTM748DvwHd52Dnf"}, "deleteChat": false, "extensionActionIds": ["3W5E0TqW3xzLoVhS", "vgYBmh3tnKJFCKWj", "pA3wf69t8Ej41uIh"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "wOEJDblm2Ilh7RuA", "reason": "JTE5RdmX8oUkzUOO", "threshold": 5}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'TFvHP2iAmwYtd5Et' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'p13rcIkK5hJwghTY' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'GgpF2ZZEdV9jDXIT' \
    --extensionCategory 'jsmK5yPGmB6XXShd' \
    --limit '33' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'LIVE4howvM03Tgdp' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'Fv9CYJXasV21anIp' \
    --extensionCategory 'Sb9SYi6ZEtfnDjV6' \
    --limit '87' \
    --offset '35' \
    --order 'nqC5BakMQYzIRkVp' \
    --reportedUserId 'iXrwilcpnbPDuPUw' \
    --sortBy '5A9UhTDL3jh4JWmJ' \
    --status 'QGIACpi59cWcTDfl' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '4MFXBntEBqAhjf23' \
    --category 'ZZpiven7FIfTYIlr' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'jVBYuo38zEx1gkC0' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '6AaJABk67TO8v7NK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'eGogSkFCRSXtHMfW' \
    --limit '63' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'dE4CpryxDJOjEV7l' \
    --body '{"notes": "Yz2PTamp0IImzfRz", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '5PGCZBGa1CvnUMcb' \
    --limit '87' \
    --offset '49' \
    --title 'EInCRO4GzcvAD87k' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"Fl1hCdgl2hV5Eddc": {}, "N7xIizeoolkoCslo": {}, "yZ7w2UnL5GOQuS4l": {}}, "category": "UGC", "comment": "BSMxCMS1E7XLfx90", "extensionCategory": "P1GtAMcnJIz4a1rG", "objectId": "xdOiCTNnmIWTVkvf", "objectType": "qXUFlFYliF4D40nY", "reason": "y2e9QyEo1ZrZFCPK", "userId": "HEHbUErpLExYtrAQ"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE