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
    --body '{"actionId": "4AcGZVLIh7xBGCRt", "actionName": "mhqeAv6qMbY5b0tC", "eventName": "eJQg7b7oPZG8zutT"}' \
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
    --body '{"extensionCategory": "BvpXs4UjbgjZxSwl", "extensionCategoryName": "nsaJDEp7jJTYCaM6", "serviceSource": "g1oDJrM38PtYlN7t"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "AOYwCOYqpePmJU2a", "maxReportPerTicket": 70, "name": "JTO8alb9zS6mZpcE"}, {"extensionCategory": "kZCNhKtG18a1eGse", "maxReportPerTicket": 77, "name": "STApspBRGzerk7KT"}, {"extensionCategory": "fYBn9lIlBEzvPlDt", "maxReportPerTicket": 4, "name": "wkTNyhlnUTkfI1mN"}], "timeInterval": 56, "userMaxReportPerTimeInterval": 23}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["QXB1dhvh6HIK373W", "XeZSGA1uGjbRFRSi", "mgVm2ia1uMDdXh7k"], "title": "QUUM5uCs0r4SMn8D"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'LNL5JZmEjIsuu6tk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'R7UqTF5KLEOvtTip' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'ZrQb8nDLq54omf6o' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["whjmdyCDUnb2RAVe", "pAbHxg768NIqGmEK", "rW3KnrdNgHYB0yJR"], "title": "x4fm1kMurswA1982"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'CAP2Hu1iTC85NX1S' \
    --limit '72' \
    --offset '52' \
    --title 'RsI2TRZRTlMgEfW9' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "P4IdJ8GgJ4UzcWs3", "groupIds": ["E8KC1CdnnqurfQKV", "5SEMwzPKFPHX8URu", "BNqK4AEd4nbQbVLZ"], "title": "EuQ2NR3z86C372oR"}' \
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
    --extensionCategory 'cX2LlBXfv2AqcVbb' \
    --category '468kejSEyLKRx1yc' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'ZJXHwRwSYg6vNPGF' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'XEqoZrKoaPF2ID3I' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'UYd8sfTQT9nBDoN3' \
    --body '{"description": "usUi6hRemjSh7xUE", "groupIds": ["UdQeP2qYj661GhJ5", "wcwcihrqmmHNm0Ey", "SqWQOcTtUzVuafm6"], "title": "aMZnkEn0HIfkOTup"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'JTs1KZ2AWBrTnZg1' \
    --limit '80' \
    --offset '70' \
    --reportedUserId 'MN1o3lu0VfdVOaWE' \
    --sortBy 'ndC5e5OrFoctWAgb' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"saRUF9shT8WXS7z9": {}, "ulqRQdwVeMVHDHOr": {}, "AK9fTmoPnrWhfW3H": {}}, "category": "USER", "comment": "MnocTbwhjuFO9U52", "extensionCategory": "qIItGV83vtLXs6Hk", "objectId": "omcvkGsotaKTjYro", "objectType": "kGGYGMUyNr0T0VBn", "reason": "NtBOS4hOaVD9AN9c", "userId": "DaY1vruyaEjfYUZz"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "wQEJlcZE58Bbaq8V", "duration": 97, "reason": "0dXN3obPcM5Cm2fj", "skipNotif": false, "type": "Ztr9QPD8myPtxuM9"}, "deleteChat": false, "extensionActionIds": ["Yvtkc1XHHUR4zdN5", "RMEPfiMaJU2dhRbw", "mYr9KjFFr47dGxDh"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "Wqdo46oPpcM3C5QA", "reason": "XpH3Jqya0cDxtWzB", "threshold": 8}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'bXS1bequDqLzkySa' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "eqiggLqeFn8lIMDP", "duration": 99, "reason": "pDGd2Kv8q14keOtg", "skipNotif": false, "type": "J9l5rdiE4YKEeuKE"}, "deleteChat": false, "extensionActionIds": ["esRnuwBowWhA4VTz", "Mjex9e8orfKM3F2a", "GDjjr2fiBkvE1CPS"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "4ugwiqrDprwIReKH", "reason": "s2sOebJOor5p7AzC", "threshold": 92}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'SrDp88frCJtP67pk' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'aKPGTv3j7txhYi4Q' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '7yAY7PCvEDDlQri0' \
    --extensionCategory 'sqZYwhjYTNzcSLEt' \
    --limit '1' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'XaaYyU1CMYXWDhsz' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'ff8XGBqUfAc5Kgzr' \
    --extensionCategory 'tWRLcLjd4xd4G5Nf' \
    --limit '13' \
    --offset '6' \
    --order 'a3NmQEPGK07ad1lf' \
    --reportedUserId 'p9ww20dYHEPWsfid' \
    --sortBy 'XQEslmoJIFERfUwj' \
    --status 'mp6Kj646XvQDkDbR' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'CcPA12SaykH0dfnl' \
    --category 'sJqdwmy6YydEKpN7' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'ssJp24ThGjl58WGo' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '9BcdNSGMhppaahOT' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '2jOCZmJUBsXHulZE' \
    --limit '53' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'ES4ndh2ki6JzHD33' \
    --body '{"notes": "sL5kAKNcqXNytD6Y", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'NWNFe95klyrucGfp' \
    --limit '95' \
    --offset '40' \
    --title 'g28h5q5KVnfu8gYj' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"1ZI7sL8EDhiafpXN": {}, "wbqCTA0WVsrQOQFL": {}, "w0sp1xhiCiDw6RMN": {}}, "category": "USER", "comment": "InuJdCKhgoV8RLMs", "extensionCategory": "MobNDb6XHa1ow9uH", "objectId": "WZ1XUjKjqoXThmrD", "objectType": "DaWVARJIAtQaQAUs", "reason": "xkOKjgj6RqL3QniV", "userId": "MXyDeXEy1x2zCj9Z"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE