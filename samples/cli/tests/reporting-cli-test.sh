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
    --body '{"actionId": "gs3X7u35g32TISiA", "actionName": "Dr3ceYIpAPVkZJCh", "eventName": "7znbUyMm3BBFdGkL"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'desc' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "FCpCd4lyw0CutZfM", "extensionCategoryName": "5abNDpHVZmO0ygYO", "serviceSource": "GLDosnarFp9qDzez"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "QZ0T71buYEjgMDSw", "maxReportPerTicket": 94, "name": "XpXFkWnF6CUiJsjG"}, {"extensionCategory": "npclWlB0o8pa6N9B", "maxReportPerTicket": 80, "name": "VqkEDwpHKMvA3U93"}, {"extensionCategory": "JGe8QccKqAnbQdLk", "maxReportPerTicket": 15, "name": "6Z07PAsiI8BmeOVI"}], "timeInterval": 65, "userMaxReportPerTimeInterval": 36}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["ymUb7fabfDVUciaL", "cD3usfuV6DB3M6d9", "wrcvbo198BRUCKrR"], "title": "uGyNirGeb9x37wXy"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'eujiHBhIOkQmr0FN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'aQmhgLQqCvkOp804' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'FMHaZP1MmTeUDORK' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["omoFRBcSfBffFkXU", "Tt5hSF2NBo9tDwvD", "AmpKM20e6RN4HikR"], "title": "xletQuZ9iYWci99o"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group '48fXBsuiEYFpMXa0' \
    --limit '98' \
    --offset '38' \
    --title 'yCqCWW915LKiqxeq' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "igbk3okWffOVoHne", "groupIds": ["ZTtwKjkaUIaMLkTo", "1M4IHLF6UnkY1bHG", "pgldxXgunj9bqgC3"], "title": "Kl0jeK5MPhXCTleN"}' \
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
    --extensionCategory '8SnJBA8DSvlPicfy' \
    --category 'UguZ1yhZYo36zK7J' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'vV5ipLO353IyXc0V' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'xlOPemezzOjKzoIB' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'CO0Koz6euJmyMf4s' \
    --body '{"description": "mReUJPWsupMt1SEp", "groupIds": ["hNeq3TPahll9oiUj", "qypNlyYKrZcawIKX", "CtXIPE83X2km5w0L"], "title": "dI9MDISWaw6n0ecj"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'VOWHmPqO3Tsls3r4' \
    --limit '21' \
    --offset '66' \
    --reportedUserId 'EedlOXh8y0OY77Pv' \
    --sortBy 'jvOfaR0kANx5P3pf' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"CRgCwnhVjyWKc85k": {}, "PjIUOKgt6UTNfWjA": {}, "0l6lBeQGniwxMR5N": {}}, "category": "USER", "comment": "b3QtgAtI2SU87caa", "extensionCategory": "KevZo7fbOEhFw3lM", "objectId": "YkWMOENFQJLhAfUe", "objectType": "yVKE9KKjagF4Kqkx", "reason": "T9z7j3xm6fT0XGqV", "userId": "DsW8O9AJ1lZziISk"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "JmRlYXrdg6CTNxbQ", "duration": 8, "reason": "DR8fXcyPNlNP0nTp", "skipNotif": true, "type": "XX4jfYpsLawBdIXW"}, "deleteChat": false, "extensionActionIds": ["qHc5jaudi68blc6l", "22GgNuYiaFDEMZXd", "ocr7cMABYbmswNIe"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "WVT9hVLWgmjUe7RU", "reason": "xUNWSAq5MJaRbK2V", "threshold": 75}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'r1XuGAnmzJzYr3MV' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "WAYkOTDhBep3mEAo", "duration": 60, "reason": "Tmx1O6hTqjqud4An", "skipNotif": false, "type": "yiN4KFI3Wpc0bCvT"}, "deleteChat": false, "extensionActionIds": ["IeuLdqvhl5FtM0W6", "FirRDjBFW1XDhYe0", "SuHMCnwOSdLWxxeF"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "tUS39shCueU5lNBO", "reason": "1ckpvu9i2uZfG4Fp", "threshold": 75}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'PBLi0aapM30lELAo' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '6Mize4YFMTLDMB97' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '0venwtQtlUTo4pbR' \
    --extensionCategory 'jsUGipPVhysqSwiY' \
    --limit '82' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '8D6Ykz7ftSEBEfv4' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'qwGIRDLE1t3ZYqqE' \
    --extensionCategory 'CmYoQaNbVsbEyE8Z' \
    --limit '18' \
    --offset '11' \
    --order 'IcURZA0snWcAt0Zb' \
    --reportedUserId 'DcxJxGnkwbDUEjTC' \
    --sortBy '9Zbk4KJS4UoioKBw' \
    --status 'WrUhFLkf2shDCGaM' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'FV3vLL9pEcCQSBQx' \
    --category '72mndKN89hjbSxgU' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'Gm7gVMnleuV6fYRH' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId '4HlClsvyjI1CiLiM' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'JZiz1bHlFxopPkIO' \
    --limit '84' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'Jh8CQGiwzAokigfw' \
    --body '{"notes": "xoK6BBFKePt8MnHU", "status": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'JToo3aWfCwnAwXft' \
    --limit '73' \
    --offset '11' \
    --title 'YhsL2vV520U0OgSR' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"u3na7vGjbyJ75tgk": {}, "IkjO5vBOBzYhoVUu": {}, "kF8qqTv6ptDMLl4E": {}}, "category": "USER", "comment": "6KqsjoZBZH099Jrj", "extensionCategory": "3dMaaevyWHlyQjiX", "objectId": "jQWyr9lPhsHBNqHS", "objectType": "jIt8T1ybTPtdJEZH", "reason": "PPrkOtcCo1Htrnxb", "userId": "zCMy4HGdceRX3h9E"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE