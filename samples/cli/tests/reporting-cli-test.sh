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
    --body '{"actionId": "XOCmlLM9q6I1cUc8", "actionName": "gKpccTcYWtTE8hyt", "eventName": "lzswKO80SGQCKOsO"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'ascending' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "o0FvyjSmEoZK4HOO", "extensionCategoryName": "5rQtRRfdsjyLFeIg", "serviceSource": "ZuzTQP2yCDGKlOYq"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "L4wSXu2Ltp6glBLV", "maxReportPerTicket": 4, "name": "BVpWBfujr9TRxaTc"}, {"extensionCategory": "FJFgoIRvzbeKDV8Q", "maxReportPerTicket": 11, "name": "wbN5blk10QreiGcE"}, {"extensionCategory": "w2G6a5XU34Z25mXa", "maxReportPerTicket": 50, "name": "3J70EgXCOlRJ0CcR"}], "timeInterval": 31, "userMaxReportPerTimeInterval": 97}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["wQh5eerEuE58rSut", "VFmRNIW4Zw6uf4Gr", "1oxOddrrwIxA63oU"], "title": "aeFKmCb5WbkGBDhM"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'AF4lRpJPzx5KxKrS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'MGpHxN6ownc2eqz5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'jIAGYuPKoFfMQDku' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["3e1NXQrT6D1Pq67z", "kysZh1Ce79y0fAWI", "hguUvAWXHF6vXb07"], "title": "6BkvDDkRBfQ0V2Dr"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'pwxrNKlL8ITgV45m' \
    --limit '19' \
    --offset '43' \
    --title 'pK61k2pGrdt85YDv' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pL4osA9RNCgkfERH", "groupIds": ["H101yrmzE9Q73pqP", "ZdyhXTY53DZJpeqC", "FC6dTCAetoDhhkTA"], "title": "2hLca2zUGdHBrUNS"}' \
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
    --extensionCategory '54XbGKq1JEGXyrlO' \
    --category '8SGsAWzpKXXTOfRm' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '3QJQZfEt8MpyT5YC' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'fgTyhx0ayEkEA7Z3' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'ogKHNNgip0ZOBywW' \
    --body '{"description": "YEqN2C96Gzu6JYKc", "groupIds": ["NwFnuNkuTN5shRP8", "YCjoR4VJEDUidDnw", "cHeZcerl9k8WrLqG"], "title": "tYrl7ZnwkqGNdv93"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'Wgt8k9CtkZtaCj0E' \
    --limit '99' \
    --offset '21' \
    --reportedUserId 'VJYGUMmCOFnbo0Ez' \
    --sortBy 'lzKYd3LKUjhWP97M' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"Uy3AkkU2tCLoGAyW": {}, "SkYqXK6HVpWMys9C": {}, "8fntNLmR6V7EeiIH": {}}, "category": "EXTENSION", "comment": "iN5MUM4XjCzkrWJi", "extensionCategory": "GObbLaC4gvK4NaHm", "objectId": "7rwXksmtHEG1yCe9", "objectType": "ZSXOF09R87EmpeOq", "reason": "tsI7d2H96rrqKCXy", "userId": "L268E2ErVLDH7xZV"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "nfYca2uyrcDmXJpI", "duration": 15, "reason": "4TO8D9O4kS2KchkW", "skipNotif": true, "type": "ixxOatdVY5I1xjwu"}, "deleteChat": true, "extensionActionIds": ["jdZVcVvKJNMKYJov", "p1VO5YTxoUoRLJqP", "uxBJoTu4xTFxjhx2"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "xmLkQ8odVqxY9DgQ", "reason": "Baxe0l0qfGsFkXrv", "threshold": 65}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '3MGDSvHwC4VxJtQc' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "NvD4sQeevwB2RSl2", "duration": 12, "reason": "UUPF4L0hqS4TxDje", "skipNotif": true, "type": "N7LESlfPO1XtmZ0a"}, "deleteChat": true, "extensionActionIds": ["RQlabBrHsiKZpwon", "AUj65thLJog5CBDa", "OU8v0adbl3jWTcdj"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "TIxBiERxoBs8rKaf", "reason": "Yb8nanIR1zmL37r0", "threshold": 33}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'zJtyHjPOrQkRjLbV' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'mEghUXqVpFzUWYK0' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'HFrDQnqm6VCFyLhe' \
    --extensionCategory 'Xoz9oELwtLHwGq9s' \
    --limit '68' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'AcoRJx7BGETMTqGu' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '9S92GUBGK4WCukOz' \
    --extensionCategory 'Kjrq1dkKPkkPcpFS' \
    --limit '61' \
    --offset '27' \
    --order 'if87vV5Em2mgWwtF' \
    --reportedUserId '26GXMJPVdYxf8qAk' \
    --sortBy 'JQd1pQBsVrUAN5Fd' \
    --status 'TXEAfLX2T5seH0Ly' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '0yT7yTlPor0EMupB' \
    --category '9cP0m9jYbqROXIUG' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'OuwwbCMIO2Eve14U' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'wMsmlFgryYRdaPwz' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'qP9EzOjOp6Sb5hNE' \
    --limit '30' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'uxqxgYhBxARfEWoB' \
    --body '{"notes": "4ZAcaPAh0dhllBqs", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'lViqG0Y7iv1FwiuQ' \
    --limit '30' \
    --offset '32' \
    --title 'v0ka2V21l0L9jzSA' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"jGKbcoCV1OIne7k3": {}, "c2xW1hzWoTACDBAq": {}, "yyve1bGihIgYm50K": {}}, "category": "UGC", "comment": "ju3GshriE8i7Htal", "extensionCategory": "xXHod7Jye5yB1igS", "objectId": "Qo5GQhNdSSmSECUj", "objectType": "5NoYTdqxMMbJhKxx", "reason": "Ig7l4djKZ1ABvvLD", "userId": "Mz17g57CKmppUae3"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE