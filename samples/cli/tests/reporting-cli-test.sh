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
    --body '{"actionId": "xkFN7UtLSuDXfCbq", "actionName": "UC5ZKb8qRZM5en6N", "eventName": "GdoPyBVRpr1F4eyq"}' \
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
    --body '{"extensionCategory": "Kg9pAvMTgp6bZ6lX", "extensionCategoryName": "r681sZvkqmjYe26G", "serviceSource": "9NdjLrR6dslxle9D"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "tCnsrer8BbqrdnPG", "maxReportPerTicket": 95, "name": "QUuaWXYuNGnkkDYn"}, {"extensionCategory": "g6YUZelYnm0UbSXK", "maxReportPerTicket": 59, "name": "mwBNg8A3luRA2JhE"}, {"extensionCategory": "gUBW6eUVf1Ksup9o", "maxReportPerTicket": 55, "name": "g0kXuQlIgPuAbkNr"}], "timeInterval": 53, "userMaxReportPerTimeInterval": 14}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["1vkxBajR50aj4OsW", "u70SwC644e0Ouhq5", "Jb6FJgnaS3Ls4sjI"], "title": "sSEHOhdV6mLO8xIn"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'mRCF4KAj03VDjEJw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '7qPQWqeLuhhbZ9fc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'tDbc6ggBSo0Swzz5' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["zmKrzbN62ijDJr1D", "ZuwGXk4k1N9LuzTe", "EtGLg5F6wAsVgn9i"], "title": "sP7vWsfGkYTeJLjd"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'lKmxLS3x2D5NCJp1' \
    --limit '52' \
    --offset '95' \
    --title 'Mbtnk6nvPvSxlTTd' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cea2T4PsFYvcTPOc", "groupIds": ["WGU8ZyaJz281q0Qd", "FV9Ilek72tTxlHY0", "QMSlqo6RDkrXZcpB"], "title": "gCNqmdqnnf9IdlUm"}' \
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
    --extensionCategory '9qE2QjoDnJ2ndOlQ' \
    --category 'PyqwWZXRDDPcalFL' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'zLRriRXfKIVhGtoT' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'i1rb32jKAemSTuTK' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'PotqFRRS7He8qCzE' \
    --body '{"description": "vybgQLhRH8OAWLky", "groupIds": ["kG9ZB77DQvYdBiiO", "VrzUhhH4yptosv3v", "qvuKBNkAM4Rhdk3H"], "title": "gLWMnb0EHCZS9Vxv"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'DxlfPFzDgjn6ttoP' \
    --limit '26' \
    --offset '8' \
    --reportedUserId 'DTh3fAKDiETsiT2O' \
    --sortBy 'jJIQUsuoAZCS54wm' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"x8K2SKenzOfj0d8k": {}, "vTqqvvYfP3BBlC3o": {}, "23IiSoX0CMi3ezEH": {}}, "category": "USER", "comment": "qVlisW7CzQ7zw7LA", "extensionCategory": "hpaoqilwwXX805x3", "objectId": "vADOpOzN1VifzerW", "objectType": "Seo21ULzjSdYKJ9x", "reason": "GjjwAFfvKVCZiJEW", "userId": "LXaXGzHpEjYUcFsv"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "V3ynLiTtRxriImi0", "duration": 1, "reason": "IbVWVZ8qkWuh9OrG", "skipNotif": false, "type": "17BREG4sEReutp3p"}, "deleteChat": true, "extensionActionIds": ["JZfmshgYSo5Mc5Ep", "5qjtvsmBy0f1mw34", "cFtXHIKdo3GwFId5"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "pn2reUbVYm8oYRzg", "reason": "mYHI8yu9nnDoIAVU", "threshold": 40}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'qjjj0vlI2jREZZXg' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "Bhyvss645JIxuCWa", "duration": 99, "reason": "ISFrwoliqt0rcF1r", "skipNotif": true, "type": "XZJLihmBIGcDrt6y"}, "deleteChat": true, "extensionActionIds": ["o20fJ121u4ckrGXC", "uWUVelOPLlfp1SaA", "yCpFRBC0RQwFK9Ph"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "FVKml206QkFAN4ow", "reason": "cGcAH3yNhhOS4DN3", "threshold": 83}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'EzcEinCHc4nRsMM0' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'o1soA2ZJzfJjunCv' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'dhWsxDVb8fPWS8sQ' \
    --extensionCategory 'J6lQeAeVVbQjyZED' \
    --limit '2' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'bcv12gcaktRUqoIa' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'TolSCnZumpAnBl6h' \
    --extensionCategory 'Nf8xxuZvBSsOg2SQ' \
    --limit '87' \
    --offset '88' \
    --order 'cHtnfcGy6z5eezfk' \
    --reportedUserId '6xykzKMVsAwjRDhL' \
    --sortBy 'vBHaSx87COaT5whN' \
    --status 'WSYTN1mYBoHEpk0k' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'YfAbfrnbI6h3YLzt' \
    --category 'RoGKuXqAgG09GY2K' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '9jv2ugmH9CnoDNnB' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'QAhVtgIpsUFo8QmK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'KZHu2uXEmQIAdlFR' \
    --limit '36' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '2TrI4J3AIhEEctXG' \
    --body '{"notes": "YXoQVN1mOe0etA24", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '9SyEYqqco1FwzfKJ' \
    --limit '100' \
    --offset '20' \
    --title 'CUR63ijYpKYiHWOE' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"Uq4NR252hr4eSi4u": {}, "AhomNxHnYzSnsoas": {}, "4bS8RAlsrsdx9GLo": {}}, "category": "USER", "comment": "ObneUyBTqOCthEEK", "extensionCategory": "1JPFjHPMOAPflgCT", "objectId": "EW7MhBampHMEmMPJ", "objectType": "CkTVb8ZoNOnjiWj2", "reason": "XaMMFjEgysJc46WN", "userId": "IU5koQY7gq7NovlS"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE