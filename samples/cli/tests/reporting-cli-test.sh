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
    --body '{"actionId": "zYvOg4zg623RvhYZ", "actionName": "AhFS5pfsuzgRC2rr", "eventName": "LUxZRJXEvbyAcGVm"}' \
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
    --body '{"extensionCategory": "uagGKbsUHjhwF2nB", "extensionCategoryName": "vu0XVaT1HZUt2Xff", "serviceSource": "D71gFHTUtdRv7waT"}' \
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
    --body '{"categoryLimits": [{"extensionCategory": "mrzbOLe30mFUGa3p", "maxReportPerTicket": 80, "name": "j8duZv2ju3fnTyZF"}, {"extensionCategory": "wOdPLdFleokDnWhV", "maxReportPerTicket": 56, "name": "pV5tr8brMtpOcpOu"}, {"extensionCategory": "w2kd37bXg1IoMla8", "maxReportPerTicket": 11, "name": "WLrDLNBxTLOKIWYy"}], "timeInterval": 74, "userMaxReportPerTimeInterval": 51}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["XNzs8EkrZ6YRjLSD", "YXMz2myzThHG9Ahk", "yEHSglccRV2SgCjz"], "title": "i4tikGoqXoXtgGCT"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'T28nU1dxcZCOSCzA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'AiS2PA2679q7Acns' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'OGiQuAoG8WvdJ9JN' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["KJqRigVGLQUxmGbs", "sFBGTuzyEOydJtnK", "gvgIUlYLfnkrjPRr"], "title": "n2LcoPi7wOm0aqCQ"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'WjsH8TQx5gwveelc' \
    --limit '29' \
    --offset '48' \
    --title 'P4CVcjJlYRxtDxMk' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "chbChBUL6ivpVFff", "groupIds": ["YJIfLWqdDTk66w6v", "0dRfbdXqKp2WcG3g", "Hg8ElJIvvtdwAbum"], "title": "ZNDVN8wNdP0wKfIv"}' \
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
    --extensionCategory 'mxZJXrVE4KFC5Twj' \
    --category 'PI3Esyd3x5jKrclK' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'pfZoGnnQOpg6nUMj' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'VWVwMupCyVAM95vt' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId '5tlBmxqE8hPq4evZ' \
    --body '{"description": "EVFKFNvhFDFXKUx2", "groupIds": ["41piGWJs0z6333YN", "Ra4H0t12srzYlHoI", "wQhTKAjbKUV7L8ZS"], "title": "9tqW55iG8vzBhdQO"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'tZVxpKUqec7iMlbV' \
    --limit '11' \
    --offset '0' \
    --reportedUserId 'i2CiezFPC8GwVIJI' \
    --sortBy 'zAf7dg2hfeaXZ6Jq' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"M6B2xENF9UIRNxiE": {}, "G2OUxRsoah51803y": {}, "kTVoGo4NSYRTdnwa": {}}, "category": "UGC", "comment": "1WVqmXVs3Uh10khH", "extensionCategory": "EeLw6Tu4bpWx2GG4", "objectId": "SYLb5ZXZyZgb0XEV", "objectType": "lTp71gTnWl6nMkgS", "reason": "h7cNUs1WVoVGBAb9", "userId": "HP7R77ry70shy4Nw"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "1FZxnzjzBQmQQHz4", "duration": 32, "reason": "h7eDshuV23ttKMqs", "skipNotif": true, "type": "vMfN6wWPy29ZtAdQ"}, "deleteChat": true, "extensionActionIds": ["TLTgAMe6TaynzInZ", "337g4O6dkwhpUtH1", "y9QJmEOmb5SDaezW"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "TwbqTxDTIIi51oAp", "reason": "payGjbh10dT0O8SA", "threshold": 29}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'Pwbasx4vJau59X4D' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "s1OWsM6mNPZpJVO0", "duration": 58, "reason": "vuxjs4c6zH4XLEM9", "skipNotif": true, "type": "JdfYPx8vvHCnXy1E"}, "deleteChat": false, "extensionActionIds": ["Ko7H1vIoKlMfy4Da", "dA8aIPv5uuhPFDSI", "XRJ7QdCbQE2GkGuI"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "8tw3y5qemnboXknL", "reason": "2V48jQlZ2KDPk8fP", "threshold": 57}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId '98XPTRmISUVLYhaf' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'rngpt9L2cv6fBCwq' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'NI3CkapIo0CXObhe' \
    --extensionCategory 'XRm36shgg8TjJRaN' \
    --limit '54' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId '2VgB5xQSRBhznR5Z' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'fUzZI2c5bP6WurWP' \
    --extensionCategory 'xEGpI59lV88aVLWF' \
    --limit '79' \
    --offset '16' \
    --order 'mN24PO76rUo5JsvY' \
    --reportedUserId 'nBX3jWndJmfPmgAI' \
    --sortBy '3DidgSxIOx8vRjFb' \
    --status '9h67Rtx9kkMfW2vq' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'KQKJVQAn65DPQRRB' \
    --category 'RmqhfjWQO7fBF1hB' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'CC2PXiCNAqGvZnkA' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'QZDGFw65OL0aygzW' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 's8HkXNoYrjTzaRMz' \
    --limit '21' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'AzPEFcc3ueM0gMeD' \
    --body '{"notes": "5PGiyxzGDUpbLjY2", "status": "UNKNOWN"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'qgjbR6VknFnITCf6' \
    --limit '48' \
    --offset '23' \
    --title 'lHMts7j45CdFuIWg' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"lwcWLtyHgxZissKa": {}, "PJpOxFdViao6gLlO": {}, "WzbWv5uEa3j4Lo05": {}}, "category": "EXTENSION", "comment": "biTF2duDnu20vc7p", "extensionCategory": "ZqLGTCzFKSDFhlnn", "objectId": "ZtRJU7ElgRhHb0ma", "objectType": "CuP8d3mg7LRXIvN1", "reason": "6nVjTP2IphPaGSYx", "userId": "rYIQ9SbM8jXm4WYm"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE