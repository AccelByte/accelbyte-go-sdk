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
    --body '{"actionId": "l3fPya6iDKOZ0ICB", "actionName": "XQrpN5S83vDd4rtV", "eventName": "afHnULaDFsu2URZd"}' \
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
    --body '{"extensionCategory": "x7Y0AS3eyp987b1a", "extensionCategoryName": "Z5CV80oERtmjPuXd", "serviceSource": "l1SLhLOdgR8ZIQno"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "mKD2NwYswCQYeCk0", "maxReportPerTicket": 59, "name": "Esx4b9brFSoNAYNW"}, {"extensionCategory": "FLt30MRYuQpPuMG8", "maxReportPerTicket": 45, "name": "BvGUlSuFbalNJuvy"}, {"extensionCategory": "qwEjwj9Gye5891XG", "maxReportPerTicket": 39, "name": "37NvqDQwqWep1e8S"}], "timeInterval": 100, "userMaxReportPerTimeInterval": 74}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["p1vLHnM4gM7m41Jy", "fnbwqEOaS5GqjPzY", "X8ZoBF7nvkRj0fJo"], "title": "9eF61E8TG9bF2Ho3"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'ONtwny6ooh9ar10A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'c3enbDgjCXPABtkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'wZXehdxMsAoama8f' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["lPgbZGu8FNw9V8c5", "5p5qYKfaCB1bGt5j", "8tnffKOrgNPHTtIi"], "title": "bDPjuM0bFJe21ks1"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'ILEUXuTU0WVaO1Tv' \
    --limit '26' \
    --offset '71' \
    --title 'KusCMYiPynjU95ra' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5O9cfFkmWevfIoEg", "groupIds": ["RPHQuoQDgMC03s9X", "dzXnQttL39uerWe0", "uvu99tSQigvC10VW"], "title": "BWFEIa2WpntZyuDx"}' \
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
    --extensionCategory '3bahPAqnpUwEbgU5' \
    --category 'xAk7xxtFrWzrMjHv' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '6uDIyLD6AO11G01W' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'GX76WPhG3tq8G2iw' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'LMT3KB5zcctJbtjG' \
    --body '{"description": "VWhC6Pis5i7a7E4i", "groupIds": ["K1EJGoUVZWC6GBPq", "XR8j8QoMxt4DFsiX", "L7BK7VogUDB0a8T4"], "title": "0fsnnQCHaCUtQxfg"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'Oo45jOifrr9AtQsR' \
    --limit '70' \
    --offset '40' \
    --reportedUserId 'Q765sosIItmxX7wu' \
    --sortBy 'Hjb2nXl8unUGCixs' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"6o0IMQ4X6ebDyBPd": {}, "ci3YMRxDGE0czsXk": {}, "G2hokGmpaLbYHEix": {}}, "category": "USER", "comment": "m55fcVqJw4joAsaG", "extensionCategory": "5cWnr4FpkN7dtWWZ", "objectId": "vNN5PrJGKO5oxG4G", "objectType": "5VjRNicvY5u7ANKK", "reason": "LIkpWfeuUS9yMoRH", "userId": "Xv8CyxQPXvr8H6zR"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "UAichGzUQAhu4bHq", "duration": 28, "reason": "93Tf3liLnHMx4wGE", "skipNotif": true, "type": "HOgK9zZ3YJjTZjzJ"}, "deleteChat": true, "extensionActionIds": ["awVuvXXfBXrOyLws", "tvwxXMQNgZFm77AQ", "FibT3U4DXubVEmnk"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "kPNiBvWP7bDIiNJN", "reason": "sAxYBFeH4YNP3J7k", "threshold": 41}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '8Yk3UtqNpQBwFAF2' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "sTS1NcYdQRtFVZSP", "duration": 47, "reason": "u9wE5rkMGSdWDFnJ", "skipNotif": false, "type": "UnqkC8723b8eThiy"}, "deleteChat": false, "extensionActionIds": ["piWddbJzgLvzuiWf", "ydXxvCRrTUgOjP3U", "gzSn2GX0s7U6M48P"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "X0mpeRl2T3xWJde7", "reason": "F8RzQ7f5mVjHn2g9", "threshold": 1}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'MOWf1tAbzs5JhjTJ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'fcWOsBO2GcmTsvOd' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'ghZclUqQ8Gdz3bNf' \
    --extensionCategory 'quBT7a46VhAZzjm7' \
    --limit '11' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'bxTjQnHnPdqbeSFg' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'QFFQzjsJlqExDojT' \
    --extensionCategory 'xkELabmp2nSl56LR' \
    --limit '48' \
    --offset '85' \
    --order 'YVYP1Y0Atcakc8ix' \
    --reportedUserId 'N9mggthVRHWk71yL' \
    --sortBy 'ak8ZNoe4vX0vDeMm' \
    --status 'Bi1eSEe7sNRqf518' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'UOTJj6gJnxDwY0Cx' \
    --category 'VG4ZZ5E84NhAqN9o' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'k5dJ70hLMwpNvp1F' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'XC3OIuZr7HsE7Myh' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'ihvkUpUGg7g5QR4i' \
    --limit '8' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'xWjaRY1yKK5CsMhB' \
    --body '{"notes": "KEkdYfEIBl74bUbT", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'JKipxjlVolW28k4T' \
    --limit '100' \
    --offset '76' \
    --title 'wp7yb2AAA5U1kvoL' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"EHmXAdpTEWPGAYKf": {}, "tRdwsWGzw0BJU4sM": {}, "nFhVZxYzlluGjzkR": {}}, "category": "CHAT", "comment": "LqBuPK17mAPiq6O1", "extensionCategory": "P7h3aiMem0ELIUp0", "objectId": "IhJCK495SkpvnUz8", "objectType": "TspArMA7o6oUjMIX", "reason": "vEpoTZzjuYqoR9Yp", "userId": "H5qgUIIpiyroEHFD"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE