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
    --body '{"actionId": "lu4ptfPpi3GogUDM", "actionName": "jLiawBYIC0ea0WlG", "eventName": "EzywjBW9dglEVkKg"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'ascending' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "RKLVGAueL1WDnveK", "extensionCategoryName": "nsYR5kJrOET6RSw1", "serviceSource": "i3DSG6R4DS4XXl75"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "lgm6caUIFlJ11SxR", "maxReportPerTicket": 32, "name": "4vOpooWfHOnrWhlq"}, {"extensionCategory": "f3XedDvqmt1b11mw", "maxReportPerTicket": 76, "name": "FfG7JbIf4BLpauoK"}, {"extensionCategory": "zSX6MkWWZjsLrPtB", "maxReportPerTicket": 33, "name": "s9lWVDJ8K9BxlnnH"}], "timeInterval": 83, "userMaxReportPerTimeInterval": 73}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["M1Fmn1V473uo7cF3", "BK9FHFd8JaP2gYeX", "WmLwmB76Yv9hCtcF"], "title": "fsZBhWynlOWwYRds"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'MHjrGnYOOLZ7woRf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'pGXUHXX5WzeDiMzM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '1e6Vssnq3dk87Vpi' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["6kHWWMiwEqNDn2vL", "fuEJglbCmU1c299w", "L9UiAIM6ASbnRekU"], "title": "m4p3bv2Oiie4abe1"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'ldmZpoosOpd2v0W6' \
    --limit '83' \
    --offset '57' \
    --title 'elgeSs7U3GyzNNKa' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bk6WzOlfzGwWUqgm", "groupIds": ["tZsEdGfUF3v6r6PX", "2O6irE4pz58jyXxy", "DrrvPx0zGP5q6IO5"], "title": "jLKm0l4PsMrCpxIl"}' \
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
    --extensionCategory 'vulA967fakHMAaS4' \
    --category 'xjBB2G86IqBdHUXL' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '8FHpgSv1HSecMysc' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'hgk4oFhVf7hgLnyU' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'RClgEnr328MlDlJq' \
    --body '{"description": "0t5W5EGtkGsTt6G0", "groupIds": ["1rnVuLudN4ynrG6F", "ueEp8e9iFecuhe3i", "66sbqntOSZe9kkXT"], "title": "UUsFpclQK3iqSR8F"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'SK3X8qoAH6GeqRLV' \
    --limit '11' \
    --offset '83' \
    --reportedUserId 'xBfedZRbmPZID7IY' \
    --sortBy 'f9B9nD5PKXrcejk1' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"0mbSbqwKmvqYTsAX": {}, "UE94IgQVyJ3peki0": {}, "ARTX7mnCkzljcPC2": {}}, "category": "CHAT", "comment": "IGBuoxUGUTaiZEyX", "extensionCategory": "KFaTdneBafc3RrXG", "objectId": "n5Xj5ewArhXA6POE", "objectType": "RgLHwY6J2kys5DYt", "reason": "wwRqV43enPABq0U5", "userId": "C2fvPQw6hSzjFiic"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "wUCzMDHIyRVau2MG", "duration": 63, "reason": "NNeDNVW9ItnxmPrq", "skipNotif": false, "type": "8LAi8eSbVLIMUkWi"}, "deleteChat": true, "extensionActionIds": ["we04q3MCeMh86ryi", "fvsfVj1ohyP5V99o", "gG6cJLyR5wJ9ROIf"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "d5qRk9rwfkCQdjOA", "reason": "NrssVj42lKeYVSpU", "threshold": 44}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'xuRiWN5wWshjP4rQ' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "EYa9kkNan5fFytnZ", "duration": 49, "reason": "bJ9941aP5Vgjhila", "skipNotif": true, "type": "gGx1wnM8Xjleh4wf"}, "deleteChat": false, "extensionActionIds": ["PZUym1oSUajW0mT0", "pkZ5T8QwzQp1QmCu", "oxsRfgQ7SXE8VKmO"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "3etDK6iXuo8fNb2x", "reason": "DMatGUkAMJr0FcVO", "threshold": 74}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'p2OrhME11aWSQztt' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '73WSELqEmjbLlTv8' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'kJ5RTHE7xWzY7OUq' \
    --extensionCategory 'Lg1cqekuu2kdXRi2' \
    --limit '79' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '0T84xT3oCCiFMjQm' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'HNttYFctKRTRWNwY' \
    --extensionCategory 'ntIFcVurgfBY212T' \
    --limit '97' \
    --offset '25' \
    --order '6wzOA1nqkwiLGd90' \
    --reportedUserId 'jiLGrcuBegFiq4qY' \
    --sortBy '5JUkLOyzod9S3D4T' \
    --status 'yAhdZB7bdiwtyayB' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'W8oQHWtHLp4vLBuU' \
    --category 'v3FWtckTmG5qXT1n' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'EJvs5tnEOzk1NnZr' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '9R0hlGBaZj7t9V8D' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '6mpwk0cncRWbVpI5' \
    --limit '6' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '2qou4rHDh1tNzT3q' \
    --body '{"notes": "IOIJmyFiCnXrGCy6", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'BVECwoYHixFebPx4' \
    --limit '55' \
    --offset '13' \
    --title 'jaq755wGMxU1qQrw' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"KPYmkTkSFCE1InUG": {}, "lw2qUSyz1gDZDCdG": {}, "dPLTdUfIlro26wW2": {}}, "category": "UGC", "comment": "kivwZgqAEBuyIxCa", "extensionCategory": "c4HlBfhMgv849kFd", "objectId": "G3fUzIAd5oexMDCy", "objectType": "VoAPOfSQQtgZgZ4p", "reason": "LF9kWNR4KcXmAZ5l", "userId": "sJCDP6EkVhdrHXuE"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE