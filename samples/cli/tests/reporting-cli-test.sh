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
    --body '{"actionId": "GuziMXnOn5bW0cY7", "actionName": "urwd6LVO0VE5Vcp0", "eventName": "HUG2uSC8IgCeXt4g"}' \
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
    --body '{"extensionCategory": "WcUIKYTHIPk2niue", "extensionCategoryName": "jOZPdOQh63ussUBg", "serviceSource": "E8E1LpH0cP9MClIk"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "QwH6I6DlQILfa6cM", "maxReportPerTicket": 52, "name": "auSfxtvbdagjxP2i"}, {"extensionCategory": "GwanJ1kUPbvV5oud", "maxReportPerTicket": 67, "name": "mVdRJKFBRQx6PKfs"}, {"extensionCategory": "N8plUYUnNMqhYBPj", "maxReportPerTicket": 100, "name": "2PmsDiNniKQIt4Nu"}], "timeInterval": 93, "userMaxReportPerTimeInterval": 4}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["e1YZ8lau3ffQq8ou", "HXUfuN13pbs4CEeU", "J93dBxaYJlgxcfTA"], "title": "uJqgeQjV3qo4zVJV"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'XY1h1lVGY1zqUS3s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'ypS3jNlI8SnW1g8i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'fH7sdj66tV4vxqmq' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["SwZbGDFYdzDppqiA", "rBx2F7bOM9QoX6xs", "qrXOPIiXCCtIkXy2"], "title": "jFUSyBjOjI30L3P3"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'bNuvn9aWptMU6cvX' \
    --limit '33' \
    --offset '71' \
    --title 'vtXzZgPOo3RVPhyG' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "S4s7Pp2oSmp2udN3", "groupIds": ["Avf9LMhGjUpOcst1", "tKTNVpyT1U5ooPiX", "CEaFK0FbJWbsOq9w"], "title": "PQHJ4NrDaxzc8GYj"}' \
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
    --extensionCategory 'MQCA6AfFgsUGowOB' \
    --category 'ZihCbGhlSmMdIcxt' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'YNjHAT1gEZJqYU1h' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'EUzBK2IKlV3E48Y0' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'yi5R2AIoySwWdMEq' \
    --body '{"description": "PClUKZw8sa7R4WrW", "groupIds": ["mxqz2EUDsNDFM5Qq", "eqvwKTk2IsTd6fQ6", "KKfwhEWG9fvSIp3N"], "title": "V14mHB4gx4wedO1n"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'eF7sxJHh7REoODCJ' \
    --limit '17' \
    --offset '28' \
    --reportedUserId 'M6FwaklT1NUBa6BK' \
    --sortBy 'Q3aVd3pp3KpJINWt' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"8eDkkzwGo2U0BfQK": {}, "5ns3GEv2USBvKKxS": {}, "OTgUYBkZxBH0eJCo": {}}, "category": "UGC", "comment": "joldXpw0qVVi7JwJ", "extensionCategory": "fV8kVbJ4LnqX7SSt", "objectId": "iPB4OO5xTfJKhn20", "objectType": "DeSXLzFbn6ztNLqY", "reason": "XxmGkRpcxw63Wo8z", "userId": "lb9OPw36kfXKJoqK"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "2JcQ2Uj3tomi58eh", "duration": 37, "reason": "gWrDK2BhFcajEWXw", "skipNotif": true, "type": "epWPo3pAZBqBNMgf"}, "deleteChat": false, "extensionActionIds": ["IXDpfivMCkticHp7", "xnVfQIN6eDc9eKiN", "D0WDKGqydGBkXUem"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "8SmDLu6VFXLSLj9h", "reason": "bOcM59X1h3eUsNUx", "threshold": 29}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'kJ25Q7IwZk2j798Q' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "tZ4vhd8OQiQqCyRX", "duration": 39, "reason": "9qanMfBz0D9cbXaZ", "skipNotif": true, "type": "pTEOip8SMFXlOtBz"}, "deleteChat": false, "extensionActionIds": ["B7k1osMGXOqz5vE6", "b0ouIBzQApeomqiS", "ZS6v0qSki0Tn89wQ"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "aCAjR8p4lndNPxwl", "reason": "2gwJX1I9XuDMKsdG", "threshold": 94}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'nnQVbdMPdVtgN2cF' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'bVRLMFpmkP3kw6qm' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'csqEWWVe8YrZiN4z' \
    --extensionCategory 'tcsFS2pO7b6ZpyPF' \
    --limit '56' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '6O0Ya0AYipyJ7jik' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'XVV4Oi5kuNzhm1bz' \
    --extensionCategory 'wgGpIP3ev316GuKR' \
    --limit '68' \
    --offset '61' \
    --order 'APlgAwEr3JabCiOX' \
    --reportedUserId 'mjVAqQHUMIS5t2nU' \
    --sortBy 'Qbb5N0olxQLW40zr' \
    --status 'b2nxWjINtp7I4iMZ' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'q89wdvbPRGP9xtfz' \
    --category 'smVWJeeWmvz4xraI' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'GfYTfV7gKyBasjGf' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'DSc2RKyrPljjofaa' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Hg6plfEjMQEiP2JE' \
    --limit '72' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'rvv4qe1bM97hhLx4' \
    --body '{"notes": "QQna8YYHPsdz1pq2", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'wJSvbTkOVARSqli0' \
    --limit '51' \
    --offset '33' \
    --title 'OzRzvaJRAm3fcKF3' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"4ikNXWbobT9MC1bR": {}, "LGNCTTDGxxjHhgPM": {}, "QFJnYnBVsty7flpw": {}}, "category": "UGC", "comment": "UlLiGlDLG3llfzO5", "extensionCategory": "eP0VK0tdcly7mNIT", "objectId": "fDR4PU2j3PhNS0S0", "objectType": "4Wl3NvImaUvk3TKy", "reason": "1uuhUS0bJGNbcXVj", "userId": "7lD6sSfcybhylguv"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE