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
    --body '{"actionId": "moq23nkZpuPvDSwE", "actionName": "ALnuiYcMa93qkbwB", "eventName": "XWhk69MYKDZuFd4V"}' \
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
    --body '{"extensionCategory": "eJeAqPkcMYVJmyAJ", "extensionCategoryName": "4C4uvF96rwPBSauM", "serviceSource": "Bjlh30ROmKHG3kCY"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "8F30pu3DbJ89GfrT", "maxReportPerTicket": 18, "name": "BM10Zg9oa4srPttE"}, {"extensionCategory": "ed4bDEOugsQTSahN", "maxReportPerTicket": 71, "name": "zTWNKTUy29zkFpoP"}, {"extensionCategory": "NiVwHDqxP3c6gWfB", "maxReportPerTicket": 90, "name": "4t75u8OoF2y93HS8"}], "timeInterval": 8, "userMaxReportPerTimeInterval": 35}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["yyjsrE8yFZvZURWH", "Y3dcwCTfzDEWAvJt", "jSeYZPsCTsHLrOt1"], "title": "oaRyUXkC1Qi5q4Db"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'Pt4MAZ5IW1iLMQ0i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'IPIf6PkqnXTtCGNF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '8CGGULiUtY5JrSNz' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["jRwuNZR3bcaeBC8N", "gd1qADODvogFCLJY", "SpnsIIBudndbSgn4"], "title": "JHlNITVkh8jFh3lk"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '0EsUhmNvn6BgcrAm' \
    --limit '52' \
    --offset '21' \
    --title 'BBOh6LNqZVds8IJL' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GADv1umcl84sETRR", "groupIds": ["vJznusUVBvyLU4Iu", "8o5s6GHKzSRufvZA", "6O4LqhMq6YtvcHu7"], "title": "UReszoI11I52uPt9"}' \
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
    --extensionCategory 'MkHrr76HYiRqsnH3' \
    --category 'SxNqza3Jsl76goYv' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'DsIbYNPgSpsZsPVD' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '3ONqZPe0FqTQ4TLO' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '3FERYGc9Bc9GRJ1l' \
    --body '{"description": "xKqMdbnpH4XwSzNx", "groupIds": ["hfjUFqGsM0fo7p2a", "B6BYXOnDRBekwJAw", "v9rhyLBBbjzty2di"], "title": "r4ABU6oTnm9r7Hh2"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'vmqpcYkFnAMxv8px' \
    --limit '32' \
    --offset '43' \
    --reportedUserId 'owpXmC8j74zXQgNw' \
    --sortBy 'F7IEvrkFcFZ8Quiy' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"0yoKPpLgNAFcN3Q6": {}, "G4eSx9Nh43eNQqLO": {}, "7I74dAby3ARJZHmh": {}}, "category": "UGC", "comment": "Inz3wsMPCG0UKa9I", "extensionCategory": "zS5EHcaOmzPd5myW", "objectId": "ULY45A29F8Ji8LHV", "objectType": "QN5Gey78Il0pZmIf", "reason": "OkU2J596nJDT8tG7", "userId": "tjf76H0Ts7SKbbrn"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "9xVNhbBFxvJRvSik", "duration": 6, "reason": "5wcPmVRRp1DmGW6o", "skipNotif": true, "type": "0GW2xlI8J1tmeXTZ"}, "deleteChat": true, "extensionActionIds": ["IbFfsECRTMyXic8e", "vBOlyS4VrMf0bdhy", "uJe0xYJk1y1EgolT"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "QhvImc5uK47qw0kd", "reason": "KDz56CSapN1fpFqj", "threshold": 12}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'ibPR0aGDDf9QNn97' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "3zwEk7kGGFyFWxwi", "duration": 62, "reason": "ExMmfyN19tddlg2x", "skipNotif": true, "type": "HFEkMgfzFwcQrp48"}, "deleteChat": false, "extensionActionIds": ["TiAdllQokIS2F6po", "M3sIXsrlb623XJtp", "SkW5VYsjnnjTNNlb"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "vuyK6zmwtcseDwtL", "reason": "I9E1hSAPYC9H8zam", "threshold": 22}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'pg4glQJy9a9GE6SN' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'dsprT5SV6z3zyr5g' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'aGQsaNb9wJiAWyfd' \
    --extensionCategory 'uu9xuJkMvzM2yUso' \
    --limit '79' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '2Ucv8nQwGXaRO5E0' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'HlQdrFETUwfcXmAe' \
    --extensionCategory 'eQKMG01Os5TYFddL' \
    --limit '14' \
    --offset '49' \
    --order 'OlUlUfgnBqjgHXXB' \
    --reportedUserId 'mV9MtvKxfgerwYZK' \
    --sortBy 'FRgCEExtSLXBw6Sy' \
    --status 'emnbs5IrzNi4VSA3' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'dj3bRPauqt0g0TmZ' \
    --category 'xyAqWO7mcGj3SIMb' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'ZT7QuAmVt5usUS9u' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'NWhDvMP2Rg0ha1wS' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'CisFu1GnVZvUg7Ch' \
    --limit '79' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'hdoitGnnnoe3qpQn' \
    --body '{"notes": "6n8k9Y9A2hSPRtfy", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '3OZHvmWbCYE2Yr3x' \
    --limit '62' \
    --offset '44' \
    --title 'eSBZePXMKhV0hte5' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"FEv8bXnoXIBca9BU": {}, "08qI4mJADQ7v03ET": {}, "eAZrCj1YqSOYu4eh": {}}, "category": "UGC", "comment": "jPfzZTv7VaViPvTJ", "extensionCategory": "eaCG5nRgavrkW5TZ", "objectId": "lx0IzaP8Ref3x42u", "objectType": "ZYmJgZ2dcH6ch4NS", "reason": "fguA8KhTwYPIjpGe", "userId": "zhcS3vyLPyJfzsE0"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE