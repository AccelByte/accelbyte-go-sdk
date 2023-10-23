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
    --body '{"actionId": "hXHbShdx9VfIARNt", "actionName": "xGmiSbIU7g144Z7h", "eventName": "4Nx5JhI9IDcIrIuF"}' \
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
    --body '{"extensionCategory": "IotuGvRHvsGvHJdB", "extensionCategoryName": "E27IzElctMJU3hHL", "serviceSource": "wy5jsYqQDGwTkHnq"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "YiNo2774K491OPAb", "maxReportPerTicket": 46, "name": "Z7WqdW3Z6ZpuaU0C"}, {"extensionCategory": "60HsToBGetF68RQy", "maxReportPerTicket": 4, "name": "5YLRF0iyapjo066u"}, {"extensionCategory": "drbeXR77Cjx8oDCO", "maxReportPerTicket": 80, "name": "6VIAIH1G1OC5mCvu"}], "timeInterval": 60, "userMaxReportPerTimeInterval": 1}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["2yLPIORvuXw5LTVC", "eRl5qm7zXl7sMfk5", "HqX9tXSf0xkbre9x"], "title": "7sHmgxCXwArH4OlY"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'X7ZnWURqDeYob2gN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 's3MlLmiBSPqhoUg1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'lPWLXnePxLC3YKOJ' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["7BasaKdZp7E5HQJz", "QTqnbdWvpFsw2oVH", "0IZ59Zrlxsfi64xo"], "title": "mJOqVm5P87d4i9Rx"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'auoVZFLbgkKUphn3' \
    --limit '2' \
    --offset '61' \
    --title 'spXao8BOimxhtM9Z' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6mwMHwA0JmcTD61w", "groupIds": ["iwI3RdHDTt2pqMtD", "fq32IdpCMdeGgzZf", "syv9wmVOu6CTDUDT"], "title": "iROGExHKmZdcEob7"}' \
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
    --extensionCategory 'aZjVpe4sUbdK3roR' \
    --category '6MflwjeLebs0PZuQ' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'hn4m3lLa7vhDIUkW' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'vvmFhoKDVU7nHydQ' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'D8ciln1GZ0juoav0' \
    --body '{"description": "GfjZOWw5rkFYlUeK", "groupIds": ["84MJfS1m2e5bUJj9", "xzhIKKhA806Sek7P", "crY4UVfHNfuj3llH"], "title": "XImX9IQdGYP7laoM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'jDLbe6r7fuyRxTXs' \
    --limit '71' \
    --offset '27' \
    --reportedUserId 'WlvaR6mlNf0offzu' \
    --sortBy '31HpkagCOcdrgDWI' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"DTN7CxU0muaF7tNr": {}, "1srMPOUKrokq4NYL": {}, "6ZDDwZqAo0VBLjlq": {}}, "category": "CHAT", "comment": "teXXWvHDoWXPYQ78", "extensionCategory": "lGP5ncgOEeeQ8gcg", "objectId": "eNvExwJj3Odkad00", "objectType": "QnLQGwTs04WxGdlk", "reason": "STQTJtkQDFha40I7", "userId": "nVctp0jwh6gzl0mL"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "stUPwZv7uerHyO0A", "duration": 48, "reason": "pnE3jr1D9i80nz2q", "skipNotif": true, "type": "2OHW8nXsHMSRT0DL"}, "deleteChat": true, "extensionActionIds": ["tF4lnGu4luCZ5fcF", "Jvj0W6trUdcz0cQl", "qSd2Poalzoa0LqV4"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "Jd8uNlXce43JRAmd", "reason": "2YELiKabFI7VFgkz", "threshold": 91}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'e3WC5m3srYWVrr3J' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "h1PvmqwjJpLHhkb6", "duration": 3, "reason": "bpLv5f2zE8wUFA5H", "skipNotif": false, "type": "qJuvreuR7DkGwK43"}, "deleteChat": false, "extensionActionIds": ["82JglXzQ8UD53c70", "9DLySATOKD53ioXE", "DWsIbQP6CnQxzdqW"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "WnqZ5caHBg3owGXs", "reason": "cVdNfMVHEVUxax9d", "threshold": 18}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '4rnZqiJFFftLrXeF' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'UdRh3fr7XZ7AtqS7' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'nmvfOvcjSTPfA0cj' \
    --extensionCategory 'RzBxmwLoBhfnoSvg' \
    --limit '57' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'poo6zYbfj0MTo1Ww' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'z5nSAzN2feVnqxo9' \
    --extensionCategory 'trEGbxFLnpHdcefi' \
    --limit '1' \
    --offset '10' \
    --order 'vXP1PLfbFlave0WX' \
    --reportedUserId '3L2mEp1lMz15gpUn' \
    --sortBy 'wBtPHxe1CLtnhQnP' \
    --status 'WuDZshdPcNn1BC5l' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'Zrvg0UVxZPD555vw' \
    --category 'QW6o5ojSTCfrk7hZ' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'TzevbFU1n37trOSl' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'soJgzLuassjcrsEt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'hLBLeiSXC6Fdnplp' \
    --limit '25' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'vgfTb8Cq49FDxj3p' \
    --body '{"notes": "BHDesDpUzeRmcF4I", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'bVw0NjmK964j2OlZ' \
    --limit '98' \
    --offset '90' \
    --title '5EMZ235fpfsaIaJx' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"nnVN74aiNIu3Hd19": {}, "HZBsILGYjnQubFrQ": {}, "FmvM8js2sYLe7VYB": {}}, "category": "USER", "comment": "ZRIVnMikuMK8L4iR", "extensionCategory": "wdlJvdlowxlkckfm", "objectId": "UqPp01SzaxTdPrXi", "objectType": "uvZ9YRvILbVjMNjf", "reason": "HEShml6j8xZ4LYmL", "userId": "eWNtc0UnpBWNwng6"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE