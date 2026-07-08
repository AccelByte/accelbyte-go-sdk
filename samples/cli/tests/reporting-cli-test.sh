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
    --body '{"actionId": "0el05VdvdfC2oKC2", "actionName": "VCy82DCBZ4arIocP", "eventName": "oRWTtkF3L6r3Qhkd"}' \
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
    --body '{"extensionCategory": "TG0xSvUWkXjW9dC5", "extensionCategoryName": "b7IJY1ExfNaGAC4m", "serviceSource": "LSF5XOuZPYC00H2b"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "mvmLbmux4ZyMfawb", "maxReportPerTicket": 74, "name": "DziepbtXN0rSmUEN"}, {"extensionCategory": "4jNhIB8TzFqzUHGf", "maxReportPerTicket": 92, "name": "yFXBvvPHHftISk1W"}, {"extensionCategory": "5JyADiAx0C3KpIQ0", "maxReportPerTicket": 35, "name": "xuJ82rW9oihJMu1p"}], "timeInterval": 70, "userMaxReportPerTimeInterval": 95}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["mvh3XXBEkuzDANI7", "iM3Onp2VoANiIvRP", "DniEfILM06z6itI6"], "title": "7gGX1tHyLssEUdlz"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'zeFR6bTWrAYKbGAa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'exBD4prrU6ItTTAm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'HV0s4bWJLlWrDKAD' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["yoncKQaN9AuJTp3l", "WmrnwgL9EMTYHR1o", "migZ3BFwVPX9Yz7J"], "title": "3I9hJwqWsFn5mgQi"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'deXxLsqSp4HoUkq7' \
    --limit '87' \
    --offset '91' \
    --title 'oLTScnObKVKeE0aI' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RVuUbS3pw0FAla6s", "groupIds": ["bntjbjrwPvSnCOG6", "Wj6k5xSsX9VvtHaE", "mu4JnHbN0r07k73q"], "title": "vK4nwZv29YC6Aaux"}' \
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
    --extensionCategory 'gRg8H39QqLFw2LwZ' \
    --category '6lzBSVxyOGYMfbeD' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'HkXTuW0LX4T7EJjR' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'FcFFT7EgBnqXoEEk' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'YZ2r2UWbvOdDSk1T' \
    --body '{"description": "roOg44S86Ift8hCC", "groupIds": ["OaoKvpuWqBdLXDN7", "0z0kbTbiPUzKXYoD", "6tgFCYM27C20kFRo"], "title": "JK0qWickMznH2kP9"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'KRa4EfDT7r2oQ5wr' \
    --limit '5' \
    --offset '66' \
    --reportedUserId 'GN7l73LAoavYgeKX' \
    --sortBy 'J2krW1bkJimfcB4u' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"yZDB80ZpnMHfFagv": {}, "ER4LLZ49bL32Wa0a": {}, "qG8enfNwAjbV7M78": {}}, "category": "EXTENSION", "comment": "Z7tXKrqq4xsnT3IS", "extensionCategory": "f8KmZ5dxXnfvgGCg", "objectId": "x1DtAmrC2CznP27e", "objectType": "rcadsArTx34dvuJB", "reason": "zGxSweErmZ0V2N5U", "userId": "9SqrAvjcRrSACG6V"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"autoResolve": true, "banAccount": {"comment": "CLSuT2rlkW6EuXvc", "duration": 44, "reason": "46BImVhXqK8RfMp9", "skipNotif": false, "type": "ghiFSJkMaBzXeafy"}, "deleteChat": false, "extensionActionIds": ["5Jo4sJhuWZ4Qjo5Z", "BhVz4fX3Gp6QqlFz", "uA15XaCAj9r2idRa"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "tZG56RNfE53ys5Z1", "reason": "0AawpAJBb9agCJlY", "threshold": 1}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'ntilR3BjG1lv28WF' \
    --body '{"action": "HideContent", "actions": {"autoResolve": false, "banAccount": {"comment": "5eqOIRhPiLhxVIiT", "duration": 50, "reason": "6cIi9aLpnf3G4neI", "skipNotif": false, "type": "3PHZjEPcpe1wGht1"}, "deleteChat": true, "extensionActionIds": ["nuAIe2G3jVwXHWuB", "NiSoBcuWsb5ZuvvS", "apxFjyQpNgQyDiF4"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "fcCMMOIJnPvYFdpa", "reason": "sFjqYCLQL8eupPj5", "threshold": 42}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'r5mVzSp9rB8NH6bw' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'JnbOKfGCSuG6ug6H' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'nCqbciY5AOF8Z7im' \
    --extensionCategory '5S54Jqto3Qxca2i4' \
    --limit '65' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'YfjnwybAsr928y04' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'zH9DchnnqYyUztkF' \
    --extensionCategory 'zx7oDZli5CwpG8Q3' \
    --limit '24' \
    --offset '14' \
    --order 'QonYP4VOhOLfQarI' \
    --reportedUserId 'XejOawnyh9NycVJl' \
    --sortBy 'f5EytcZvCQIAMEYS' \
    --status 'TXLbDfQ32SXwuLY8' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'w03BR4CXiwf156bD' \
    --category 'cr0ZBSI9BE0rHmjX' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '2MJYM40qA30LvbAo' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'ZWNNi8E3tuj2mKuv' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'lbLJjk9oNvJfJDpd' \
    --limit '47' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'lUVwTcElELcqsFrp' \
    --body '{"notes": "66u07kKme7xqkJN4", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'HeQGCq8ym4jgQYYF' \
    --limit '49' \
    --offset '44' \
    --title '9xfeR4fGlWQojF4C' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"kJ0QI79b0Qocgrrq": {}, "blYJCtPouykmFKwQ": {}, "hEfV9EFWXEE6mTTp": {}}, "category": "USER", "comment": "EWNeWx1H5MJ6TsZg", "extensionCategory": "IR3RGFTPDn14PRCm", "objectId": "5gLfK01uXV5j851t", "objectType": "3HSvVbFGE8Sz9Daj", "reason": "Fmz6vKN1WrnVw0WU", "userId": "eXq958xDRFcuh0GC"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE