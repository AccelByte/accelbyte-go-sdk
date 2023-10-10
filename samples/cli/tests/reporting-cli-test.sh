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
    --body '{"actionId": "nXyvCS4h8prFml17", "actionName": "dKlbVkGPUYmgEKPd", "eventName": "O9rCwS3cBQ6PYOmX"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'ascending' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "MgockIgKh7TwAxnn", "extensionCategoryName": "rxPAW3yr4gsmG6vj", "serviceSource": "WLoWIw4Xbk4QWU1G"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "uj1tGEu4t0Ytx0bS", "maxReportPerTicket": 54, "name": "DleJAJJ67TDK3ux4"}, {"extensionCategory": "yLOOU91fkeOGj4Ol", "maxReportPerTicket": 96, "name": "UUstL8F12sc2viZP"}, {"extensionCategory": "6R3bQLtzrcsSjZdk", "maxReportPerTicket": 10, "name": "DCDFSPXF4O9IvHoL"}], "timeInterval": 15, "userMaxReportPerTimeInterval": 68}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["O4e6gUShDZombG83", "aJYFMVUK0Q3rlYj8", "xfFIAWwxoV42rPeO"], "title": "4xMIzqelRFHDQoFI"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'KibQIQwgCVRQw0Ly' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'ZwazNFqvo1TanBmH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'BYdRiOX4dVESBsSP' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["Uv5UimH7cz5rfhQg", "SfaCj6ksul6U06JQ", "Dhuuzch5GbhxxJ02"], "title": "6wqau3oQLeiqg40O"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'CJWuP1EYGLB0Glqd' \
    --limit '20' \
    --offset '79' \
    --title 'ORjgaSGqCFj0jNjh' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BQ10oM02DR3AnKX1", "groupIds": ["pAfk1PKjRm0HaT8s", "syPD3SOG2HrZUjoA", "4VRdsDSZKFAdxABM"], "title": "MDB9WrlntPWqJLKS"}' \
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
    --extensionCategory '9I26uJROAFMBTTgv' \
    --category 'FXurB5EZv92k46eL' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId '1UASKIXeD7Df0ZYL' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'bpCNM7iWOD6u4DSs' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'wQC20uiq6ucWwriX' \
    --body '{"description": "ES89aCENcr06n2c5", "groupIds": ["78zCyHOf7VUYjkyf", "azG8Sgh73NSK2UGN", "LFkLqFcyZyJw7650"], "title": "uOUlDntzeVF4q6CF"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'ukoFOE86wMtfvHwh' \
    --limit '67' \
    --offset '73' \
    --reportedUserId 'SY0U2OZme1M0C0pI' \
    --sortBy 'I125NFhyND7caPaf' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"FWlaf9GfkigTHv9V": {}, "AxIeyz1TGdqUxcUV": {}, "yPzyq5qjSc0pQXz8": {}}, "category": "EXTENSION", "comment": "Kn4Tzc1EHPhUs9lI", "extensionCategory": "SryYPXAoq2W5iUGN", "objectId": "fGnznP1nihql1DZQ", "objectType": "Lnm69b4qMREkP3FY", "reason": "LinjwgZGYF3Nx5yA", "userId": "PrLMQ7X1x68XaZKp"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "MOWhKjdPlY1d1lfu", "duration": 20, "reason": "X6CP3mwfe69f5AT5", "skipNotif": false, "type": "bNwRk5lWGuIhdsus"}, "deleteChat": true, "extensionActionIds": ["wXTssJpp4064saKK", "4k2zYRmu5gEuBuxW", "AWThPL9pVY8AvLgx"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "AGXNwoHb2OWMXw7c", "reason": "oulw2bDJiGHGLHuv", "threshold": 93}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '0SEivh0VWKjamreN' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "FQAo2cfYJAbl9lJh", "duration": 59, "reason": "OGSPcLQfbFc85OIJ", "skipNotif": false, "type": "6DIFxH7GaM09AGtR"}, "deleteChat": true, "extensionActionIds": ["HxjdciU5TDnAJ0Vb", "bXy8BRqZ5Gp1pB7y", "SMg3fRoU9SLTOo2h"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "nsj4m4OnRgiAKehV", "reason": "XPYvV0A8XWezNZ2Y", "threshold": 35}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'qwIrodwe9wKpFvpP' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'plOvlDYCDzQafE1f' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'O8zOLEJR1IVUTBoJ' \
    --extensionCategory 'CovjhMeFgPQv2ygH' \
    --limit '68' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'u5fgtRFZ7HiO0ncm' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'f2Kj6L4T2tKDreim' \
    --extensionCategory 'yPgcsJUZ2ZGRgB7R' \
    --limit '23' \
    --offset '73' \
    --order 'abxaMlSZYNaGDOZR' \
    --reportedUserId 'v5raNFTu38RhFV5x' \
    --sortBy 'gNHXL9qtxOwf0Jlf' \
    --status 'wpvSuxXJrbgjoR1U' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'sGhbokkDLfjb2Ilm' \
    --category 'DhOGA5BGBqyhu8h0' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'gy0sImZWQHoYJGP7' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'w6H81YJ0VnreEK3S' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'nXnvaJc9xZ71VP0g' \
    --limit '97' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'XKG0X8BJwOLXq9i0' \
    --body '{"notes": "4rz0BC8PJ6e8NjuM", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'SF0nfnAGaVEZ25Vj' \
    --limit '19' \
    --offset '15' \
    --title 'fIOqEt24u02gJh6d' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"QYdkdYKteKiVLknW": {}, "0X781zVIu5wayIoB": {}, "hLIyz6Gp9fZytwzg": {}}, "category": "CHAT", "comment": "RBafUG148keB15yO", "extensionCategory": "onGH8jZ11mIEtjOu", "objectId": "iAdTjrnQp49k6tPU", "objectType": "jCOclaLjMVaiAQQe", "reason": "0UnTFymxJ3QLuzwn", "userId": "HUvi37gQ3hP26Ekl"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE