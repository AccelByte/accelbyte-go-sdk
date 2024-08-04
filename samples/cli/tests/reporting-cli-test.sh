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
    --body '{"actionId": "2f2UGIx8SVuLXgFy", "actionName": "qjHQgwoLt44oISF7", "eventName": "QdYamq2DXTMXJ7vT"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'descending' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "wV21pvyH9SRSQ8S4", "extensionCategoryName": "FPuQ80fhSKxOwRyI", "serviceSource": "Vn6B0hmryJY26dGK"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "qEiIOLOc8JQzwrRi", "maxReportPerTicket": 72, "name": "aXGiwuHX1NDlX7MJ"}, {"extensionCategory": "YwpcSZyo250rlW0B", "maxReportPerTicket": 80, "name": "TDuemO6zaostSVmK"}, {"extensionCategory": "9HFmJ9KGvFNLFMF2", "maxReportPerTicket": 12, "name": "eZC98QVc3ZpJ1yOO"}], "timeInterval": 32, "userMaxReportPerTimeInterval": 60}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["Cn470NO8JN3UQTC9", "Ku2XqrsfSs9KrYZz", "WQOtb7iu78OQjGXl"], "title": "3OfBNLwZ6sR0ERHF"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'oHaTWEBd93oKLscn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 's4P8DX3of7pyJdVX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'X06xqXYXH9EpyBph' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["1WoRJWWIrX9WasFL", "rKa3gvfX6H1mKGkU", "AGs0nJjtPUvQumZ9"], "title": "75mqjUEFUpkHul2q"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '26yeYOmv7o8gZsZT' \
    --limit '76' \
    --offset '43' \
    --title '1TINWcA64ksDgbnX' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6CqZvkYPmYEi5qEH", "groupIds": ["wEuvEjA08Nr5eq4F", "VCd842h7X1HwH4dO", "3GL06SvYZfceUgzD"], "title": "6TX3qg0eNvQWZaB7"}' \
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
    --extensionCategory 'TZij21x165nif9LG' \
    --category 'r2cQwfSJxmrMGtv8' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'CClcAbDmEAuqHGub' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'kVlj4A2E1BQGzDab' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'W4qdGLPrHgM7sdRf' \
    --body '{"description": "r9DzpPgLpwen8EED", "groupIds": ["4aqvNUuAi7WItn2J", "rEeMKZhyrBUhKcTx", "ETagJ7JXsJYuu221"], "title": "dR4VAC9df1iltTqA"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'x4kLFs70M5kIDT38' \
    --limit '74' \
    --offset '10' \
    --reportedUserId 'i2YYb8IdD47ElYpx' \
    --sortBy 'qPX0mSV4ZdiBSgtE' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"tiZIAeWP1oBYYDNF": {}, "rbeCIZYaWjg8NaLT": {}, "HulIqVzuUyqgxN7x": {}}, "category": "UGC", "comment": "vgOZ02YPsDY0p1jv", "extensionCategory": "B7y6141jZpvxV5iM", "objectId": "bzxjsagDEFo11lbI", "objectType": "ALz2dONNMne3Neb8", "reason": "5hWVsgxyCreVwrFc", "userId": "X200yT2OyIpuhRzp"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "3auYIhUT9zYWehcI", "duration": 96, "reason": "5KNJfYaU0zymuyjO", "skipNotif": true, "type": "jC46Ikd1D76omJd6"}, "deleteChat": true, "extensionActionIds": ["WNr4G2q53KB8u4uW", "vdFcrqji0tLQZFjG", "IcJ3vzk5kgsNDhKk"], "hideContent": true}, "active": false, "category": "USER", "extensionCategory": "n0LIKfWQKmJNSRge", "reason": "l9rlEcAEcS13Qfje", "threshold": 84}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'uBIPLcMwyjoq2UGV' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "AMNyLbXVUTgcnu0A", "duration": 76, "reason": "futzz1DSKWkxLyVj", "skipNotif": false, "type": "5ginl9tRizK66tPz"}, "deleteChat": false, "extensionActionIds": ["fIoKR3PVrwRDpdd1", "ivbW2sTtiNpe5udf", "BQWf2NHXwCjsHLYz"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "j40pSaqUCDoZBbxk", "reason": "T0ZeRSZyEE4AAi38", "threshold": 66}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'rOxM6IlmhJ70SIZy' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '115it7HiRtS5KCzQ' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'LnikrqOAswMvEtK8' \
    --extensionCategory 'jFo4TfMu4qPw7kFA' \
    --limit '66' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'zX2iNbYXHkHh0ARe' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'l7QPEVbkZJsENbXH' \
    --extensionCategory 'u4TEBADoTZ7VUO8G' \
    --limit '11' \
    --offset '38' \
    --order 'wApwGQOZoTd8wQ6A' \
    --reportedUserId 'qQAT36ZkdHeNo10O' \
    --sortBy 'rlCrvK6XwzCAeM29' \
    --status '6HwW8AYUqaIKSt2Y' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'yhc8bgD3cpvLokNu' \
    --category 'dEMBSjbroQujQ4Ab' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'KSdRjfQb0g4rbNyB' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'pVOXYk3h7bVSXbk3' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'eMAEGwhDY51zzU8d' \
    --limit '52' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'roTYLAelIvEtAePh' \
    --body '{"notes": "wbPbyev1FLy4eFHY", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'FcFQT9cTPWHMLI96' \
    --limit '51' \
    --offset '36' \
    --title 'hwk6PC8TTEPKbZKX' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"T8amx61LAPpGYoe4": {}, "TvvjaXYMl0KA6O0S": {}, "H678HQvT8EfITRR1": {}}, "category": "USER", "comment": "VA2kShq7a7TnPJnA", "extensionCategory": "9diVtXXo1g6qjmLG", "objectId": "b7rIgTeotB7a2jJV", "objectType": "8rGL7fh7wL839eqK", "reason": "8vhsL35ND956z20h", "userId": "zUevCw0liQnX1b2U"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE