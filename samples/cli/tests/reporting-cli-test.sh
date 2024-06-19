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
    --body '{"actionId": "ZGBCsABxK0XcPT1z", "actionName": "nOptszmwzDlOpYsg", "eventName": "LUM3VETN1bwKBWwI"}' \
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
    --body '{"extensionCategory": "H3NRDAdNM9uYgAHW", "extensionCategoryName": "99zFCTCQNDPI94zz", "serviceSource": "LcafbZlYq78JaYW6"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "tjljA2XgBv9kCQXP", "maxReportPerTicket": 96, "name": "saWbf4zHc0zw7lRO"}, {"extensionCategory": "GGR8PYjNS1gQrDAx", "maxReportPerTicket": 37, "name": "jilg86XEfAc0hYTO"}, {"extensionCategory": "I0iLJpzqnjHcbLLP", "maxReportPerTicket": 23, "name": "FFFaXp3k0zLWEqof"}], "timeInterval": 31, "userMaxReportPerTimeInterval": 84}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["sp1CMjHjlwhNPEvH", "bPLn0pURnWKN7SAv", "QHheK23yuFSsoO9P"], "title": "4FoYgFSBRWRXMJpe"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'TGJXsk7tccfAs7rw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '4dSG33x5MEqBbflh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'BOqtfEuT3U3Qjndt' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["wsnPn53S9ZfoKCPH", "mcYLdMnRO7H1r2Rg", "LXnCJddjplJglVl1"], "title": "hRPltNxIaUgoYhL4"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'U3LHNP6pwP69IfxB' \
    --limit '71' \
    --offset '27' \
    --title 'O3WozI868WP4lxwk' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IcXDqp7HdRqowPmf", "groupIds": ["rfcqVCgMOD9HP058", "xtj1L8mKr2aNYzyQ", "y5OXJz8GWqDm3yH1"], "title": "B7zU4SOHhBDca6ec"}' \
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
    --extensionCategory 'pLDY5ailQhKdU4gW' \
    --category 'YNDU1qDoo96MpJff' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'DqJeN7Yh4Mw7NSfU' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '6l1Q2D9xxb5X40Mu' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'MGhOFS1autme31Jh' \
    --body '{"description": "uQe5c0dtp65DgXPg", "groupIds": ["On88Nh7GR25MBnWM", "piiS42weQmQmiPaG", "tyva4oWZ9XZYi0i4"], "title": "2QVTF6kD8BMVwIcy"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'VPw4F7pagesdGc4y' \
    --limit '40' \
    --offset '45' \
    --reportedUserId 'W1lPBcIG6pF2O2wn' \
    --sortBy 't6nYQpLEhBgig5u1' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"8jDvmMVInCuTlot9": {}, "eidR74h5GOpP9CwF": {}, "trLB3G0B060rt93w": {}}, "category": "USER", "comment": "mP7kEbYdcsA9sY3x", "extensionCategory": "btuIWz56hsRaOa6y", "objectId": "zX14TKwjxWVSuqXq", "objectType": "IgHbRG9RQL80Qwav", "reason": "QyQ4l3to4jTYSi4M", "userId": "9aJYryKDG3jSuyeM"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "r6UXBuRDFGbaC8iT", "duration": 33, "reason": "3AgO98LRmPWBnBEy", "skipNotif": false, "type": "KVLFK29LwUpAwOII"}, "deleteChat": false, "extensionActionIds": ["n7KF8XkP24tG25wu", "IyuKnfwoaiodSbnj", "PaqQqYLJ2aabErvQ"], "hideContent": true}, "active": false, "category": "USER", "extensionCategory": "xFmEqFhWcrzv8GGU", "reason": "3SILMQ84EEQYYNMT", "threshold": 92}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '0gwrlRilkyOLsxAT' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "7zE5Eyy1VLAjRFqR", "duration": 13, "reason": "JZAPWvl4GUIZ3IDI", "skipNotif": false, "type": "AdiYhk9OvQnGt4DH"}, "deleteChat": false, "extensionActionIds": ["ID4N8XUVhyyBMzn4", "vsQbpOBNTDaLjKPc", "65nIjR6l9uaKw3GH"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "GFaw3faeKyb2qdZo", "reason": "6i2lmhiuToyyEzrx", "threshold": 9}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'E33ErEJD0TEFk7z1' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'Dt4WrWSW9X3Ndq0U' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'ciYT7uDBasd0JMYP' \
    --extensionCategory 'o1RUUgbTP5JG6xCk' \
    --limit '40' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'JarMkAtL7gOlIoqD' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '9ruvand4abfu4b8y' \
    --extensionCategory 'VfVegF1GFoSOZQh1' \
    --limit '54' \
    --offset '35' \
    --order 'JGXh67BvaNX8XoJe' \
    --reportedUserId 'NahusE9PAUUe9JkU' \
    --sortBy 'OUMVEs7yOdrswZSL' \
    --status 'XEyt8rxcXnLI3CAF' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'hgLeq4ktOHEibAyv' \
    --category 'PcBB84g4XSQsRCho' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'm3nOWT7NOmVnIJWV' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'TB8jC1TArpQPVRIm' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'efd7DjILa6J78bsd' \
    --limit '23' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'BaQGsBkE2nFY4SG4' \
    --body '{"notes": "hiMIcXVSuZ1bamku", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'KxJCMhL1hVe5l0BM' \
    --limit '64' \
    --offset '98' \
    --title 'Fwk9SZvqIh6SgwVz' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"YOOWEAcuDfwsEUSn": {}, "fmJRvWUwU5p6DoiM": {}, "AMOPQon7N3IBxixF": {}}, "category": "CHAT", "comment": "Bhctvqhlm3cpKRRP", "extensionCategory": "224AswOuktTR31DZ", "objectId": "TvloidWN2hur6vl5", "objectType": "chXIuKigXICTlCCU", "reason": "60Orefwfb40JaKA4", "userId": "pvI6olGYB6ZFbiwr"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE