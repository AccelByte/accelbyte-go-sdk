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
    --body '{"actionId": "wdDy5GkvCh8mj5rH", "actionName": "7VuSbCeHn4ojiaRO", "eventName": "bPLD1q1P7zvUZWQ7"}' \
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
    --body '{"extensionCategory": "MGdoxe79tcF2an1x", "extensionCategoryName": "iUqqtr1t59D8Lvix", "serviceSource": "6vpwpbEQKteqW6lM"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "ZLMdkvGpwpQsrRuH", "maxReportPerTicket": 79, "name": "VMo9twriGOR4rvhX"}, {"extensionCategory": "U1m7W3nAvQEklS7c", "maxReportPerTicket": 33, "name": "VtBxpVutVJ4O8F3o"}, {"extensionCategory": "BfNWvhzodvZtkeAg", "maxReportPerTicket": 72, "name": "KDfDt8h4MUhkzQai"}], "timeInterval": 8, "userMaxReportPerTimeInterval": 49}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["zY3x8vEqZ8MWIFPS", "YUKWqfOw2bq9b1EZ", "WcrSuSH8HWajYJUp"], "title": "VZMpkRkYUhASQ6Hm"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '895vEBfoprOzhPzQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'bncaFIcaOeaVZ0qZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'QMxwyDwvvqhBk5Fo' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["5yZQ8nwI4Aubjkm9", "NRLolVSchwOTuPUT", "8T6YhMwk0fjz3Id6"], "title": "YRG8lgAYnESNWLM4"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '81JFtd4hcYZ8eMdh' \
    --limit '24' \
    --offset '85' \
    --title 'wrls3BIVsVa9qMvi' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "46FzB6yG0Zu502x1", "groupIds": ["6PvnCjNqUNFQPQDw", "bWGJPf95O6eRLVVc", "nNIJbhsBQi2nrEmN"], "title": "8s51NQF56eQmP5Sc"}' \
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
    --extensionCategory 'l9LlX8PXdMLLd98f' \
    --category 'RWtFfzq6mZwa2i06' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'gLQNU1mvMlXecpP1' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '9ud6xbjLQ9Ej4Gzo' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'BIugorj7fYAOKJ17' \
    --body '{"description": "ezxvluSAp0gKK3Bf", "groupIds": ["lyROYkRI0zxJMZW0", "tOFx2FKUDeDtxZ4R", "I4mpmJsvxHE5UcfK"], "title": "8gxYGFnUpM6M2m8Q"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'u5hlKES16MPAEUZq' \
    --limit '89' \
    --offset '56' \
    --reportedUserId 'zIQl3iugCnqJycj3' \
    --sortBy 'itFd6Bnc7dOTpTrY' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ZB8ov0C1Pa0svY3D": {}, "c0frAtplSXG46YlB": {}, "xEf5oHeJYTMceHZm": {}}, "category": "USER", "comment": "NDvcL3FO19Mtg1Jt", "extensionCategory": "D2pDqddEn8YQSaxo", "objectId": "tjP0DDs5o9ba9J2t", "objectType": "drKDA3PrEBsyLaIJ", "reason": "eKAUbeqiIOomHtjU", "userId": "4w00PScknPUpy7Tb"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "lQDaGQuuSH6FaKRi", "duration": 24, "reason": "RDSPaoeU9kQWVEwY", "skipNotif": false, "type": "vGlP2NgjrXTvyFO5"}, "deleteChat": false, "extensionActionIds": ["aXdaWk0GUaIFtXQo", "B2g4kt2gNxRoxJ00", "2w8pgJonzK0SKXku"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "dSrwQ7tom4RYM3AU", "reason": "QB9vBw1ma7bjaFU7", "threshold": 20}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'MkJEaF8Pxd7IDU2z' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "uA9XT9cIvaNeJIWl", "duration": 69, "reason": "zWTbJb8WleSLKZFN", "skipNotif": true, "type": "F8voi0Vbdr7b2iQD"}, "deleteChat": false, "extensionActionIds": ["y82WXQGVkdPr8gz8", "ZhFMlSYNprEAMhUw", "QwCI53HMCHyPBCzt"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "vbH6YizmeNs6FOcQ", "reason": "QDAoCQnw9DVBwJSX", "threshold": 34}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '6HFdGmNGEDLqHnw2' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'trz3We3hSe7w6J3t' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'B2XnqEQeeM0MSXzI' \
    --extensionCategory 'QI0aaHxmnwnfAwnw' \
    --limit '86' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'd8BVdLcyGdEdQi5U' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'y52TcB2tRHN5w90t' \
    --extensionCategory 'AZaqn6PEZOja7BU5' \
    --limit '36' \
    --offset '21' \
    --order 'igpYMGrOpY72OeJO' \
    --reportedUserId 'EvEdCkIjYiDGLRuY' \
    --sortBy 'FBDl0s0f42Q9XbBs' \
    --status 'dX1pZiRjiJd9XaE5' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'wBwC4t8rDKK3XtCN' \
    --category 'PoxkQhkob5UdnxWF' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'nTcWq2MU6Y4Yt4nJ' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'HPbeKdXNujqeFI5G' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'eusmzbVtP5Ut2ZMs' \
    --limit '85' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'kBHsontziFz9ikgi' \
    --body '{"notes": "pduP62qDLzxu5gYG", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'YxyK2h349JlwQWeU' \
    --limit '4' \
    --offset '11' \
    --title 'bGx9bd9ciHdbpa17' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"1z57Upx7N4p0xKIj": {}, "qkEqstmdUFpL2BpQ": {}, "tqLaeWEbWJ5q0lol": {}}, "category": "CHAT", "comment": "XcQFQ1oVzbExtJ7t", "extensionCategory": "Y0TRce4C38Osq8EJ", "objectId": "g0WyzdN5CqSYOWh4", "objectType": "FFDzFEIaJ3hwjjNO", "reason": "yVnvtKK6RiigO0bz", "userId": "JFKJC77yko9uCQ10"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE