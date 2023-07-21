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
    --body '{"actionId": "R7sN21Nk3dQ1DCvJ", "actionName": "GDRZe0z6gJ3Gu1WW", "eventName": "wIkL3gNr8fiZOToH"}' \
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
    --body '{"extensionCategory": "5na06D3MhVVSmAJc", "extensionCategoryName": "SRkXyWNl51l9lMkB", "serviceSource": "kT5ns7Mk8h9Xbq6J"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "UItOrpDPr01rSTtb", "maxReportPerTicket": 15, "name": "p3qMbggE5OXLSueK"}, {"extensionCategory": "DYWPjx1g48IXPml3", "maxReportPerTicket": 26, "name": "3Lu9J2Ngs1Ed4XCC"}, {"extensionCategory": "tvk7efW8dmAV8bxM", "maxReportPerTicket": 27, "name": "2QMegVt30c1Q8tLt"}], "timeInterval": 23, "userMaxReportPerTimeInterval": 76}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["Cz6L2hR7bWDF7RpP", "eyh9u0pEre4wMhCy", "uT7tjlev3yWU25pO"], "title": "VLh31269F7LtGoJw"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '4htYvZeOkTwgEZDz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'qOgoMUbjTMi2EQet' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '6jHLdQx1WiOb662U' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["Kno9SS0FUct3LXnn", "4xn3eWPZ90VDpO6e", "F2Rl1zbCjqYDZoEg"], "title": "RnsxlM6crDMNoQbu"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '2GNNQgNT5cDb60T3' \
    --limit '20' \
    --offset '87' \
    --title 'nBBOVxGHARfvkeC2' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "t8RgGGCzEsLERLx7", "groupIds": ["foJ9rjBXQ7EZX57X", "dQVyIUJx3NG4TTJr", "8l0zDO26rLurKtnx"], "title": "SMQ5hLuwQkajdqxs"}' \
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
    --extensionCategory 'd4j4eUlLhpgIxA9Y' \
    --category 'ISw3VINLQOVuzQum' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'mMWGioMzwRdKlG51' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'C043SzzXd7JCtuXs' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'K5D2SMdA5lTsVWWW' \
    --body '{"description": "AVKVjoOs4KEjYOmX", "groupIds": ["BGYz0RQF3xm1z9X6", "omdT84k4rnZpL7wJ", "Kpn2qsg8I698vEuw"], "title": "wHh0MBO0Wnwhh6es"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'cOXUj7yhBm8fQyUF' \
    --limit '34' \
    --offset '66' \
    --reportedUserId 'hV7ceEeRcSZi5sUo' \
    --sortBy '1sYF9TOnPu1klPGM' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"fKGzB5W6O7UJlt9q": {}, "BhVvmfJ4XIseC5W3": {}, "pBDjE80kgZ6qwvFe": {}}, "category": "EXTENSION", "comment": "jAinNo4NJIq0e7c4", "extensionCategory": "m9JB4jCuTuG5M4Ih", "objectId": "vjMA5TupU03GOrCr", "objectType": "E9qWc4XZM6NraCh3", "reason": "nI9XLDUyuz7LQ0TL", "userId": "tLsbpFarwvMyLosj"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "A6hOWQHJAyE4E1IW", "duration": 75, "reason": "VK0ldZHl0afWbe3w", "skipNotif": false, "type": "Ml3ib8d6LmnY5bwe"}, "deleteChat": true, "extensionActionIds": ["EZkVpBuUayPs7GBI", "b5ID38caiyJzO5ky", "Xzy91KGMvMdCTaq8"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "pf5KVP6UfaXyP8Qb", "reason": "c7TnixWE5ZiayvJh", "threshold": 49}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'b25CORmD7QmwoskY' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "kmQyjLZNSGWm3S2c", "duration": 73, "reason": "PbQBBE8QfdGQjFVK", "skipNotif": true, "type": "en6aMOe5Q4kSpDfv"}, "deleteChat": false, "extensionActionIds": ["wvsn11OrGCjx1pUN", "eCX5Pi9LhDhWefz3", "rjA6VEEJRkdYBDfX"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "Nf6UhvM1gsSF497E", "reason": "4PIj8Za3VaYIhYMh", "threshold": 66}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'Nub6DaNIeqBFzlaK' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'YSMYjX5m4AFbB5XO' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'mKiqe9DgCK3bWQRP' \
    --extensionCategory 'fxAktzwt9CArD9CJ' \
    --limit '32' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'Mp5x7BneVD260v0o' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'Urwnn15Vxaixf26M' \
    --extensionCategory '29c5uOo0ZEoF72eP' \
    --limit '39' \
    --offset '50' \
    --order 'cYPX9PJBxRW4LFek' \
    --reportedUserId 'syTudd3Q5nX1GpuL' \
    --sortBy 'zN0o6ji9SBuKEHSk' \
    --status 'uEXRl6OiWyDUuXra' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'lpEi1SxvWgSZ7yyv' \
    --category 'tx0P1AKGwDeqHQyY' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '3q29E92zeEOXFCmP' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '4Cu8RlDvlaLQcs7j' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'qGyi7Je4olJCYFI5' \
    --limit '30' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'xCz0Cyx3PjphhaWA' \
    --body '{"notes": "h9oLvG7cEg0Y8oR7", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'off0D4PIOGUNlmRm' \
    --limit '70' \
    --offset '45' \
    --title 'gzNjRuFXR2N7oEja' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"t6SASBJsI8cwso1C": {}, "WuMNBFPkV1mx8afB": {}, "qLOUitVV8wL2NqqP": {}}, "category": "USER", "comment": "nMehuwgPR9r9jNr0", "extensionCategory": "A1rUqRgidQCYA7Ga", "objectId": "5ROyT6edg5j1qON2", "objectType": "LnJ6QRxtU5GO9UPZ", "reason": "COEt6C8Zyex1Ynxo", "userId": "biIirjMcIrFef8Os"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE