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
    --body '{"actionId": "y7WWI4zFCNURrwAs", "actionName": "Um7bSQEhnGvYfFne", "eventName": "oulm2iq0uwArGfnW"}' \
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
    --body '{"extensionCategory": "DsIaDBLo7VcUvcQO", "extensionCategoryName": "ptTtfY8z24ohziyg", "serviceSource": "JXByo5JENrEQSBO4"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "4O8o6eUQrJfcpGZ2", "maxReportPerTicket": 89, "name": "eCg21yBhDzQTmRUe"}, {"extensionCategory": "d5lH5JXd3rSiCVPW", "maxReportPerTicket": 27, "name": "aspE74YWXXi78CDa"}, {"extensionCategory": "QL88CqAjQAvLl4vN", "maxReportPerTicket": 0, "name": "ce6GBTDCXUX7oiAh"}], "timeInterval": 16, "userMaxReportPerTimeInterval": 28}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["QdpThrxEyOL2jLbz", "Jdh2OpvvQktV0MqJ", "UpZi7NU6gwlYC6E2"], "title": "SFIDMsvSesvN0Oik"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '29EiuMbSkg8kxxL5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'oMG4p4QT2YzfbDhB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '0zGnFULV6It1SBow' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["egaXvRrHNXNoXQXZ", "DEzzVsi489ROIglk", "RkMdjfIMO3YQ2HwR"], "title": "Km4SfjEd4qoetBsZ"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'rql0EmkV7IsRdztm' \
    --limit '57' \
    --offset '67' \
    --title '7DlVRs6nD122WOIz' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2D8kW15cPSWHrFtL", "groupIds": ["Q3ShXZVUVvYQwJuN", "wcW6PCmm5rECR9I9", "kdaUJ1HUNjme27k9"], "title": "HW9qhhFCo9U1FVxy"}' \
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
    --extensionCategory 'l3nXOdjz2EbiymXD' \
    --category '5MLwBgnrABLr6ATY' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '8pm5fH6vtd3ybHWf' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'HHOzVXGnXA5Owezb' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'fBscGRZgMzVPNyes' \
    --body '{"description": "J4xTnPFYfQZb6hu6", "groupIds": ["Wef1J01df3S4xgZZ", "BcsLu6mj6uxlgRwk", "sx1eJBvk3YR93bqU"], "title": "BB6k01I0b6Vw5Cuq"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'C4hwHNCXeKJRYwRW' \
    --limit '10' \
    --offset '98' \
    --reportedUserId 'tuaCbHhysn8SSeys' \
    --sortBy 'ckWeK61zSUuVlCYs' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"TCeHb9QAYfdeGj4f": {}, "aoxSNkdgXCt93yjC": {}, "EG7roEHLDgv9LA9A": {}}, "category": "USER", "comment": "EJDUbR7LkfSODEnJ", "extensionCategory": "BYuZUxhytSIwPVKz", "objectId": "8xK8laS8SBsYQNEi", "objectType": "v1jDC96c0BrBLDMF", "reason": "6oWxBFdKp4snsDwR", "userId": "sEV1WPdAeIdi0YsB"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "88ipnkgCDf4DRgyz", "duration": 71, "reason": "EFEeLvMNsDI6rTgy", "skipNotif": false, "type": "lb375d4jCRCwpibZ"}, "deleteChat": false, "extensionActionIds": ["6xh3euiuBsPk5lw6", "uxcAxnZNmsTlHQqU", "AQrxkg3adW7hSvCx"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "zqNaDPbRFJV0pplE", "reason": "UHWBJqVwh4kkBsxa", "threshold": 93}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'XwMbeeaVnlFbBrhN' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "zCkGXwgnhdZ775Dn", "duration": 0, "reason": "rUZdEl31VKTseaYX", "skipNotif": true, "type": "cUG6uQYGWgacs4TT"}, "deleteChat": false, "extensionActionIds": ["8Tn9WyE04KyEBxYA", "lz2neGgqac84Gp6s", "7qHMZbO80EyGN9lh"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "wJB3oMFBJhp7lTOl", "reason": "HYVl0aJQ8d5DjjLx", "threshold": 47}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '2JvKJ1NooTwvsmaL' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'X1JDl3BsJkT5xGvu' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'mSCp6MIbTpthTZXy' \
    --extensionCategory 'hBJghwycx6vGfTF1' \
    --limit '50' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '3mUqZ0fEjNQ198Ed' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'j76aJR9qJTaoPQYt' \
    --extensionCategory '3DRnXDN8FIpTcJzO' \
    --limit '72' \
    --offset '33' \
    --order 'BWhoqSlH2cpNM5Tz' \
    --reportedUserId 'CeWtsvWpiTSsh40i' \
    --sortBy 'BM84TRMB0PJgylbO' \
    --status 'yovPAFQJMSpjjicQ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '673AKn28SB33hQnr' \
    --category 'ji2XxyQSK2cuxhjF' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'xFqvEXp3lfE9qzw5' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'qD2qp9hggX6tEsmR' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '3iKVhaOyGtDPWQb4' \
    --limit '14' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '8c7WKwq6jX6eo8lu' \
    --body '{"notes": "QpW6OUJo323oBJg3", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'oaK6AtGWTiaAhkVt' \
    --limit '7' \
    --offset '5' \
    --title '00ExKOdckUCIGrci' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"bE4qoH4SvftB4Ijr": {}, "MoMI78boQrFkFSoU": {}, "UPe3zd5QstQVM4Jf": {}}, "category": "USER", "comment": "ZW0xorVSAUyUj8ga", "extensionCategory": "NcSbDkVCllHS6CmO", "objectId": "nGNijwkkl0O257YU", "objectType": "nj5jptZcZFmnhacX", "reason": "SLt7lbWQqpe4n3ms", "userId": "c9dAzETtXE4czZVm"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE