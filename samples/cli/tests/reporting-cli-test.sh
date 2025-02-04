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
    --body '{"actionId": "AyyRduPdhlLXy77m", "actionName": "XEMnXuMb8snWUP5z", "eventName": "Gje0wzEofEnNgD5U"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'descending' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "m5LMl2d4loGQKhpm", "extensionCategoryName": "EXW4s1bXxozRWDtk", "serviceSource": "iocIrKR3xvDE09j4"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "kc1eeOteyHP4ynn0", "maxReportPerTicket": 44, "name": "9mIMfIAMQ8npBUNx"}, {"extensionCategory": "D4eLTkbRQMrJThUF", "maxReportPerTicket": 7, "name": "3WxiObD5h119zEXZ"}, {"extensionCategory": "GhEt2DBIxtfwV2U4", "maxReportPerTicket": 63, "name": "AhbVQiO5kZ1LjQ3m"}], "timeInterval": 60, "userMaxReportPerTimeInterval": 1}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["DG8JMZzYtWtV9yku", "M3uOIdalByY55B72", "MoVhgOa76q3pAp8p"], "title": "70DegozpM7GOcLi7"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'gdupClqvzoMWQfYY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '7oZpokMHspyYrK6J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '70lScaBnxafvm2qK' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["oV1Epij3G4yp0IKZ", "pZfqz3zGliEKu1Yo", "FNeVcmLMeB6cqcie"], "title": "Nxc7jwlit6id5ADo"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'YBL6q9phtWCmNpzn' \
    --limit '40' \
    --offset '15' \
    --title 'j4iJZpaCIwfpbNGm' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "C5xiUEGpt1jagOsN", "groupIds": ["0jpl9Ey5P98eWngm", "oACJCAqIhn1ZqH3X", "kPUfC9lD1tNVYpFD"], "title": "sM3q02imanOJHLCa"}' \
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
    --extensionCategory 'MzGcTClEkrPTs5Zd' \
    --category 'tvPabR0QJybaUjZ4' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '9xAUu1BPbbmx4f8I' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'NONVImsLdranl3nf' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'm8WBJ2VdM2iyLPyM' \
    --body '{"description": "uVWhh5hHxOiaCNnk", "groupIds": ["yjK7FUZo1EDXZ4hE", "BNrWqOnQ2PoDr8OA", "flAbBvqwKuFbqCyE"], "title": "Fo9Lky5AsINjG0Gy"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'EO99SwpyzcnzEoi9' \
    --limit '60' \
    --offset '3' \
    --reportedUserId 'kxOSKOTBwrU3xtiW' \
    --sortBy 'QiWsOPq2TNydqeUU' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"e2Y0BX9ocf2uBU08": {}, "E2YeoPIm4MZ5V3uW": {}, "ZOjeHJDsasuq4BNz": {}}, "category": "USER", "comment": "u5NUaMeiHMIqyj8v", "extensionCategory": "FkGqYrkEwCWzNoHE", "objectId": "kcpygVVE1QAXHlVx", "objectType": "Gy6A0rhKg0px3NT7", "reason": "tLuNM4xkrpQdRN14", "userId": "fcBCCtAoxE9s5zCG"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "kAcHGvOHy0zqhcIl", "duration": 17, "reason": "FOBjtyl3T2fdkNAO", "skipNotif": true, "type": "3AZg6ZhIdkMuQ9xn"}, "deleteChat": false, "extensionActionIds": ["R80WqEqKzZvIFPFf", "hGDjNtq39oo1PO2H", "rf2bojCBOK980RJ5"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "zJi0C561BydzvgfL", "reason": "3Pc2eTf3W0x4TNOM", "threshold": 22}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'E84sH03mxHtNpGf1' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "NfU9V7BYigHaLh3g", "duration": 74, "reason": "0bVKvqqeGq8rgJa4", "skipNotif": false, "type": "cuqKM8UYrdLBcLxN"}, "deleteChat": true, "extensionActionIds": ["qpygovALdvFcTiNn", "VZiI7PeF8jr5ktIJ", "LtTyZdYLeNXBeHSJ"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "owfONfM8cHBQeoTr", "reason": "7WHZvh4L5aw2CuXx", "threshold": 4}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '4EVP2taLjeIXb69t' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '2Jp3A9EOr4duQwnN' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '7IrUT76kHgCh4FpL' \
    --extensionCategory 'l817kRbVTvkp6ww2' \
    --limit '47' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '4u2TBHHLpV4DZXlQ' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'xXmLtd9MECwSFsMb' \
    --extensionCategory 'Me9mYczpqTIj7z5H' \
    --limit '12' \
    --offset '35' \
    --order '3YFODEIfS8L6A8CO' \
    --reportedUserId 'nIsNq8oqUsUur4Ki' \
    --sortBy 'gnahIQVhcgzOHaD3' \
    --status 'uwVhuHzMrcZjE6yO' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'oQdQZj9dJ65mHOv5' \
    --category 'HZTpEOFqM7lwlHg1' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'YQP2HZHWKnQ2QdKx' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'ybG9FEPArlmem97S' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'DEuGW65Nsj4ewaQJ' \
    --limit '86' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'OmTi5rzIkRw3lvSu' \
    --body '{"notes": "BcE7JOgbO0R0epbD", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'INkk8Kc6JWboiqvQ' \
    --limit '73' \
    --offset '40' \
    --title 'bLrSQkbwk4rULEnV' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"3kwIs7cJj54Ulgz0": {}, "feKV1tA7OpMbWgZ1": {}, "Bl30GYxrrIbHZxNV": {}}, "category": "CHAT", "comment": "MUxXPDelYozrSRWm", "extensionCategory": "JmVoCJcm78YfaVr0", "objectId": "XmvPs7KSwrUQzJ1b", "objectType": "5R3YAhZsfvOgRpPC", "reason": "eJHbPpxkjM1SdNLF", "userId": "xy0wTcp67AhW72xf"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE