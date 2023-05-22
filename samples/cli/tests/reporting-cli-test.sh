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
    --body '{"actionId": "TGx9qKdfmNP0Y0ic", "actionName": "thyyEEjwEggZavFl", "eventName": "XVDZ9xbM0poRVFdQ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'desc' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "AkgKqwTCmKwnLz9L", "extensionCategoryName": "67dlngxuhn8NZAdV", "serviceSource": "t3IRb3U9AyID2CPL"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "dWemgp9TmbU2Nf3d", "maxReportPerTicket": 61, "name": "cTaIZBdAqD7gCybw"}, {"extensionCategory": "KkRBp6DOpRw91fzl", "maxReportPerTicket": 94, "name": "ijtyh0g6TBTzfTU4"}, {"extensionCategory": "KZ22GEHPqNnl6HH9", "maxReportPerTicket": 37, "name": "OgwE90Kb7zduND5U"}], "timeInterval": 24, "userMaxReportPerTimeInterval": 49}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["E2YhPEr0PGMrfuqH", "8LsLnAnmnPczRpxB", "qcJMDBq0mG0eHhrA"], "title": "dJegrga0sBgQLESi"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'HAPcB35RwBimGnJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'fxMfqliQbUH74RfL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'lUJ8nuvKqk0cOcBG' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["9cfEk4622pn5udWu", "zm5eFUj252AhpNya", "Wqgk4lbnL0GGimxG"], "title": "4PMfCXJDnrqCb5Fs"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'rsdpS99ucG98SH1J' \
    --limit '4' \
    --offset '2' \
    --title 'dvaG1Nax7GilQqzW' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qIimFFyizB8cf7Z2", "groupIds": ["8ElcFuKQBmooW05J", "GdpAxxCHab91erCJ", "DVPs8aQVKAxl7etu"], "title": "jACg3rbSniYbZxkU"}' \
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
    --extensionCategory '9OWpAeQRzUsL96fE' \
    --category 'cO1ZZcuKf0hR05lb' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Llf5A4tXpcvMTFRS' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'cMb6IKi8N73emT7p' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'NOuGsxu1PHPnJ2TA' \
    --body '{"description": "0SfSZz6Te2aL785X", "groupIds": ["8BpwAiYWcuVlKocc", "CCbMPJDZmhrAfu9g", "OULGauXeQO440kBQ"], "title": "BcTCckKCyIAMK18f"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'nUnp24l49FiJHeku' \
    --limit '69' \
    --offset '10' \
    --reportedUserId 'BvIeKcjGiKkiJWes' \
    --sortBy '2nXkce0FhsJBFJD7' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"VsuoDvlWF2DnJhac": {}, "DZaYqbBJuZ6Sm0Bj": {}, "XWgU32TyFYEPGgyj": {}}, "category": "USER", "comment": "DzDQjqzPmgNX3kp7", "extensionCategory": "Aeg2fCo7yS5Flenz", "objectId": "vsGueITSUaCXhjxA", "objectType": "ju5xBWWqx9uglghI", "reason": "We5Chlc1U4q4gYDD", "userId": "NQhcMY8KKqeZxnzQ"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "e8TxKwD6muDIQCtd", "duration": 46, "reason": "bTMg3Rpk2TRKiKPM", "skipNotif": false, "type": "5dtPtI78C6YoTYYz"}, "deleteChat": false, "extensionActionIds": ["E5oq8BYSl7QtB8st", "9ixQK9y7igLghkou", "pPqDCzTb7soR3iUm"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "ceG1fXsel1Ok69fD", "reason": "imZvEWwB4qRJf6wt", "threshold": 88}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '1295jjQAwx4RFfoP' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "Uvz121A0NIPaMbG1", "duration": 48, "reason": "M1jKb5AHQEJMX7Oz", "skipNotif": false, "type": "ppFbnJtt8Wkyb0qC"}, "deleteChat": true, "extensionActionIds": ["A2CcfHZX7Uk8qLyl", "6aXrSxaFKix8PHrW", "51zmHja02bbFPq2V"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "r8Z5PF2eqayxN6gt", "reason": "xPbSfoif0GOIiRia", "threshold": 78}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'iOFElW99KKXYJ6zD' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'SJQzKWPx3nym3IJ5' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'qzc9KOVGKn1Y91Zx' \
    --extensionCategory 'ZflkFN82TWGzJEnQ' \
    --limit '78' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'z1dd5l4mdbtpTdpt' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'a6pNxrhbT279OXyp' \
    --extensionCategory 'j7IU74LoK8oRDfJt' \
    --limit '56' \
    --offset '20' \
    --order 'sZmWETwdkDwNJ7Eu' \
    --reportedUserId 'UPheN3sAK4TFWs9k' \
    --sortBy 'HrldnJQQGNSyCimS' \
    --status 'pDUwkrISVJgAjonQ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'Y7rEY3MUT3ZC2azU' \
    --category 'sJet5WnfgwRL9n2M' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'a1eJpVsA76bbTS1g' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '3clBLroFNk2DhVCR' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Yvelub0HfFoJXH1j' \
    --limit '24' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'cMf7fYntOU2omave' \
    --body '{"notes": "o0Z7R20r7FIAnFwN", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'CbW12tNKjwE3rRAl' \
    --limit '69' \
    --offset '77' \
    --title 'YDj4DvViAFWyMpSl' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"eStaVkrk8FCT47pm": {}, "jkpJul62efz66l4q": {}, "T4Q1JyJ9pMHVYqkK": {}}, "category": "USER", "comment": "WFQQETDa6wis9ken", "extensionCategory": "SCKq8pQzKsLDzE8d", "objectId": "qGoB9CAnC94FzdHl", "objectType": "pv1oq4Qf37re2gxb", "reason": "bgzSvJ27BhkHeSxQ", "userId": "KqQcwH5liKwj2CMo"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE