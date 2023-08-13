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
    --body '{"actionId": "YeWCziW2J3Jm5ZhV", "actionName": "86mTng9XRA81U8Fn", "eventName": "mxusNPCyrIiC3cTt"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "0n5mENFvqCN5BO1t", "extensionCategoryName": "BZGOejfCMxHSZgEQ", "serviceSource": "pqLYLwQ33hjnkjPS"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "PYoLmodWt80Fa3Hz", "maxReportPerTicket": 66, "name": "xvGWU3WV53VJMJuB"}, {"extensionCategory": "KEYi4T9GOfwDJluf", "maxReportPerTicket": 21, "name": "QkKUDp2P5PshJ1Jh"}, {"extensionCategory": "y1MavNvm8opRrtYA", "maxReportPerTicket": 14, "name": "DL40kOscFlGEJRcV"}], "timeInterval": 100, "userMaxReportPerTimeInterval": 82}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["eeCIAJ8PIAf1e60M", "sRQfFgHFHESjCDC3", "dluYA0rBXp5rnnsA"], "title": "ZLsl6qBrSQiPXzvK"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'iNJl7X4uVnELSDb5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'eCLn5x7OV4zqeeK9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'JsOTpki5Rw4nA8Q0' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["0PwJsf1GUJDTdTNI", "AVS7DScuLYaS3tXi", "92kP8g6UdxHbW13B"], "title": "a81Szf30tyjaDvct"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'uBSV4M27TaWXteDj' \
    --limit '94' \
    --offset '78' \
    --title 'GOBIUj67aVBgos08' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wLFE15Dm5BV7kOjf", "groupIds": ["i9NjH3EDCWgvphIw", "k7LyjqvXxOeD1Qay", "UGmXoBtAJCh1TbBb"], "title": "jDbPubwLZcnNFcuk"}' \
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
    --extensionCategory 'BtBLys9eVUJ2d8Xd' \
    --category 'qXiN5dmWaH7viPNB' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'kiVr04QTTPHXmDHc' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5xwNaN9PJUUuFg3M' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Og5Go8RvsAYBwkB7' \
    --body '{"description": "Zn1Y4hnaN7UYybDp", "groupIds": ["s9mVh19DWW9H71S1", "RF0nCRjYoJ4x1Tg8", "5eW2LIJHSm9be42X"], "title": "EQ66Az2HaObZCRMD"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'no55G5UHVWVe31TY' \
    --limit '74' \
    --offset '60' \
    --reportedUserId 'XVt8sXlnHUSc39uu' \
    --sortBy 'NjkcOZmjxnVrgoIV' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"vFYtJgki7jux8gQs": {}, "sW5Pj4cC5VIhN7qP": {}, "UxtznJtZhiC4L3Y6": {}}, "category": "CHAT", "comment": "jvtMzogU3EFNh9l1", "extensionCategory": "DfTQPqtFa95zp510", "objectId": "hqHz7gIa4OIhPAV1", "objectType": "cCWC29jFtAZZRzkQ", "reason": "uTB3Y85ja3T3ENCx", "userId": "zxNKXAktEEeELmwl"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "AznMYh3Tajdjh5lf", "duration": 98, "reason": "RMwmnF2WRBVZpRVD", "skipNotif": false, "type": "uPl299icZnjGYFyD"}, "deleteChat": true, "extensionActionIds": ["Ci8rwbjFHtqauxFj", "lNqzQq6j8QYlVKkT", "ow7fO6rAA4DYQcGo"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "wGUsHjfTbF9hRvPo", "reason": "Wh98U8GR74rnL8a3", "threshold": 1}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'OgOhAKDnoMVL5Pf9' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "kZWV2wTmpQQGjpe4", "duration": 79, "reason": "YJ7nWESLQm9dqGIF", "skipNotif": true, "type": "APXK9H3j0j3v055N"}, "deleteChat": true, "extensionActionIds": ["hUSyd2XLmQOhExri", "AjNfqm8bfH7LTHuv", "ippfYqFgPlKMYMa4"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "SFB9ebTjoP3ZI0op", "reason": "NHCqGiDKCuyucJ0W", "threshold": 66}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'TrBAHvlnntcM0HGi' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '2XW3dGgf0YkO6PdA' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'L4Ih1OFmgOEPfVq4' \
    --extensionCategory 'bKz4ZEMfI9sQTHIH' \
    --limit '91' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'q0xN3zwuGen4MV22' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'jN7EEDcTxPOriNrN' \
    --extensionCategory 'Z0B6z42WoBckROV7' \
    --limit '83' \
    --offset '76' \
    --order 'nWYqEB7F9JTvDZr1' \
    --reportedUserId 'nv6FnzIWiRNlPc4O' \
    --sortBy 'qeklole1ubZSD7FA' \
    --status 'Q8tMBb39ByDsPQVt' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '8P0UDHdJQzwzy5We' \
    --category 'meb4ypoG2RUbWU7F' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'twvdhhhy6pkAE1Ke' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'MuwcODlyaFJQUiim' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'StfMkW68LxJGLHAM' \
    --limit '68' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'GEiQ8wXfMW8Atxo4' \
    --body '{"notes": "xpBOCB6W9K73ipJe", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'cykDEhgzoLh3BEzk' \
    --limit '75' \
    --offset '46' \
    --title 'i3fs2ruNh9UlH0vb' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"IU7GkclULFkuWols": {}, "jAgEk2PZOpMGEZua": {}, "atopHolNSyJcYvPS": {}}, "category": "CHAT", "comment": "adYi0vqDdcD7kr9f", "extensionCategory": "gst558mntTBPYsXG", "objectId": "i8T4TZq9lFWta5QL", "objectType": "NB7OxNspWufxYPGL", "reason": "UE7zJZQiHrnVUyBA", "userId": "ePVaLcD8CXlSLbct"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE