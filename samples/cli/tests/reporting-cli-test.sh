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
    --body '{"actionId": "88rktwymz2KGfrCB", "actionName": "aoLKXQDnxoQpo4g4", "eventName": "dQy5QSsd9e7WU6J8"}' \
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
    --body '{"extensionCategory": "y5OiDk3oLPu0z8WP", "extensionCategoryName": "Xvcj93AIS5Za3rM8", "serviceSource": "LNRvEl4OnZXUosvU"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "GTkX4uue2arJwAcj", "maxReportPerTicket": 3, "name": "IiDFkta8DzmS1cMP"}, {"extensionCategory": "e0i5gysJycRBMW4q", "maxReportPerTicket": 95, "name": "SZ1fExsPt1reLaKL"}, {"extensionCategory": "F5oyIJkEl2q6IESt", "maxReportPerTicket": 64, "name": "fxJGE8jUuMxK22qf"}], "timeInterval": 73, "userMaxReportPerTimeInterval": 25}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["E1LvHYaYAt7RwKfw", "sUywZjuPdAyfmkRI", "IBoZEgOjykDtQCQ6"], "title": "Oykpra2wdxy4bEoe"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'WHmkuSHqpLM9aaYJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'jJ3OICELsMqCiX8c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'cSISw5TNcNa3WZ37' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["vxzCQvqZyveG1GcH", "iKESVVfN2k645z8c", "fKHdQYSWD04KG7PY"], "title": "mGBLmurx8T5ptFnO"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'M7J8QofZZi1eWoFv' \
    --limit '19' \
    --offset '44' \
    --title 'Fs2WOpbsFhrP5cAT' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "joNb775GcxbW2krL", "groupIds": ["y1XCrDd1dJTye57j", "0fCgtdrE3LZ9zdoz", "9ylU5OkoIBv8MQkk"], "title": "YEISe0UvGhWOz17q"}' \
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
    --extensionCategory 'Jr9e0rHgPJ7qIerV' \
    --category '6732ogYYbUsb6JWg' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'qqob48kYc0RvIGUA' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'LqtwN8NkYLBh5Gb8' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5WAZwKvD0lzLt41x' \
    --body '{"description": "O6CZOa4HsVJ0AlYt", "groupIds": ["Z7sFAXNf9fLpovcX", "D1xGZtuCG9k2avVX", "KD4duATogpGM9l0H"], "title": "K8xC93OUm3SQ1Cm2"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'ZeHzM610Vg4oImcU' \
    --limit '61' \
    --offset '13' \
    --reportedUserId 'wyO2SQrWEIQHTUfq' \
    --sortBy 'bsKPXj2kEAqRFiWS' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ErHojvhEsCC3R761": {}, "YuT6MWqgcQ9Loc0o": {}, "DX6UEj6jFnaObuPH": {}}, "category": "UGC", "comment": "VIoBEKhsHvjn0DL8", "extensionCategory": "OP2s3Dz2fkbBbqw3", "objectId": "Ci1JhghfBPOicV47", "objectType": "AhwuYAjNIzoFhi8L", "reason": "Nv6TTbt1ekOYlU3X", "userId": "mNHMSTt11kjE19Kw"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "RI2g7G0P0viCPbw8", "duration": 62, "reason": "n3YV5Z4KrqQ4UP1a", "skipNotif": false, "type": "wlVh47QZV8VcKamr"}, "deleteChat": false, "extensionActionIds": ["Ooxtkk2LSgZ9jYDw", "2OtvOiTI1JkZnODw", "Sv4EaaBpd7iurp4Z"], "hideContent": false}, "active": false, "category": "UGC", "extensionCategory": "ZYnaU4l2UE4jzeeM", "reason": "MVc8OCh8XQbKxpJM", "threshold": 45}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'qfZvbFxkJ2h0muZj' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "0q3mRrjMvVuHbcCQ", "duration": 24, "reason": "cB01xzuDXlBXJL2K", "skipNotif": true, "type": "Qkdnm7ZJdbNZkaR7"}, "deleteChat": true, "extensionActionIds": ["KGKDYlkQyNAnIZAj", "fjeVAI7TenMhm31v", "EiRwTEZwBKhMo9xJ"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "pYhwMviGZVE3wO8v", "reason": "l3Vx1Pxu3a9C7mrO", "threshold": 42}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'IZVAHa07tv1HA7Q4' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'H5C1plsTWLLHZh96' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'aBHnZ5gI76EsQ6nd' \
    --extensionCategory 'mZH1PCQKa1bHCNDM' \
    --limit '48' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'Im617MP8J2pX2EBA' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'f97ENkMvFpBbn8CP' \
    --extensionCategory 'e9ALhPBmBDGYwUYW' \
    --limit '0' \
    --offset '73' \
    --order 'lyP3a3KqghibDRUe' \
    --reportedUserId 'asUzQ2sX2KigUAjg' \
    --sortBy 'ePv5684wgcYY6hoJ' \
    --status '7cAWuFayuI26Piv4' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'beKoBpFG8qcbZHtt' \
    --category 'MPuE6rw3fDzA1e5p' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'yOJxp6KHRwxTkOdJ' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Y79YTdQWYGLSf7uZ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'dfdDtPlfz7U31uwe' \
    --limit '87' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'lv2R7hLsGWxoikIc' \
    --body '{"notes": "aoYhnEdHPb6gtA8M", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '2DmKqG4oJuf8ERcl' \
    --limit '21' \
    --offset '91' \
    --title 'lXCDqp79LIxU0Z2G' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"dilkMQpH2E1yCTml": {}, "p7phJ3KFvEPdlGl2": {}, "WUQ8r8XdbAOW5gBV": {}}, "category": "USER", "comment": "DSmUAaZrvDgwPBrY", "extensionCategory": "CGqaW1rnaKvCwJD3", "objectId": "zCWIRhToo3bJ2Quy", "objectType": "Pi2upW06ci3ADwQ6", "reason": "GrIE45KJzDaaT3Cs", "userId": "KaLNGFzZzX0VeHId"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE