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
    --body '{"actionId": "W7Rs2tl0oXFuVL4I", "actionName": "TTQCn74Zkkcj1OxX", "eventName": "IlXXg0UJBkx8afWR"}' \
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
    --body '{"extensionCategory": "DQKJEMHgAhVzu2VF", "extensionCategoryName": "7umXBJcXflYcbcco", "serviceSource": "WCrdycjhkT0DaMtR"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "FWZ2c4gFdGn5PdJ1", "maxReportPerTicket": 51, "name": "yKqP6l4qecy7qNTs"}, {"extensionCategory": "afNvZoN3ZNh9LrLJ", "maxReportPerTicket": 19, "name": "pTGuHMfVlVvZ3GTK"}, {"extensionCategory": "G7pi0a3E7aS0Orwi", "maxReportPerTicket": 99, "name": "QybKWlsmjCPRhr8c"}], "timeInterval": 39, "userMaxReportPerTimeInterval": 96}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["3vIUJDychVKjyrjh", "YMfKbwdiqSdxTQtG", "ormzbzX9hakG1JlP"], "title": "HCQnbaBugSQsSQlP"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'hxXi8B00WJpreEGl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'NgwEhlQEkmsUI5wz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'aYIBNEWtrvmNWZX1' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["RoytLjIB55bMIKiW", "A3gUuLkhTCRvXKYm", "EplD3WK6ACAahtbs"], "title": "q6w0rRCoUgSLQi40"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'D0q4JVXrcEDRsm38' \
    --limit '47' \
    --offset '27' \
    --title 'CJajCBnmjQrMtduf' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eA7FLxq1urhJ5P0X", "groupIds": ["ehUlwwijua2tNeEY", "9NNJseCmS4pYpljb", "sorNmEywHvnsS2Wv"], "title": "ffJpiPT42g5bDuK6"}' \
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
    --extensionCategory 'orExTcz0rw8lejUh' \
    --category 'u7FdeMrl9YvelDY4' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 't5aZwGInnGnIwU4y' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'UYhQjZV3MXCXoYuO' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'xTFZtPPCWszDMGKw' \
    --body '{"description": "7H1zGolm3tCtQHzY", "groupIds": ["2lf79gq2LZ0j9iaI", "ddU0fIwVL2zfb0IW", "AJRG2zaqzeATuB1W"], "title": "FSzIOjopZgtSxCvM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category '3QWAYSmnDh4i3rz3' \
    --limit '61' \
    --offset '97' \
    --reportedUserId 'xMicQ9JvV0pI2Yc0' \
    --sortBy 'q4NLahdc5FKnTZji' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"Lj4GV8jR5RspUv2y": {}, "2x0k7hT6uueEmSmD": {}, "LMbxg1D5IhWN6WP4": {}}, "category": "UGC", "comment": "SxVNMTy1W3GQya8b", "extensionCategory": "5qncZoKsIACEQ5S1", "objectId": "KSIWDKHcy4hCabDZ", "objectType": "Vo2qVRAQ4P24uHzP", "reason": "2q3maiEf9bmAqmLg", "userId": "5pfYevlWTZGOZaBU"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "nsVYbn42F51np6Oz", "duration": 29, "reason": "ZNRu21TTvLOGfNVN", "skipNotif": true, "type": "amA59cqmX6pjvsN2"}, "deleteChat": true, "extensionActionIds": ["cdkVdw4KZ76OtFy1", "t3n9P29HWWIhdH0k", "xUU3GJltXFX3Psr3"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "IRllRjxhSYDvdc51", "reason": "mmO2De661e24ba6h", "threshold": 99}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'MDqixj9RMrdDLubp' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "R1GpaJsiYgUwwoAk", "duration": 17, "reason": "91kL2QQVrKG0NHmf", "skipNotif": true, "type": "WPYPd37g4d3eWoSs"}, "deleteChat": false, "extensionActionIds": ["a0c2mMEh0NaZRbqn", "jYkqKhh3Jozo6ch4", "HNHuprz9SNxajyZg"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "04CxUcKMXOwlCnJU", "reason": "F13mLGxhF1TohnQW", "threshold": 81}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'PPioNI4Rktapix7u' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'MdBVw5hglhvnAwNN' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'UQ5KAGU9I04LX2k7' \
    --extensionCategory 'ntoJGlkDkBN2qk2g' \
    --limit '66' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'GVz3KEXHKBBE2Igx' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'W0vdwu4dUASQPErQ' \
    --extensionCategory '9tox3NIXIqs5JOCg' \
    --limit '6' \
    --offset '15' \
    --order 'Qfr3NkkJdbbZ0tP7' \
    --reportedUserId 'emRGZmShQ3LoQ8Vo' \
    --sortBy 'N5HEju9qfSX5VYTN' \
    --status 'bNZI4omLiT6YEdmv' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '8Whp33rMVK4w782T' \
    --category 'WNdt00wYJWC9jveF' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'amBaEWW1Be0NoBVI' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'zcnUaENKTbk7U8Po' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Roc1BLKdkpHClnjT' \
    --limit '38' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'aTURXc8Z2ZjZjZtV' \
    --body '{"notes": "DxgYyRFrNtFPrjDq", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'GQKqKaxVbEh8LvZq' \
    --limit '0' \
    --offset '61' \
    --title 'c8x8G3DYuSzZH3DL' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"v2Do6BnBurL9UzZa": {}, "o3f4J1hsRcIS9pfw": {}, "yBRxL1NTMHT8XY9m": {}}, "category": "UGC", "comment": "qh88S52PckqX9uO9", "extensionCategory": "FdoU4ICkhPU8H1cc", "objectId": "xAIOfmQXFarzCfmm", "objectType": "1AWaRBFf6vTQmcAb", "reason": "6MV28ezYqJKEbIF5", "userId": "hFtcbZrF8Dm7k1tD"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE