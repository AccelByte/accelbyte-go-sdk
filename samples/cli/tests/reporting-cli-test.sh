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
    --body '{"actionId": "ZlzO4bygJSATnyEs", "actionName": "lJs773l4tsDCTk9r", "eventName": "m5dCSirSffLgRyum"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'desc' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "ZGf0fSQ4cfUy7GiD", "extensionCategoryName": "BBx61FsNDoQf92eT", "serviceSource": "R2JM0GEVBolXojtt"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "5bHLxPwCUAOdERYP", "maxReportPerTicket": 23, "name": "FhXOEd86zywG04cx"}, {"extensionCategory": "esFlijH8RaJoB0ic", "maxReportPerTicket": 62, "name": "NOcszUGfcVr5u9hN"}, {"extensionCategory": "8RhDH4ngZc5FquV8", "maxReportPerTicket": 1, "name": "F7BXBCRVOlicQprt"}], "timeInterval": 87, "userMaxReportPerTimeInterval": 17}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["j2UIrofeQToowGtp", "RRV7FxiCZnVN2BLs", "jWrRpjHo3urEUnDl"], "title": "B1ybhXZMN1mLsjab"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'W6ow6TjQMlh7mbgD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'D0CuxMRlswBgzZHb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'RKZZcMZugFlENObw' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["4LADJpkAmXztFFg0", "RLLRXlDzGZNTWwfh", "KFERkTbJskdTL3VQ"], "title": "heNdwTAmKs8MNr2B"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'dmeZW3O7sWwwG3Z9' \
    --limit '26' \
    --offset '4' \
    --title 'pD3nIKkJ9gHHNp1s' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pyWREE1B3zKXZXPt", "groupIds": ["SyMPM5ioOqFbG4by", "rOcH5fQGhFBJCzfC", "Abpya1gbG0Ph2hrg"], "title": "f19cb1CNbBWQHjCr"}' \
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
    --extensionCategory '72alTgxegDPyBGjY' \
    --category 'naUu7QezC6RrOlXj' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '0CaHlRYIFPY9HprL' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'tGcRCHv7cuWod7i5' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'I8dJuzAygF1DZVsC' \
    --body '{"description": "BSqgIh9MPmQ2iSHv", "groupIds": ["XbTsiL7T5S1303aN", "W4j70RwcG9XUq8eE", "PUMEV9WPG6ySiS9G"], "title": "3StpBJjQPZybHOtc"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'rzZT6XuSs1qPmgE2' \
    --limit '45' \
    --offset '24' \
    --reportedUserId 'jCaccR5rsFh4OR1h' \
    --sortBy 'MiAbAUy8F0nSBKqR' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"SANEWbR6bwdOlZAs": {}, "eWnQMXhvPJhW5EhX": {}, "xY0OmfaAOdPGPRtb": {}}, "category": "EXTENSION", "comment": "8TGK5mE3TVCpjTsf", "extensionCategory": "FaEzhX0gBEsoQoY7", "objectId": "tvUoM3V4Jw3uVnwV", "objectType": "6s0ZIDKqzVezFNQW", "reason": "Yrs4kBHbG0ze49uG", "userId": "MIIwRBzlXxk4V9Hb"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "yaLFG5r082lWq6wo", "duration": 32, "reason": "wXsfXNJ2XCxKEKn3", "skipNotif": true, "type": "oHbixuqvPUWvGtER"}, "deleteChat": true, "extensionActionIds": ["SGxJhorJ9CPi7kuT", "BXQePOJycc7N0kym", "GsrvP1MkLU4tBtPI"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "e9zbwhfqsfcVLVCE", "reason": "ueeP17WANCgXMToe", "threshold": 6}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'irr7Opv8YDaLFOA9' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "r3or5tGpPNEyV4v0", "duration": 50, "reason": "f0mG00KJNezmwbHj", "skipNotif": true, "type": "PSDIwYw0gorNcZT8"}, "deleteChat": true, "extensionActionIds": ["ppRUm3edjT01Csgo", "NYxDbeLx0G88WHLG", "tCnN3PLAA3KlYnkt"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "Jm7gOfIqc9vGa4O1", "reason": "cTFupYT2xiC5Qe2O", "threshold": 33}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'BoNk5kH7zatvYZnr' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'wmmFBxKGBK4wZl03' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'JwxWjog5Q6U86zYx' \
    --extensionCategory 'wvn5FbEmLy7HC9fv' \
    --limit '44' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'Xtpuf5wduuVBPYUI' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'mSl4hR772f4fi8tH' \
    --extensionCategory '1yNSV2F0XKBFHkd9' \
    --limit '6' \
    --offset '51' \
    --order 'wZbfg3h1k2gOwzvI' \
    --reportedUserId 'iP9Ai3KJhsMIp5Zt' \
    --sortBy '0UEcZmekRI3fGKWZ' \
    --status 'gwjppHolXxoh9yW3' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'X86ilF6GG2rAwfbo' \
    --category 'Rk3VKrqkVRNSuRDe' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'C8QcR4uNEgn919Hb' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'WyutBYKfHKnmE1fJ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'xFEFERmRT6d3f0fg' \
    --limit '34' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '7CMWOpWZxJMmuC7f' \
    --body '{"notes": "W24UvvyblZ0rcIen", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'jAXid2TCcBexlwIu' \
    --limit '87' \
    --offset '76' \
    --title 'OPSS28NbPawLdXP5' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"82z5El2fuaS1cWFu": {}, "60LrFBM2uje9nbA9": {}, "1FZYL6KyAx7cBypn": {}}, "category": "EXTENSION", "comment": "vbew2zypJmvdpzLQ", "extensionCategory": "hVLyq9pula1C7gW5", "objectId": "LfqxAiH52xAJf63E", "objectType": "VjxOltpD79LmKjsg", "reason": "jaUyBplZww8rCH1M", "userId": "sf8aaYNtFXXu0d2m"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE