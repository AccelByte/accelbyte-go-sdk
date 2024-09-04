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
    --body '{"actionId": "Txg0hvzgzaNWlNPN", "actionName": "PjbZihyJKLjJYUVf", "eventName": "QCEjAYObw1tdBcZ4"}' \
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
    --body '{"extensionCategory": "7cuGHjB2dJgqBChl", "extensionCategoryName": "sOB8rXhVTtzP9bbJ", "serviceSource": "mFQNNWpD2vowNPY1"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "9gGBDdiks9itqwer", "maxReportPerTicket": 30, "name": "nGkMNliiVfpNDhBi"}, {"extensionCategory": "dN7GofFhcWxyrCE1", "maxReportPerTicket": 33, "name": "ALvjAzBN54kcUEXz"}, {"extensionCategory": "8ONSus9K9qApRX7D", "maxReportPerTicket": 11, "name": "n3gOzWY56DQ4XX8p"}], "timeInterval": 26, "userMaxReportPerTimeInterval": 11}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["bjOiFoQNuDxKHTkM", "5X59WUZOZXCZXEwy", "jNIZAhrki9d9MUvu"], "title": "dmajZS4HPCrpa6UX"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'AoasRzVYhuam7OAj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'ZqbSAV1ZEwcMARg0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'm28qIqKoPyU8eUAv' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["uQySc7e6NuMZRhGA", "VyOPRn6dyLKckWOT", "QIfBxSyJcESjVoc8"], "title": "JYlxfqPFKHvoWsDA"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '9fII21XVaXTyoG8f' \
    --limit '81' \
    --offset '29' \
    --title 'k19fZKmUDK4i6dZA' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "oTTBdxQVIbYnMjtF", "groupIds": ["pqvOKOfaEYJbOJyc", "HV0FqnF9c16pjxmG", "uCFJEcA0pVosOwQq"], "title": "jyr46mWVV3xlDKwz"}' \
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
    --extensionCategory 'dQ4bXXnSeKuPddtL' \
    --category 'GmDeUtDXizRUIme2' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'H5ayLXS4ynZJuGHB' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'M8iCvFGpX5XDngV1' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'JK07DWZoYg9yoHjS' \
    --body '{"description": "tyu8OLaIbYKp7swp", "groupIds": ["YFuC6iwjcU3CNlmb", "S6443zKlOj0PFuEs", "kB1nagFRNHi9kiLN"], "title": "5W09OxRGByyj0AQj"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'Slwz4cHTKMq64xXp' \
    --limit '98' \
    --offset '19' \
    --reportedUserId '2sfPyeGhlFmgybXv' \
    --sortBy '2KJvAPd0Kszor5LY' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"4OLgtadJHjv5fM3o": {}, "5U264otadHJ1Gvhy": {}, "n1vUD958ZKEAUCw3": {}}, "category": "UGC", "comment": "FmSisdlFjwrLGVBx", "extensionCategory": "rLc30vMmWugX8kQB", "objectId": "lRQolJGU3Wuza5cI", "objectType": "Guk2ilRxIZYLl9GF", "reason": "WUFFYPfoZ7LclSHx", "userId": "HEfvA35lEHvmY1z8"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "hZLDDlOyydL5k7ae", "duration": 30, "reason": "4CRtOnmOkePAI7HF", "skipNotif": false, "type": "tJKzzkax25PgHdf9"}, "deleteChat": false, "extensionActionIds": ["OF0MVsFY0NBchgu0", "aOgV46phAvU2pzbJ", "A0yKoAX0GLJkbhMw"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "5HaCwufJYr7aPkoi", "reason": "mVSOm7oMaVOG4vPH", "threshold": 32}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'YggaHSRHfJPJ74do' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "tRnfRGStMA6CtuXF", "duration": 99, "reason": "xsNvkfBfijHpKkzp", "skipNotif": false, "type": "K7101ckKBriU87RO"}, "deleteChat": true, "extensionActionIds": ["6t0ySoL2tzSFv6Sp", "J5B7h6AvxfXvAkTo", "eBcw1sBlHHkVPsMw"], "hideContent": false}, "active": false, "category": "UGC", "extensionCategory": "fnJjbfAIYv1K0VE0", "reason": "rAsyTm8SPf9quVQn", "threshold": 94}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'qCPq40gce3HtVHEn' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'wmdEYAeoMiEG9g8J' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'Dfl707tkcKTkDryU' \
    --extensionCategory 'BYpai9xwZbIdqzwc' \
    --limit '17' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'NR1752iLrz31e2Yh' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'XLFcbqpLed9VWOAg' \
    --extensionCategory 'k0D9oZPB4FVmEAZA' \
    --limit '17' \
    --offset '88' \
    --order 'ZYvaaZBLQ9y262bj' \
    --reportedUserId 'gYW97Q84X8Iw6h0p' \
    --sortBy '0rcNkrQig7ss1tv2' \
    --status '6POCdYmcd43OgzeQ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'YMSHu5HHW8DGdxQZ' \
    --category 'TjkwXPeu9SXnyTHZ' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'X7Ai3vxWzM7PHOiW' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'LKpVyPtzS7uy9Dfd' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'o1G2lNyQYSZfatW9' \
    --limit '97' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '6GFxLF4ilJbNW63w' \
    --body '{"notes": "yoqscfeo8YENG3BN", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'gtJeKH8rQNPqGk6d' \
    --limit '47' \
    --offset '70' \
    --title 'iu8YAm1iFieBYY7Z' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"kyU9ZaENjesJ9A7D": {}, "C0mMZr6JlegKKslz": {}, "KVYn9JPFY61hJGIC": {}}, "category": "UGC", "comment": "PnfivrwdlcAqlRf3", "extensionCategory": "8sGcTEBhs7tsUdC6", "objectId": "2xYhtOCWfLibTdON", "objectType": "8DqJFARmAv1QX3rE", "reason": "U7K7oAgZtGaqZC0w", "userId": "0LUlSM0rEJaOwIPT"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE