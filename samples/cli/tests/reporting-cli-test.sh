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
    --body '{"actionId": "w0svcT5kQ7Re58H9", "actionName": "eGbc04bDqGTcU9Bs", "eventName": "fxxEsqYJnEDhBAcJ"}' \
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
    --body '{"extensionCategory": "cOFIaE5IIZM0vSoa", "extensionCategoryName": "sTf0DfpwLQ864nZU", "serviceSource": "sxBsZxuNyAH9FeIN"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "WZMTTkkpOPoH2kvz", "maxReportPerTicket": 37, "name": "vpU4tAa4ls6mXcU0"}, {"extensionCategory": "gCbUkFDFrYEdxr1L", "maxReportPerTicket": 94, "name": "M82ko53PXkVcgvS8"}, {"extensionCategory": "OKe35uwsYA1LgVG8", "maxReportPerTicket": 51, "name": "L0YmQjiAJo1gNUMj"}], "timeInterval": 27, "userMaxReportPerTimeInterval": 25}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["v6r22RrCwPfU3ETA", "eyOJ05nnz2ZmSAkk", "xZAHNuv8opKoiQXt"], "title": "1LX3NK5JIwJ35BzZ"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'dH2vlICoEuZkaYgJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'OjbzIZsIthQ08Lg0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'oSrS8nTypWp3pzPV' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["Z0iu15zgV7Er6Fif", "xKV47NUOWXeHf9L4", "dcXF3Q9iL4jP5A6y"], "title": "WuF5HZaXGipl80Y4"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'o7Gxo0VAqzXmxV34' \
    --limit '50' \
    --offset '19' \
    --title 'sRFsRBqdsTZJXqSu' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cAX8wlaH0AkEoOPd", "groupIds": ["oOAZ8uf4Al92xls4", "F4llxV9siEw0cx67", "1GLHRiInjQEzR5Zy"], "title": "KDguCq12YHJKVKsd"}' \
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
    --extensionCategory 'vtg0JVitz0fksjPm' \
    --category '9zkK1g2ipe1sSW0P' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'dtIGjPBYHC2oZta3' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'V9q7jCCTw4tKrb68' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Rqm2k4AyHsCbCerd' \
    --body '{"description": "2NOYjOlhyQMP2Pmg", "groupIds": ["Czjzky7cmaZ9iOsg", "JKhHWOvgNoY0CVaC", "RG2mmnhYkkiXTfkV"], "title": "HljF3WoWRjdA04wy"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'e9vMv9i4cT2gVK7J' \
    --limit '53' \
    --offset '42' \
    --reportedUserId 'tKUhNrsNRgE0VcBB' \
    --sortBy '7LF9nHsM9ZpFpLkL' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"eSHQlYnSbBmXUs4C": {}, "VBSUn5yYwDI8YwVF": {}, "BNVFuR2l9i8368aO": {}}, "category": "EXTENSION", "comment": "EgL51nirwRcxMfxS", "extensionCategory": "DxGCn7yMvB73bG01", "objectId": "SAxRInBfY4oBi7Zu", "objectType": "2GORr0K8lIbS7B33", "reason": "rDPW1q9apDGwmqnj", "userId": "rsr6T85Ee8AFtEJm"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "qGRMy0kTFNYLf2dn", "duration": 27, "reason": "SDvIXubEWp5kX8yR", "skipNotif": true, "type": "P0uvjsf59jqxR0XI"}, "deleteChat": false, "extensionActionIds": ["I6kWW0ldTDmPEffi", "b7MxTfzvFqkDGCJU", "pcKLc8CmwDa72pJM"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "KkPgCfgVUS5nXYhu", "reason": "XhFPFuRd2dJoSOT6", "threshold": 81}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'SOsTvthh8Dr8x7og' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "llUi5k4jiSpQFCRT", "duration": 87, "reason": "rdU9pIdOYXGv0rEp", "skipNotif": false, "type": "LVIQgAw8YG2EhhJF"}, "deleteChat": false, "extensionActionIds": ["uwmOL34rK7g3GNyD", "BuW6pp0aNrMu39ng", "oFExKcZykDVTw3ec"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "9vJ2P9NYOMu8ELWN", "reason": "MEb0TgUj0CxkIxkL", "threshold": 16}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'sMQk2Md53flwHwda' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'aYMTt6UGae5wqX5c' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'fw8zf0D5i6lutfzK' \
    --extensionCategory 'YfjSzCRuIJYlsw1N' \
    --limit '46' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'KN2U6TUbEK3VWkzd' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'tcFeDws7AoM1hdGn' \
    --extensionCategory '5cTs7lHIpTTRXdN1' \
    --limit '24' \
    --offset '14' \
    --order '0ReBMllWiaVzviAM' \
    --reportedUserId 'UZOfy8rvGTIZWaiI' \
    --sortBy 'NUsjM3zgZMPbZSQy' \
    --status 'WRFisuMjNU1YBZEz' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '1EBNwyaNVnLDqYpY' \
    --category 'mvyDwtQ03Eox4XeH' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'Xzuu6pvvt7jiEwYV' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '7IGnNsN5CBdEAWzv' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'MLYtr8w70Wz2E5vO' \
    --limit '56' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'aqfwTLZKL9IkCwDm' \
    --body '{"notes": "QRJRbXEmhVnQhgCk", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'MN66dQZbVd9jl3YV' \
    --limit '2' \
    --offset '22' \
    --title 'tv3f6LvUTCOaPrzl' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"adt162qpMFSUV4yU": {}, "u8IQGp0hyRwULYVO": {}, "ftaKXnJ3PzNSOITr": {}}, "category": "USER", "comment": "52ulWkPOvynNpRQ6", "extensionCategory": "hTw82pcuJH60VzvK", "objectId": "xM45QHdj4oRAavv2", "objectType": "RuHeqepapPEwFuDj", "reason": "vypNCXGYuFvP5VNR", "userId": "xVUPMZuWArU0XVfq"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE