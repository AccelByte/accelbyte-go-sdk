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
echo "1..95"

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
    --limit '68' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "GWlmAx2SESE7od3y", "name": "n9qYA3UUlTVnseH0"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '739qjaHixt5r3X6i' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FLN5HSTAc4jlg3Ac"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'MqZrkU2ksbBjPnXS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Pkr966wmPpt02Wcp' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "tg9uCw1fIvoXvGhE", "customAttributes": {"0ZkYPLfcSAx0T8YK": {}, "IaEW0b2zGDM0JPv8": {}, "AWkH0XtIgGKVqev8": {}}, "fileExtension": "TPjpiuao4ops1R6o", "name": "5Ul4q5Ma9Vs0pYqr", "preview": "udmp6u1HzJFtGbzc", "previewMetadata": {"previewContentType": "FPMQ63j04H2z5NWC", "previewFileExtension": "qZ1gWVyWdxeRVp06"}, "shareCode": "QepVud9ocrcHS6AJ", "subType": "jZrA2gQc3tRFVxse", "tags": ["5ruWnAKT9DSQBnbQ", "XYXsi3RsLvWNhi6B", "qJS9ePzXGUZoAV7r"], "type": "SGAfClw4Qx2Lfqof"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'nSb62Rl7MNIifmC5' \
    --contentId 'PzvkUm6OVh8nxCwG' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vjYGBy7Rxp8AupyN", "customAttributes": {"TFsXAyGFwwS6CVBk": {}, "UGG0u76HiVWrpT8F": {}, "CSSvdJbY0Ko48tl9": {}}, "fileExtension": "m4wHiqddimb8bw1a", "name": "ktjPISmrZYf6OtgT", "payload": "a5PLb04712xwTTrL", "preview": "DtvQ9Lz9EvOPrhQl", "previewMetadata": {"previewContentType": "GMIG8BXQDpoTivlp", "previewFileExtension": "eyrtkaoh8g3V35ey"}, "shareCode": "5Qu6bYR3mqogzK7i", "subType": "bxdZGZM2SQ0rQ4Db", "tags": ["oFnmta2x8GZRvMcH", "t50Fm8hOHx8W9UEM", "itN9Zz072AhTq4hu"], "type": "M46aSzGC4URRV1AO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'JI45FZceM33MK3Iy' \
    --namespace $AB_NAMESPACE \
    --creator 'J3WUlhIshjEFFuM9' \
    --isofficial '1sWxFPRwQd8Q5C99' \
    --limit '2' \
    --name 'CKE3mWi9aZOBvbS4' \
    --offset '41' \
    --orderby 'Qdm23n2CObxi9W7n' \
    --sortby 'ZhKS3gv8dsE37ixg' \
    --subtype 'YVR9wWGMSaSnfoDV' \
    --tags '["TakOpFASyKrlObe1", "biVCVGh6ORC9jBFw", "xT45ME2z4jRrINRE"]' \
    --type 'Yo3P0F6BdIe3ceNI' \
    --userId 'LN8qSlTSGpgWRwGj' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '0prlmnBrr6thI72I' \
    --contentId 'Pz3ufk3tjhOQIxTS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mI4z7rrp9rZ0FXAl", "NA2JrO3aMC3Vuce4", "ZYXTCBto7vHq49vL"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'jFq2zXS4fG17WrHo' \
    --isofficial '1NsiJYI5mfXtthtv' \
    --limit '34' \
    --name 'XTCMDreRe7FqemXF' \
    --offset '16' \
    --orderby 'Jie4jgUGkhQp2Xk6' \
    --sortby 'sFJjoZAsJU4NqgVP' \
    --subtype '57eA5Xs800NmsH3Q' \
    --tags '["VohHS3VoVUr2bkE1", "K1RR1fzNAQjokHTZ", "PNXNK0lZ25ZnbRPV"]' \
    --type 'rcnJXXaZ1Lj58ke9' \
    --userId '54MLbRqdc6dZA25S' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["tr5AiDLaOulGSJKj", "yyYep75UTmaXxNEP", "fmtRctVvnmlHg1lr"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'himNeRIb6LophsBY' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '3eJE4L5MziMbyKRA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'x1u5ZJ6QKjMeHQN0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '3nM3rPzF989n216A' \
    --namespace $AB_NAMESPACE \
    --versionId '5AsUjHXmnIITeOwf' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'Xm39SLHzaUmOJMr3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "4tqgz5E4rcECuJlK", "screenshotId": "p0Gfh1qXbhEGipg3"}, {"description": "QwmmFwjwPaBfOaTs", "screenshotId": "lSNSbEWG4gpiTWQo"}, {"description": "gBdEB65lAgY8eC2c", "screenshotId": "gIEqUVhCO5w4JMmN"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'pu8A1lCcAuwfoOsy' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "dYPtv9LCFMRRtEO4", "description": "dhj4bQ0ZxpyJFe2C", "fileExtension": "jpg"}, {"contentType": "vPq3fDYfZDJyekxQ", "description": "pAYXs4xQQkpn5QYY", "fileExtension": "jpeg"}, {"contentType": "EB4ekNXD3F5Hs6dI", "description": "b3wRqoXUbqF4YgbZ", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'Skkeag8qUCUPm5Nu' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'IvFB43GkCzEq7pcI' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'QfqKsnpY3wT3PP2X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["gx62LdL1PEZPWwAD", "5pkC4rcb7VePc5m4", "4UmxuUu6zM0YNe0Y"], "name": "5hGT4RhjxjpHuwAl"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'MYxuOOYUbc7zcTVE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ImPPVkBW9eJngbeG' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["SjsBYrAfD7FNpDp4", "e31arB1nE3xtXLwa", "l8PJCSc1egI5yOGz"], "name": "Iw4WE0wWQCluUhuz"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'oFwwxeOUeXj8pfcM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '3LVB4tNsJSYoCkqI' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "WeJc9nP2MpdtpH9J"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'XG5NqK47wgzv9xql' \
    --body '{"tag": "JrhXiP24AsLoCXoI"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'G3bdUDwPgz5rRaPd' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["D7coJkpCUlPcogEn", "HmIF3wSHRzEfoTP1", "EHtH3UkbAoOXdDMX"], "type": "EIklSB4xMTSEELdV"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'kDFEuL13VIYpKt4A' \
    --body '{"subtype": ["o7iD8azKUlJNeZvC", "ep2wmW9YRWe4nBPW", "9tyk5Y7Dck43yVJM"], "type": "qb7jybfnzGFRHE3b"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5tcuoHRmYsE1ejEk' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'nDickUWPUbIuz7w6' \
    --limit '84' \
    --name 'mMgUmdPYqBUTx8qH' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'uYayeuz0YADFlHdV' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'kODBH5IdpzxX2A9Z' \
    --namespace $AB_NAMESPACE \
    --userId 'X59kPGPdH3YPj8NU' \
    --body '{"name": "0ZlD84kzGf2oelww"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'pyKdvC3CQfNdkKfh' \
    --namespace $AB_NAMESPACE \
    --userId 'CMav9v747urC1gxF' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'pnvdsGPESkO1meyb' \
    --contentId 'kmSP1S7QeMfn884o' \
    --namespace $AB_NAMESPACE \
    --userId '0kLw74MrgtZXx1M2' \
    --body '{"contentType": "KXTWwmdecdXLs2Ld", "customAttributes": {"02AGIctpanjH7OSC": {}, "XiCA2zUcvK9e80MC": {}, "ZxrdFBvEzy2ZzwVX": {}}, "fileExtension": "bwHcH7YBA4YTb3mn", "name": "j1Elitd8nzARVegA", "payload": "OlcJKrU6LSHGa9pf", "preview": "PYqZ3cdi5qFSzKQ3", "previewMetadata": {"previewContentType": "CVsNuEjxIOTTNyyw", "previewFileExtension": "3mVci4EXbHoYDsQ3"}, "shareCode": "vevMsqB8gfXjVtvV", "subType": "NdqCrDxER1EnP5l7", "tags": ["xK9AuYQ8RVCRIiwd", "QxcwPd1pTlRj4B73", "SIkGJ18vOQra3V0o"], "type": "ZE3TvxUFDhSzKSYi", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3' test.out

#- 43 AdminUpdateContentDirect
eval_tap 0 43 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 44 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'yU26YWvnXGlwImGu' \
    --contentId 'Wb9vwrSbVOy9aRum' \
    --namespace $AB_NAMESPACE \
    --userId 'jr3jdGArXTieaN4X' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteContent' test.out

#- 45 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '0LyJzy4PsNibd5gP' \
    --limit '58' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetContent' test.out

#- 46 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'GdIezprJjbMqP2RO' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserContents' test.out

#- 47 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'TpkR2bpN3rTsgcwJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Zpj0PAeaYDqo6dRC' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 47 'AdminHideUserContent' test.out

#- 48 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'iDrWCLSnEOB3rP3H' \
    --limit '50' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetAllGroups' test.out

#- 49 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zgMQQ1Xfl1sGvegN' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserGroup' test.out

#- 50 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '6fxbV0QyNkkUm8Qd' \
    --namespace $AB_NAMESPACE \
    --userId 'YLMdn9ghzXrCBxN9' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroup' test.out

#- 51 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'df4HmHXjH77sBbek' \
    --namespace $AB_NAMESPACE \
    --userId 'PFYx7v8XkEXJ1ZTv' \
    --body '{"contents": ["To8zhnenXhJghkmj", "A5Ks2rEGUnWi8L8r", "XwpHGyqPCcKN5F4A"], "name": "oMJF6cFoVUaJtPDm"}' \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdateGroup' test.out

#- 52 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'guc4cZ5LVlD8diUB' \
    --namespace $AB_NAMESPACE \
    --userId 'gxEYZo7zHWuiCsrs' \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteGroup' test.out

#- 53 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'T28bAWUVlQHjcZ4L' \
    --namespace $AB_NAMESPACE \
    --userId 'pfPc5B3QTtj7ggtP' \
    --limit '100' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetGroupContents' test.out

#- 54 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'TmgeNJvUviJRiV7B' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteAllUserStates' test.out

#- 55 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '1GISDfxOa7bzVPL4' \
    --namespace $AB_NAMESPACE \
    --creator '2aYaxKtdPGbr13UE' \
    --isofficial 'WNCxtVpe5R3c9UMb' \
    --limit '21' \
    --name 'Np1fDDC4kMiVXg0E' \
    --offset '2' \
    --orderby 'ny8k2LOrVVjNglao' \
    --sortby 'hwEPVWAS05vghLS2' \
    --subtype 'vUpvAlK9ElWbyEpn' \
    --tags '["n8TxTNPadl9Y0c4P", "YvtVUJDAI8ASGmCl", "6wjuf8jQAaoITFc9"]' \
    --type 'DreRogMQgEARaRVX' \
    --userId 'uljkaWK8HeqNzsxd' \
    > test.out 2>&1
eval_tap $? 55 'SearchChannelSpecificContent' test.out

#- 56 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'MzesqrWJIfSUHXnF' \
    --isofficial 'EGArl8ia4MIURgkw' \
    --limit '29' \
    --name 'F84aAUe7r4DcM9VN' \
    --offset '19' \
    --orderby 'Q7C7UcsWKykPoZsJ' \
    --sortby 'H0lRy0dPOIhpYS5n' \
    --subtype '5OkGpebOELUSdsjV' \
    --tags '["RAPVVVzmissqrtxj", "mU4fV0CwHSBtLXQQ", "K1MWsyRPRtv9Q0uZ"]' \
    --type '444RQH96EbIwFkHX' \
    --userId 'H57W3nLAnJaTkSmS' \
    > test.out 2>&1
eval_tap $? 56 'PublicSearchContent' test.out

#- 57 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["TAJclEPoXCjothaf", "qyOZOJxbhgF4VX6B", "hp1Y9U0ySakvwJnZ"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetContentBulk' test.out

#- 58 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 58 'GetFollowedContent' test.out

#- 59 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '46' \
    --name 'PDIvZCAKB8LacmDH' \
    --offset '72' \
    --orderby 'tpfx322JRIXQewuc' \
    --sortby '1kzLeZ8aoo5xuKIg' \
    --subtype 'Q3hPaiJZEh32VJ1N' \
    --tags '["D2z9oRxuFcDwdJfm", "Hzja7oID9T0IvYLQ", "UXG7S3JwUNrjjHgP"]' \
    --type 'mK2n8eakyMhkyCzm' \
    > test.out 2>&1
eval_tap $? 59 'GetLikedContent' test.out

#- 60 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Lv6aeAvdaHH6Quyp' \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentByShareCode' test.out

#- 61 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'Xwn1ZJvQiYdn8Eon' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentByContentID' test.out

#- 62 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'TelrgEaaVjI7tWAp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AddDownloadCount' test.out

#- 63 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'WONPyhkAZPKJB3lN' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateContentLikeStatus' test.out

#- 64 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'P7DsZ6wrc21MdRSF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentPreview' test.out

#- 65 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 65 'GetTag' test.out

#- 66 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 66 'GetType' test.out

#- 67 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '88' \
    --orderby 'NcocSeTHLB3t7QUZ' \
    --sortby 'YXRmUIXlvI7lxfGJ' \
    > test.out 2>&1
eval_tap $? 67 'PublicSearchCreator' test.out

#- 68 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 68 'GetFollowedUsers' test.out

#- 69 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'goLcq8ZLpmm9JmeY' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetCreator' test.out

#- 70 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '87TUR2BJaaMo8CA8' \
    --limit '25' \
    --name '1C2OhGIfg4lLfzeM' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 70 'GetChannels' test.out

#- 71 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'HTNXiq3chBRpWA03' \
    --body '{"name": "1tAqxlBLQL5Wc2sm"}' \
    > test.out 2>&1
eval_tap $? 71 'PublicCreateChannel' test.out

#- 72 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'XuLQ9NuumgfgQQEq' \
    > test.out 2>&1
eval_tap $? 72 'DeleteAllUserChannel' test.out

#- 73 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'dHyi3E1JcGqRADi2' \
    --namespace $AB_NAMESPACE \
    --userId 'nQlbuJ4FPVckPiK7' \
    --body '{"name": "atqJbDxCAKSKySqU"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateChannel' test.out

#- 74 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'XMV4xnumuAAmmzfQ' \
    --namespace $AB_NAMESPACE \
    --userId 'AUQZ7phhE0JAyXL2' \
    > test.out 2>&1
eval_tap $? 74 'DeleteChannel' test.out

#- 75 CreateContentDirect
eval_tap 0 75 'CreateContentDirect # SKIP deprecated' test.out

#- 76 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'THIz5eq64m0XwajF' \
    --namespace $AB_NAMESPACE \
    --userId 'MSIyejVUzjH9YuBG' \
    --body '{"contentType": "hsjN5SjjwDOAKHOB", "customAttributes": {"3rGoVkPaZcwMA9uG": {}, "LsoJcGmUo90j2jA5": {}, "IyHsS3T2wXcl6kkt": {}}, "fileExtension": "CQpbFymKr1pugoUx", "name": "oaBjYzFHeGXdER1B", "preview": "rnpEgXU7mRG1JCHG", "previewMetadata": {"previewContentType": "g0gFEuPE1wzSshu7", "previewFileExtension": "wF8oL0H48ZkmTXsF"}, "subType": "jn135HYINsurFbLo", "tags": ["bStOLvxwv62VR57H", "1TV3o6e5iV209V5T", "ejJoaw7F7qKsk19J"], "type": "bbbNzGSg95zya9Rv"}' \
    > test.out 2>&1
eval_tap $? 76 'CreateContentS3' test.out

#- 77 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'Tyt3tkLCf2BH5yxU' \
    --contentId 'dIJ5SSeP8Lk7TVFs' \
    --namespace $AB_NAMESPACE \
    --userId 'JMyPhQem4sMQXYQ0' \
    --body '{"contentType": "G1FsMlHonjESca9b", "customAttributes": {"e1ATFIHkJT0ERCBJ": {}, "lFepkUUlOf1ABJKc": {}, "ZG16inonAjU32iwu": {}}, "fileExtension": "QLn54EBEtCw7Nj3f", "name": "3oLmvUnKzxxJzDLe", "payload": "5PT1KCbKwcRYayxU", "preview": "riBkx0zuK6jwJ1qJ", "previewMetadata": {"previewContentType": "ghtR1Bhmbi8r75vv", "previewFileExtension": "dp0D4ZftLnFHtrwG"}, "subType": "Tl8hDSMEYVgNBZ36", "tags": ["s5ubSkwVj37D0ldI", "kC0nzWwPWJi8qKoo", "B3jUdCDC8RIYmJBR"], "type": "pmj06QnKCFOzOoVn", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateContentS3' test.out

#- 78 UpdateContentDirect
eval_tap 0 78 'UpdateContentDirect # SKIP deprecated' test.out

#- 79 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'LPjCmEOG8vM8KmeC' \
    --contentId '1CTBQeBQlJ2QrphO' \
    --namespace $AB_NAMESPACE \
    --userId '1Z9NhKXqRdq3OyJu' \
    > test.out 2>&1
eval_tap $? 79 'DeleteContent' test.out

#- 80 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'C2f8n0ANYEPsOxlU' \
    --limit '89' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetUserContent' test.out

#- 81 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'IRjUhgL3UlaguU7e' \
    > test.out 2>&1
eval_tap $? 81 'DeleteAllUserContents' test.out

#- 82 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'skbhSikv3du9A0UN' \
    --namespace $AB_NAMESPACE \
    --userId 'o54kq9d2RGs3zBos' \
    --body '{"screenshots": [{"description": "GPpMid2QEjMKfDF2", "screenshotId": "5t5Nb6UrV1QdX755"}, {"description": "p8uxec1k35TfQdCH", "screenshotId": "vA1Fl6mCoOi4sZ9K"}, {"description": "aLCrfX5c4HAjmL7w", "screenshotId": "Mg2V3j0BOgDpiwIR"}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateScreenshots' test.out

#- 83 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'tZtZi5TAWtqaiZpP' \
    --namespace $AB_NAMESPACE \
    --userId 'Eqr0GzbVOMmeZ3dR' \
    --body '{"screenshots": [{"contentType": "IX2dzYyCYZShzk2S", "description": "4SFZrUs3mF3gef0X", "fileExtension": "pjp"}, {"contentType": "1i9L4JyrBwLfXopU", "description": "kfVBm2YlPn71nsJm", "fileExtension": "jpg"}, {"contentType": "k8rmaT0e9NPmTGRc", "description": "HqlzcRQkUz1tUgKE", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 83 'UploadContentScreenshot' test.out

#- 84 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'kOKoOqMndl93GhPQ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'RB0W6xbMBZWhrGr7' \
    --userId 'qvxjQpF3d6L7ozy6' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContentScreenshot' test.out

#- 85 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'D80kjagMHtFMqjrV' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserFollowStatus' test.out

#- 86 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'i7GVJenTwl7Cw3qW' \
    --limit '53' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 86 'GetPublicFollowers' test.out

#- 87 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'JtBbvLstfuh7jjB4' \
    --limit '71' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 87 'GetPublicFollowing' test.out

#- 88 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'oTbROSREx7BkTrzh' \
    --limit '6' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 88 'GetGroups' test.out

#- 89 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'jUBbFQawd3iGHish' \
    --body '{"contents": ["puaacyRaPk6wFLJZ", "6iLBkrVhJojTYe5P", "oXLNjib9C4U7Dt7d"], "name": "AN1mNzh1j897x1pp"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateGroup' test.out

#- 90 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'jpWkoZqlNFPryrCh' \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserGroup' test.out

#- 91 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'p8qmhSSys5bjrYHt' \
    --namespace $AB_NAMESPACE \
    --userId 'Uwe3Uv0DVWtcnfBG' \
    > test.out 2>&1
eval_tap $? 91 'GetGroup' test.out

#- 92 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'lpvQTmQowH5s89Ya' \
    --namespace $AB_NAMESPACE \
    --userId 'wL8xjP404aUO32Tt' \
    --body '{"contents": ["vhteqFFnR3RG50zw", "ZL8Dzo8jbpK6QFXv", "qTCTz74Qb3c6GV2d"], "name": "0tYf17FULLvQpfL7"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateGroup' test.out

#- 93 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'zvXVr4DmWTxLPSjn' \
    --namespace $AB_NAMESPACE \
    --userId 'McYLENo0o61VQU2V' \
    > test.out 2>&1
eval_tap $? 93 'DeleteGroup' test.out

#- 94 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'xH2AtpfEhsakxi4P' \
    --namespace $AB_NAMESPACE \
    --userId '0p4bvTRGo6SrpuSb' \
    --limit '56' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 94 'GetGroupContent' test.out

#- 95 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'm52sazl0sVFEi5vk' \
    > test.out 2>&1
eval_tap $? 95 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE