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
    --body '{"actionId": "s5dPXH9JCxY3jvlm", "actionName": "F7Cikx0DY8pLk8K7", "eventName": "hRAO74hVTwHoiWQS"}' \
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
    --body '{"extensionCategory": "82oIE2xEdH5ESXkN", "extensionCategoryName": "O9g79vchPZQigQg6", "serviceSource": "ByqWe02t0HI5Xob2"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "lYmG8myYrpCDoswt", "maxReportPerTicket": 78, "name": "JFutdkeFSzfSWJlZ"}, {"extensionCategory": "0BtPiXSGzdP1GmIw", "maxReportPerTicket": 22, "name": "bqXeHIikEiheP0r1"}, {"extensionCategory": "0UpgWCDZqhwcJEjd", "maxReportPerTicket": 47, "name": "WFmIuq08z97FYedy"}], "timeInterval": 72, "userMaxReportPerTimeInterval": 91}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["u6cUZLrEutb21u88", "2czBpeFps1ExoxCp", "IvaH0KBnUqkpe4Xn"], "title": "XdDORsDUS0btKc8Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'zczdIQ0eQaiOR1bV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '8vkuGNSPjsCX7grR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'C6EDUE7DDEqLOWks' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["knIZ4ehxcQgfkBvm", "synRBBeD04IQNkyz", "hZajY7UKuDcEDhm9"], "title": "Ru0z0cGcM7NI6t11"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'AHDhMNxU39wntlJL' \
    --limit '0' \
    --offset '49' \
    --title 'Wf9gp4I7hegwKyct' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Jv8DSaFcklj9SwB7", "groupIds": ["BfVzptevLz2uh2P7", "6ivMfgcB1Eqlc5nD", "yFD7c26pQyPIjweM"], "title": "sZfGouPiuo0DxtfR"}' \
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
    --extensionCategory '9LL1lQ67ya8xkiUs' \
    --category 'LuSUJxMaWXAEi4zZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'XNWZu8Y2C5Hhxqzs' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '3TkmpNUPayPdzEWJ' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Y2AJaU4bzhA8m5Em' \
    --body '{"description": "Fb6RwJPocCElM5AV", "groupIds": ["rZhtp971RZyUjglW", "gbS4oRgKAPVGKWCQ", "DYCXsJGS7RQ7LbrE"], "title": "3wo9YCPw8R5vS6s2"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'pnmGVURc8Fhokqzm' \
    --limit '45' \
    --offset '19' \
    --reportedUserId 'dx2s1KZpzHwEZmXo' \
    --sortBy 'OgaNat0KC5m7iqpZ' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"IKnWm0qoia1jtbuj": {}, "8vbEMqLiXlBnADaT": {}, "4UePW3wd5oPpQCA6": {}}, "category": "UGC", "comment": "u1yqTVYN6RaosLM8", "extensionCategory": "Pn75wjAQkEKzFjw0", "objectId": "PM6Jg3AYEpctBVLZ", "objectType": "DLiePsoZBuXVunt0", "reason": "yFg7nTx67WrSX944", "userId": "j3g2ZVHEHBncKyAm"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "WEx2eFNBHDV0cZuE", "duration": 96, "reason": "3Khx60H4jUeq0DZA", "skipNotif": false, "type": "C25HFozn0Wyekr2t"}, "deleteChat": true, "extensionActionIds": ["ylCqqgEQJKZUlDCQ", "ploPqFdqhHe2nbr6", "MpN1lH3pSeIyfUki"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "nT4eq8kQKWy5eD5f", "reason": "rtn42LsD92CkC54K", "threshold": 52}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'InBT1O8K3aju2iKa' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "6Of3bMYo1seNPlJ7", "duration": 1, "reason": "SMp2XpemHBjkjNmd", "skipNotif": true, "type": "voPFVfdfindFS7nb"}, "deleteChat": true, "extensionActionIds": ["DmfMWlOHfDRe8T4Y", "IFt34CPnypcNS9S8", "77Z5WZxBBhZSiSBy"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "BRhwGauOFfPY8JTH", "reason": "2n79NVEQTE1YeNgN", "threshold": 24}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'u5reT3sdVs5tabUH' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'BR4pod5Wvt3QKyAS' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'ZS7wPJxlUuFzh0e3' \
    --extensionCategory 'Am04OB1fUoqTTqK5' \
    --limit '78' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'a23iK1FwezsNKWFU' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'USRGhvXPzr5YxPba' \
    --extensionCategory 'RQIPKG9whZyAC14j' \
    --limit '47' \
    --offset '91' \
    --order '4BNF3CpglIY0GNcB' \
    --reportedUserId 'MCdqwhfRSSuxto3b' \
    --sortBy 'SMPRl8zL2rmWAAzi' \
    --status 'Dksu4GxXtuVSYDU6' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '8AkpY3kwYWl59xSF' \
    --category 'Y58jWOSERlDA3kEj' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'zSvtEu4t6DWPimFY' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'MY2Yvrf0C6eUTb9H' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'SM6yTpPtRe4Iy3XB' \
    --limit '21' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'uFxHdCuKYdu4RcMK' \
    --body '{"notes": "Y81frr8cQmB9OcAW", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'vVMCOqvGMveRIMAO' \
    --limit '68' \
    --offset '84' \
    --title 'FB0heztxjuVsJJ2M' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"xr0FvafTxyi80AM9": {}, "C8IJUlpxEB7jcuiP": {}, "tn4MJEfTrC6hfuQQ": {}}, "category": "EXTENSION", "comment": "N7AJMc5TU7Vm6AXb", "extensionCategory": "cUWHXMOsXirMhWfn", "objectId": "O3VwDAnsotDKGGih", "objectType": "0Oovm54BavKKxzm2", "reason": "SkFL93eUH4D4davn", "userId": "XTn58emdB6Z8Lzxr"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE