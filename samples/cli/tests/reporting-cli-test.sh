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
    --body '{"actionId": "xVjqriDoSLUHQ6QT", "actionName": "87jRJTP2w1nvpoZN", "eventName": "Jk6voAk7qaBHR9v8"}' \
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
    --body '{"extensionCategory": "9so6IOpns3J2aP0f", "extensionCategoryName": "BCntK8P5qxiAPeVD", "serviceSource": "9H5rRWcOXVXF3nQR"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "8natrdmykDS7Z95Y", "maxReportPerTicket": 26, "name": "9hkcb7v1BSVpWAmf"}, {"extensionCategory": "TUMorTO0SDgRcUoV", "maxReportPerTicket": 95, "name": "ASMPCJyx6ftwUNib"}, {"extensionCategory": "fHfYkSCjKJyuLSIu", "maxReportPerTicket": 31, "name": "cmw11zj05GlD494t"}], "timeInterval": 27, "userMaxReportPerTimeInterval": 10}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["KLtc5LdAiaOBpKz4", "VaYOoi09iC5NuVEh", "ui4Mk9bg5QEllkGp"], "title": "dNJLpCo2u3IlORPy"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'q3ATyaWTBoWBvp0W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'isPSZjwH7uzzrqtO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'x0aXbm6BwhRwpjNr' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["svYcCjsmiQ1ZJiRt", "OA8DptC5rMz0F8pc", "voH5cmdtdeczKBPm"], "title": "wg7dnE5Pqzsnn8rm"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'MkaLSurtQPSLIO3l' \
    --limit '66' \
    --offset '78' \
    --title 'qrso3CHTH8CaZL6j' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "aEY11b1JhXYUz7n7", "groupIds": ["pIhKQxAqEWuPZaPL", "wBqPb2nwJSaoVdH5", "YKfkA68yIyVXAYMy"], "title": "2vPBkUkEKyhjSLqd"}' \
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
    --extensionCategory 'XPU9xLgFUriixkEL' \
    --category 'M645nmHV3HM3yYqj' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'eQZaqScZ6PVN75rv' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'wAQYF88Qfp71IyUQ' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'ViG8ymN92VaMZbYd' \
    --body '{"description": "FHIfqrEYc7gu0TNh", "groupIds": ["3QxM385NZjavrpfz", "Axz1LYMVEvS0W8NA", "VIw5CKordnnwyw1t"], "title": "hy8TDEJN4qiq7trG"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'F8HARHaKQh2GOvfu' \
    --limit '54' \
    --offset '28' \
    --reportedUserId 'JE8AjUfcdtZASwMx' \
    --sortBy 'BTSreKvmTCWufHaw' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"3glNJzJI1rvYwTB8": {}, "UooJd3Bf7w7HwU8z": {}, "a5767QbnI3W97ECi": {}}, "category": "UGC", "comment": "IRRGTdm1itO8YzyJ", "extensionCategory": "HNIVsiQGkeaNxcE3", "objectId": "UR6uH04PfXKV9mZv", "objectType": "zTOWuDJi9pQDQibz", "reason": "JTP3RLdtjB3Ba8RQ", "userId": "Y5OcenOtv2fbP0nd"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "olQKCpnU4fWljwAr", "duration": 13, "reason": "edI0BAe65LKKVrzk", "skipNotif": false, "type": "cEykRjqaBpGHzizq"}, "deleteChat": true, "extensionActionIds": ["5MyNT28JWVvOhIWj", "7uzVxQBvOnLH2d4k", "ILI9YuzoLfFcugwH"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "A50AYrCeZQVISB5M", "reason": "HfXjcUv2Z19fOpvJ", "threshold": 21}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'iyHqeKbaBR02nwb9' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "HnAeQbfYr9JrLfxX", "duration": 44, "reason": "sdVQZA2tcFkkprSW", "skipNotif": false, "type": "b6TMPBsAt6kXpMOv"}, "deleteChat": false, "extensionActionIds": ["OGTDJJzhLVhNqlF7", "b3EkWh3dSmL5roIW", "vZEcAM1EXmydCq2B"], "hideContent": false}, "active": false, "category": "UGC", "extensionCategory": "IFWY2KhgdXWXYRw9", "reason": "TOYsuJKpFBSjp87Z", "threshold": 39}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '2uguwLI9gaYL6nQ5' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'HJw37waa6j3syCIO' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'JXqKDkuLhyAvmppV' \
    --extensionCategory 'KV2tnNvD8ILJxt42' \
    --limit '70' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'F5GDFFOUGiMztEG0' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'giv2L1fXxWD7qCbu' \
    --extensionCategory '5alZ1yLEoQIwmUYT' \
    --limit '88' \
    --offset '38' \
    --order '7avmmjoeSrRy8cRg' \
    --reportedUserId 'lphsPN37aWvA8A3M' \
    --sortBy 'xMZjRwikxdxHgVN2' \
    --status 'M6pUiRknpogra4SG' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'wAHLoFpvJ9G16i1Y' \
    --category 'SlYxdG6x4nu8fFMO' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'XiXhPrnew4Mriu1S' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Zv3fVm3rUqC0fe4t' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'hhuAyD98HJXdUTZE' \
    --limit '27' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'UF09DvAXAJnyFhex' \
    --body '{"notes": "LIyvwZFhoVH8qg5T", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'VQFxDuegjl5QtQeJ' \
    --limit '7' \
    --offset '27' \
    --title 'wT9Qwl6fNGJly0CK' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"L3nhf4wrOlOAOEX5": {}, "WKNiMIE3cyLTQE9i": {}, "CA6o0LEaaQFRlXzw": {}}, "category": "CHAT", "comment": "xGh6YMxvcVoD4nGC", "extensionCategory": "fAYdfdk0xrI8Sc4m", "objectId": "DhZbSKIu09iUiPkp", "objectType": "RPXgl1hbDqh1oQID", "reason": "Kwk7LFO9PGJrH2kb", "userId": "69S4gQPw0fOmlBik"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE