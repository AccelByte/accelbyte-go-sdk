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
echo "1..161"

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

#- 2 SingleAdminGetChannel
samples/cli/sample-apps Ugc singleAdminGetChannel \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "DdBGudDsIxfD66Ie", "name": "5dbdbTeNJxIxjBb4"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'sQkb0cdAC0k6vplj' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "wSznfQpD2ynUtRPy"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '1AUlmz7J9gsbb5Wv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Oc3iqwonrpF2FAPf' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SQmnd9ANmVqulJ6e", "customAttributes": {"MwHrgYVS7PmVOLxj": {}, "Be64eSQLEsY0CYxV": {}, "ahOk1kAAlTWmpB7P": {}}, "fileExtension": "EhELv2cYs9Np1Lht", "name": "4QXNsmKLHwMf0UW3", "preview": "EDEZlyja6trUbRao", "previewMetadata": {"previewContentType": "rqCVwXUbRVizNLZc", "previewFileExtension": "W4502zyzVBa4RGdb"}, "shareCode": "yfjHpwsWZLg7gHWH", "subType": "LLEudFcDtgoWuPhn", "tags": ["LzEtzlr1sQTf9xl4", "8pJ3hhDWB34uCUp6", "nIAyaYwe58GA6ydq"], "type": "iPf91xSSs6H7TVJB"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'sKPKUG2btGr6eaNI' \
    --contentId 'Fp4T1Qm4UsdVT9VK' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "hiMb3vScf3ZtCIrr", "customAttributes": {"OPXh9rR79dPvpcaZ": {}, "5Ci4J95AUq3q473S": {}, "DFlVk2CH6QaX7eI8": {}}, "fileExtension": "QS8TEcioLRWCxttJ", "name": "BA1s6t5BtIITnjLG", "payload": "5GYD7PKdQitODM5t", "preview": "JFT8yITPUxvZASOO", "previewMetadata": {"previewContentType": "pZMbJ8vd7uYS9Nyr", "previewFileExtension": "tcMDJ2VUswGTBbmF"}, "shareCode": "1eiWFHSUbJ2tCOuq", "subType": "SkDXxIjd841c3uPJ", "tags": ["ZvSbElje8EKrSWAF", "KsusK8omfkmHnHbR", "aEaDAutkacPaz58B"], "type": "T5Z4lUzu3puW2kiq", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'F2ByzlFkRoigJRbJ' \
    --namespace $AB_NAMESPACE \
    --creator 'elfIOvCoK1YDUESl' \
    --ishidden 'zHdOnR2d4bSsJQk7' \
    --isofficial 'vS6o4cjoHdaFsO5L' \
    --limit '97' \
    --name 'jr9y04IUpmYqpfxq' \
    --offset '91' \
    --orderby 'dGMSn1VuFwm1UFO7' \
    --sortby 'WC5ThysaUK0zDD5r' \
    --subtype 'CDoLaoHrg89yAYl2' \
    --tags '["xQl4JDQoJd5qilZ2", "UTD3BykUyPIoQJEr", "sLuPFZGWrC2Aag0i"]' \
    --type 'k3AeF7L36GL6GCF2' \
    --userId 'mqbsp9bCOeQYRrxY' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '6qHoMp82lDcXvG1G' \
    --contentId 'nU9qTSwZiZJmTcaA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["XbUcdB1ROBlr5cP1", "BMl4I8qUSdZaXNO1", "m5zUTzfF5sxYmtw6"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'FDe7cfDMPsVg38ip' \
    --ishidden 'gl5l7eqgVZJFI1Rc' \
    --isofficial 'MFMpVlA4kWuWFCSf' \
    --limit '7' \
    --name 'e28tgwbfNQhKVmHs' \
    --offset '78' \
    --orderby 'tkNkohP1s9HTmQms' \
    --sortby 'tw8s9HhZ8xB0jTCj' \
    --subtype 'tfKlaxuZO8ryAwhk' \
    --tags '["GrkoqTcety3TcdrP", "Ciaye2JdZvC739bS", "jFyd0iiefyyUxxCJ"]' \
    --type 'boPgUa5yPpG3O0OB' \
    --userId 'Q033dpwx6KghxSZk' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["awFOEi5vzxflFVqn", "zr5CV34hJryLMzF9", "DuidjLFel9Jssd6y"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'DcV8QMFrQxu2jRW7' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '1IvbUOdRpn5pwQuc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '1cU7CF6uoORzGqJ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'Tid7ikWAQlMEAWli' \
    --namespace $AB_NAMESPACE \
    --versionId 'BSkIEQL2mGZtjmrX' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'BobyQWoitZgHVoIK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "InnWPja0KDUs83i2", "screenshotId": "4H8bn3yDUmdLQSVy"}, {"description": "SNlor0fb3kLX3yz7", "screenshotId": "ACmx2lGFSK2oXUb7"}, {"description": "ytGZiDU1pq9pxvGi", "screenshotId": "GjQUwpZaGcVjAY21"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '5a14ukbFCCJOuGzr' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "OUkhAEa8v8T08igD", "description": "ILpQ5cXTWSz4w6k3", "fileExtension": "jpg"}, {"contentType": "UaR56MChCIkL28gc", "description": "ohDd8i1pPEYk7x5i", "fileExtension": "pjp"}, {"contentType": "aDfVNHZFkmKhB2KZ", "description": "9Xt0mxfb2GC7jCRE", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '0HYkzKYRSbKopsgo' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'N0eU1FF19lX9vT0x' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '3oyiKPCiP8hrQXwa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["acW6jm4JwtKlw5H5", "AD7v2HDDN2hhM9vI", "pZQ8AFyqh9FW3YfF"], "name": "QW1VXQ7h8fSAg9zZ"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'EnwcjjNNMIxdmn76' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '1254VapPJgZimaJF' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["4MuvzZJMRcb2aPBU", "GK8mlmRvwCqa8uVp", "VO5k8qbvuF5JTzUr"], "name": "SwQvMAv04qZ4J6FS"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'Hehj1uR3fUhxNFUV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'cLu4eFo5X9Kqvu72' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "KqBrnHB1mVbiadcU"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'RImfxiOSLFNGZuCs' \
    --body '{"tag": "eltBsk52Cso7UnMt"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'SGCJGLlYTmA0nekf' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["dc3EJv3sDUULnE6r", "AMqiX4M5T8D5CeGa", "NmCqgOu2AKIJ0GAT"], "type": "JqOjMkYHbIREaKUp"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'WNLkxKapk2tneo0P' \
    --body '{"subtype": ["KTjj94eY2D3R9WgX", "zs3QpJeWF4elhPxQ", "qs5eChwBn1gJyyVj"], "type": "jlNEiHskIuBpW6Cc"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'kU3aUIG3A8TCP0Gc' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'kNBjiJ9OuLVL5Esg' \
    --limit '67' \
    --name 'F0078Jx9Cp8eOZmp' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'rNeKiBVaZ7zyaLFN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '3MlxL2Vt6WNA6rVO' \
    --namespace $AB_NAMESPACE \
    --userId 'eKi69PusXDBl6E7i' \
    --body '{"name": "LwjJ3rOexRnRquPp"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'FC329gcW1lJ6B7ds' \
    --namespace $AB_NAMESPACE \
    --userId 'Yzyv67enswRRjf9b' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'lqoZz5gdrLNF9OLH' \
    --namespace $AB_NAMESPACE \
    --shareCode '7CFBrbMKu6WjBgzA' \
    --userId 'vreslXHVGu5JEzus' \
    --body '{"contentType": "QELa5oH0YVYOPR8D", "customAttributes": {"Zqv7ECMUSHEuCD8y": {}, "K5bva8bVcQOAj34o": {}, "GV9PYA3zQRFT4wkb": {}}, "fileExtension": "qtcCimq7VJUg4Sht", "name": "DRTfdMbN8xPedu77", "payload": "7JXXdshedZFEv63I", "preview": "hyfZhANCUySgahIX", "previewMetadata": {"previewContentType": "bxa2K0ci4WM5GEys", "previewFileExtension": "xyehI2vF3tObz6bE"}, "shareCode": "gotZyY12JiAyMgwl", "subType": "5m3dQXdtvnbVLQoD", "tags": ["kCHxTPl4gKSbC2br", "lrVeXy2sXbLDb0Wc", "SuKg3GCS4KShBeeg"], "type": "RjOVEmvmywK3to9k", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'mezXT5FmTiQOY7hb' \
    --contentId 'gEJzGs94nKUjgZyE' \
    --namespace $AB_NAMESPACE \
    --userId '6xBRXmLI6oDsXr3o' \
    --body '{"contentType": "08PDQRqeWNs1Wn9D", "customAttributes": {"KELpH2N1UjatwUyP": {}, "pf4bbyRnbIUb05ee": {}, "NtRBkxyN7PfL3nrh": {}}, "fileExtension": "NlDAGGGoLjrI8uG5", "name": "VqitFs0wiKReJ8Qa", "payload": "Jtqdt5thya7sMFVG", "preview": "A0BLrOjBsEDEV86M", "previewMetadata": {"previewContentType": "KkQTF4TBW4vs2REa", "previewFileExtension": "Dhq6ARer7DZiNWEo"}, "shareCode": "2qdnZNiVxKGXMvLh", "subType": "dGxFj8p6XkOKFca3", "tags": ["mSLk676g9FmUSOVA", "CehKT0OZpQa2W5Md", "AAy0RY288BzoownT"], "type": "bjZN28yKmUVMLMlC", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'giXB53QsR27f8qAS' \
    --namespace $AB_NAMESPACE \
    --shareCode '8lUtOmfAlxUaX3R5' \
    --userId 'Kkne2dP3OAmlippt' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '6YrDed1qn40yE1d0' \
    --contentId 'x9JTDS2Ms9yHeJno' \
    --namespace $AB_NAMESPACE \
    --userId 'N8fqp46N12FgoXYO' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'C9cio8S0XO7Xzl9D' \
    --limit '12' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'C0ma6yEXpAxDNTjO' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'oY3UVgSDaIRiXNSA' \
    --namespace $AB_NAMESPACE \
    --userId '2BTIGPoYXdQ7ukMC' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '1mnxQn9mD6KqmlHC' \
    --limit '50' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Zuh3eToq1RrmWa7p' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'gv9nyXnsPg3xw2AN' \
    --namespace $AB_NAMESPACE \
    --userId 'F9oBTIrTb4oPsALn' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'BE496iqRrS59QUnq' \
    --namespace $AB_NAMESPACE \
    --userId 'g3hEQZHNUOixMcDc' \
    --body '{"contents": ["4XjY6zZjARykhSAF", "rW0hL0y8vJNATBua", "Na8bxECVdc9JzCtK"], "name": "ixVz2CtKwBr8UHBi"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'g82ivdeu4rsO54gX' \
    --namespace $AB_NAMESPACE \
    --userId 'iJewpOcTU3xUd8n4' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'aUd8LnCVUHQj2smq' \
    --namespace $AB_NAMESPACE \
    --userId 'x9BQuPDuRIBtwCQe' \
    --limit '65' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'T7hQpnBK8vYajM29' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'o9AJ4OEF3jIrt2z2' \
    --namespace $AB_NAMESPACE \
    --creator 'ZpB8LXWWwP23VpKc' \
    --ishidden 'XfUHGYkPcEgr51zk' \
    --isofficial '8JPdEbsJScVaP7cv' \
    --limit '63' \
    --name 'CK0QFjgeAyPs0Xfm' \
    --offset '28' \
    --orderby 'mJgvN8CWyAsDbJPH' \
    --sortby '98MqhXedXWkudnzN' \
    --subtype '17trpo4bzpisuhR6' \
    --tags '["pFoSQeQSYE5qPXQM", "BKk9S8mStm6gTPmG", "b0kMhrDGWOx1OmMH"]' \
    --type 'B55QIHTRNzcHa81M' \
    --userId 'U1TayOS8rLIhrBGV' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'VC8fFW1WqjhoIgwh' \
    --ishidden 'OgekPPMmFFhVbfcs' \
    --isofficial '31M0D1qGtLAuSicF' \
    --limit '84' \
    --name 'ZXrJ8M4BQ7NhElFQ' \
    --offset '27' \
    --orderby 'IpqYsAcpwq7WEYvp' \
    --sortby 'zcnq94SQdth8xUzZ' \
    --subtype 'vAS2D2yN0G8xyKE7' \
    --tags '["h5D2KcG48UOta9Fc", "n70rJin5xg63n88Y", "ilMuZ8aCzX59QtWo"]' \
    --type 'p8WGzlkjOoFdwFVq' \
    --userId 'fRLuaRXcNVynXMMm' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["meeKHbAxmLOapSPT", "TqLC8tqLCEbLVHBh", "mmMMBktMwqBsqYSL"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '51' \
    --name 'X0qs6WDOi5xd91fz' \
    --offset '78' \
    --orderby 'NOW6npJfljDyrE9f' \
    --sortby 'r660rJwQUB74h78W' \
    --subtype '5BZMqa04zcxZcs9a' \
    --tags '["0zCZ0yU3WHSF0cMa", "3Px7gzBpGTECodiv", "nVMblGOuWGI2K6kc"]' \
    --type 'sjVaef1pswH0rAKQ' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["0fWO95acpKGOKmFM", "QfcCgXOG8bNnb1Fi", "A67fBHf1mHtSqc3b"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'OiMorUQhYPz3SIVV' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'OvNcfVbJijZUjNtM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'eu7q8005QvqK5aJc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'JOcmu1yuPS7etQuA' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'gEd6CY8KQTxAcCKW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '11' \
    --orderby 'QjoXNqeOaNWDqCnZ' \
    --sortby 'aOye2wqKpoMrr538' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '5EsjxDTuSn82Zl1F' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '0rgfjBWY0PoRe77G' \
    --limit '54' \
    --name 'OVdA78lfuiN5gU7k' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'mAoTTXF1vZU0negS' \
    --body '{"name": "QTELLe99FKIQSGNw"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '1tHH3Fm95CCdRGqf' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'DW71LksVv4BOJwPs' \
    --namespace $AB_NAMESPACE \
    --userId 'QuyMEl1v3NN6SciG' \
    --body '{"name": "qQGUFZAmWU3xgmD2"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'K9XehAPUHOQMeFh0' \
    --namespace $AB_NAMESPACE \
    --userId 'V7LbdsNzf67Jm65x' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'bIMc0MkLstMAZP1t' \
    --namespace $AB_NAMESPACE \
    --userId 'uTHgqpMkejjQMNKo' \
    --body '{"contentType": "gfsfr057NmCLFNVd", "customAttributes": {"DKKFzn8Z6hrAw1li": {}, "g4FDPmq7g9AkTnBV": {}, "il9eYtsTNFfV8X5J": {}}, "fileExtension": "E7PSZ6ZFakjF0Xoh", "name": "ycYozgfE2C2wVWij", "preview": "D0QthMBoDuOgyvp5", "previewMetadata": {"previewContentType": "vSCFaZ2nUUHcBh6c", "previewFileExtension": "MNLKz6hTRZ9tylFf"}, "subType": "dvNsN4FvWr0WHUep", "tags": ["6NqqU4zmiC7rCAlH", "j9cm9ZXWTcLMLdJR", "jhYJsPEEKbpys7vR"], "type": "fnmuIpZGMgxl7XeZ"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'WWs6jB7KS3LJzyVp' \
    --namespace $AB_NAMESPACE \
    --shareCode 'YVeMOBkdic3ynLax' \
    --userId 'Q7PYFebD0CNuwCQB' \
    --body '{"contentType": "rZYgXlSyyb6tcaH8", "customAttributes": {"Rdl6YzoROc3mQt57": {}, "wckfrx8UXn5GnyD7": {}, "vzsVcwglPNLAyIzn": {}}, "fileExtension": "YXUkgXYAXq3lKjrF", "name": "Gc7XKPK0DX02b7Cu", "payload": "O01RFeAKsIYT2QJV", "preview": "TMtah4Ns47KebVpe", "previewMetadata": {"previewContentType": "twWXiqMMk5zsGiOi", "previewFileExtension": "KRJPi51nQ2j0bCZY"}, "subType": "jwSoqRKi2tRGiN84", "tags": ["te2pNNWpqwq7HaHW", "GhV3mYXTQj2ViKtX", "DySgMvZBb47ClUb0"], "type": "F3zYFnCpUpFi48IW", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '1oJ5ROxzAZs5FZot' \
    --contentId 'AFTUzojc0BrsUfVP' \
    --namespace $AB_NAMESPACE \
    --userId '33rfKT240kvPzs0f' \
    --body '{"contentType": "gMuTw4YYzXDL2fTn", "customAttributes": {"N6zhfZs73X61nD3N": {}, "ytp5jBT6vAV7Yw8M": {}, "CyocUAmMs7ikCCzJ": {}}, "fileExtension": "CePO5uxgx9ZFfQVT", "name": "517ZdeVMUEH87iry", "payload": "0wWrtyqDJ1TS38A4", "preview": "vVzYGxmhBfVhwDZA", "previewMetadata": {"previewContentType": "cF7zlIQ18EOI4PLD", "previewFileExtension": "qsW9DqRdKMt5L3oi"}, "subType": "aNfx5pvhEQAOKrNk", "tags": ["vXQmM3p8M6unq5sg", "IXaqltABv8iDPLB4", "AA1CEl0Wsi8NIvse"], "type": "w24EecRooAIX8jyc", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'iv3BdIFfkT1NvLBO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BKxdgn5t2Heyy4Bd' \
    --userId '2KNxQBINHjvl7tWI' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'wE1G2xs7aJBZSqsl' \
    --contentId 'xxfbfk22cwBmC8Iz' \
    --namespace $AB_NAMESPACE \
    --userId 'K4wADAYAvY8UYU9v' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'R50BwqRe3JzCvDjT' \
    --contentId 'ZHhnPJfK0gEQBJUu' \
    --namespace $AB_NAMESPACE \
    --userId 'fVGgoVM0UORKmRjw' \
    --body '{"shareCode": "jt9pyPVEBpMvMt9F"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'ISym6pNjKkSDL4pJ' \
    --limit '75' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'LtYdDembNds1GvYj' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'V2sNgKrJJv63reOr' \
    --namespace $AB_NAMESPACE \
    --userId 'x70uvis2gZIR8dWO' \
    --body '{"screenshots": [{"description": "uCNr2b29ChswdQwj", "screenshotId": "UhnnJxbzNPpgH1qh"}, {"description": "LaHGAvmmjYdMQUNM", "screenshotId": "drkbSHUbp8oRvegT"}, {"description": "C0UJX9CG1XtsWCkz", "screenshotId": "TRbr97VrgJV151Fg"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '8ln2Xye58EIpyKlr' \
    --namespace $AB_NAMESPACE \
    --userId 'exj9I7Nsov0cwd0w' \
    --body '{"screenshots": [{"contentType": "PJmGdj7ctzjdsMSZ", "description": "sLdNh5VrJq6Yvl1l", "fileExtension": "png"}, {"contentType": "IJs9dgE5j3VniI0l", "description": "0u1rHOcp1J8KrqPs", "fileExtension": "bmp"}, {"contentType": "jaoDHlMjUBi72gKC", "description": "Oo9yg7sKh6sHK643", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'J6CGsPNAwxnyLBze' \
    --namespace $AB_NAMESPACE \
    --screenshotId '5KVi3C9WRqVwA3Ws' \
    --userId 'PlWo75q43F2GJ2OS' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '8xKHfgICl3lslMIo' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'xqex8YVsmi7I9rDo' \
    --limit '92' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '7zgevh7FHYbb9u6I' \
    --limit '13' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'VErhzwo6UbmUkbUy' \
    --limit '33' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '1SDhUFxtMkIjHOBX' \
    --body '{"contents": ["QMfTKykQMolsyCQ7", "U6Futl62s6IwKmBk", "lW2WWSkbHPWck95U"], "name": "WbFElYympzibZjIm"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'WwAfjDDdzNmwBmgX' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'T1ScVYMgYG8emtdi' \
    --namespace $AB_NAMESPACE \
    --userId '0n7d1GqECUBSLr9d' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'VQTWdguTYxSDukm2' \
    --namespace $AB_NAMESPACE \
    --userId 'ymrHUehCZMijEU41' \
    --body '{"contents": ["VqOOLIY3JvV3I0QE", "RcQmHuNH1KhrgcGF", "DXGuqVKwS31B15Su"], "name": "G3gQ2nFDrVRTorLp"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '0wqoxhPenfTRbsip' \
    --namespace $AB_NAMESPACE \
    --userId 'Fsie1k6z26yAC5fn' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'OvW9Yq2RbyCF5tH3' \
    --namespace $AB_NAMESPACE \
    --userId 'WRTdChEkUryJs0KM' \
    --limit '98' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'SVJkY9VeNgpMa7Vr' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'HscZyrmRQs73BtEy' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name 'pVCzoXzHCwkbaojy' \
    --offset '6' \
    --sortBy 'JrBVL743ZG16LxaD' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'bHEJoblIdxPMuqyV' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9UvLN6vmrs5D3vgG", "customAttributes": {"ltWhjkYsOiK2QocW": {}, "Qtr99xjiEvLjyF2E": {}, "uSdQK55ALrnfTuR0": {}}, "fileExtension": "yNOooCJ3WiJndttd", "name": "AnxrvIN7bGQmZKaT", "shareCode": "CYSTes7UCWR4NsOY", "subType": "0p5Ymk6ozORc3VRl", "tags": ["k0UTQXqJlXMqPMuy", "XPOTObKeWWoSxroT", "vX4QByVjlsBxz2wo"], "type": "qJ77oGgUkYre1yye"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'preDBoQkBMElnYOd' \
    --contentId 'Nbifzub92piIIC86' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'GSptEOQWVMesMSBk' \
    --contentId '20s0tj9iRASwTENN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ehjkR6QDuTQ1EVhF": {}, "oFH8raAkATkbhqqU": {}, "9DJiLWowaCYUoV9y": {}}, "name": "PjEbuw6IUkMo0PSn", "shareCode": "3o7U8koJGwQxl7bM", "subType": "KuGtTukkWjI7WT7o", "tags": ["DUrZJvdthTUw9qLZ", "bJpn0hNYsLr7Z41z", "qqwtdUoyFG0uILBH"], "type": "9tGaCnqQR9pmbRXg"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId '8agEccLspbtRyKca' \
    --contentId 'NBZPhpsHVKAytNoX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gQoaP4D5OisxSwqX": {}, "Q17OHzYdzk4UWUlX": {}, "IA98jXg0KLTUE0vY": {}}, "name": "exGNLPtKHUBdwh6y", "subType": "fOyUUPdde21OAFmX", "tags": ["vNs1bvst9nRN65V7", "qBTLbknnWELKumbF", "NlSgwMlxGVT4qNSL"], "targetChannelId": "nUpUT0g010pJGYkk", "type": "gkrvxkEFMNbQpd7N"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'kRPagRic9WnKt6q5' \
    --contentId 'mDKzM1omLY3aLIsr' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "TvpuemJQrEEjaWOZ", "fileLocation": "4HAqW7cu3yZSQlrZ"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'nY9cXlMjKWvOtN05' \
    --contentId 'FyZZwxGBVW2XXuhP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "dA5trf1AGQ1IfZqL", "fileExtension": "6lQUj9MkPTgN7PFA"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'KSgjT5sA1ZwCICAo' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "cJYojSdlgmWyTgTB"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '9' \
    --name 'RqwtrHD6xpgWENb5' \
    --offset '32' \
    --sortBy 'Km5lVLJMRRFUqj6Z' \
    --subType 'eMDUD2MbCtZuTtbq' \
    --tags '["nDtT2xLdDSDfMYJB", "li9gwa8T122I57wF", "qlxqRaCrlUfW9teS"]' \
    --type '5s7rmJ9ENbVhM62f' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["zAynSiNDCX4rWONY", "F5hTYnpHeuxQeYFD", "t0J22ENcznbnsCyX"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["DLuWtvRbO1oJPNEO", "7Mc0hiquiaN3zkBZ", "9cDnoVw5wweHEtSk"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'NNnR0Xe0FreT7lWz' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'b4M2H1ZAN1yqYRON' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'VmSLjqlOkTI3Nt5T' \
    --namespace $AB_NAMESPACE \
    --versionId 'IT7uz8niok5yDLoM' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'oDt77zgZ7eMVn4Hz' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "rh0pwm4ekwv5SyOy", "screenshotId": "vnZuqjshrJAAiYHq"}, {"description": "OxvAmWrBhkGIx7Oy", "screenshotId": "v7I16YLTelOZ6v6i"}, {"description": "ad080FJXu9mSTQ86", "screenshotId": "tGaRyBsYE024XcLb"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'DYYib8EyBYXLyOs9' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "EKIUYlOPgAuSGf0j", "description": "KFGB2jFjPo8H36VE", "fileExtension": "bmp"}, {"contentType": "xUhuO8lOtDGGcZaZ", "description": "bClr4zCj7oVYIIRc", "fileExtension": "pjp"}, {"contentType": "ayYU6HvO9t8gOSyP", "description": "aIdnlV4G5ZDGzsk3", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'O6NJDtnGrS4s1gSs' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'LxGFnpytJrMJDKub' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'zKkYtXhg03y7QYSu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '2hcDotYWto1jtdGT' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '3' \
    --sortBy 'MIaEQ4Zm7SjBpnU0' \
    --status '8ClPZtrdMZoR9mQE' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'LXBrPaiGJxcmFfsH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'FchWr1LecU0G7gJX' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "TvNPQzX0MeAyYn6p"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'lTrpV2K4XiDYuEwY' \
    --namespace $AB_NAMESPACE \
    --shareCode '9vFbMgVbu7u7RzaF' \
    --userId 'faZFOdlKsDtE9r3F' \
    --body '{"customAttributes": {"QRatLYumocawxQ37": {}, "2WYfmDVfIK3EJXe4": {}, "Oeb0Hxw8g3m1WzAA": {}}, "name": "1NTu2YPEs1MsThQK", "shareCode": "qxgUnjbHg2n8fehD", "subType": "UD9Q9eIRxVN77Jqz", "tags": ["MAyLLeX6rPnMRPYX", "9i13WDdOAG4v0n0J", "VYqzx3mpEovUJStj"], "type": "P9pLkKlDSnBydnC4"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'AemTuKJKPv1kRxSp' \
    --namespace $AB_NAMESPACE \
    --shareCode '9ctvePz1VXzN7CJk' \
    --userId 'emBcXIIShurJAI9P' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'hY1apwmgbV6Cl3Y5' \
    --contentId 'aA79E2crH3qaP1aS' \
    --namespace $AB_NAMESPACE \
    --userId 'aTkiQ3rXcjiWh8W0' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'oeiW14vwm3Yr4IvB' \
    --contentId 'fbzfkqZtfr5ipnFh' \
    --namespace $AB_NAMESPACE \
    --userId 'Ai58g79DOsJStGP2' \
    --body '{"customAttributes": {"6gyQ41mzDQcAfoW1": {}, "ZOEa5mTIkiFEFPjl": {}, "8YP5c0oVa8ubrd63": {}}, "name": "S5aDDr2ek1e0zL8V", "shareCode": "T5wKAP0gvpmD7DTb", "subType": "ioPxFDxQyrTx06Uu", "tags": ["fEB5V4lOfTkwkAMz", "0H90TwwhHFTS9zat", "idHMXcQPEfx1tlC5"], "type": "chxIj8Wc6LtdKvXH"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'OSg0mZ3DCXTv0Yb5' \
    --contentId 'eFP4GZA5OQ2OBsb4' \
    --namespace $AB_NAMESPACE \
    --userId '3GNWeTZTA3huXS8H' \
    --body '{"fileExtension": "5psHTOQPYn5T5ymD", "fileLocation": "K3b9EZMmcmB0XzGO"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'zTZ8HbCSrLUsfAC5' \
    --contentId 'w7OnEJN3sgva2Rqk' \
    --namespace $AB_NAMESPACE \
    --userId '1rr9e9c7VVTvPKPd' \
    --body '{"contentType": "oLgvvtidWzXGNCiE", "fileExtension": "r3szJjJZ4DmIXm1o"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'FWp9yQA6UqRBRvua' \
    --limit '64' \
    --offset '53' \
    --sortBy 'pjk8vyTTNbGW9Ufl' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'DhVWTg5BOObzLNH8' \
    --namespace $AB_NAMESPACE \
    --userId 'SixZg5m9M1eBeUxg' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'C7QxOh36h8HGokCB' \
    --namespace $AB_NAMESPACE \
    --userId 'h7kvY7002DHDRbGk' \
    --limit '4' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'jpy5nlKoektRayVK' \
    --limit '16' \
    --offset '59' \
    --sortBy 'Y7KRcScmikraBcrk' \
    --status '3t70E0DQx7bt1wMb' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'm2lVWhngMCGidTpv' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'U8Lb4IrUAJDcCDkc' \
    --offset '6' \
    --sortBy 'EovxbUhU0gcqJ9JT' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '100' \
    --name 'jNJJ8IR2iSYCk3j8' \
    --offset '15' \
    --sortBy 'S4sBcm4UyOZYVkAo' \
    --subType 'x7HSOBpeqLd96B9N' \
    --tags '["4ZP2G5XXZRmuKzoz", "H7SvzoiIhAXRsiVq", "su5B5hxHG16YJBir"]' \
    --type 'n9dxePpkSf97l0cl' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["v6jTfeTItfjfLLEn", "DNABDON8vCbhzgaR", "gih9OHSO7ffdBkjF"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["e7NzS8TK3NPtdY8a", "or57yEHhXNDt1hQI", "E1ktRK6lU5EoqMKP"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'nHEQpU8uiGgd48Kq' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'mDTF6KxUivMN82fk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'Sc3CRcrwclaTjaE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'lv6ysv6nuKXCHf0x' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '87' \
    --sortBy 'jqqJ3n4h4VY6IDuS' \
    --userId 'rUAbccvSlTSdg2CT' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'IuRqeqMl0t0fEXmm' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '23' \
    --sortBy 'T0H4ysaxuPmzxbNl' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'ZN7VlJULx3OV3ElG' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'Sw2PqpZeCbJoBdM2' \
    --namespace $AB_NAMESPACE \
    --userId 'WU5HilwCmRkfljJd' \
    --body '{"contentType": "3qGi3FGECshT1dBM", "customAttributes": {"Hj4YAV89HH2j05KL": {}, "k3o7WGElpyRZSgeN": {}, "VLQ5XGcjBEyWY05z": {}}, "fileExtension": "XibmimRStF3cXxmW", "name": "avnYsZmfBWnH8clS", "subType": "HuTwgi5Uq7IkbXfn", "tags": ["qGgQM111tFptZv4o", "fxH9O1TH09sksF0r", "ac6PGeJaXANzenJH"], "type": "onG0BqM8uQNuiZHm"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'OBQwN46cyERDphUn' \
    --namespace $AB_NAMESPACE \
    --shareCode '7NrMIPjKzJXNlTnt' \
    --userId '4cDLvOoUw0mppYQQ' \
    --body '{"customAttributes": {"jKJmGlPn9akG25jc": {}, "MtopoZrynTm8Sekf": {}, "hVp9cDIav8Cs45TQ": {}}, "name": "IXwj0utarqx5UgJr", "subType": "CwAjY9i18EPJiU7Y", "tags": ["87V5dzzGRgOsQjG1", "RN8z9smZjx39wclC", "HeKGuZb9w77jwsbj"], "type": "GQyVzJAvu5JvS0H8"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'kFfy1tw9wI8sKXnU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'YMAUIvcWCMTPRRCy' \
    --userId '8gsznKAmJoOLnrFO' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'kovIzOvF6sJYLu7h' \
    --contentId 'fpFDHwoMGYRFIsA4' \
    --namespace $AB_NAMESPACE \
    --userId 'KXkrL8r5nXrfROgn' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'g6h55SUJ9BH9hCdT' \
    --contentId 'oUttz9mamW36I29c' \
    --namespace $AB_NAMESPACE \
    --userId 'mVvYXTNtvoGRxB57' \
    --body '{"customAttributes": {"pIZ9dBMESyHIF60I": {}, "Bgy9BUFuI6RalM8H": {}, "khBFR5k9ZXkJHoto": {}}, "name": "OCCY0wZSBlQ6RVIf", "subType": "iuj5hhjNe5XFjDyd", "tags": ["6KWJOZZMrDZ2ZtDD", "uYCrpsQzfII8rOwI", "qwPLSg9ibworJ3tW"], "type": "2uLg5xIcOWe3k8s0"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'JfeE0b8aOo1C0SpY' \
    --contentId 'oYZOywo6oMWxuG7n' \
    --namespace $AB_NAMESPACE \
    --userId '2Mj5i6OWBDdmg9rH' \
    --body '{"fileExtension": "JF2P77ZVi2KmUm2c", "fileLocation": "FmLwgLfRWZEFsF8M"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'S6O1h2O781LLFPCI' \
    --contentId 'fPsjbHdJMZDNKG8y' \
    --namespace $AB_NAMESPACE \
    --userId '0NnkMLEOIOInTRaR' \
    --body '{"shareCode": "0bBadzNP8q5HMte3"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'jGMwQFus7S2gFU6K' \
    --contentId 'spNTrEjgw8VbJyPg' \
    --namespace $AB_NAMESPACE \
    --userId 'FPCqV2zXKJO1m51E' \
    --body '{"contentType": "LWakzCyWssbDBQko", "fileExtension": "dhOJxP7y9jX4x3UI"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'S6yCMar3fnxr62iW' \
    --limit '32' \
    --offset '85' \
    --sortBy '51WZFqauIptwwMXH' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '9JwNrZmKax01VK3h' \
    --namespace $AB_NAMESPACE \
    --userId 'vAUth42JqVcjrtQq' \
    --body '{"screenshots": [{"description": "6sEywbgEZe69Kkmn", "screenshotId": "6UJHSW0io82QLKud"}, {"description": "rW0Jwm24R8OGnCy6", "screenshotId": "KvV3kHWOlNFz1PrH"}, {"description": "6AlY8T1CTKksukke", "screenshotId": "X9JxM0zDPsLjS67q"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'UEhVuorlj9GWFW98' \
    --namespace $AB_NAMESPACE \
    --userId 'AbYtfZ7kmp6RDlv1' \
    --body '{"screenshots": [{"contentType": "zu1VIlc3HyZG9zQd", "description": "LbSPYu2o9ZMVMUEd", "fileExtension": "jpg"}, {"contentType": "v6CIQTZW3V2Kz9bP", "description": "1Vyzx5OZ3w9Wp8Ja", "fileExtension": "bmp"}, {"contentType": "pPE0ad31QfXjxypb", "description": "zGJrvHdc4jeYtHlS", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'z3LP2MKgOcfamBfE' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kAUbzA9EsSkA7taB' \
    --userId 'LFdLL4qB79BIquV8' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'QAyGRkmzxLuOdnzc' \
    --namespace $AB_NAMESPACE \
    --userId 'q3XOCq0GINwr7eRk' \
    --limit '45' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'wdoaOveruFfDWGID' \
    --limit '91' \
    --offset '43' \
    --sortBy 'vpFz4fln8k8Fn7xa' \
    --status 'vU5hKWg1Sur6OdXO' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'Pmn8O6iSsxlNUKLu' \
    --namespace $AB_NAMESPACE \
    --userId '36thbzUOGfpclCTn' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'BbbovnURJMgyvuXS' \
    --namespace $AB_NAMESPACE \
    --userId 'hsOy9j0ZVrlGImZg' \
    --body '{"fileExtension": "6I4746pyRuB9M0b1", "fileLocation": "1PnculvmI71L9Rrq"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'BqFp1LqNfVbfL9Ue' \
    --namespace $AB_NAMESPACE \
    --userId 'Zj8RgcTnQv353SiE' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE