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
    --body '{"actionId": "5t2LQV1MGnpIS0Mr", "actionName": "X9ejsmdrjBFIPFiR", "eventName": "UhDaAg100wFR4h70"}' \
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
    --body '{"extensionCategory": "w4LQhjr19qFn7fVG", "extensionCategoryName": "JISxlfin1KF7Oa1Y", "serviceSource": "K2kMgMQOUdVQ9T4g"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "6DPEynkyQQz6Vrwp", "maxReportPerTicket": 79, "name": "O2ABTG46WaGnTydN"}, {"extensionCategory": "Qa6RErVHRZsPxgRM", "maxReportPerTicket": 40, "name": "GWvM9pRYNCsxBx72"}, {"extensionCategory": "8lnpR3NAXZYubMI3", "maxReportPerTicket": 82, "name": "7Cukdxme3NkTphiM"}], "timeInterval": 10, "userMaxReportPerTimeInterval": 18}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["h7eSwIpgiB19aQhG", "arpXRJJA1KnIbrpr", "g3NAnUSbQB0cq46O"], "title": "ocVjJC0grLaDwckB"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '9ndmT4BmTF7SDu1V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'oxus2Zhny23gfObk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'nWkE78bkHbAAPkRo' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["IFibzbNDA1O9JY07", "Mi4Ehy1Ukl2DqAOF", "3hQl9QDnP2bTpLOv"], "title": "RS5XNy7sIsNdwbBG"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '5X2elLiYWNHuK9F6' \
    --limit '14' \
    --offset '45' \
    --title '2Fv3XF84NesKksbV' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LBn6IwiqQZu9Bz93", "groupIds": ["X8Hh7ML4tEvDANsz", "MI2w657BgBsOOIqu", "o2ba5QccDKGk0XqC"], "title": "YM9jTYcUw3RROaHs"}' \
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
    --extensionCategory '2NwEtLJz8jQKwVhX' \
    --category 'AXUDGpb3WOZDTGfn' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'zrspAVBHIElXo5TI' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '1jReyruNG0wv5cAI' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'AcoKk8iCsbCA7pUC' \
    --body '{"description": "H0oRdlwjKNOzwUhb", "groupIds": ["2BpaMOiVi6r5uxhx", "McQFUuOfN7ReNa2J", "uxwyx2jgQLSLzBlF"], "title": "vlQ5sxWDmsdcMvnM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'tndX4gYUfRcfvwm0' \
    --limit '1' \
    --offset '90' \
    --reportedUserId 'PNkcyzBkx068OecT' \
    --sortBy 'ujCI9tXo4x3PCu44' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"wgQgiN9qwjnC6DzI": {}, "yqNW1bEamYNLwnDz": {}, "URttWnOmkrGP5Yv3": {}}, "category": "USER", "comment": "CO7I1zf6J0GLcFqv", "extensionCategory": "5FWLtxGlhdwrCADA", "objectId": "NudBdYJ3bIeevcA9", "objectType": "eP059pVxNRlXaWC6", "reason": "NVAa2jSMYpHHXQUD", "userId": "GcU12oKmpqjIL87E"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "22XAda7yuMS0e7qn", "duration": 18, "reason": "8y5DQC5AeykJYUWa", "skipNotif": true, "type": "BnxXQbyVj8rrtCJm"}, "deleteChat": false, "extensionActionIds": ["VbyUltVfejoxnAtF", "YdRm0hyxsVIVWTyq", "Eo9GNXa4zNLzUCkC"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "IfYwH2ZFis9Ku7VU", "reason": "7tf36Oycm3jEMqhC", "threshold": 91}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '9pcAtFiuW21TL9XX' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "laSx75rjYKIZqBVW", "duration": 67, "reason": "9e9GNTOjsueXvBXR", "skipNotif": true, "type": "awwrAASZYP0bsePs"}, "deleteChat": true, "extensionActionIds": ["GWvIpOyOES7tAGPb", "e6byNUarge3dpc4q", "2rMM5tCXTLJKEX1P"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "oQ9mdSpM9Jb7YzPv", "reason": "AYxt6ulCWKptvYML", "threshold": 42}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'aRyXqI2fvH56GtLx' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'teNLUwU7OKZ1bKvN' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'vaPG5jBTrCn2KJW4' \
    --extensionCategory 'sA6Nbwk39r6IcGZD' \
    --limit '49' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'uucxOvLSfzyQN1zv' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '3ZG5NBZVavaAddIU' \
    --extensionCategory 'gvXX4ZxTRfBFuTfT' \
    --limit '97' \
    --offset '81' \
    --order 'tgIm7Et7OEflDHNh' \
    --reportedUserId '7Ns2XUSa9zTaKmO5' \
    --sortBy 'XFYLsSytOWRNyORu' \
    --status 'XmMpo2BNh1NlidTc' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'uPi9aDX4S9TWsJxN' \
    --category 'gZJefEm0Rz3Efr5r' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'BEI98glsKo9PpfaP' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'SiCDQOAO2G62dQBM' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'OG8VEm1z2RPrxrWo' \
    --limit '15' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'PLNNJ8VxmtXhnEJr' \
    --body '{"notes": "9OqaqPrduFqlgUMx", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'ln9WKmAUFT9OgRhQ' \
    --limit '22' \
    --offset '48' \
    --title 'Y9R2m4Rv2TJRuGn6' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"bn6nWCxJczxNKg0n": {}, "tII536Brr6X7dRTB": {}, "TaQSyiU7wOn7kOUO": {}}, "category": "USER", "comment": "NQ1U923spRpRx8CG", "extensionCategory": "XR8FQiBiuH6HP9jL", "objectId": "xG6LLGpyJKYf0Ysu", "objectType": "zym8yqY1BbU7ndTe", "reason": "QYnu5qA1rIaCFUk4", "userId": "R6Lz2JllCJHBpMAI"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE