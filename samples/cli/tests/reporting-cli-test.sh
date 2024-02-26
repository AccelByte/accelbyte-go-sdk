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
    --body '{"actionId": "UnLiHW4LWHV2pHBe", "actionName": "xjTKxRYMe6fI3e3P", "eventName": "rALVe7XvogRdU89P"}' \
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
    --body '{"extensionCategory": "yUksMDxzSJrvAKQz", "extensionCategoryName": "U5QqbBjrxp8PgXkv", "serviceSource": "LPKf3D4N0vjuwX0J"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "mizlhECrqkvKI0ld", "maxReportPerTicket": 84, "name": "WBdkehW4Xc6DfoHU"}, {"extensionCategory": "lJ97OeW27woS1Pl2", "maxReportPerTicket": 61, "name": "figxdL3JcH4kF4uD"}, {"extensionCategory": "5nAIJ1FFTGQ3uTie", "maxReportPerTicket": 89, "name": "sa6To31u9FMAJjBu"}], "timeInterval": 70, "userMaxReportPerTimeInterval": 28}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["RfuM329m8xOYknnz", "73qKgsXLQJxtK4aG", "IvgBiNCKCWRDv9D8"], "title": "ik87rsJNLcafDfRy"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'ExHsyC9PUupv3WLI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'JZ2epf6kbginMjML' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'kx0A8JkbcPyCQmsT' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["KeDuL4oid6cNGTY9", "fpIdmN5eoVHGfjTS", "iBEFSXZ9b8JxM7RG"], "title": "SelRGBS1tcm5aoEt"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'NkuxuTj6fPGg4AeE' \
    --limit '0' \
    --offset '0' \
    --title 'qX7f98HgfLhNonbk' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "48CFwN8E3GoMaDss", "groupIds": ["wp5ckDzTkQSlb2Ye", "htgPUQefOaKlWso2", "QrlLfkfwJ9Pjcs9b"], "title": "gc3tck71DhsOmRSX"}' \
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
    --extensionCategory 'reLwiyBhiduPOlaZ' \
    --category 'm2HzyNEfPddFwTft' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'wlMNj4FPOiS0VPy7' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'V72A9yX9ZiMAxloO' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'tuy9AIUEXdrvBgLD' \
    --body '{"description": "lYrQu4hfbI6b2Ro2", "groupIds": ["5ByN0co7j8HvydXT", "c6O8kHAbTdsRAV3a", "17N8nmKNBnKiDUB6"], "title": "MXEBgGfH1OmSTYcO"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'pxKBvZ17NNduUOOv' \
    --limit '43' \
    --offset '77' \
    --reportedUserId '35NM9XwaTwsl8hiJ' \
    --sortBy 'oTm6ludRjyBS5lpG' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"h0f86lG4x8arn6OW": {}, "2HZyLcc8gaoNxYZl": {}, "0Zb9TWxRKiB5JsFi": {}}, "category": "CHAT", "comment": "FgnjS0sJNX9Y0iu8", "extensionCategory": "7M1EReo8HdxAkLIH", "objectId": "8UBeTMc8eXthoRSK", "objectType": "VjsRKspKlmG6c8VG", "reason": "o7fRYs8OyBhXcw4b", "userId": "CNDWEGi8gnZKEQp0"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "Ekb6KlFjtdUBibTg", "duration": 32, "reason": "FFLhKDRurTPl8zdo", "skipNotif": false, "type": "wcrwsTFXM9uoZcmN"}, "deleteChat": true, "extensionActionIds": ["NVjtCTBucTnmHQXG", "koRdqovLQwFQPbnT", "sT0a4ObpVDjsg1pd"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "S775Vr9kAJ3ZJARH", "reason": "pyUyXfFf4UuGXFt7", "threshold": 86}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'bbPu6pGVrHYp5pxb' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "YhOpMbqqYG0O3leb", "duration": 93, "reason": "x1qzmHGgxGU64qbo", "skipNotif": true, "type": "OCNWzjsN5fMM2NRY"}, "deleteChat": true, "extensionActionIds": ["NcUclk1d9uMpEbux", "BG4FKlsYRcxiOkyf", "PL1PNJoXPRW3ylCU"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "TNdzgfrZgUyD4sIv", "reason": "S2iCBMl5cRA7dlkg", "threshold": 1}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'LGEb6jDCaLyGa1NR' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'ci59Osx9N87iIvt2' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'xfOsRYD42UwBV2KP' \
    --extensionCategory '11RyK4avRYK0FBfP' \
    --limit '11' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'hvpzrWXCpT33CNW0' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '0GIVtBplwX1CBTrv' \
    --extensionCategory 'ZYwIy9XPYGwZsKD3' \
    --limit '84' \
    --offset '44' \
    --order '2dBdblLRfonBGYLM' \
    --reportedUserId 'Shpd6TeiB5EhJDCK' \
    --sortBy 'H7xAIevf4Lo2ncfG' \
    --status 'NI9Nu7iJLmGgFfHh' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'dBaivku0W4HllUdb' \
    --category 'jCs4aFYZssIdAwd6' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId '8HfDtYSLkJ3PWFi9' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'zRLKjh79ZnVpEKZk' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'ToAZYkhVHMCVESik' \
    --limit '80' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId '3NOx4qvDtnO0eusH' \
    --body '{"notes": "TX8auMzS1R7fpY47", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'pWQPrXMSQHNczvC9' \
    --limit '28' \
    --offset '14' \
    --title 'BLzhobxrdFShcSov' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"xSH4JUXDc45FPR5I": {}, "Kp1xDeQ1Zb1RzDPn": {}, "e60gccBJb2rZvWLN": {}}, "category": "CHAT", "comment": "kWLnkZcXSn7VTs9d", "extensionCategory": "GcEn87bYYG33cqcJ", "objectId": "ZKALTYCQMDNVLEYa", "objectType": "oolWQyFecdppdNyU", "reason": "wSlcH1cXnFWM6HQH", "userId": "PJ5bbwQMRsBg1RVZ"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE