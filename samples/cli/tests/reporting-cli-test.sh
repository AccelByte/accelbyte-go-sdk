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
    --body '{"actionId": "7hT0PHfW3w5v3wE7", "actionName": "0e4VfcSwIwKGkFkh", "eventName": "F0l4Y7sayrZxmKvm"}' \
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
    --body '{"extensionCategory": "jLcP7YkdfweFDqQW", "extensionCategoryName": "IHGV5kKW9F0SfT6N", "serviceSource": "A97NOm925fNJEzVB"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "wsHUnUjBiwEiXPIU", "maxReportPerTicket": 62, "name": "7McVYWXNMjHZ20Cr"}, {"extensionCategory": "QhlcwVmi9gIW22c5", "maxReportPerTicket": 32, "name": "nYEu97Y5Ikz2K3Ky"}, {"extensionCategory": "hKIi2Jsl9gpUy1w1", "maxReportPerTicket": 17, "name": "DTmuIh4F0f8K9iDo"}], "timeInterval": 16, "userMaxReportPerTimeInterval": 70}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["bRNEpK9QZbtj5out", "ZZBH2Kq36YgnXMZH", "LV8eXDg1SIkoPMlv"], "title": "ww6MLRlxG2L8MRPM"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '3620IgcOTh2Zysfv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 't7a99BtNjS87uk68' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'e5fAMgqJG9BONmNi' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["LJTDJMNxWW6Rx7kQ", "oS9tySsCX8MzXCBZ", "ZAW86s3iEAGDXND0"], "title": "JMscoqteP2VysFdN"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'XhR9J56LiQzETX0x' \
    --limit '82' \
    --offset '75' \
    --title 'Yxs9bZos4GHTZYUi' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CAFsrYa6TKEO9bQ6", "groupIds": ["n5JIuO1Z9zolmLQr", "RDNc48iUH8GFBbte", "vT2M5K3553Ze4o8S"], "title": "0asMngXdWMIbAmz8"}' \
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
    --extensionCategory '2SHtxbBKJ3Sho958' \
    --category 'MZYFy2eabiZnaOCi' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'XyYf88Tx3HW4EhT2' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'vigPoknzABaMh41A' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'txuVcccmExHpj1IH' \
    --body '{"description": "pYFqpLTPFxPECtEo", "groupIds": ["FGwIQ85kAqBRN3cj", "doLxaMVOzrCXcEVw", "kfsb58Ltk45Fkten"], "title": "Tf7aSaQDdi8JhWSB"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'Ey1w7AuLXo90GJIE' \
    --limit '22' \
    --offset '55' \
    --reportedUserId 'XcEVhlDFtTS4wBCR' \
    --sortBy 'fQ7lARbzrDUUjDNd' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"WK12t6YOlQeRlLBX": {}, "McgqQxiXooF9elTq": {}, "kAj5e2JEj5tuJuqV": {}}, "category": "CHAT", "comment": "lU4AoCB6BNZM6aFY", "extensionCategory": "kuiySho33m2xjLDv", "objectId": "nqBuSFI44xbxXUkx", "objectType": "Hk3qVWozMsowS9Ii", "reason": "APhbfA83RKLllY85", "userId": "gGQIH7jaej6bzTVi"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "kaVvUtSkb3dzWOQD", "duration": 12, "reason": "XpLPNaUqSrfaCnv2", "skipNotif": false, "type": "go3Z0a1xiGG0bwcF"}, "deleteChat": false, "extensionActionIds": ["wGlrNm1DaDZcpTww", "1g8icrrA33tKNP8x", "Ax9Nv6KeEiZIdhbK"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "sXTwCyHD7i6HJJsi", "reason": "aRep0wuPW5HxqwY6", "threshold": 100}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'Q1iK6kxW8wMpE94u' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "o0SbeTMxQMrOAdb3", "duration": 71, "reason": "aTjYg6v8YnDKvg8p", "skipNotif": false, "type": "zML73h5rvTNTxbv0"}, "deleteChat": true, "extensionActionIds": ["fTbVD82qDTNuthRh", "dBfpnctB28pz1G4T", "WgncKuRVs2UZpeke"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "nzHtPBU39PJabY35", "reason": "xSDOhRFa2QTRufYc", "threshold": 91}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'C4YddHWny7topqoq' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '1AT8Dj41W4pUpC3D' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'SfJ53SMqFF8naDrt' \
    --extensionCategory 'xiNcy5DimLi2Pu7J' \
    --limit '65' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'En9dnrVGnxYoPG6U' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'qFWIPe42zznQSeIi' \
    --extensionCategory 'VrnurCXTEpiRHuv0' \
    --limit '96' \
    --offset '80' \
    --order '7EzFIjGkx3lf26a3' \
    --reportedUserId 'tDyaMeXF4CTPDVGD' \
    --sortBy 'GeFiTbdSSnEwL8ZO' \
    --status 'o77HbFqBD6fb23Pe' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '38irF2XWEPsVKCkf' \
    --category 'cTwhUnaHuPyO129q' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'EiUxjN0uZXNo1vJd' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'hXvpDqRXWiEIcBc1' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'LyPk1seoAezD7TrP' \
    --limit '82' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 't5L5MHnB5Gxz7k0g' \
    --body '{"notes": "3hehAS0o957cqvdn", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '5OE6BD7xjcaXUShk' \
    --limit '52' \
    --offset '62' \
    --title '4HCMCr1Lydx3aXxJ' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ZhUcvK3mLDs1A8Sz": {}, "2vR2knANmH2hIV4s": {}, "pioKKDMT7PSbM6v6": {}}, "category": "UGC", "comment": "SeCtDeMPqtqkLMmo", "extensionCategory": "vfLKiYBk1hf2wYKf", "objectId": "Zz4BeIZhNXO4pXXm", "objectType": "jnaL81eS8c25sDq1", "reason": "NfLwXyjMqxVGThW5", "userId": "u9CZzx351eINijPv"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE