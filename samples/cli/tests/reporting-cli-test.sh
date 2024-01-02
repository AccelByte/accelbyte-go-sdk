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
    --body '{"actionId": "JxkhcWuroqQeWjzq", "actionName": "1MDipc4SfaZCE0GZ", "eventName": "BD7UzTFkH6ZwOZvL"}' \
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
    --body '{"extensionCategory": "VSlmzcMwJ3uf2iUQ", "extensionCategoryName": "Buhh7tavgVQLeRus", "serviceSource": "nwVs15h7r4u0eTk2"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "OtQvDk4wtRnNghZZ", "maxReportPerTicket": 34, "name": "CENdh2pM7OeAZN2N"}, {"extensionCategory": "w500b17Lcjv3eAZM", "maxReportPerTicket": 0, "name": "xJHu8jhxV9YDrJMz"}, {"extensionCategory": "dczeUISsDGwINX4g", "maxReportPerTicket": 28, "name": "hyRpury7aTuTeYU8"}], "timeInterval": 42, "userMaxReportPerTimeInterval": 64}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["vLCIqhe5JQ4K65FV", "TJUjvgDlvEcNSUpp", "jpoZnvaXcFlbmSHZ"], "title": "SSH7f2CeoyPRbiHH"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'jsEkgN6F9hwXFPUA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'gQow8qtkTMf6hVuh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'ticqsGAI942QwXqG' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["MgUxjT2FpIKJWKUC", "gzaRrppHEdQ0KG0w", "1ofKJjcrGtnPhG8T"], "title": "tiTnxYYRZM2bTqyr"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'Kw1mRxCOR2qZzLzT' \
    --limit '59' \
    --offset '84' \
    --title 'XglcusQEURIJ2qw5' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VQTJzEgReba4EhpH", "groupIds": ["5NgjxTXFHRHUhKHK", "ZR92tPpCMrnBY0wa", "W7bdTvOXnRbmkJP7"], "title": "xCD3lYE0399xUAFX"}' \
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
    --extensionCategory 'tjUHavTzlNM4hcdm' \
    --category 'VWWGmTFUfZZjSkHt' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '48n30ntxV4WuasjX' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'g50JaqDKzADeYt3g' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'RzqGmZgcP1FBvlFB' \
    --body '{"description": "gLCNJsEGjj56B5ic", "groupIds": ["2W7qyz6MdFs3iisx", "Z7byEuf6zHb7c0S6", "5B6rfdgtO5bH6g4a"], "title": "eIFVdTHcV3K6bS8y"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'Iu8CPySpgeJea6F2' \
    --limit '47' \
    --offset '58' \
    --reportedUserId 'OfM8DVXIkR89Rgcv' \
    --sortBy 'fChJ673RBGTHyczQ' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"cEf7C5rX2D1hUunZ": {}, "yC7dQJ4X4DdDzYBs": {}, "AcbLge9zdGUcPtxa": {}}, "category": "UGC", "comment": "sY1SRCgj6PE8VRkZ", "extensionCategory": "B5zuuS31ujmUMwoY", "objectId": "gpJudnulWO90SCvJ", "objectType": "FWzZ8hiSMiuOANow", "reason": "NLdjUtblsD0wkIxg", "userId": "AHXXzS33oUN5Kuvc"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "d1zhDGCPs9thrVEy", "duration": 42, "reason": "dDgPEvgnQDWQwbNS", "skipNotif": false, "type": "HW5ROFvZUd4K6n1E"}, "deleteChat": true, "extensionActionIds": ["ZCvQ12li4yidIEnT", "J874st4KOgmOSs2g", "xO9XDDavLo0WgZye"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "cwZLmo5Yyd6PaXGz", "reason": "JXpro7POo0jt9aa1", "threshold": 69}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'Xm6uZES0YnTDiknM' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "JzUhGAyXqRySAN4R", "duration": 18, "reason": "8o6cADkBK4jU0PwG", "skipNotif": true, "type": "Y8gbt8v0DWWBjt82"}, "deleteChat": false, "extensionActionIds": ["Pc9DX443py3jndi0", "grgVhRguM2Vhcbvy", "nmUzuAnRhQd5OXBk"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "NPzypCKaWK7JKctW", "reason": "M9YCPuQ5v5D0brdc", "threshold": 0}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'xRK5zQKr4xncfNL7' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'huhp0YUqZ5x8TIDl' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'ivXd20e8A0EmZQKA' \
    --extensionCategory 'QQLMRDKUu0OhgjlI' \
    --limit '52' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'vUuchcZLE69EOe0N' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'ImWemdEpeA2bwmpO' \
    --extensionCategory 'd6niutt1iWPBkIxh' \
    --limit '30' \
    --offset '94' \
    --order 'myJ7tCISuRQx3zzJ' \
    --reportedUserId 'xgQYSrMtazvC9nCl' \
    --sortBy 'nBt7k9AqaeT98P1C' \
    --status 'flEoCM74aDzZTHBj' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory '1o2wJBwleNpcd61T' \
    --category 'KIs3i3mZMH16boC9' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'zGUmPvaPKbitePj6' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'MX3Shunx5PHzd5I6' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'iqpd4DHJfnAWLZrt' \
    --limit '81' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'NdZMl3Vh9JeCDB9Y' \
    --body '{"notes": "h5YdTMTgHho2ZCyp", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'lWmGwBfaaa3vC7aP' \
    --limit '23' \
    --offset '39' \
    --title 'UAIKbZv7ONF5dryF' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"1nq4j9mKwwRNLAjI": {}, "ZvuFVvfKjLEL53xy": {}, "lvozycLRvDY5elGF": {}}, "category": "CHAT", "comment": "2qGbE9fdAN9jlaVM", "extensionCategory": "xNRUC7QNzFPp36QB", "objectId": "MuJPJjIsaBJk8KPc", "objectType": "taejbWXeIaNx7MvE", "reason": "w3b7mTJoQf4aYPPj", "userId": "E9Sch0pVpmxXR77l"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE