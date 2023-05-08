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
    --body '{"actionId": "xcJbdtN4w4xRji1f", "actionName": "5nBs4KHjVVDDKaXg", "eventName": "FXhIyKKNJLD0EtBA"}' \
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
    --body '{"extensionCategory": "tPYjEVtJGJemFnfy", "extensionCategoryName": "eswTdcr6nosMAM5Z", "serviceSource": "q6q9fuaAz6eZATLD"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "p4GKe8M3Pw2Sd0wy", "maxReportPerTicket": 28, "name": "lRyrXAXf4rPchf3r"}, {"extensionCategory": "HYyvuuLeXr11c63w", "maxReportPerTicket": 60, "name": "M8UAXvb2kTzzXWrv"}, {"extensionCategory": "qM45mgLmVCoEZWZx", "maxReportPerTicket": 46, "name": "rZ1MmrXRvNBU3xwz"}], "timeInterval": 85, "userMaxReportPerTimeInterval": 24}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["UXzX95rDUUbQzgNO", "muJ9XysCSjSixq0k", "x4FY23Unxn1tmkLI"], "title": "nAKTsGxDFRBy2aFG"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'MlgMSVscI8rIRGTx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '0i4QN2uJ13nyGGYB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'PpCpusJ2jP1CL0Yd' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["NXmTEnmIxnAPktf2", "irSGsP0EywctjUS5", "OcR2n6za0Obgc8oX"], "title": "DiDcBU4WPGsnrS3r"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'HVveCQR1sur1uEMQ' \
    --limit '33' \
    --offset '54' \
    --title 'X6SeyaAYmz7ZTTeo' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NpweLShYnZerXXCL", "groupIds": ["hSDAVMXimByVrozt", "sjTMVKYEVV0P2s0H", "iG5GKJhSgq0ftbnQ"], "title": "phmBJtoH7phSVSYI"}' \
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
    --extensionCategory '9bsnDG8fyG40OLM6' \
    --category 'vptrNZhMBad72FuA' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'sj3OvcZfa5Dzw5OD' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Dx2psM7QsK6L30OI' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Kq8KB8S22gUXqqMi' \
    --body '{"description": "pVNpxRcyhtju4RBP", "groupIds": ["5hFDhImF22rdHlhG", "waQBrpN0slg23IE1", "FwcQsS0zbnJEDxEj"], "title": "uEekO7mzvkAoQjT2"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'EdyHqIOiJsfNzrmd' \
    --limit '66' \
    --offset '67' \
    --reportedUserId '3gPuKYbyB4lphCWM' \
    --sortBy 'BbIMcACYBzuFKgcH' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"JgYJE4ZZHnoOTkOn": {}, "bRIxMwJL6X9i7V17": {}, "3Enb5AknFf5kG1Gr": {}}, "category": "UGC", "comment": "AE7AdGzIOuryQCD9", "extensionCategory": "1GLDbxrUnTKJlGlQ", "objectId": "ToTPG4t5ZJfgvQlp", "objectType": "4unFfmbrEeWnqNK1", "reason": "F4ksCVzAUYF4Pjhp", "userId": "Mdvi81RFsTCpYra0"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "a1crDMA5WyfVEmR5", "duration": 85, "reason": "aVC04kKmmBMJOW2h", "skipNotif": true, "type": "4qnMCzUqgvhfo2ty"}, "deleteChat": true, "extensionActionIds": ["0rWMoQGiEUSHE8MS", "j3lGdo0ICRjTOGOq", "7pdgfG4a8nTx5uk0"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "YIVS3crybfhNytP0", "reason": "YSu47e0tGOgJqBV6", "threshold": 87}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'KtfCMgKyR51roxgo' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "m1j20ODEOi7JIaLA", "duration": 6, "reason": "qj1bHYEaxsOkDRXl", "skipNotif": true, "type": "RLqh3fcgkDdpsMiH"}, "deleteChat": false, "extensionActionIds": ["EoxNjWd0rApTrDFB", "6G9MqZZ8wBdCTnAK", "94ZQsF372ADTqetr"], "hideContent": false}, "active": true, "category": "EXTENSION", "extensionCategory": "Qr2xD4F3ZeZEDjYq", "reason": "Kpr0OIuPMAv8kQl4", "threshold": 76}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'BDi2e8ew89iNKYzd' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'SkABLKM2Y9T6VOF1' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'Rn3S0YV42LKSHuWr' \
    --extensionCategory 'tL5cTWnX3gj5wc1i' \
    --limit '77' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'TB727AEp59ui189F' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'Kj72iSqcFvE7ivHN' \
    --extensionCategory '2LlJhaP41xJju1pg' \
    --limit '54' \
    --offset '68' \
    --order 'jY1L5ZBLTerY5MYZ' \
    --reportedUserId 'iBNo8igBJsP8X8Rf' \
    --sortBy 'B7EKKbrdWmnMG9MQ' \
    --status 'yahM7ibiJi4wbtjQ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'IvxRyBCOFCsTP1BO' \
    --category '0YW88utrjgbicVXS' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'dKskvb07jZQNdFV1' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'as6D6UVJgH5WGCNy' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'X1NFsVmLilCdfrf7' \
    --limit '10' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'buerufJY7ETPD2zu' \
    --body '{"notes": "xb3AQoFWYVq79cWn", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'u4Gv8jefpeZQ67BY' \
    --limit '51' \
    --offset '17' \
    --title 'S2SwLP3jJrDL3vkc' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"U7bGJILy7wOCkZ46": {}, "LCoslMmjt0BEheWz": {}, "J8ATaeego5JAuCA2": {}}, "category": "CHAT", "comment": "ekeyZFCX9OQVvTXF", "extensionCategory": "K4Qo9bXdJrq1yMjN", "objectId": "GrkubaCTI82O30OW", "objectType": "oBxAFpug2J74Pzy5", "reason": "E78yDpanELbgOWau", "userId": "sSa2nKayoQmmGaTI"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE