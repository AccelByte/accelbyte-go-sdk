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
    --body '{"actionId": "jkuqatr7DkV7tamG", "actionName": "EVNoM9wx6JPGb4cR", "eventName": "HcGz5I99kL2IdnPS"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'ascending' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "3E4S8efidEpGuPF0", "extensionCategoryName": "q1GpauUzeC8T1MlK", "serviceSource": "RmY7XXt4mVISC7YL"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "IJr2xYZMsaO2CU9F", "maxReportPerTicket": 35, "name": "NYem0TxcB2Gtp5hQ"}, {"extensionCategory": "GJTIH6vMEvvS6HJc", "maxReportPerTicket": 41, "name": "BYa1k7FisK0PTUFg"}, {"extensionCategory": "1GtfHoepUuNpFBxW", "maxReportPerTicket": 82, "name": "40CmPdqhm8petzuJ"}], "timeInterval": 92, "userMaxReportPerTimeInterval": 1}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["QxjMAfi90Uh7fboW", "X317GFyqIwVCFWpN", "esVNx7cRWfuUMyBU"], "title": "gr0qLi0pj7NgVAMu"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'n1GHicrAGgsZtdmA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'UTqhV6qenOMHJI1s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '7o1IikLpFJRPUkCn' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["BUfP5e9fZHV59U5c", "N7OcnjwGBoSRKQXc", "uuVUSff4R6pRMIAV"], "title": "kTRm3uoX5xsDLleO"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '5SOh02FuoZMKhrPL' \
    --limit '21' \
    --offset '15' \
    --title 'ozpYyyQ7DXBnK8Dt' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QnIGDrZws5sRowsZ", "groupIds": ["IVDjNWy5kyyxtcCR", "AkzQppgRVlqZgAWN", "Zc9fmgaOBJwdVnPc"], "title": "BKp2uLbmNozmydCJ"}' \
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
    --extensionCategory 'KVTjToLHSIjt7avS' \
    --category 'B9LmxzvvaJpne6p2' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'tyzKXxyGKJ5fM9Ql' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '7o95fxA9GWmkJNMk' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'GLyz89G7QuKm1od6' \
    --body '{"description": "vhPHJOr9WbwawmyA", "groupIds": ["QZu3unrfFetvOSDq", "GW0qqh0FSVl5OtdD", "C9Rbsy3KTzw2Q0pB"], "title": "sKyXGAMeVYEjY5TC"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'IsOweuh0F0TPEdzz' \
    --limit '59' \
    --offset '42' \
    --reportedUserId '90cSLh2bbOK7hU0m' \
    --sortBy 'OPV4L6I6FEf75AcR' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"60TTdagWJBOOhLRb": {}, "6Z5o5dd35uE4JfzH": {}, "1NkEMONi3ZQStj9l": {}}, "category": "USER", "comment": "ILVvhqVo6oRB1sFx", "extensionCategory": "Fu8wQURroRNpIWUV", "objectId": "bKXqEZvLYM1AZ1Ga", "objectType": "a1PjrvQV8aAgVsZL", "reason": "cMzD8wuhvoXKXOB6", "userId": "2wW81kQghRRxE888"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "znAlY4lQK6Lpo0rY", "duration": 97, "reason": "ofkGwY2JnIEp92Pn", "skipNotif": true, "type": "DKl4oZHkgH6fUzsv"}, "deleteChat": false, "extensionActionIds": ["Tms9ukQ3c2Qc4Fqe", "AgVqFrUKNTpXdddH", "qGdRNGGKoGJ4yGHV"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "MLLJPHOOz89UL2PU", "reason": "FZ0DNU2rMOSAtIuI", "threshold": 33}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'm9IaE5v3peI0HPeu' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "p2l2pTgiVKVIOaPo", "duration": 3, "reason": "xxK5aprPDi57ku8c", "skipNotif": false, "type": "YqoCqJaMV1B09JgD"}, "deleteChat": false, "extensionActionIds": ["ijtbWG8NULo8h7Sh", "z6zUByjSuAM2pV5h", "xRuokgvzlxeHhDWO"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "pevKb7TtuxMXJplz", "reason": "BSgzt74RshfFuKGg", "threshold": 78}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'cuA3AcvbPR0ewsc5' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'uhKqBbTLD9Jjyxkr' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'QrVF0EmEEOFD1OSz' \
    --extensionCategory 'BnbUGL9QFREHtMnJ' \
    --limit '32' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'eHMpPImFkwaESDUo' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'YCJ6lHSGcdUuoPgs' \
    --extensionCategory '6F4PXK8lk7cDNcw7' \
    --limit '52' \
    --offset '40' \
    --order '4NQJmvuVCS4OJUF2' \
    --reportedUserId 'nI8D8tyDtzL80j64' \
    --sortBy '9bylzwxwnDGVyfVV' \
    --status 'ZyvktRSFsrPArawQ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'rAHtLle8FK8FGamb' \
    --category 'qzDlG3uw7Z2r9SEN' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'xIVAmKCthhKM40Z4' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'jggkc1sBfMb4CpYJ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'QAzaK4zQQctt5Nh0' \
    --limit '34' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'qIIuoYqfDoiLOFcW' \
    --body '{"notes": "qc9hzugecuit2c0w", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'tihiiHmUQa4p6B7y' \
    --limit '40' \
    --offset '11' \
    --title 'TSgd8xaNNtY4WSxs' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ul21HUfG1xmFaZKn": {}, "eZQuV16JBSZEysE4": {}, "QMcOVae9LhKC86hw": {}}, "category": "CHAT", "comment": "9TIdM1WxGyOJQbjW", "extensionCategory": "wBcOWsHbU90MEGwD", "objectId": "T194EYxShUbgEa3w", "objectType": "DkraGWcaVWVxwsgL", "reason": "jGZ3XSng67lroBiE", "userId": "4yZ8QTuTAYk6s0kj"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE