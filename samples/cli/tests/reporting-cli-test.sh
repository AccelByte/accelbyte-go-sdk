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
    --body '{"actionId": "84QhBwCXEClN7gUH", "actionName": "gpGWcmIAmyh4yI56", "eventName": "GhG290Jm8mkPpkqo"}' \
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
    --body '{"extensionCategory": "9DzjdhQttAY8YRxB", "extensionCategoryName": "fjkUK7Ch4vWbFOJw", "serviceSource": "58ZfXLtCIBcfnvgf"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "QJx45ourvLK5hTTg", "maxReportPerTicket": 62, "name": "vEW7XD4Lx4P6WMb0"}, {"extensionCategory": "wSY3GpFsaSGUXae0", "maxReportPerTicket": 76, "name": "HB6IpFa74mL4piIG"}, {"extensionCategory": "zZg66qzSoaqbt5MM", "maxReportPerTicket": 98, "name": "GBcTvRwamKnAtKTe"}], "timeInterval": 49, "userMaxReportPerTimeInterval": 44}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["O8QwoscEcIGL6BpD", "Um31zkshaBD4lg6o", "ws9ME5Z1YXSJ5Yvb"], "title": "8ZNJmnDDPcegPdmx"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '50YEGHfj7BexcLMs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'UPXcqonRHbofO4oQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'aHUOV6j25ktBkDSL' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["PGL2cDmk3TY1f8iQ", "U9Oz90dM0wKnKyFD", "R2MKxWtGSRPSXZ3O"], "title": "WfxpN4P4wGoBkMPX"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '2TnCMZywiNXHvLKC' \
    --limit '65' \
    --offset '20' \
    --title '1Jxw8iASQaLvS17v' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CKaiVGwUeYAzu7wg", "groupIds": ["ot3sVhKsIfWINhu5", "ih6MiStY49Q6E49S", "zG1XTKnWxs6I2oqN"], "title": "PZVyHLnuAfkIvhE8"}' \
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
    --extensionCategory 'fFtHa4LxpytRGVHj' \
    --category 'kOfEfCwgshhaEU7I' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'eN5AiEAnxpCDjb3T' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'frvwQUsHmk80tuQk' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'jjyGAzOMY9Ybwag1' \
    --body '{"description": "TfFN6HscXMC6joh9", "groupIds": ["GtkW0knU2o2OuO6j", "Qr01u8BNyk7itCjT", "vAsSrd2IcyxHssNK"], "title": "RVxsMUEy29iUSywU"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'VPRLHS2QU8ssbM8o' \
    --limit '65' \
    --offset '41' \
    --reportedUserId 'kTuXjd4HYi0sJuq6' \
    --sortBy 'qTYmha5GvzIQh38W' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"EdF8Z1Eszw3xaxPc": {}, "uV8PHGEOuDo9bsIZ": {}, "uoEHNSkrSTvWbV7v": {}}, "category": "EXTENSION", "comment": "C8QzHgXf800xEv4F", "extensionCategory": "IC1XBMBnPE0ESfY0", "objectId": "O2oFCspduuZAh36k", "objectType": "0bL3skWRA8cgf9Rc", "reason": "6SVfWx5bmjR9Utp1", "userId": "0j0Ek0lW03rpQtpI"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "7xTQVdPi9RkeC5a8", "duration": 49, "reason": "ZxO48YO4jmWsYrQp", "skipNotif": false, "type": "BjbMi5hVYFaX4bmE"}, "deleteChat": false, "extensionActionIds": ["i4rfARxNmccDNb76", "3Z4AK5lzelwLf04N", "BGJwCW4NW0fmxnTw"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "Ym80K1tDv7TtrXJt", "reason": "lBmLOcPzDInTVn66", "threshold": 54}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'yA4wehEKUJc5qrDR' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "iKsY3uj0nDen2Ifj", "duration": 47, "reason": "7zAQFYEN8SbhqTIq", "skipNotif": false, "type": "V2uQ7Vd17UaM2MaK"}, "deleteChat": false, "extensionActionIds": ["dCbQzo8KlnEdAGve", "9wXwLUdx4cOQXsMq", "Y2ydIhMmsSshPMf6"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "K4IYHhrn7c8Dhn6b", "reason": "60mT9U2Ql7di8vXL", "threshold": 54}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '2sMTpo8DOO9T8RHS' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'Eq5tAFDTbcKDHmjh' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'rTRtDSwicOCfZzqM' \
    --extensionCategory 'c2wvni5sadZhsrpC' \
    --limit '4' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'UqJUbP8Z2WUCqdHa' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'uWspk2X1bdYnyLiF' \
    --extensionCategory 'pTqENRgY2hzKqcnc' \
    --limit '15' \
    --offset '60' \
    --order 'zmQnZQQDlEZKqTJz' \
    --reportedUserId 'fpZVtWJKR4lQhKZa' \
    --sortBy '6TcEKZNB179pZl1y' \
    --status '6W0q5y1O1WE91z1J' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '7gKMb1WEA5WA6C6m' \
    --category 'k3zAtqDnUJKo6Qjy' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'rDqzZk609AVisqy6' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'dRIkJZiX8QCVUgU6' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'LNJoTmAIfPX19N4i' \
    --limit '54' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'yWKh4HvoAYE5QqA1' \
    --body '{"notes": "YbANft83kY3g9HaP", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '2hnlVKc3cHmFRKOH' \
    --limit '77' \
    --offset '70' \
    --title '6ZAHguExCEZCVUX2' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"3iDnON1ZJe6KAUZy": {}, "IKWqjYStGHbzkGIq": {}, "Rybj4gQGYpbf3li6": {}}, "category": "EXTENSION", "comment": "69H91VJfj53ooLnp", "extensionCategory": "eQL7aG6mqqDf6Qga", "objectId": "ZmxJNsUsZGU3Jx0X", "objectType": "z9WgkevVzOLiOuPl", "reason": "v8ZcPrFXtYeZajlF", "userId": "UeJWBdiUT8Hz9iwH"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE