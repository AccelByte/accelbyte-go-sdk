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
    --body '{"actionId": "A2tiCs8EE4jn5JRR", "actionName": "h7T72LDFSN8xhV85", "eventName": "sXCqln1SXoK1DHX0"}' \
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
    --body '{"extensionCategory": "2TcY6AqwzHMUjB3m", "extensionCategoryName": "kJv796CBp8hqOPFC", "serviceSource": "jaqK21ny56Ijt09f"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "gHG3LRVWFx83Ib74", "maxReportPerTicket": 12, "name": "BfAGIlQtMjuqjjvE"}, {"extensionCategory": "k5xWFjuOzipxXSvw", "maxReportPerTicket": 33, "name": "4pD4csOSLjnVfUzA"}, {"extensionCategory": "1lSLm3Z87YIvvNzs", "maxReportPerTicket": 19, "name": "73IDCfoMJt5yzds4"}], "timeInterval": 44, "userMaxReportPerTimeInterval": 74}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["CR5VwdKi5zQlUxR1", "T2lR9bZStETk2b3v", "40BPrQkNsWFHqqQ0"], "title": "rRUj1hpjjsXPnJIs"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'UogxllCsYY4dSeys' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'oZkqGxjNu3BxAohT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'ZY5IiwwVm2D9TNXD' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["jjLCZDfd0sxZ0DHi", "ppOW9cPR62AlXSIw", "zPcJPYC0Z736Df1B"], "title": "jR3gGtnBDR7D0CEf"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'XnFOT4X3NlRcPYVq' \
    --limit '84' \
    --offset '100' \
    --title '2Kulan0dyOFg4ZY2' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "E73ufeCR7qgAiQBo", "groupIds": ["qqdtzfWwgC0VCadc", "q52FQ6sCykSHH4tk", "jA0bCZvCegTdapN0"], "title": "tlf6FBHYq9bSGu2K"}' \
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
    --extensionCategory '8DhHTDLG4U50xXcf' \
    --category 'hhprZ5nQrxTrftQh' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'JPQpAtxLLFJVRjQW' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'XWtcLvPkyoBzQs5O' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '4XZp3jgqFSAzPXNh' \
    --body '{"description": "Owj5ERu35IFtFZxi", "groupIds": ["2f0qhAVZBAKdJFeq", "i4I9eC7WVTvMzNip", "Vtvczn7NhyokOpCk"], "title": "sPRnmmULVgO2OV3C"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'lURAU4owajVT4xfP' \
    --limit '23' \
    --offset '49' \
    --reportedUserId 'qBGT6onbwwPq1Pg7' \
    --sortBy 'jDars8L1TZpR0GJj' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"yeYsObp8hc9sXWxY": {}, "3x5RgdKH0q9NiLoY": {}, "P3NsRk06W04ud7aw": {}}, "category": "UGC", "comment": "OOzMnP4piE47EFW2", "extensionCategory": "2YQOu0hJZvPxCefT", "objectId": "2PoGKz2Ll49OBYCd", "objectType": "PU9xLSjrGjRJuxQJ", "reason": "TfkdR0AK90kWE5rJ", "userId": "TCAEXLJ18BkBivWQ"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "r3JVLG2yPeTpeQpi", "duration": 77, "reason": "MbxdxgDpgvqZdoW4", "skipNotif": true, "type": "0bNy01aBn2T4GKhP"}, "deleteChat": true, "extensionActionIds": ["ByTuCXLq9A1B5aF3", "Qws8RL9vFnCIknLG", "lU6UHUNKkQt9PuyD"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "21GZStRWR6uFlpdY", "reason": "aBQ2W2utoS3fZNXE", "threshold": 4}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'KT1k8rI4XprJibfd' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "173EmRWj5D1HWRDt", "duration": 29, "reason": "gwa7TQnidC9CIBBz", "skipNotif": true, "type": "Hy3DKFPZQuob4pS8"}, "deleteChat": true, "extensionActionIds": ["h9NFncj3wU3XUDip", "ggGSnAWwtdtMbOiZ", "WCYBSC0xkaSzk5ul"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "lHjEe7uXZ9JGEcVq", "reason": "e7UTxcdQWwfOB5y8", "threshold": 73}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'QcwwgNIkNRifxrZy' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'KA6rlJjt6sCLX2BX' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'uUB65hSqMq6J95cZ' \
    --extensionCategory 'kA0ibaCp6vczhgRr' \
    --limit '67' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'YN5be6CIDRQOBdTi' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '5MJbIz4kzAeCEImC' \
    --extensionCategory '5G4Jxc0bNs5kgvxA' \
    --limit '93' \
    --offset '2' \
    --order 'tGOvbVQ8GWnI5O0w' \
    --reportedUserId '1fePaCBCHud4exwO' \
    --sortBy 'Hl9h03p3IQNXPDbn' \
    --status 'js7ZQT32XsBnMnEn' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'KnMEGS43fHRiALRr' \
    --category '7scs7ro6aGOLyDzc' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'VYuV5TFe40UVeV0s' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'vWfAl5sI0O5WmWgr' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '5XFHuv8i5cGWBsWC' \
    --limit '91' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'AWrdS9KB3mwIEBV8' \
    --body '{"notes": "T8h8csHDe6ljDBwh", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'lCM62KDQit7C8ej2' \
    --limit '29' \
    --offset '6' \
    --title '2tB37WQs5tgc5YnL' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"TdNEoSEiLxfRedW3": {}, "mCtGWLBN4cb0x0UP": {}, "L085hNgQTfQWQItu": {}}, "category": "UGC", "comment": "vikknrSp7R24QAqM", "extensionCategory": "ne3gFnkIBf0SRWO4", "objectId": "JauQCgZwbikPfOnQ", "objectType": "yqjQTPSg8tF7reET", "reason": "6XUXIhnW0obkJ0Zt", "userId": "h3FCdHPAD8B4YiBh"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE