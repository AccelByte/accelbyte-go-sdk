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
    --body '{"actionId": "acKC1N8DsNo3gjwE", "actionName": "BehUvVnrf9oEs8PE", "eventName": "3yog3CZxn6u1wFcf"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "UZhaA7Oeqnl7qhED", "extensionCategoryName": "XhWsLcbs79ZprRL6", "serviceSource": "jcJfKP0DlXNndnI7"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "2oTjzumhGMiq9dE4", "maxReportPerTicket": 18, "name": "L6WiIgISPZ1IWy7a"}, {"extensionCategory": "wbEFmx8r0tLCQIN3", "maxReportPerTicket": 17, "name": "hcuqJtlpkoJETMoW"}, {"extensionCategory": "1i1PAjNecwt1ZDA3", "maxReportPerTicket": 100, "name": "tut7giB8YHLMLlaD"}], "timeInterval": 91, "userMaxReportPerTimeInterval": 67}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["kLNrxZCCQJ58u2Lk", "oF2Aa9RaMCf2WJ4R", "eR1ZUxQgk1cEOJGD"], "title": "jbAmnv3qA2MsYKBO"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'PSoDuzfmyvAIYV4M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'FHPHg7tPM7874WAl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'fII9pT69uLfTeEgd' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["k5UM7IlVDJO8MH0U", "HNg1ljHguuobuVlj", "852B584E9Y0NjNgv"], "title": "LIMObAj0G0YorUDd"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'dYjZirwASk8ubUa0' \
    --limit '28' \
    --offset '80' \
    --title 'uoEFNENGgUKRic0Q' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IrtGHht92PBWJEB3", "groupIds": ["vkhkT4l7ldK7Demq", "cliZrHBbdlkkKz9e", "Rij5qXi7Pr3IxVyA"], "title": "mEx4TE20wv5r3FEA"}' \
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
    --extensionCategory 'Wrcr3sa3RusO7iwQ' \
    --category 'qBVCEi1cE1E8oXiQ' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5HrpDqjDN9zllPG8' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Ngs9zKrHSs311oZW' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'gGA0bwUBLnaRvZCv' \
    --body '{"description": "qWxI1ceyTd4RNehp", "groupIds": ["4DqyQVn1tehWGr6W", "Sb5ga2Qn9nfjmXSh", "34bVDsw1Hnh0IIKE"], "title": "25kafjPJ6vKwC8lm"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'yNKte8qZ9O1SsOsM' \
    --limit '87' \
    --offset '97' \
    --reportedUserId 'ELo2H9Phj9xAOWcD' \
    --sortBy 'g9QVzzhBs20tlNJx' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"h69YgiZWA94rzF2W": {}, "pAb9MOZ83mbqOUKJ": {}, "khAEdkWYZe8q921L": {}}, "category": "UGC", "comment": "A7D2awaaQFwLCE6j", "extensionCategory": "XuPSp5v5ylH4Tuyc", "objectId": "d2jecrlH1C9VyFGG", "objectType": "PFm0sEkzaU35W6gl", "reason": "bjXv9FHE2b3EOKqg", "userId": "lkkrXgfVNiZZ8jRr"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "XyIoWa3y3WpVVp45", "duration": 23, "reason": "6BdHldKxJLLKrGDE", "skipNotif": false, "type": "OOrvzi67lmBenLd0"}, "deleteChat": true, "extensionActionIds": ["gUS1zdI6s5YZfhBy", "OjaCa1w6MO3bmhxo", "WxNXSKJzWkTJt4qJ"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "jnu9V0ehb0vqkhA6", "reason": "8pWl2MyPXOvktdz6", "threshold": 47}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'tfGKY5qaztMaJawy' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "u34NmWifVlXYkl5e", "duration": 17, "reason": "TQxsdSSLbg7PjstT", "skipNotif": false, "type": "jux4Q52h75bUDWao"}, "deleteChat": false, "extensionActionIds": ["jM0tONuli1VxXXjw", "IKCq0A7el5sDHsKw", "j2AO84bRneQXPitr"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "Ml6wgzSkk8zVxqEi", "reason": "Bm7f4dKzsjlrhpCl", "threshold": 77}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'T1oS0o226P5ZKZmV' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'Tbo2CLWiSK4imSrq' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'JnrCSfF1XXAEcKI8' \
    --extensionCategory 'YHwUq3LGeKldzhdm' \
    --limit '2' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'I2YURDUK228Woxye' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '2zoxcSab37w8ta6U' \
    --extensionCategory 'aX4WlDNrYlgpBJrX' \
    --limit '92' \
    --offset '75' \
    --order 'Z9vJ7jnbHqsPwpOA' \
    --reportedUserId '1LhAcbwSvtzo14Ab' \
    --sortBy '7Xmz82x5cPr5YaXi' \
    --status 'AWLLMb6eZmiClsYL' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'aa4sImhqUY97gBqi' \
    --category 'joPSCSM0DFoQdCOO' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'wOkO69v83Jg7d1OZ' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'wOEOrRDGW7sg145D' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Zhx82b9u82Tw139o' \
    --limit '66' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'BI3p8Et3JL9RMvas' \
    --body '{"notes": "GaoGY4gwiFyaCtSt", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'oNQqkcx0ju0LgChA' \
    --limit '84' \
    --offset '48' \
    --title 'u95nxKTmzpEBfOFG' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"F0GyEysYRmfipauQ": {}, "vJXQEiucc7x45icu": {}, "451P0NBEAtuHZGFi": {}}, "category": "UGC", "comment": "riQGrMILYimE01nE", "extensionCategory": "2a7hElsSjyptBnbT", "objectId": "Ikxui7YkDkKLjiQm", "objectType": "BXlXQTDxfm0jjtq9", "reason": "9URaXdAzZw92yNs9", "userId": "wrHnKrOL1QxwXFht"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE