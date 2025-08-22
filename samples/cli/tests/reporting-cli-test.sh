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
    --body '{"actionId": "R2nU87c5bdwrRiob", "actionName": "lQmXOdCVlV3aIanw", "eventName": "R8lUsWuQOHp3mVCK"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'descending' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "DMv7rOfN9wqyqpzK", "extensionCategoryName": "4nqe12ei97T9KSM5", "serviceSource": "HdMppTBWyW4cS7Vi"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "42i5GgtVDlqbixrR", "maxReportPerTicket": 1, "name": "QDPdcfibfWVv1r14"}, {"extensionCategory": "n7Nzk3jvv1kHAcp0", "maxReportPerTicket": 54, "name": "wXif9m7JOCdpmT96"}, {"extensionCategory": "jtDUPwM0oNNlSo4N", "maxReportPerTicket": 14, "name": "PN4kliyRd45CFPHs"}], "timeInterval": 22, "userMaxReportPerTimeInterval": 9}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["yDD3TlKhOzPeMd8X", "ISPcaGabsKjVMTdU", "JXobzfjB8RZsEzZC"], "title": "lyN0rOQo1Fqpz0sn"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'UyFiQyn4c1VuWFh1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'fBG1am9uaye5r2Uw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'nqPbmwL0Ewqg7xqq' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["VtmxCePcTmV4GdYg", "40DChq6jUCRAjPbL", "FtZgSNYvHDnnAl1N"], "title": "V3NZ9rxV2tisKNqz"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'TRHoLgpf5rLPIn2i' \
    --limit '73' \
    --offset '86' \
    --title 'Wj500dZNT5NSKzFE' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "y5WCdTnpLGpxWQ3O", "groupIds": ["ajya6JjWwq4rXoDk", "taqXwNg84dHfqmBE", "d3cPBSlWtoY3QEmj"], "title": "7059UCD45r0RUfp3"}' \
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
    --extensionCategory '3MTueLODlu2fOLb6' \
    --category 'ZwMm3L59W5RieWxj' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'E1sKn2IROC05wLXz' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'PlxvXR3P7VF5AymD' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'zmzu7WYHW1ETvwrb' \
    --body '{"description": "0LcxfIp8uGx6GqFZ", "groupIds": ["HMIwhBIMNmWgjCpE", "n2as9OfOmqZIM9g9", "FUwWpGaZrm7mrpP3"], "title": "BZFsdShHwaogYNEx"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category '6wDsRJHkPNzPvLqZ' \
    --limit '51' \
    --offset '21' \
    --reportedUserId 'esUDRog2BCMHoVkf' \
    --sortBy 'nb45rquVIPeCzFDu' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"ZXxnYQGvyTCb3z7U": {}, "0KNulzqVylGl6bh8": {}, "7AhnVMqGFjE9T2fw": {}}, "category": "USER", "comment": "yliFygCgpZlIprB0", "extensionCategory": "niH9zWt1fbo325Kc", "objectId": "eOX0Tk7HliX44et0", "objectType": "zJeOI3bfNEJbUHm3", "reason": "64Z4bhMu7m5qr4so", "userId": "TJ0KjbNqgzEVLPGw"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "D5YFrXfX5NGxMC4A", "duration": 4, "reason": "l3TMTojx5zdAJprk", "skipNotif": false, "type": "bsCfMygu6jybxEiX"}, "deleteChat": false, "extensionActionIds": ["0BkuEKp71BMXVvm5", "rrdtcbIcRa4ou3sd", "ltQPyzGftpNJmFGk"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "rSSfFeDQu7MrhyxF", "reason": "Q6XTnwcjjgbUmRHH", "threshold": 39}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'LRbyYG9qmUZhNgsE' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "D80rMtX1Wt4eflJ0", "duration": 63, "reason": "gLsRSjPco3IrbSYV", "skipNotif": true, "type": "Fgi4brdNPVVmueMI"}, "deleteChat": true, "extensionActionIds": ["mYDJidxYcZfTQumT", "020FjGizLf2r9gyH", "Q5mFMQhXMR7NhWP8"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "FMpe6VPSOu683NMD", "reason": "m8s7uLnwcsOWO8NT", "threshold": 12}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'pd2VuyRsXsjRG1qM' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'wV9lS7o0Npz91U6M' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'x9Qe2Noz7gMxWmLs' \
    --extensionCategory 'yfywGaO8V4t8U53d' \
    --limit '69' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'j3o7k9DxcA9lOyCw' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'ngKj5K4N6bmGVNAa' \
    --extensionCategory 'QiJea9MNVzcyVNN7' \
    --limit '92' \
    --offset '5' \
    --order 'jWoNkO8TAc2nLot4' \
    --reportedUserId '6NA3gcy96i5lzDNp' \
    --sortBy '7FboqbSjX9oON8DN' \
    --status '44heDjbiXShgXhmx' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'WqpEcGym89Dfpelh' \
    --category 'OZcBTgYVCQwrJKqN' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'z7MJoQKzG3QDJh2h' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'y5MMPy4tZmZNbqLF' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'qFUs06UUGUOuWpDl' \
    --limit '68' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'z2daGTjISr47Xwmk' \
    --body '{"notes": "sllvgKQ12eV21WGY", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group '8X0tsLr0syhUtZZU' \
    --limit '76' \
    --offset '43' \
    --title 'CuJ4YSvfNNRy5ZwZ' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"4Zv4vpwzrNvzGqys": {}, "Td3TFxS73IlH4XNQ": {}, "44ZFL7BBdGFPIf9b": {}}, "category": "CHAT", "comment": "ey6FUX6gjpm2QQc0", "extensionCategory": "rWITsA36rrR5InHf", "objectId": "shgdWYGaYS1DiCXK", "objectType": "lZrMMj0XwcvYQgHh", "reason": "EUfLaNFvnNYmZDrq", "userId": "sXxzjW7U5RGTy5qJ"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE