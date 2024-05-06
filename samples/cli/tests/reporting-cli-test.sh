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
    --body '{"actionId": "HQq8VzrDH1Kx3MV1", "actionName": "A09HqYxcReU5zLbP", "eventName": "ZgEpqL19PJMScAr6"}' \
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
    --body '{"extensionCategory": "BN4L4qKjUdK9Ail3", "extensionCategoryName": "5JYzZiuUOeaOho9l", "serviceSource": "sMAsUpp2PcEP2SuR"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "oCmLd6tMUJDysVzO", "maxReportPerTicket": 48, "name": "rncudSHTl2aPPW23"}, {"extensionCategory": "u3ISMFSlLUwlszwm", "maxReportPerTicket": 3, "name": "rak7RhxhFDRUgxpY"}, {"extensionCategory": "qX5LYDUCi3lXlzBN", "maxReportPerTicket": 100, "name": "cnSFc9tSxGWIkweV"}], "timeInterval": 89, "userMaxReportPerTimeInterval": 100}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["TWLUWUwWcifqWnDH", "IWBejniP9Fh6qaG2", "zqtkVOJgnOzvDAG3"], "title": "juvGbFSH3F8b0Ju5"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'pAl7C44e2PKdKtOH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'DVJHLbYzzPEE6sTw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'bOFgHDluJE5uzN3T' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["RWOAqYD8RQYo1sFQ", "BwiUvnY6YJgwu7OT", "vvOkfATTU6LDM7S4"], "title": "5PssKC6zmc8SEtec"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'yX8QHuMan47te6Pk' \
    --limit '70' \
    --offset '80' \
    --title 'QWJAtQmMgLQ6Mxuj' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "29SCwB7tskWfCJiG", "groupIds": ["bg58kyQ8Ug6IdGBq", "wbGGZGTaMiUH3H78", "Syy7bVtbbDbuNk4Y"], "title": "9Sr4pwrF2ponxCm6"}' \
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
    --extensionCategory 'xwwhlZyNu38CJ48p' \
    --category 'Aj977xuefpecwyYk' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'eaWxIn5CJnCQ3xtR' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'rp952qm8uAxr8cWg' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'ISRad1zvVtEN5MOK' \
    --body '{"description": "GZFjoGcsOnkxOWPh", "groupIds": ["5U79WftlihmDSqJD", "Zi44f2KOPZSM8YX7", "iJbTY84L0UfTftK3"], "title": "9CwfVetCFaEAc6xM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'WRFr8FytK6eX0St3' \
    --limit '73' \
    --offset '74' \
    --reportedUserId 'kl5eGNZEogIMffFv' \
    --sortBy 'F8caITUSDO16lxoK' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"FS5OyzVROmWst0GK": {}, "yXymyF8SN0UID9Dv": {}, "YIesaP1Tle3SKBWW": {}}, "category": "UGC", "comment": "N3T1cXded9S0x5uD", "extensionCategory": "PXlDNe3zJmSRS1Di", "objectId": "9ixx4h0Q3S7Zqmqw", "objectType": "xSOrk4wlyYA5b3ih", "reason": "e1VfwEbMdPlWVN41", "userId": "IIxhyXRpjrHGTrl1"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "V9gQKuh1wHI7J8ML", "duration": 84, "reason": "XMgOsDuPlPcSTvCD", "skipNotif": true, "type": "iBI6sIHK44IO9QVn"}, "deleteChat": true, "extensionActionIds": ["R1BXyvHR8sHBeHOx", "TCkWmFR3sQNNreAZ", "pnTr0h9KoqO1FVHf"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "cvnPz4ehuKaYLMF0", "reason": "mC6cZ5w0W1aK9FjD", "threshold": 9}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '9e6GTyPqkc4AdcpB' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "WxU3koxRuNtOHggy", "duration": 56, "reason": "xKCL9qBNPK4V5OPO", "skipNotif": true, "type": "EpCskTxv20XW7vEZ"}, "deleteChat": true, "extensionActionIds": ["i9tR96OYT8GkgYPL", "3gWSPgDlTlqpuIqm", "V06e2dJdtXLgBAXa"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "ctP6rob13hll1JVp", "reason": "mr8yeDpqCdmmf2TG", "threshold": 66}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'zzEV8I5KsHr4CEk2' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'YNoP3o3KfHW4pD0z' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'seksng1yybae4WFD' \
    --extensionCategory 'A5pFhGwEUN9eVTxb' \
    --limit '37' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '2oRc6XenXz1KIVqX' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'UjkfWEb3gRZLMZLi' \
    --extensionCategory '8inytBXLcDrTGn0U' \
    --limit '73' \
    --offset '10' \
    --order '5QmknrU6mSImm79A' \
    --reportedUserId 'Fnne17SK54b7wDdt' \
    --sortBy 'GJQsL9fVA4RINxuj' \
    --status 'JEnuffC8rqGPwWR5' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'NQvr7UYOUg0mUgUm' \
    --category 'LB6x7mh6efnY4Vke' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'DCQsOJ69fTIjH3vx' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '7bqNeyG30UqXRDaj' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'BYiqsRVNmjPo1mjp' \
    --limit '92' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'b0YQL8zJTsBXzAMB' \
    --body '{"notes": "Mamhx1YPkYxkiKB3", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'gNQGDZ7vaZlK5FsF' \
    --limit '100' \
    --offset '32' \
    --title 'qm05hZWuk9d61d4g' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"cnakrKaC4polS6VY": {}, "QpytritKCwE193gW": {}, "5bpLwRJF9iytPaWL": {}}, "category": "USER", "comment": "S4CnL7MIH0RJhqZY", "extensionCategory": "X13nkWzEA9HaWkkJ", "objectId": "6dtlJ64c51t8pIzc", "objectType": "WxQcLfYJT2NzDq3t", "reason": "Nwbve91Qxedbecum", "userId": "4eJtyXVXUV2j0VGv"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE