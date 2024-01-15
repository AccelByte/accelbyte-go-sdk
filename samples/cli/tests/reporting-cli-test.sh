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
    --body '{"actionId": "MffdhAONmu52SkJb", "actionName": "Rla6JoozhG4Hol4n", "eventName": "ievh2DCSprzNvTw2"}' \
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
    --body '{"extensionCategory": "MglZv1HCHYDWCZiZ", "extensionCategoryName": "LkWgnidKegxOMRBM", "serviceSource": "bhOHw2GPxh3hvZk6"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "MFeCpYlNWCuiCHTe", "maxReportPerTicket": 7, "name": "aBcZao4JwQ8VRTDC"}, {"extensionCategory": "sM7RDOSUH2IfYRoP", "maxReportPerTicket": 45, "name": "xVf29n9WKbeIo1RV"}, {"extensionCategory": "HgMwFdEsObzc3gaS", "maxReportPerTicket": 15, "name": "yvxmESohb9dIStLi"}], "timeInterval": 74, "userMaxReportPerTimeInterval": 7}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["5ypbG5tZwGNbJAmE", "kyTa53VBApCrnJz5", "3tYSKJCUQ4f1EcIy"], "title": "s0Ds0XdWvpO0u0h9"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'nbykLfweWHWnnI8N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'QwsFY29nlYaQ9baF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'R6COBMtAAH4EegaT' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["3IUKIEhh7MIUplyn", "TArtYuKHqt49F10v", "OfuZfDGCUSVXgOZQ"], "title": "Car4IdVhrI4CX6az"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'PpcVAbqC9f0Uz7GK' \
    --limit '69' \
    --offset '39' \
    --title '8kmdzj61qXnU0e2G' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LUiJ2o33gfTScdqx", "groupIds": ["WQlMV1ec8FWPdPdX", "bJUqdUhWKT61wxvd", "EWOyJLMRuhmDymil"], "title": "6ZjAXdjuq1b4jbx8"}' \
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
    --extensionCategory 'mrYUYECsxWjjMPGj' \
    --category 'BLZYpXNkgMEtwijJ' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'YkqJUpettJzTxKVo' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '6fkTTqP46szSUVnk' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'PrWEicf8YhHpjJvy' \
    --body '{"description": "bokNnaqkn5tTPiNq", "groupIds": ["LVJ2XsBGzBA4gVz5", "FZxVCCmXkUGdM8lt", "lMUIHCecD7WVGQGa"], "title": "vpa3oOl8vMNdUNpZ"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'AIJd3aXGnpYw9iuj' \
    --limit '59' \
    --offset '46' \
    --reportedUserId '6SUAzRQyJ8fsHijA' \
    --sortBy 'obMgZYiZygshjERg' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"Pr8DKtnIe556OlGM": {}, "71jilGVkgZv3bX3o": {}, "FaQOmg75QtB552X5": {}}, "category": "CHAT", "comment": "quzet6Y5nHsaSjZf", "extensionCategory": "eAfOtbeAeXIm8jzA", "objectId": "0iaPZV3MXkfUIfyf", "objectType": "zSRWmE2j1n8LZnCD", "reason": "vmQX5EBOXj2hTjvR", "userId": "K8uezu0MYsw6TN1Z"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "F87z6UYo5FL38vHr", "duration": 29, "reason": "VigBcjJNxhK1tscd", "skipNotif": true, "type": "rWDkBfV25JbjiRpB"}, "deleteChat": false, "extensionActionIds": ["VVTJ1qr0M09zZzs9", "9LsCOXnGD208i2ne", "P2HSuvgpCtD3DL2j"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "tA3BdoL7zxvPZIiM", "reason": "yNP9CQUkX1BXDSlE", "threshold": 26}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'VVzvZ1Qwob1iEbsl' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "0HvXGPSNYONxOFl2", "duration": 42, "reason": "fyg8PcwT1dmhyiJn", "skipNotif": true, "type": "qgy7QJeBgy2SZVLh"}, "deleteChat": true, "extensionActionIds": ["jZvwFPnwzmM3gPQl", "nhGLzyCeCf7tnSKV", "ujohtzMAggrFBMlk"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "QOcuROpsODdQEuLX", "reason": "akVe0OfDjtwWVjqN", "threshold": 91}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'MZH3JK9pxPIGEDlu' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'lr1wFv8VBhMFWWbk' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '7zn50kRyAC62zlM2' \
    --extensionCategory 'UtuqA5MAufIjrYh9' \
    --limit '2' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'r9appOL7VBKWjaE1' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'xLzB4iZYxKr4xUWJ' \
    --extensionCategory 'BQiKHgZJRvYciuhg' \
    --limit '38' \
    --offset '88' \
    --order 'lzZLsVdqOoGP5Wms' \
    --reportedUserId '16oME7jWzcyWCOVC' \
    --sortBy 'Ct07S5MHr6Rbypve' \
    --status 'OnBQO8XqcjjqfkWD' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'Zq2z49HcPmn1OJnl' \
    --category 'r1CKR96dfoWgiCAO' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'b0AbD3QcUsL3f7bj' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'MEn12ausjkLLZkRv' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'T2fgVxb00KhRVXi5' \
    --limit '62' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'zumck2VMg9gqRqWo' \
    --body '{"notes": "iuI0H35GW36kj6Ik", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'xIVIN9Pc0DfArZtl' \
    --limit '36' \
    --offset '72' \
    --title 'MiOXlsm7o7SUrGye' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"eiEzATgpxWx33urf": {}, "Mh7cvupL8Q6Lq3yG": {}, "H16g2OTQf6oK1Bf8": {}}, "category": "CHAT", "comment": "VJ90Ctlponu9TeRo", "extensionCategory": "YgmzpxeYcR5dfFrK", "objectId": "G0laxzPZapqn3XuO", "objectType": "alhn1ilyCgh3loeY", "reason": "erqIz0J9HXR0q5DB", "userId": "mwykBjnJt0cd6FRv"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE