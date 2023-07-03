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
    --body '{"actionId": "2huxK6kJMNAgvyTJ", "actionName": "qf262nRWaABtvp32", "eventName": "kEUoQ9WqDkI0bACm"}' \
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
    --body '{"extensionCategory": "KtkDAeQU6VYny9BT", "extensionCategoryName": "0MXFe9TH21nl6pR5", "serviceSource": "21ccNFNyFVqttnan"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "0lmoaoMndEjQZ9IW", "maxReportPerTicket": 38, "name": "ad0ujTuFIMwAWCVJ"}, {"extensionCategory": "xFnTwbRlwea5q2qV", "maxReportPerTicket": 48, "name": "gAnucrgDAAVVgDAO"}, {"extensionCategory": "3cmc5mTjUPVY5Wer", "maxReportPerTicket": 59, "name": "xg9R5eQdgWR3IrZs"}], "timeInterval": 13, "userMaxReportPerTimeInterval": 8}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["hmyltMlTf3OFmeJu", "5U1rgdobDXhzozIg", "8qlIxIc8hXopbYUe"], "title": "ARN4eLSuvsgtRYP0"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'oc3rvEssGZma5GTb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '5eVzsq9LArwehb1B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'JRefFjerSKbA7heO' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["GF9oltC1eB1t01JW", "hBNGh68iM66Xfa9j", "vXAQqscJMdubtLQk"], "title": "zbxtAd1WYiZc9VL2"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'UUnE71wqiDSmRSIp' \
    --limit '99' \
    --offset '75' \
    --title 'Abq0Gu7O2lUbifqB' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LUIUYvIECHlXf0vt", "groupIds": ["Ebw5zWRabpsIKZqK", "PxEsYRkAtj3bBCf3", "5E1XswiORR14Jd9S"], "title": "ETKySHjh1xOPrYEA"}' \
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
    --extensionCategory 'PVkkSQy7FhVMTS9j' \
    --category 'hVCqX0xae7s1eE3j' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'zA0XMg5W8w9Zzmsd' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'vJeWiwufdLGrULbe' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'mkE1JFakSmPshMDS' \
    --body '{"description": "gXI9u27Tox3mbGpj", "groupIds": ["1GwspDRa9Ba5KW91", "pO7xYjOx4NBWmB9l", "LTQETO33Xtwhs69v"], "title": "FLs9Ariw4VkeRj02"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'Yz6SEjMz7ESAt6zZ' \
    --limit '59' \
    --offset '46' \
    --reportedUserId 'VLslBblDwEUVj3En' \
    --sortBy 'kGxdi9z8n5uthsRZ' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"VX8cmEPiPuNebZIu": {}, "0w9x1GdvJGZfb3cD": {}, "uhN4XSZo9zhtTi5b": {}}, "category": "CHAT", "comment": "N13849ktX71q2rgm", "extensionCategory": "0IhOqC2jAa56tUj7", "objectId": "jHOEWWH6A3HY8kdP", "objectType": "WtTYeGndWLNA2BUB", "reason": "I3BE3I3SXHbXRpbu", "userId": "k0UYV6F9EfebCDSB"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "MZPXutjEdq4dNsAJ", "duration": 87, "reason": "xTMjG3z0hvUEL5mN", "skipNotif": false, "type": "PeTZMfwirpYLWJKV"}, "deleteChat": true, "extensionActionIds": ["JyAAr1vuSJJjYnO9", "1K2P2ajvaBVOJZo8", "Dr1mmr1kT3TZMAqk"], "hideContent": true}, "active": false, "category": "USER", "extensionCategory": "JX0vCdNpZnLdSeth", "reason": "0bABgKRyBSi9TrzG", "threshold": 42}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '76I1XHz4AcfrYRWI' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "843wdrcz2iBPTQe8", "duration": 33, "reason": "kEYCMdcbQa6s8xcS", "skipNotif": true, "type": "Ud9axOepXRmdB3aX"}, "deleteChat": true, "extensionActionIds": ["aZXojUF0TtVQGRvS", "max390lTSbNryaWv", "c2jqNlAsVqSUfTxc"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "7wSMMEgKlntdYuCa", "reason": "Ln9MKS4NhTgcC4MG", "threshold": 63}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'stfvdKTHzm3dwF8T' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'XpwxvrW1964OVmnf' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'dGCHYmcPaNt0tv5w' \
    --extensionCategory 'cx0dPAoVUw1hG48Y' \
    --limit '10' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'sCy5sbzVVG6xZz1b' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'VxsSFoZ4BBcj49kE' \
    --extensionCategory 'rbrO7288OaxO3FZ5' \
    --limit '56' \
    --offset '49' \
    --order 'ukVPCfUEhpGqWGpe' \
    --reportedUserId 'ucGj7mIzqyRX2q5Y' \
    --sortBy 'ydnsngm5aD7ktYAM' \
    --status 'knkgquR9M9rd2PIX' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'Cw2NX2J8lJfVFU36' \
    --category 'fvsazSpPNlwpMxDp' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'rVpAx1ESbyPKbFFu' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'Vbz9ap8k6omK3o7W' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '5SZYeU1vegPYCV27' \
    --limit '2' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'RqUDab1JED0gEZVI' \
    --body '{"notes": "cUrRseYlqFmmaAjB", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'qiMVg0eseBqNgWg1' \
    --limit '56' \
    --offset '33' \
    --title 'ZVlXhVscKuOEhVgd' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ix5AtndQGnIOar4h": {}, "vIKb2XcIVGdPdU9b": {}, "dKahzmglNRP5OFjG": {}}, "category": "UGC", "comment": "K0ckvL3i4cxm2RQt", "extensionCategory": "T6XM4IHJBW3kr0SB", "objectId": "KdtTaXgkKv4nva75", "objectType": "nJkHYZyCnFK3YpeA", "reason": "FhIXE8x1bef3YOYo", "userId": "ucODc0fOxtjOVPSc"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE