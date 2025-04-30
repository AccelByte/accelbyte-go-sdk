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
    --body '{"actionId": "iLX01qbNTXYTxXIB", "actionName": "ZvuM5mwcodu4r1jr", "eventName": "oEInXU7cwrN3GDsO"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "jU4eBx3svo4a2CNA", "extensionCategoryName": "6ClyfbR6DtvQMaa6", "serviceSource": "y30O7PLBRcog6JLx"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
samples/cli/sample-apps Reporting get \
    --namespace $AB_NAMESPACE \
    --category 'extension' \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
samples/cli/sample-apps Reporting upsert \
    --namespace $AB_NAMESPACE \
    --body '{"categoryLimits": [{"extensionCategory": "85sl0oTwCyAfaKbX", "maxReportPerTicket": 54, "name": "khrcwyUJe6Iuu73G"}, {"extensionCategory": "mZMCsLiWrIuMpKQL", "maxReportPerTicket": 68, "name": "oDTPbhXqeegmcfk0"}, {"extensionCategory": "izUcxJSGx9js541J", "maxReportPerTicket": 68, "name": "nJHA0zgf0rLpqNFS"}], "timeInterval": 71, "userMaxReportPerTimeInterval": 54}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["1MkUT7TX91EoLp1m", "DfGDF8HOJUc6Wbn8", "s0JpvAT8bSLp0CfM"], "title": "DFXP9pMQBpQ7FVDh"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'eGSUhWHJOqEBA1dw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'RZZS6fGE1tNqjgQ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'LzytdNgctSIrQPKs' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["gprhezmr4zuigfH5", "8tYHAPCEXULq9LSp", "JE54WIXZHBXbHvpx"], "title": "huPxqeyF0EA0TCZa"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'a8T5ZQA6hc848yVB' \
    --limit '68' \
    --offset '21' \
    --title 'WN5iVAZ6sOqMjS7H' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Nkg8xPCbbg2gdF5b", "groupIds": ["HfpdtJqExK2QKCsf", "ulduM1N2RojAEHld", "bCoXcUBRBF0TXaOD"], "title": "7awmjIqdM9SPJhP5"}' \
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
    --extensionCategory '7ApQQSYuc2sGAGIZ' \
    --category 'CETxRGcEpkx9Q6e9' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'OMM1VCiJbF8v7Cfe' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '6gSE5YK9ktIQr0Uq' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'VCWcaQq0ehJLMCa9' \
    --body '{"description": "RczhRd40jDSak3Wj", "groupIds": ["ZUNEKFKfqzXwfTQ2", "SblrocSKHX0azN2L", "NkP0UJ8pOVh7Y4BF"], "title": "znRWA8Gk9Ur32cDw"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'XwyHAIA2C9xJGIZ4' \
    --limit '97' \
    --offset '77' \
    --reportedUserId 'ZP5JC05fxUZlsujt' \
    --sortBy 'ZuZb9TBoJTOLvPwO' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"wuW8gwE4cts8Aq0a": {}, "Fc4FO85WEHneBdAq": {}, "uuyErb37wWZDuQki": {}}, "category": "UGC", "comment": "VF1HkdxdFgXOXnya", "extensionCategory": "QtUNdAu8AA13Js60", "objectId": "czWjyINxkJWgPHtT", "objectType": "UQbTF0TBrJMQRdnr", "reason": "f9SW3ZZ0SUWsSc7T", "userId": "UCjSZgzjgoM3pR4R"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "R2vjeFYwWodWsh6L", "duration": 30, "reason": "V8lfNyjWBclQjiXZ", "skipNotif": false, "type": "YckBO1LpyGBSYivy"}, "deleteChat": true, "extensionActionIds": ["3AEBZ8kdu6ZtOdYw", "2i9RbPcLZUcuRDPk", "qWcj6InnfKoMxRnu"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "m4PzpS92NlIK7Aig", "reason": "Kestd5IrrWI3ievp", "threshold": 69}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'PlUMIAvJvNDfB82z' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "SOJ2iPznXPcLUBNC", "duration": 62, "reason": "6RowbdIK7kaeaBpm", "skipNotif": false, "type": "ma59dWc4WoiLaqgY"}, "deleteChat": true, "extensionActionIds": ["k47isxYbvkUwj3P8", "MtrsJWHQ9f4J2Sxo", "637qchGwwVDhLnS7"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "5bQPJa81sk3tBXsM", "reason": "0eoZhDCBPPCJOFfN", "threshold": 16}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'eAN6oCsgpvV3C9PH' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '0FpFFnk7hYvaJog3' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'YL0ejngqTzAwhPDi' \
    --extensionCategory 'MtOujh3FCJ9SCPcb' \
    --limit '7' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'kHDPycJPjy2L6Nj2' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'MiKfCQxZ8ch7J1gw' \
    --extensionCategory 'bZW1v4zkNyrqMsXO' \
    --limit '21' \
    --offset '31' \
    --order 'W1RuJ1KJpwbrQ8R8' \
    --reportedUserId 'JAsDqWv7knCU6yNi' \
    --sortBy '8vw7vGbtzCH2CKuv' \
    --status '61adhX1Qswoi1iMD' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '9julX1hxT5FILanh' \
    --category 'qOptpoZSTbHMjUWc' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'ceeF7N07jUxcFSgB' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'KiFnweW5swwzLGZt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'zSOjJqSqOPJ5IDWi' \
    --limit '73' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'p7RpowA91kmbjNz7' \
    --body '{"notes": "jAJLmYCFW6r6ZIa4", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'FWGugqz6U9acxM6u' \
    --limit '35' \
    --offset '38' \
    --title 'lDd68txShQzFBSIh' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"0WmbWXUzUG1My1jW": {}, "aFyDb4IJuGxtAJaV": {}, "5ja2tprPaW8WWRBr": {}}, "category": "USER", "comment": "fgh6JNHIQ6Vp65zq", "extensionCategory": "nwaJ87wffzVKS8pZ", "objectId": "J06Qtokvjm0WoOIe", "objectType": "tsYXf5S9C0jWRPZi", "reason": "if9GINZEl4FfrZa1", "userId": "Ehez8lvo6ubTxHNW"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE