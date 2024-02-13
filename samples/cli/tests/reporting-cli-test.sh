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
    --body '{"actionId": "7pucooY1uDJf1sXc", "actionName": "0n7l9rJgWZg5XMor", "eventName": "wdBynOrgFk4nn9vu"}' \
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
    --body '{"extensionCategory": "IMiNX5vrmj6bxAI0", "extensionCategoryName": "JvgdOWuuXh2pPqJi", "serviceSource": "HLV4oYDzD367AxMW"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "KpjWxDtGRAOWhpr6", "maxReportPerTicket": 43, "name": "MMVVoElizg5QZO6o"}, {"extensionCategory": "mbzAHOp76fLaXJvm", "maxReportPerTicket": 0, "name": "y3L2H9PvKNH6f6V8"}, {"extensionCategory": "G8nIbBeXCn1g7dKh", "maxReportPerTicket": 59, "name": "kNv60ug4UkJcTRkb"}], "timeInterval": 86, "userMaxReportPerTimeInterval": 21}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["EKLdxuzKkSDkMvD4", "zBpZb7lt8nFmKtSL", "3TESE7u4rckdpUn3"], "title": "sFfYrBLjoeSzMY8J"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'mmjXbIInBqpDybXH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'NOa6hU6cxt0bR4o7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'jLNgZBUtRD5MWjMt' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["HOA0cJgu4A0SMvav", "SSofnKlbyl60ExyG", "e3ctPKw6zzQY2LVP"], "title": "GOdc3knChVvASuKg"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '3PpS4Zd0uwv00Exw' \
    --limit '10' \
    --offset '30' \
    --title 'demslkacw6rH6sFu' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YVkI11Mq6T3IzVsw", "groupIds": ["2vSe3XPR3mMmXUvL", "7B9CvXKxUuMGMo7y", "6l7RVfA59No9nQEr"], "title": "wwHvR5180MlGrV1g"}' \
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
    --extensionCategory 'xPqcI0iEff1dHRna' \
    --category 'CkACDrqrIAramWW4' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'BdXotbSekZVhnura' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId '1d1c20d7oe4D528X' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'mEIdgymJuyFqnvK8' \
    --body '{"description": "uaviUazFflHwBSdc", "groupIds": ["hzsNbpg4iwGxDhpj", "CgTeFJurp7LUHzlp", "niGa0WxnGwunUgZ3"], "title": "GydFLySRFR7TdVlM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'fffREnCRTdJNFH7A' \
    --limit '17' \
    --offset '30' \
    --reportedUserId 'R6v6KJDvQYBoHCtA' \
    --sortBy 'HyNTJa9TpJR8Mdp9' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"rVDP8HT6932fj90t": {}, "ml807o54WCLGvFR4": {}, "JelVrSOnpdOdzVN1": {}}, "category": "CHAT", "comment": "9AYKYnf55wiwydD2", "extensionCategory": "3gwJG7X52rnokLbd", "objectId": "MrP2wzDUohy5j6Mu", "objectType": "sv5V0UU70U0H4Yfp", "reason": "KbF95Dnnk61TVfPD", "userId": "qSWK6rk4hRS68uaK"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "pUkPbaAdeYBGud7f", "duration": 65, "reason": "BvPSIia60F9AfODg", "skipNotif": false, "type": "I18xtatm4FoLdSaQ"}, "deleteChat": false, "extensionActionIds": ["MuQrEFPfdlbAs8a4", "nOLXZYe4Qhx8pMLX", "CXeYluxeuTCL3ol8"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "57UVwUmMoEuqq7nu", "reason": "j7LWQ3LvHR0O5T8Z", "threshold": 50}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'dHQvUtPeaHgVrxlP' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "d34d1gXKN1dVYREv", "duration": 46, "reason": "89WVr3Ms96QzIEqG", "skipNotif": false, "type": "xorAt486QkXopAIy"}, "deleteChat": false, "extensionActionIds": ["SJj6ScrDfAoUrvrN", "7Wq6KKY5z8SBySA7", "kaAp4NVja7XlGC3p"], "hideContent": false}, "active": false, "category": "UGC", "extensionCategory": "y5ogCrnLimCAOATU", "reason": "h08nAyEKFBt4LxQk", "threshold": 100}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'pDUVM2mCkCIRw3tc' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '3SAWtfg3CGteO4O4' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'bArf6qV9c0CxXHNH' \
    --extensionCategory 'qT9y9JuExR2sJln1' \
    --limit '100' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'ko1plHifhyabOWrm' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category '52LByGJkMgZdAzla' \
    --extensionCategory 'IhrKxYGGL2aYkYFh' \
    --limit '11' \
    --offset '18' \
    --order 'rI6eZPPPV57a5m5S' \
    --reportedUserId 'rHgSp2EClm7mI99Z' \
    --sortBy '8Gej1itwHw2hfnGn' \
    --status 'exQGvIuOKs5pwW5b' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'kZeYT3A03GjZc0SM' \
    --category '7mZubMJkRmueHtWM' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'iEkUPN80ALpLPJyF' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'wltA35PzAPDgWMu9' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '2XZnIpgxhbCQDSxf' \
    --limit '49' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'OGaedw6oTnsmH1BC' \
    --body '{"notes": "FMUHQ4yzRUWDgepz", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'VsWWsjNv49Wj1KN5' \
    --limit '56' \
    --offset '87' \
    --title 'AB56NRh4nXbr8iCp' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"o1tBgyZzOknuiudf": {}, "NyDvWONGga1FYZaA": {}, "zhETkfayqhqaQArT": {}}, "category": "CHAT", "comment": "Q7WkPZ0oNA4zeEM4", "extensionCategory": "XrgLoHJkQy4B4Ocq", "objectId": "XCLYpIu5zVm3jvbM", "objectType": "S5s5Y8bJKjTKGbz5", "reason": "ocFaZtKL6e8a0ypz", "userId": "CRmDMS4Y25gnZE2n"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE