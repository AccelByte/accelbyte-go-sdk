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
    --body '{"actionId": "AGKzBbnmwuE7BkPb", "actionName": "QVbjpdyosem44Jp8", "eventName": "4G3x50qNdsD07Fu5"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "XpspvbsTfLab87MA", "extensionCategoryName": "Npos2LdqaAUI4S3U", "serviceSource": "kIov0R1HkTNWE6Rd"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "ZQ4pyXQBqDpjWr0G", "maxReportPerTicket": 4, "name": "4i4IMcSbbhrLHfdZ"}, {"extensionCategory": "CcnTN8sMDAIAoYud", "maxReportPerTicket": 17, "name": "wlqlFFQofvhWusWu"}, {"extensionCategory": "KypbiFyp5uoqwms5", "maxReportPerTicket": 0, "name": "5QHdhEN7nTO380Uo"}], "timeInterval": 80, "userMaxReportPerTimeInterval": 28}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["fzIlYqJ7OsXRQNCq", "VLXyUW322zFbTc3Z", "moZhkqf9CYfG9LS7"], "title": "Jz961zUgcbAdFyD0"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'r7avKVZNNIbFWJ55' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'Z1cjd3udxVNbsqtC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'IpXGROP6byymgrBO' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["Ake7LfytSBsREEED", "cEkRFpdXBDWTGXkb", "Vz0lLmXdmpSahriR"], "title": "sC1QMKRYIW0f4iXp"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'ZZqVDNKDdEq8QXW7' \
    --limit '34' \
    --offset '72' \
    --title 'dRzc8gDHGF4jVZg1' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Vs8M2ZrNzHoYlYtV", "groupIds": ["Kq4hxphIiolWUEh9", "k6vb3F80tY7CTtIb", "FU58co2LZpJjGcNP"], "title": "x4fcxH27kb9W5RJv"}' \
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
    --extensionCategory 'UBL5soEqmluqff54' \
    --category '0j3nr4DtTSLhmRZS' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5rvzRI6TW1oU5BSb' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'EfRASAVJft9Qi06g' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '4vL1S3a8Y84iMyoD' \
    --body '{"description": "Df422S97SuxLpF4L", "groupIds": ["uGL58CLqhHADWy77", "e6tu4YYRUlgwM4bZ", "mev7LMRtP2N0ZnyA"], "title": "F3rLumEifCREeBFN"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'BVCFzCtMnOZkRo87' \
    --limit '13' \
    --offset '37' \
    --reportedUserId 'UTvRGokVHlDcyKfZ' \
    --sortBy '8ZsLKmO42YplktaX' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"2HdElPInwzK01Krv": {}, "x7fZ2io1zMcIXhkn": {}, "uhbjsZXFaC4DhpHA": {}}, "category": "CHAT", "comment": "ofBcnrpQfrgFBuky", "extensionCategory": "GksSlU4s4NaRQ5u5", "objectId": "Rk75ikxGs8Gszf1e", "objectType": "cNzlZxxf620j8Rvf", "reason": "pF9aNJmxJVSMUkHx", "userId": "6IEqxlov1uzmZ7N5"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "tT4a0Qqn6QuieLu9", "duration": 29, "reason": "AqrofpzX55m7sunt", "skipNotif": false, "type": "5SJjVviZZkeBI9w3"}, "deleteChat": true, "extensionActionIds": ["rIs4kzq82Co0nwma", "5wHbE5NKDRfyRh6a", "qJJBsSINiVXEhiGD"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "irpZ8Bgv3PuIRxds", "reason": "XJuQmN4NXbS74Ova", "threshold": 16}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '2Mx0TJZsxm1bnBzm' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "SM2ykmNqNK76klGX", "duration": 85, "reason": "9woyOaQqVntlBy9Y", "skipNotif": true, "type": "MUGSxncyMiFpacaR"}, "deleteChat": false, "extensionActionIds": ["mciqW7FcimuT96ut", "hN16y3kOsoUhBf64", "l2TfesD8bTLYA05P"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "nkEsPz72uhpGjN6B", "reason": "cyzjoqS9LUFvhq5q", "threshold": 68}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'mtS5cKlv5jJMrtCv' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'hxEyAJccs9y8kbyy' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'kTjjoaX6AghispPG' \
    --extensionCategory 'YqtT9Z89m9yF0oBG' \
    --limit '97' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'g8JLJx8z9Qsxr7EH' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'GTjbRbnptoPbKxXd' \
    --extensionCategory 'lnhBzaWaIBptvZbw' \
    --limit '91' \
    --offset '9' \
    --order 'pFoh4fRLg7Ub7YZw' \
    --reportedUserId '3A4plsci6qEP7EFm' \
    --sortBy 'a7J2WhDMYWxqZhTr' \
    --status 'SDdcmqXlamg1IlCR' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '52wEuIK5GQZJWTP4' \
    --category 'hh2NZEWEptTKCVjH' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'jrD9jxYB49vDtE4g' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Ie6POQevzCKTFsic' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '6SO0XXBMRNSdsR7M' \
    --limit '64' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'jO3L6EP9ubDROkik' \
    --body '{"notes": "ZVxJ0NSfmUSiJkh7", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '9dR8mSR92zf0ZmqL' \
    --limit '63' \
    --offset '44' \
    --title 'X7MhSe1n1RLvub3d' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"KHBF3myV6vmhuqXj": {}, "A3kkxD16mYHdhITH": {}, "HpbSUFvLCOWRFFg2": {}}, "category": "UGC", "comment": "vIpZ81jOFurg7ZEX", "extensionCategory": "dBPrYhORWq4xsYgO", "objectId": "y8dBYsk4fxYgOBGL", "objectType": "bV73X1xLuI0wtm1W", "reason": "5MOLBz7K8cvC3sx0", "userId": "PZoNQ4Z0bhCIlyDt"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE