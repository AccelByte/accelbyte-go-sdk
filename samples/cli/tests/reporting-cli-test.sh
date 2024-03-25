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
    --body '{"actionId": "fbPGaX6F1sYeeKid", "actionName": "NPn3An7Mj4iCLtIQ", "eventName": "DsryEe3mpaANh9rV"}' \
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
    --body '{"extensionCategory": "HFpFOloS4QnoUq7H", "extensionCategoryName": "5bllty25H6I5ysC5", "serviceSource": "G0JroPYHeRhT6pT9"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "UiRNFo9jvvFH2ra6", "maxReportPerTicket": 8, "name": "sRMC1AiUWApB0GyM"}, {"extensionCategory": "Hlr6NhcWXZEfBfaV", "maxReportPerTicket": 31, "name": "2qiKfz2uCityw4XW"}, {"extensionCategory": "6MYRRBLLx735maJT", "maxReportPerTicket": 21, "name": "H0pSzVl2HHkgUTF5"}], "timeInterval": 50, "userMaxReportPerTimeInterval": 8}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["gtpDMiDypi4iozmN", "jMIXbyThTZecmhPV", "e43UASWwfeT5nR1a"], "title": "0FbWACJVmP0HtTVv"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'uvO789PITXxmIBRa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'XJPbXECupB56OxHt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'oOYk9mh387TTORMO' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["8qQDFyOjAqmzpYIX", "HaaQnj1CuWNKwlSE", "9iiMwDiampRTeB2T"], "title": "vGu72YGR7aX7oCKl"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'T3hSDSiO38pRakyM' \
    --limit '4' \
    --offset '67' \
    --title 'YbUOrojcriPP9eQB' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9oA69pldrCd7mvuy", "groupIds": ["oJKmeXOWHfcb23rD", "GVJhBiCXJaaaHgxX", "ckg5Ygnfo3eXq8Nr"], "title": "poj2zPYO9fTY1cT9"}' \
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
    --extensionCategory 'GhSgfkNh7xE8xpfz' \
    --category 'w9MJDL85YVbJcyi5' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'dXk1T3i2JlYab6VW' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'TkSqO05Z1jOIRCYE' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 't6YJIeNspkSll8eO' \
    --body '{"description": "1KX2cuKtHs80ooeo", "groupIds": ["xXV4qQHSHz43rRjJ", "vMhKFlboXOQ21blR", "WZhsJzpzVzesXYBk"], "title": "8cDEwhEDHNH9dpxG"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'OYNJZTNMOo4EM3wi' \
    --limit '76' \
    --offset '25' \
    --reportedUserId 'hHzYpdSlU3sU4i8b' \
    --sortBy 'lRWYDrqMvdRjJp9k' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"R1Pcq7W3NZkOn1nU": {}, "UsWQWKr7bev6DY07": {}, "eitpbPWRh0rhoO1I": {}}, "category": "CHAT", "comment": "aKoOCklqn49Y4db6", "extensionCategory": "o0ImgLewANQWZNpb", "objectId": "gfGBkG1cwIowCLla", "objectType": "X6knnFI5SjwibM20", "reason": "hsH7xybLeRfMUFCL", "userId": "SIIFHLbtdqxiEAsj"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "2CSDqmdjoh2zxRF1", "duration": 80, "reason": "5sUpZmfC5PmLIVXr", "skipNotif": true, "type": "MRm0VVsjSwyti6Ne"}, "deleteChat": false, "extensionActionIds": ["XbyOxY3AvKY10KYS", "eaGwZZkgQPpUGrFZ", "LeLtNQePxVaHsava"], "hideContent": true}, "active": false, "category": "USER", "extensionCategory": "otlGULCyKpUefXPl", "reason": "OOYvyQLqz6FEzLtH", "threshold": 17}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '6osLq13b9024VB47' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "ysLvHfDMIrTdnF5n", "duration": 58, "reason": "fv0fq7XzAg2kJQct", "skipNotif": false, "type": "R0ZWZXA4YazP1StP"}, "deleteChat": false, "extensionActionIds": ["GY4c5Mv0i9pOXPpu", "1oClEJVuus87Qvk0", "DkmD20wEVTY7lvq4"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "uBfekPaPQnWohsYe", "reason": "TNsWGFgMAlrsHFvd", "threshold": 61}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'Tyh8LLlc8kkz3YoZ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'n2ab0euRVKCfcC9m' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '9OxI4WjnkDwBMW1x' \
    --extensionCategory 'wkLJlEIoAmSjBrEE' \
    --limit '87' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'r5OARzruuoZAkBdJ' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'vkq1YTjP2TAsuL0l' \
    --extensionCategory 'loDQD9Db50YlWXoe' \
    --limit '62' \
    --offset '52' \
    --order 'qBeuLrnStMwGiNwk' \
    --reportedUserId 'ovuZJEvD6n8zNw2z' \
    --sortBy 'DoFTjThfzgBXOt43' \
    --status 'IhYgLgHR00gq09CC' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'MvtMN6Ut9G8trP66' \
    --category 'V8hVOYYWavxAayPh' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'brTFVCZANdHGHjqu' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'gs3mODNyNJ4kybvN' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'WpPKQyMJW4xcGf31' \
    --limit '98' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'HuaABcdB40EjjyWM' \
    --body '{"notes": "IzOQdn4rAjU0vPzU", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '3ezF3DVWbml0VZ8m' \
    --limit '9' \
    --offset '28' \
    --title 'yaTKsL5qWPiDa486' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"neOHTdyfGRWv8Qro": {}, "mACxVcwUhuDIJ1kO": {}, "bIfsIXlpBm9TbUJ3": {}}, "category": "USER", "comment": "JHSoqSSgHil3oihl", "extensionCategory": "7bfPUm6sK8sBqa5e", "objectId": "QstPaNXprJS6034V", "objectType": "dth07bEhA9g1TgzY", "reason": "AIczL7VURh2t16il", "userId": "TqHW1PCXWbPgCbAu"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE