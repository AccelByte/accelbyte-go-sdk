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
    --body '{"actionId": "xtRtc36vl8b7qILN", "actionName": "x2Y2keHfo3Xbb2dH", "eventName": "YoYHXhgXxw08cPxW"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'desc' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "azg8WRjaFwCoS5nU", "extensionCategoryName": "IOw9LbbqLYaS2CRT", "serviceSource": "xQZZ0J5NTswLJSEl"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "qDmvjHGfG8pFaitk", "maxReportPerTicket": 0, "name": "hN1SsIxFvOhChTnr"}, {"extensionCategory": "dwi0zx5nZIrFKYrb", "maxReportPerTicket": 74, "name": "aRKXZcjTrTa745SW"}, {"extensionCategory": "lGg6gdjw8PVBlrlr", "maxReportPerTicket": 33, "name": "xwuBuC6mNDTYsBGh"}], "timeInterval": 82, "userMaxReportPerTimeInterval": 21}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["cWDCgjGoaeFia0QI", "imSyBqWkt6T46CXs", "0B3P2sB5HMQVTFcp"], "title": "fwLiIvnIND83uM4e"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'm2IRkpDpZEZMdufl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'Lnn4GaI1x1HiARtc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId '9d9TKAY0MuZVOpt3' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["d4LuBFAvkC6moM5O", "FqRXBxxISVseKEHJ", "7twZieO0GyuiYw1X"], "title": "8DvGqM7jo9n4XgpG"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'TvpqWP8yi40uZPwV' \
    --limit '88' \
    --offset '77' \
    --title 'utlh9ltfj486fCGa' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "o998clVBcFnV7iwt", "groupIds": ["9EgobKaHaLJBqdBI", "fbHyQDrEwHqjGn86", "oj1RmHtFtS4qx6vi"], "title": "NmZ9qA6UKokoQbFH"}' \
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
    --extensionCategory 'PU9EqWqqll7UNJM7' \
    --category 'Zi6e8sS3ZkBy1Wzx' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'LscUGCSexI3bFwyT' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'YJ6E2k984F3dDjJX' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'M3WD103Lm4V6YF0I' \
    --body '{"description": "i7CjlLJUEbkwY1gy", "groupIds": ["K3Ze9ITBbCboyN9o", "nCsbBOQ4GYZ3fhQl", "hNfEcjkqzlRnUjZJ"], "title": "siKs7wTWI17GBKuH"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'ntiIPoTzTbUm67D2' \
    --limit '90' \
    --offset '75' \
    --reportedUserId 'dCLHJ2zCqW78tlMj' \
    --sortBy 'yzeiI3kGICW88M2T' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"Aq8MeoKlBL2Qwe3V": {}, "eEOdvpRajdvjebhL": {}, "ByFFVCkEofaZOXFu": {}}, "category": "USER", "comment": "PsSkW4VICc2n1bLd", "extensionCategory": "dm5htEsZXI0lMmtN", "objectId": "auUIj85FCRC0Px7c", "objectType": "W5v8exzasvzlDBTS", "reason": "6invmvlh7HeZoGtI", "userId": "hZGsXMtnEZFWGXng"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "EaQvZHDXxMVuD74c", "duration": 58, "reason": "OpXIyV7KWtr77VLP", "skipNotif": false, "type": "ZNyDzfitXJRizLlI"}, "deleteChat": false, "extensionActionIds": ["cqwNZryQalAmrUN3", "cArfqnn2RTjzV1la", "0eB8a3MpKIrKedsL"], "hideContent": true}, "active": false, "category": "USER", "extensionCategory": "NihszD4eIqTCcJED", "reason": "QvC2TcvR9JnfXkXz", "threshold": 63}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'EUdCNjBvODAcEelB' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "mvEQaBaxA7hiq7t4", "duration": 49, "reason": "BKnzuc3NX940VK2t", "skipNotif": true, "type": "lSgcHunVfSU2UX8K"}, "deleteChat": false, "extensionActionIds": ["uVlie6TjLF3RGZjH", "XHPI6ER7OSp761bx", "rDcDXnxrSXT6Gkzl"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "XAXfTN5TnUbD0mpA", "reason": "U2WKHMLbNJJIu8z7", "threshold": 62}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'r5zLpHcjei0tR5CN' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'QpXfT6gLZqL5AOV3' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'wGD3DR7fRWi6OTlR' \
    --extensionCategory 'X6k2kuicCp2R9OQe' \
    --limit '100' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'yZRBHfsS4HYq7Mj2' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'HlRLUP6ryTjBtzrI' \
    --extensionCategory 'O75y9rMGZoxvgJaH' \
    --limit '14' \
    --offset '95' \
    --order 'wh1JIGRP7SdVW0JU' \
    --reportedUserId 'V9BcaHMimHaZHVGS' \
    --sortBy 'hKZfAYAgG4XFWERs' \
    --status 'dpCHub0YJ4jpU3ce' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'Zgv0reugErupHRFj' \
    --category 'tlwgysbVK5DLXMml' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '6NT65OMuZqvv3aB1' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'HMZRfBQaxOMWCmpk' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'xm1Z6QYz2xw56yta' \
    --limit '68' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '5N4Y2P2K92Di1G9U' \
    --body '{"notes": "VFWfPykqERpXy7DA", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'imxj7WpO8vrf6wSh' \
    --limit '91' \
    --offset '97' \
    --title '3j41CcsYWJ60a7Ml' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"KtjrLvjRnqTjoWk0": {}, "iuXKBaKYFSAtVeQQ": {}, "GGJSLai0QaeGfVDR": {}}, "category": "USER", "comment": "Hg3TlCsfjOnO6AW9", "extensionCategory": "IqqwBW5lnq2oKDPm", "objectId": "ntGO4WTv90K6A2cr", "objectType": "GgINr0yKvLrPIf1Q", "reason": "a38wzyC30DJJnyOw", "userId": "ipwc5tMvVYfQS9yL"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE