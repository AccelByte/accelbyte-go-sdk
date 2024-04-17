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
    --body '{"actionId": "CG81VZSvHg7CnQLR", "actionName": "GtnCZJRd4zqUO2vP", "eventName": "tXzD3HJOXu7YLmto"}' \
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
    --body '{"extensionCategory": "4k8fmRHfRMBAVr51", "extensionCategoryName": "jgRfa7z1dv3tKIHQ", "serviceSource": "YSIEftXuIgmbKSoE"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "SZwd78vCA0wJVTpQ", "maxReportPerTicket": 70, "name": "MYBrgmLdI8bKPGU0"}, {"extensionCategory": "XGnilyti2envPwl6", "maxReportPerTicket": 4, "name": "ymRd1CzGqxdOyHLC"}, {"extensionCategory": "T2QZoPAqjyrbW6tS", "maxReportPerTicket": 57, "name": "xTfEoBmXobnlzOph"}], "timeInterval": 68, "userMaxReportPerTimeInterval": 43}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["JzxfPG9y7mM088qE", "6vaaEVbZdGFBbJnu", "xpxu4tbPFPYLEr79"], "title": "HALLC3erYIeuzhRp"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'GbLQRY1BG30IHWeS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'kSvdSyBNZAaPwl2n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'GXw6a77mXz16jGoB' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["9sgsOUZxpxDOi7f3", "YpszVTBoZUbWQRqS", "NnH8DGvXnGNXIafP"], "title": "sUZYUt9vVnqXQPhb"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'nnX09KTwUFONxPBE' \
    --limit '17' \
    --offset '18' \
    --title 'DNHCmeIh91SfAu0A' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pAdi1jg58TFPCJp9", "groupIds": ["ZqeYk0ITLXuje8Py", "zDcZKcQxSSIUnIfo", "uA8vqAIuC2qvycfB"], "title": "rqhRl1iJZQW2mO1m"}' \
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
    --extensionCategory '2psMehYSUQqVuvGd' \
    --category 'b1TAQDzzXvwgLabo' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'uLeJb9qnuw5j6g19' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5aPVNKoxyL9BBuel' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'lHSlJATw46PHakTk' \
    --body '{"description": "Pmn8CdIQUkRt3f1F", "groupIds": ["fWYlEBsJZCl3xclh", "EdqGeBX4FPPixBdS", "1TuwuAddVsWyKhja"], "title": "AaWketUYZtoUgrti"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'wQKQZQZdXotDLBnM' \
    --limit '59' \
    --offset '30' \
    --reportedUserId 'mx1acljGHT2eidcr' \
    --sortBy 'jYyOz28ZEiWRr2wD' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"jDVaACsErJoXTciW": {}, "Syq6tT5jHkqXXbgG": {}, "Gpaib8gEwH8Di1Nk": {}}, "category": "USER", "comment": "ofZ7GIAo8dMD99RL", "extensionCategory": "Y48LoV3D9fjsyVnZ", "objectId": "45iq9bCjV8cBwRHH", "objectType": "3TUIx9uyRNZLQUAv", "reason": "eYMpJRfWhGb30SIR", "userId": "NVYuVKruUjEPEulb"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "NeLuctmyUWI64oq1", "duration": 21, "reason": "7E9ssOGV0KJjxO4i", "skipNotif": false, "type": "p425kBEMIY7pHegK"}, "deleteChat": true, "extensionActionIds": ["TEpnKD09xI6nXO68", "PDnSSVzNpPSH1ph5", "Du3h6Vl6ZqqRyS89"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "VKD5OrhSYVjO3Dhv", "reason": "qvJWTuZq3xrpPDJh", "threshold": 4}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'znDRk4FcdPAEMxPE' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "fybmfC59k7KTpclf", "duration": 38, "reason": "2xD8pkdDqotfhOQo", "skipNotif": true, "type": "uCFHxYbYqcp8jpqV"}, "deleteChat": false, "extensionActionIds": ["TgYUnzr0phU9SfR3", "If8nMgrjG38JL9mu", "o6AbY0AR2yRjEWGQ"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "mJXjygs2A1MborIt", "reason": "NQsq4ZfEcCdcLPJf", "threshold": 97}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'oxEoVzXUnZpxMgRp' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'EsvSlzXchxkgcZny' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '9FRBD7e1e4R5vprk' \
    --extensionCategory 'SbJlQ4d0Gtoq6FHb' \
    --limit '48' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '3P1Z9w0sURHT1HEr' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'EyI6hi5pgV4NNJ1p' \
    --extensionCategory 'wBNoxz51HpBKnykU' \
    --limit '86' \
    --offset '19' \
    --order 'Gq6ZUjxA15vVpTtG' \
    --reportedUserId 'FextRGEMdTaoOPEP' \
    --sortBy '3YDe3vhFfD9a5pWh' \
    --status 'igsz6QhOItfPMoY3' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'ZvmgeKo81kjFx4DW' \
    --category 'k6g9IQqIFR89j1Qn' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'o2Kwm7BW4vx8mTRk' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 's7ioZkHf6hbsIQNR' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'BoObGacMbgMyPCYQ' \
    --limit '42' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'bGBxz6YwxwXhyhaU' \
    --body '{"notes": "oVfgha42h3HJVQwm", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'v49A83kT5tDSKHYl' \
    --limit '96' \
    --offset '22' \
    --title '7ddEF5hNX1BS92O4' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"8kt0gXqHo0D0VsdB": {}, "r0RPKhPYloPQQuvD": {}, "D2v2J7Z7kv8ZYq1F": {}}, "category": "USER", "comment": "4iURTHU3gRwruivY", "extensionCategory": "8WHo71fcEjsBIOt4", "objectId": "mAHolCLziIJhtWWc", "objectType": "ijoFzAoCQ5ERRuU2", "reason": "6KMZOSbjrMHC1DrP", "userId": "dxsdO6049rtsvWIW"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE