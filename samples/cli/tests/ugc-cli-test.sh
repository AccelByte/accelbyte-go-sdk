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
echo "1..97"

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
    --limit '8' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "C6FuHYmhYnEJq7GS", "name": "5a94biyB6dghwswZ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '2zKxLZPOfkaLmhOe' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "pSQG2GBWrzRS72I2"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '2dBOHO5NKxbxq9rd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Dm5otXQMWZe3wwkd' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vxK7iczWbMsMDedW", "customAttributes": {"cnyQRcXgY33a5ajo": {}, "Kgo4KGR1dMRagznG": {}, "JCMpDrnA5eSuSQav": {}}, "fileExtension": "pO9GJlypmuZr5Zvz", "name": "zJE4WUubWQZCAVwP", "preview": "B9ICYF6RhxdeQf19", "previewMetadata": {"previewContentType": "AvetobbaPFDo4t2b", "previewFileExtension": "RXnBf3thLs8jMyo0"}, "shareCode": "WRXqRaO1vHq5IQGj", "subType": "fIGWcTs6GUVoD8UF", "tags": ["OXc50Uccyn8jlfcB", "myoYKnuGFT7RUbjP", "vKWjsCDv6tQ7WI34"], "type": "5XGv6wHkMZRpd1Ye"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'fy9NiFQHAWcMpNLI' \
    --contentId 'JFlCIwmSq3g9rASL' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "yZlJm93eq42EV0p6", "customAttributes": {"ZX0SsgiBsMzXubYN": {}, "X0ddoVjWuXcIlX5A": {}, "MlgqjmAFNi7GwOJo": {}}, "fileExtension": "ZDlO8DiAAIuY7o84", "name": "NE6TBuSZlJ2mpyBs", "payload": "JeBSBiCJMlOZI5zT", "preview": "vPBIHcVLCjZuiM6n", "previewMetadata": {"previewContentType": "uVyq0vTHpIyq2IIV", "previewFileExtension": "CqS1bUjWafp7gcit"}, "shareCode": "oxQ0g4CcEiHVQT70", "subType": "7ZmE850y8w5sZE6r", "tags": ["ubIyWsroXOfS3I0k", "RiLfyKg1FJFX4ckI", "CvLejpMRH2gN4mjL"], "type": "pU8LUM3thlgtvdyH", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'dZ9mXwRuZ5nCG8JR' \
    --namespace $AB_NAMESPACE \
    --creator 'l5twH4KWfInVTNxZ' \
    --ishidden '1MJj9nwWZC3bFUK7' \
    --isofficial 'aaLhd9T7CO0dDi6E' \
    --limit '33' \
    --name 'N1K05BShGV5071dq' \
    --offset '41' \
    --orderby 'hNaIHA6QAgZEhPsf' \
    --sortby 'tp04BQZhrHNwR8gg' \
    --subtype '9ocIcxLi6zNZ6ogC' \
    --tags '["oAGUm4b9oU4CHOux", "MCKbU2GDS54zTFa9", "K71AFqnMIChAjBeC"]' \
    --type 'G7ImaelvRquXy7gJ' \
    --userId 'mP2bTEPjLtgt5WxY' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '82BWX9VJPQ0dcAPD' \
    --contentId 'sUrNOGTtMWkPrpEU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["BemNU67PRNbj6FtQ", "forN4gwV2hqKOHtT", "i6y52DA2PXbSsM7h"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'nGYLr9EXaTpXuGEH' \
    --ishidden 'WZsy990hRNJtEY8I' \
    --isofficial 'bk1uC9GE4MIoPbCz' \
    --limit '96' \
    --name 'mX2HwlEwB0XFKJ7n' \
    --offset '71' \
    --orderby '3DLJ2tN08Qttpa5G' \
    --sortby 'q5ezbE6WCYTC3sju' \
    --subtype 'vKcqtDAfJGTa4Cin' \
    --tags '["zKpwrOdlGf1Wct58", "BB1GKmcbI6w5le6h", "3ON9cPWihmK7GRSq"]' \
    --type 'WLuOAro4ID4gNni6' \
    --userId '7EsEQ8om1zWPCRfp' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["gIBS6PPz1VPEaRxp", "IlaukJJGn0C70FGc", "2lVpSqIrLd4DOJSY"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'KBoPBaUpvN4WY6yA' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'mfiG1L6JLjxMqZjp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'XCzXajjO3RtQGdxC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 't7bnoOB7jSj9tCCx' \
    --namespace $AB_NAMESPACE \
    --versionId '0SzfnZQQtJFeJx8G' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'EjdRjZk7w5uKeCOd' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "DyxaoTJYy9bEZZ1b", "screenshotId": "ujTtDavsjDZgFrlY"}, {"description": "BFUR9XiU6bSfTp01", "screenshotId": "oBafRFpeo89kKHbl"}, {"description": "xaDAdBF9WmdcPgxh", "screenshotId": "lSRE2F7FJjqQNztg"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'J4CxuIsheqTWDCfk' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "DVUBQUJ0rzTYypct", "description": "IDV7iDup7hdZ2PdF", "fileExtension": "png"}, {"contentType": "AIOAHc1Am0XqybeC", "description": "dkzSTBzKOggLbFHr", "fileExtension": "jpg"}, {"contentType": "nR3j6j8JhT1WXGrf", "description": "WdVzfpNYcR4keAmf", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'BbnT4xo7OukI90mD' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'WMpYTosfTTcxlwCP' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'ymDBJ7H3AEqwQSQd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["aFCpApse2nUqe0wL", "viXdDNkxhpvRcByt", "t6t4qdKHs9VPeASI"], "name": "rE5L9GPeBFmjPBFx"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'twB3QnBM7kSBUeu9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ikabGVK0mGr2Jqss' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["qPnVlfOwxmJUEhOC", "gjcwNi7yhO3XveNn", "iBDoNc7MHIxPFTWo"], "name": "LwQFJjJ9ZgnEaM03"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'JpP1tnCgdzpxQmSX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'gkphyAxsTjTfkZA0' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "Yw2WclEmjDhOczBe"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vQYi5pqn8GEvkBOu' \
    --body '{"tag": "3j7WT503suGrCMyb"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '8ZIf6Q9zklknv3C5' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["XWsEVPOAZ9PAHk1y", "wiiAYKmsfNcYv9Cd", "97eVCCLphF2ntKNM"], "type": "kLF4EazjmnhkeSJq"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'j2BNs9dnPu4rOK6T' \
    --body '{"subtype": ["9Dzecy6gL8snMiFk", "NFdzvYG5XfeMGonw", "VO5uemRUUXq2Jfsz"], "type": "vPX2YEmZ6fJoGRPK"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5MHpxeDvmHidpLzE' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'plNw8eXjCVBbHLK5' \
    --limit '25' \
    --name '8o977C8Wr0ctK22o' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'AZ8iRcNV13PCahEi' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'U3ydx1lxwd76f0vt' \
    --namespace $AB_NAMESPACE \
    --userId 'Oo32VH8GsujVvpsp' \
    --body '{"name": "XHBfegCc6tHvci4W"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '57cW64RiENbns3hk' \
    --namespace $AB_NAMESPACE \
    --userId 'RwceHfCdUakpRwdB' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '4xPXTWfATwxTrkuh' \
    --namespace $AB_NAMESPACE \
    --shareCode '1BmL6BlfWMM5nm37' \
    --userId 'fvzenEe78azEXcfA' \
    --body '{"contentType": "MmxNVbNf9cer0Pxf", "customAttributes": {"vdvsfojDv03TBYSK": {}, "znI33hO8O2tbzal5": {}, "Fx1dCy5ReeU4hmVu": {}}, "fileExtension": "du2z79QC63P2mTDu", "name": "kCK6mFSZRZy3dEcM", "payload": "cLflrbzLIFunlenL", "preview": "YLCRLAPmshQuu1Kc", "previewMetadata": {"previewContentType": "VDSa1xZ61bqFONfR", "previewFileExtension": "Sm03ABXjEzJMaqLi"}, "shareCode": "0uVtVrHGKcBzrl1D", "subType": "vssYayzzIIrAhPAt", "tags": ["97Kr10sFa6WemRTA", "sazBDl170eYk66uu", "MvpOr2yiGvihw4Pi"], "type": "JcDGwz5IudE9wjMk", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'n0gqnuSJoa4b93MU' \
    --contentId 'ikCLWJm02pB6jeXY' \
    --namespace $AB_NAMESPACE \
    --userId 'm1xUrRQOyeZ4gtTi' \
    --body '{"contentType": "TMy70zaxwoNHQ4EH", "customAttributes": {"2ZCZ5ZUjppqoDyh2": {}, "YwTzc6O0b7XF96S2": {}, "FjrlFE5WrfqFmk9V": {}}, "fileExtension": "rLmDY4jQFEkIYGvR", "name": "JGwQ3P6OY4BT09wt", "payload": "wWZjtLQ2ESJEeBz1", "preview": "I3s6gehGV2iNKDHw", "previewMetadata": {"previewContentType": "E8WDpMwf4kXhz0At", "previewFileExtension": "x36UBM978kQUFDlx"}, "shareCode": "XF7udOx1bFVCBWWn", "subType": "JbDcpItfPff3DRP9", "tags": ["ZlAQw5WibtV2GYbZ", "X1DEY4RjnUprUPYd", "W5Lh2RcyRhnDcTLu"], "type": "SjQTQyo6E5RbQ3cQ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'f6J4mXhFilLVRXLS' \
    --namespace $AB_NAMESPACE \
    --shareCode 'UhcL2809JzgKdvw8' \
    --userId '2qpLH45zu7rDVh8I' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'J3NxiiXemYrLFbql' \
    --contentId 'GCL0MtJGsXiF8aRl' \
    --namespace $AB_NAMESPACE \
    --userId 'ZfL7hPdTsdEBcGUJ' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'tdtZlpDfzJqmkIBH' \
    --limit '95' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '9WgTkfZjhOzSvOgA' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'owYufNZvN7YJC5a6' \
    --namespace $AB_NAMESPACE \
    --userId 'cvA6Nfa57BseCxAW' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '7MDWVgBIP4zILB3v' \
    --limit '69' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JyGQgDGQijd8Y5Qq' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'xjY48YUfuPhNEtPJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Ev3BOghuRZhwNxnH' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'uO6Axm16BDZuC1n8' \
    --namespace $AB_NAMESPACE \
    --userId '5X2KbzsBylOeg8OL' \
    --body '{"contents": ["3Cj7d320dF0oADOK", "CLJ4CdmyNcxtFcU3", "3BuIfjVzrdkzkmXl"], "name": "jpgbwyu852DpCJ14"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ASvV8UHds1GsKhey' \
    --namespace $AB_NAMESPACE \
    --userId 'vW5yiryMSVyxV65y' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '1J7wx2Y1SHipK7t5' \
    --namespace $AB_NAMESPACE \
    --userId 'Dxb2bHXQIdfdnAGJ' \
    --limit '87' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'mAFRZTN3eUG5WssG' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '4EyzkIl6EcjqgIxA' \
    --namespace $AB_NAMESPACE \
    --creator 'v5mj2PZOvV9jna08' \
    --ishidden '3fpTtiKpYtf6b9XB' \
    --isofficial 'M2K7SJ69TO5zNubK' \
    --limit '72' \
    --name 'IBlfGEy02p8CvzE3' \
    --offset '43' \
    --orderby 'EPT5l7YNfYgjM6uA' \
    --sortby 'PpdGXhXSAeXRC2QI' \
    --subtype 'OVRqAMkYJ110X5cV' \
    --tags '["y1ZhzSbXX5bxxaGy", "Maw4vhPsVaRwmyls", "l70wFxusPORvMtI9"]' \
    --type 'HDQiYqe39cNp0KpX' \
    --userId 'kktkMORnIisaI5os' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'hylqZC4bbB745IXR' \
    --ishidden 'WYmgA5YTEMBrfeTr' \
    --isofficial 'lbq19GXt1LFv0gfp' \
    --limit '0' \
    --name 'WOdVvUFgQHVtDPfG' \
    --offset '48' \
    --orderby 'Rci4NBRfW7CH5Gxm' \
    --sortby 'TmysvZpXF62XwqfA' \
    --subtype 'CDXCymsgiIbHehyI' \
    --tags '["xqYGB1k7q0qE5Rhv", "3BVzffspCYdQ0UD6", "D5jDZS5Q3RetmemA"]' \
    --type 'bYd0FMvvulylyhyL' \
    --userId 'ScBMQhfneiPMAKK1' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["t1UGvep57Cv1Ieub", "j6OGmgUG7iGsFDDl", "nUNceIMWodKb3B13"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '64' \
    --name '11pOO1iVgblraF53' \
    --offset '83' \
    --orderby '6GzoP8oHdbNPyFrn' \
    --sortby 'kSRIvgqtZEUEwNKk' \
    --subtype 'tkKMkfQsnTNG72za' \
    --tags '["lEbRE6A0xXLZALR2", "qjo2fORtbTbpaPwE", "grTjcAOA3veaO0Hd"]' \
    --type 'wJ2AQIvnhGHnwFF8' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'GNZwEoZDJTsmtgo8' \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'TB5eTxlLMdfBssfp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'M95Os46h2Y1nTbFf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '08KcWKbdbf8x33UX' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Xja3v67YAZ4ldo4X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '33' \
    --orderby 'UYWG8IFqNz2riH20' \
    --sortby 'TBFJTj7wYAgdIlU4' \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '7z1qdjRK6rdnJenw' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'IMnEtoJmg8aPYhlD' \
    --limit '25' \
    --name 'OZuP13t8rvdcLHIg' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'zqXPA5wa8mVTReoa' \
    --body '{"name": "XAsEEpmolVHQYfcx"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'd0PK8TIzt70OmR0n' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '6iL0m8UbU4cYWSr5' \
    --namespace $AB_NAMESPACE \
    --userId 'mICSMALTmsNGAjrC' \
    --body '{"name": "1cI2SrqSRQVsXUuy"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'LanvQqTAldVCXBqV' \
    --namespace $AB_NAMESPACE \
    --userId 'ZqPYJyvbLnVRoH2O' \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'CHyMFxoCOGF2fmTI' \
    --namespace $AB_NAMESPACE \
    --userId 'w9opyGJkv8hmSfwu' \
    --body '{"contentType": "5qKq0Bn7QtSEO2rJ", "customAttributes": {"M5HxNB2JTdm70Qxk": {}, "WfcNQ1a48aC9M8p0": {}, "kJIVTqJb1I6bAqz8": {}}, "fileExtension": "JeKPcROSKik06tf6", "name": "MmHvWqQyMLvR2I6m", "preview": "BWpYzi5nH3uJAsXy", "previewMetadata": {"previewContentType": "f1zdc2GwH3MmYQtS", "previewFileExtension": "eh9jHrvpVMEyZvIF"}, "subType": "HDBEvMmZN7yuD2Iw", "tags": ["flqQG2CVH7sra7TH", "MPXaT9nIS728mryc", "HXNB3IIv8IHOcNBt"], "type": "AlegAX5P4VuwQt6b"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'EiB00IeDovzk1EdI' \
    --contentId '4uEpMPhRcOcLcSKV' \
    --namespace $AB_NAMESPACE \
    --userId 'Wv0iwHTjEagIC789' \
    --body '{"contentType": "neLnpiMnIEZ5d4nC", "customAttributes": {"l1SKYR7y5ZIXv3Qy": {}, "ZYbSyVuC49yNMcFI": {}, "szfy9eulKFB9z3hN": {}}, "fileExtension": "Eq2j6QAJ0OZVRwz7", "name": "sFxiArMkcVYWscUu", "payload": "swGyDIZ5oiz4KiXW", "preview": "plAQHyL05VWG7tBD", "previewMetadata": {"previewContentType": "ha1tiB7dSfCnByVV", "previewFileExtension": "jqeulT1twh6tdlNA"}, "subType": "RobChB6y4isSNdeC", "tags": ["bDAeNZifDIuspBVL", "TY5I69T4FsN3PY6L", "1Ym6EY1JeW1ZfhOb"], "type": "Rv021Sq4AXmJiWQK", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateContentS3' test.out

#- 80 UpdateContentDirect
eval_tap 0 80 'UpdateContentDirect # SKIP deprecated' test.out

#- 81 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'iW272WlVXWp6hJEB' \
    --contentId 'N3NaABEWkkVnHpBn' \
    --namespace $AB_NAMESPACE \
    --userId '0f861xVWdRyTqVjh' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContent' test.out

#- 82 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '3jVWJuZNMeKbkRwi' \
    --limit '19' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetUserContent' test.out

#- 83 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'IcNlUu7cHMIRBHX1' \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserContents' test.out

#- 84 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Gmt2UtizCofGxAma' \
    --namespace $AB_NAMESPACE \
    --userId 'pQ2scUQ65p18YkNb' \
    --body '{"screenshots": [{"description": "ZE36osyEzTlsNgwx", "screenshotId": "1ZZqDXyX7XTIUMkr"}, {"description": "LuGCNUigXj3mcnb1", "screenshotId": "ErzCM8ck8BB4YzJi"}, {"description": "wtsZbHU9797HT3qQ", "screenshotId": "tdRQptpB8e8vUV3X"}]}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateScreenshots' test.out

#- 85 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'q3wcnlSKwisQhXQL' \
    --namespace $AB_NAMESPACE \
    --userId '2fNoOIn91wV83A3J' \
    --body '{"screenshots": [{"contentType": "yoeMRfDZoHRgr6BJ", "description": "3Jdzioupkzlpatr7", "fileExtension": "pjp"}, {"contentType": "9k58YKpjaIRDFsop", "description": "Fd2bpI4Rpwnr6dpT", "fileExtension": "pjp"}, {"contentType": "bfKkLRlqfbdhUUs6", "description": "vU32buBirR1uly47", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 85 'UploadContentScreenshot' test.out

#- 86 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'RofQzuZzN3wN1hYi' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'xJKOxXHs71o07V3A' \
    --userId '990RrFVkqfndz1AQ' \
    > test.out 2>&1
eval_tap $? 86 'DeleteContentScreenshot' test.out

#- 87 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'IEcAM6zEbnwJT2BN' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserFollowStatus' test.out

#- 88 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '4f0C3JWg6N6XpH6g' \
    --limit '0' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 88 'GetPublicFollowers' test.out

#- 89 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'v9t6MUvxhj6CsUSQ' \
    --limit '96' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 89 'GetPublicFollowing' test.out

#- 90 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'DAZZRuOlz2Jq671m' \
    --limit '46' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 90 'GetGroups' test.out

#- 91 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'bfN5hq0XdMrtN0yk' \
    --body '{"contents": ["aN7GlCRlz4Sa79g8", "wCp6TB9izqKvrJvq", "7HjxySeckWkcA9BJ"], "name": "3WAgm5Lu77XgXkJa"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateGroup' test.out

#- 92 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'EfAMZppSSCpqYlEI' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserGroup' test.out

#- 93 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ZF9yBQgIJSxX8uoC' \
    --namespace $AB_NAMESPACE \
    --userId '19lFniSaJ6uP0rnV' \
    > test.out 2>&1
eval_tap $? 93 'GetGroup' test.out

#- 94 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'TYtBSxds9pyWI0Gs' \
    --namespace $AB_NAMESPACE \
    --userId 'hFDQ0GRuZkSU7W2t' \
    --body '{"contents": ["zKyE6qvHA6OwKQlN", "NAz6rUM5xMrtL749", "8uiUSROLZydCzFJn"], "name": "oGZuIBmwAxwLZxke"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateGroup' test.out

#- 95 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '8rpSaNaeGmOXykng' \
    --namespace $AB_NAMESPACE \
    --userId '9jvL6A41EGweXU3l' \
    > test.out 2>&1
eval_tap $? 95 'DeleteGroup' test.out

#- 96 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'G3MxS0ZvSDOoWst7' \
    --namespace $AB_NAMESPACE \
    --userId 'u2R8zijZVrR2xVcb' \
    --limit '91' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 96 'GetGroupContent' test.out

#- 97 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'mYn2MrkoJ7ePDEEH' \
    > test.out 2>&1
eval_tap $? 97 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE