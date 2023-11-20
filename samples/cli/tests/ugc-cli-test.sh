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
echo "1..146"

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
    --limit '30' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "z6vdQDvALqOyA4xf", "name": "0VyqYZAff0qZd2k5"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'FywDolS6b32EjTvZ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "lToq0N4Jx01y49Av"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'b7o8poIg0GpVfMsf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'qT5YtQ7CUENnk934' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "MKvJFNMqg6v6dnLB", "customAttributes": {"HH8x4ilHctt3zY3b": {}, "zT35KeJfOisnZ0pY": {}, "QwgQmOrzjsi6sKvt": {}}, "fileExtension": "SoV86yBikAXGI6qM", "name": "gcdGeJVssQTzbQIP", "preview": "WRu5esCCgRPoNzmV", "previewMetadata": {"previewContentType": "HkFTzIiBt2CNAtXj", "previewFileExtension": "fGtZHxhMTgpPa4HP"}, "shareCode": "GNwoThkspV7BMGMQ", "subType": "QyooGMvMXHLCcvED", "tags": ["dU5IkDO8P1wZ3heS", "fjZUZJVlUBZpEheK", "chcKMeO2wh8QUawn"], "type": "KOupiD34hwNc7Qc4"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'h6aApy8oEUSkcRQW' \
    --contentId '4Uia0G7FwPB5HJTX' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "gT6odP8E6suWvNbt", "customAttributes": {"88e5oK01RhCx88wO": {}, "AGc72z9r4WYrGt04": {}, "UU6odaFaKWtuTPFH": {}}, "fileExtension": "tj3WDfp9roPZwUY5", "name": "70qfGRUpyqNna7zY", "payload": "ibRxSiglnXLhqdU0", "preview": "iXxh4h5U3wFDS4ac", "previewMetadata": {"previewContentType": "OMQ1G7C7myhDrpBi", "previewFileExtension": "JJa1qRfnqckGt34a"}, "shareCode": "wSNgbYiU4iXbaazm", "subType": "Z8qjH9YVMl9aE0Mi", "tags": ["2Wpk8WakS8qHIdrG", "G4M0oOL8be9IXGYW", "h0lVgzi8HTB4rhBH"], "type": "OIXpWE83CBZcEYta", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'VgtmibQAUmyLVXT4' \
    --namespace $AB_NAMESPACE \
    --creator '92k6pDFMyJZDVng5' \
    --ishidden 'ORIsgYflhbF3nvR7' \
    --isofficial 'UI9lGhRdSktAIV7R' \
    --limit '48' \
    --name 'KjzPlJX4tfG7V8UI' \
    --offset '54' \
    --orderby 'mqFDWvmlx7b1CJTh' \
    --sortby 'f0wKBU7jhOHXHhgV' \
    --subtype 'TScypFDzsGojaBgH' \
    --tags '["HFTecoiGaUWIf5mr", "cIoocf4Njqu3e1qx", "bzECZClKIlhVd4fz"]' \
    --type 'vecLQQneHIjtDeUx' \
    --userId 'LxYEp9fy29j17SR4' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'AqrLa0Ygvmc2pdFM' \
    --contentId 'diy7ajZMsG5gSyTv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Ml4yB8BSSHHjY5jA", "SlWASOK611pTPfjU", "9qtVGNASZSjO1NG8"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'RrqS5UGENnyeAh4X' \
    --ishidden 'FU8rG7GI8WMvWfLi' \
    --isofficial 'ouRovg8eYCse0y8l' \
    --limit '56' \
    --name 'ELFFo93TTlsZmdKN' \
    --offset '15' \
    --orderby 'stbhCT1W0GEfvLre' \
    --sortby 'N57AdCNdUREeAKfV' \
    --subtype 'ub1mj8HgJ6ubAUht' \
    --tags '["lD5tmOKnbl9K1tx7", "FZJ3enh2t3NGzmnh", "ntB84cGMIJr18Z3E"]' \
    --type '9Nh2dsxJYUoareke' \
    --userId 'bJGihsAJfwUWbz6E' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["H2kO5M40tFGRnnpx", "IlhTbfA4pzOcOSNF", "vU1iLOgHUdTJF4aF"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'P3wYgqp4lasCDajC' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'YHkdLS1ZtNfxD71r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '7RjydePRsdjlE541' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'WcE9NQnQy6bIMEpP' \
    --namespace $AB_NAMESPACE \
    --versionId 'XGAcc0PQTZoc8IuR' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '8GAGXLVTgcFIWtrA' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "T7HH3f2rRvNn6U2T", "screenshotId": "LY8YXB5Q9L8pTzBX"}, {"description": "5krCCiCSZIgtM9hw", "screenshotId": "vntK2Xr2FL6gjGnx"}, {"description": "L7EqzrqAhC5aUREO", "screenshotId": "Zog402rAHXm2YiC7"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'S7WtsqIptPbx01Wt' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Uq3a53DFxSWStq8G", "description": "b6HGHwYxLXg8VTkO", "fileExtension": "bmp"}, {"contentType": "68F2HWlE0a4qmWvb", "description": "cbHTO65zqONN0Ksm", "fileExtension": "png"}, {"contentType": "Ekrr7r30f3cYimBd", "description": "qssci7zKGgvZmMrS", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'LXvxjmLe2BqWoFRE' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Aqu9jrjMRpWrC1mr' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'i6KDh1V7o5B1zG9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["QRsraP9btNCVTt0L", "RUGh3Gv8hcmrxd8Y", "lO96cjc6iCT04R0H"], "name": "TWNKHwkcMrevQb3u"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'GmwQjWNYzJ3Oeko0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'oqjFE3v0PUFFtWct' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Cf9EuiTd2SoLDVeL", "rJ0hfOKrR5gRfzNI", "eZgUJRUig5mEJNTX"], "name": "WM6pQWUXlRoScnQg"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'T9ViiZO6hX9pfRP6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'heHkXcZTH6xMm8Ih' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "gvHXyGpzLYezSZRW"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'dbGKRRR1UAD1aCDK' \
    --body '{"tag": "ClluRFUwgfUT9fCK"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ZB5EV73EJfMTQXeU' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["vRktxJq9VhQBXSKT", "wUepe9niY61S2EYm", "KolPX3OYu7vvPSG6"], "type": "VesbVvjfNMXZmCuX"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'rjmuJAqlyFkLNkQo' \
    --body '{"subtype": ["rXnwvvhz9CQwc5w0", "gSyc2bjPadDhkjjO", "qMJaMQicQdtWqPm8"], "type": "1UhkKG94NQwJ6IMY"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5sgCW09wlHQYwTjq' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 't9gvfc2WFK6EbIRG' \
    --limit '20' \
    --name 'D05bxR1N2NfqlX2R' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '3kejpgcpY6bp5Dnc' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'U9RDBZMkH4QkSHyJ' \
    --namespace $AB_NAMESPACE \
    --userId '5L05u4qACYGT9o8T' \
    --body '{"name": "b6BxMuNyZ2cCvhNm"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '4kWXE8ml4m8QdXUh' \
    --namespace $AB_NAMESPACE \
    --userId 'Jdcrix6eUiI2ZpFZ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '2KPKctjpQwkROkR0' \
    --namespace $AB_NAMESPACE \
    --shareCode '0bhua2YNTwHAKvrd' \
    --userId 'dcWrXLVwBvzPSybg' \
    --body '{"contentType": "VyuL5PTKh2692wpG", "customAttributes": {"IrzLTSXlj6HOZxAz": {}, "u5xCn2UvlbyKnnuO": {}, "jZAxTlJVDbJEZQZn": {}}, "fileExtension": "oj9CVug7EfqYoLCF", "name": "KYyOlcjPmjCG3dRA", "payload": "gTiBoc909IFzm4nc", "preview": "LYDoG6nbs6pkooW6", "previewMetadata": {"previewContentType": "2FEEyWDao24y187p", "previewFileExtension": "PX2EpthFqQn8LGXM"}, "shareCode": "NkXCTIORialQ4tYo", "subType": "uKwWtRTLtPkbDX16", "tags": ["YSfc8vPrln0xeC3j", "NGl0GgLMBSdXlZk7", "vANqLo3ODzN0n1nQ"], "type": "Rduehs5qX7zdm2Rn", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'yBw6YohcCaRHM0E2' \
    --contentId 'ugot65feC0DvEVdx' \
    --namespace $AB_NAMESPACE \
    --userId 'OUKqvFBN6aYEmBef' \
    --body '{"contentType": "IiYKynDDt10FDc0V", "customAttributes": {"pMABGnfDi9xv4wRe": {}, "zp6EYeyJ94wP7iyp": {}, "Ou7nAO9Z0nixeQBR": {}}, "fileExtension": "3DEiGU4vrE7IQdii", "name": "8syUeWxTsGd23IRj", "payload": "HoTR6AeLwlIPh8c8", "preview": "PfN3dYHiRbBKJh9m", "previewMetadata": {"previewContentType": "TIGMLMM3zxoBDbic", "previewFileExtension": "HD5ccPG56YjqDyrE"}, "shareCode": "oNwdkQyOgWbPC4O7", "subType": "aK7NV1Q6Zd56EOEq", "tags": ["xjtD1EJFYfBL98ex", "Lxs99XQEOecz0kSg", "EHwixmVshovvcX37"], "type": "Ual7ml3Z0mTbI9RQ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'RAb3cYeLEEq0Nqr3' \
    --namespace $AB_NAMESPACE \
    --shareCode 'X6srWZpB1F5SVyfS' \
    --userId 'khw16kzRhIhYrQll' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ijZI3dzOpwKN6RHk' \
    --contentId 'bkbzkmv5jjSy0MjL' \
    --namespace $AB_NAMESPACE \
    --userId 'JlVDOhVl4T4sh0YL' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Ukn1yF7XixAhUXBH' \
    --limit '87' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '2uhmc9iCmDlRlzM5' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'j0VXwxLsuIw2ayw5' \
    --namespace $AB_NAMESPACE \
    --userId 'co5jVmureIrnVkoO' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '6zGR9FzthWVFw7Xr' \
    --limit '18' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'P9ucbJHpMAMdjXJ4' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'qWQ8ALsARV0gPj8R' \
    --namespace $AB_NAMESPACE \
    --userId 'ZCdRbeNevQbZzVff' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '6y0ci8i8OAw1YbKW' \
    --namespace $AB_NAMESPACE \
    --userId '3h8BC2hmlKXdIaQj' \
    --body '{"contents": ["Io2oQanMkFNBUiKj", "PwBAOsv9wPjfV75O", "fBTq1dHdzMpSFoux"], "name": "yHSJuUQMPRemWNbI"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'rmskTVyhSfQihpXd' \
    --namespace $AB_NAMESPACE \
    --userId 'I9kEXCBFvCB1GnHl' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '9yBzNmVsMDg543Vj' \
    --namespace $AB_NAMESPACE \
    --userId '91MfKeODdaB2Hysx' \
    --limit '82' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '0sBi9jzb8ocUHeN8' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'uouFNoRO2kgVXITI' \
    --namespace $AB_NAMESPACE \
    --creator 'yOS9g83cPilgakRX' \
    --ishidden 'fAUEI6Azl0LznwLU' \
    --isofficial 'EE2lUhsQYI639oaq' \
    --limit '36' \
    --name 'pMY9ryIKlpv7tjAI' \
    --offset '35' \
    --orderby 'rPbaV8hDuw64Auhz' \
    --sortby 'iiugckASSPzzHFpS' \
    --subtype 'cEyUgDCf4YRpHWHP' \
    --tags '["A3lq88PfPv4GIHwd", "Hj9EHhIzY9EVy4eJ", "fay2LRwdMkna8vjM"]' \
    --type 'BVRmBpaI9pcTONpb' \
    --userId '8ZlaZ4esHTt5RrA0' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'UtUfUaIij2BsSVTP' \
    --ishidden 'I21au8ZtuAjz2pmo' \
    --isofficial 'bZ2godzeBqQs3sCk' \
    --limit '23' \
    --name '0jeuFliYjcRFUCdZ' \
    --offset '14' \
    --orderby '2QCSMQyZLBOUZ7fO' \
    --sortby 'Y2cnggPDbeYHANNO' \
    --subtype '8bs4yEP4kVfsSvBk' \
    --tags '["GA0znVlVfay4paqd", "Jju9cW7aqYjsQahP", "6YuYa4AacT2LjAnL"]' \
    --type 'nnuxHL0PBrUY8gDt' \
    --userId 'NahJ75UJz1OsRRl7' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["LRmIm5HjutPxED5m", "RuiTcCkU5NbUTTjo", "it7KjKjozgR2kcDh"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '19' \
    --name 'b3H0600xSzsJzj7Q' \
    --offset '100' \
    --orderby 'S0Ow3AApiyKvp5WP' \
    --sortby '25TWGUl8zMgPaEfK' \
    --subtype 'Fzdis7sg1zIWfZwz' \
    --tags '["OKnHEmKp4mDYAPmZ", "lbgb3YCrhKKUgQlV", "NRYrveWKCmEZqVz5"]' \
    --type 'mY1FsjTZppBhbnmy' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ul5cKr4jqD71K7q3' \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'T3f882xb33p8J2ru' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'qLs3bbQXrmXsJK5R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'N5dgaOcxIZsRRfIR' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'fnP5TWVqAUd0ISGA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '14' \
    --orderby 'O4hQ2mUSM4wcFX6H' \
    --sortby 'CbCqz14LdpELokzX' \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'AjaKo85j4ladilkw' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Pd3Rd3g8D42vWgn2' \
    --limit '24' \
    --name 's9j9THIb0iQ6tbWn' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'v94s8HPSU6Y6RAjq' \
    --body '{"name": "I1JeXOTqtNnusx0M"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'iAJYNzkHIntPuCg3' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'MahzfzyZbrtWTK5b' \
    --namespace $AB_NAMESPACE \
    --userId 'wIJmIONGA7T1KA70' \
    --body '{"name": "CD9u88l09RoUULIP"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'HsyxrMaTa8gHn1At' \
    --namespace $AB_NAMESPACE \
    --userId 'KwPF4MHKgOx9HQEX' \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'AmxK6BYln3n6Kufj' \
    --namespace $AB_NAMESPACE \
    --userId 'aAUelwQUoLIn6jes' \
    --body '{"contentType": "coxIyPhpi8Z095Mv", "customAttributes": {"ikim6UtUpJPonmOE": {}, "5UQTC3FHFeFU12qg": {}, "OoORzaQUBIWX3I2V": {}}, "fileExtension": "YMf1ID12L5kTJiGA", "name": "IWN0xax0xCAwrMXg", "preview": "7MwucVKuIE9RFkCy", "previewMetadata": {"previewContentType": "ynInirEn1dqa5vLg", "previewFileExtension": "Cxyzf3XoSXj3cjPM"}, "subType": "szcIaEVBc87adIBT", "tags": ["FhWvMXpN82JBrJAe", "9iccYoy8JT2A9maR", "37OTEgAlIVn91Zbd"], "type": "3aEDeX9YtlTyckux"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'm95iRcpXGNlEB85H' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GEYKcwt6H3zlYbJh' \
    --userId 'wTVkaXc2DF99RIlw' \
    --body '{"contentType": "xiBze1qkmFO4wePp", "customAttributes": {"uF0KKrnP6fT2wzmv": {}, "0Dfbbc6u5y2pHq5E": {}, "NzIOUce9EShE8kfX": {}}, "fileExtension": "0AxgHLK3XZ0mompi", "name": "ObaHWoRQDBAAzEwX", "payload": "MOTLZNC29khwN5wW", "preview": "gf2ePT51QBorWC1y", "previewMetadata": {"previewContentType": "9arzNqV1pe3XiDh5", "previewFileExtension": "wreBPfPQMTgXIjHO"}, "subType": "Pqe5gxkGaM5hNHi8", "tags": ["ehNcTz37a8CCo4cA", "X4Bgnu2jH82TXF40", "ejXl5UdlAVpm7dlt"], "type": "s2ZhLlpc8QZCLRsQ", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateContentByShareCode' test.out

#- 80 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'aro82bLNI1yeL78C' \
    --contentId 'JLadKBgPFDnFm9KX' \
    --namespace $AB_NAMESPACE \
    --userId 'zUcvPGct5dXCkbay' \
    --body '{"contentType": "5PESQfQlkvuEKUIw", "customAttributes": {"BpN96tDff1PIamsT": {}, "Wgh1iJJp4ok83D0N": {}, "s6xauSGY0BIIUxhg": {}}, "fileExtension": "yDkKxuDWTopxI1QY", "name": "2wdqA0TuaARVBmD8", "payload": "pdjB7SygpteubukE", "preview": "TnZznULXqbQmRl4p", "previewMetadata": {"previewContentType": "AOtP8W2qscyPGGX9", "previewFileExtension": "z6eEbjf3Vg0ra4oL"}, "subType": "r0YxXA1tNj3j3C6e", "tags": ["qTMCOlfWs4IBvQLw", "ry0c7Z91Xui8F3Nn", "fViIi2fil7cj44OC"], "type": "jdmLkuosTy4P5mqN", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateContentS3' test.out

#- 81 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'wC1DqWhAYsBDoMCI' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CdTwWEl2elDoNQHr' \
    --userId 'BRD46Cco6HLoHge6' \
    > test.out 2>&1
eval_tap $? 81 'PublicDeleteContentByShareCode' test.out

#- 82 UpdateContentDirect
eval_tap 0 82 'UpdateContentDirect # SKIP deprecated' test.out

#- 83 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '6sMxygIoQxzyeEFE' \
    --contentId 'QLl7Gwa4swmRegJr' \
    --namespace $AB_NAMESPACE \
    --userId 'mDztAiAA6CK6t9LA' \
    > test.out 2>&1
eval_tap $? 83 'DeleteContent' test.out

#- 84 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'gAxaYGi1vK3DtHHN' \
    --limit '5' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 84 'PublicGetUserContent' test.out

#- 85 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'qj9XHvjzgWETJpxa' \
    > test.out 2>&1
eval_tap $? 85 'DeleteAllUserContents' test.out

#- 86 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '4mUhW3CJnsWofUAD' \
    --namespace $AB_NAMESPACE \
    --userId 'WaNwZEClTuelE1lS' \
    --body '{"screenshots": [{"description": "slNvSLORLKxTO6hZ", "screenshotId": "SZv8NCLIyXoqBPyy"}, {"description": "C0D5yCaSJOEtQ2Sw", "screenshotId": "RnQsxUva9kwhfwD8"}, {"description": "tn86gZa0hgNtSvh3", "screenshotId": "2I1nQ40iEy5086L1"}]}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateScreenshots' test.out

#- 87 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'zcVjL8G86FpihGzQ' \
    --namespace $AB_NAMESPACE \
    --userId 'OZqd1iSFT615XBKS' \
    --body '{"screenshots": [{"contentType": "CkqGeI1oMEMn7kgw", "description": "5BlrIbTkGKmcK9Gj", "fileExtension": "bmp"}, {"contentType": "78UUKn9lNxbC2oYJ", "description": "0oAgO8nm1sefSyW8", "fileExtension": "pjp"}, {"contentType": "dQ9GS37HS2OgVxFq", "description": "R6Mth0MjugyMBNYd", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 87 'UploadContentScreenshot' test.out

#- 88 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'qfsdrw2hg0kgIIPt' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'C5CSa3qWLRsGYJVA' \
    --userId 'k6d7GdaVBTLzxmui' \
    > test.out 2>&1
eval_tap $? 88 'DeleteContentScreenshot' test.out

#- 89 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'KqqVcEOoTk2IXj3i' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateUserFollowStatus' test.out

#- 90 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'vlbMOKNyD92uE2lm' \
    --limit '32' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 90 'GetPublicFollowers' test.out

#- 91 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'b35vNO0ROCcF2UsL' \
    --limit '32' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 91 'GetPublicFollowing' test.out

#- 92 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'eLGkWNSzSRf43qgn' \
    --limit '72' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 92 'GetGroups' test.out

#- 93 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '9eaAFfk0pNtchG4A' \
    --body '{"contents": ["wt27pMDVo1XvItdV", "VyEoLCZOunHIEfW8", "XC0uctol1FydNzTh"], "name": "884NLoCss4wePcGb"}' \
    > test.out 2>&1
eval_tap $? 93 'CreateGroup' test.out

#- 94 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'pz5U1oyXIqjrJ2D3' \
    > test.out 2>&1
eval_tap $? 94 'DeleteAllUserGroup' test.out

#- 95 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'yAyoR0nHFmxrtVu8' \
    --namespace $AB_NAMESPACE \
    --userId 'LpnmxKsbdJ18AdWQ' \
    > test.out 2>&1
eval_tap $? 95 'GetGroup' test.out

#- 96 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'VpkxcGj6LYuP2Z6I' \
    --namespace $AB_NAMESPACE \
    --userId '3ANeztGAY8Xj6Jaa' \
    --body '{"contents": ["TlqKRGVTsl3H9QmG", "B9J6FPSI7SGgQ338", "yXHEvzPylB5BmnyT"], "name": "7m8cQqYAaU7u4JCu"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateGroup' test.out

#- 97 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'o4uOtSpadmqxP32M' \
    --namespace $AB_NAMESPACE \
    --userId 'WFk5Zu1dok1wEjVY' \
    > test.out 2>&1
eval_tap $? 97 'DeleteGroup' test.out

#- 98 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'xOVeD2HeIJSqS9TR' \
    --namespace $AB_NAMESPACE \
    --userId 'hoFUJ0obzmNIOKsn' \
    --limit '26' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 98 'GetGroupContent' test.out

#- 99 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'VgbsHegam6PLONgp' \
    > test.out 2>&1
eval_tap $? 99 'DeleteAllUserStates' test.out

#- 100 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'zCEcdoSVbE3uPIwA' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '40' \
    --sortBy 'LRhDqj4GGKYEqxyB' \
    > test.out 2>&1
eval_tap $? 100 'AdminGetContentByChannelIDV2' test.out

#- 101 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'M07nHpCgMcMGnfTC' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "LWRS77V967sLNptD", "customAttributes": {"KkbnjaqPCQR7YS5L": {}, "3X2ij8p4fomUS5xH": {}, "Zsj90MyOObA2SnUj": {}}, "fileExtension": "Z5DR1UlCImfdgrGV", "name": "A07KK3rVNvGfXfuv", "shareCode": "pMUvqS2wmjcYzrQ6", "subType": "azICjZbqFZSWG572", "tags": ["5zsyHy6Dtyex5gSa", "1mYmR0AprUoTH2z7", "JZbeIyEKm0rd5XB7"], "type": "mgbQ9ZZSBmJloKLJ"}' \
    > test.out 2>&1
eval_tap $? 101 'AdminCreateContentV2' test.out

#- 102 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'Sq2PCmahtDoOXL3O' \
    --contentId 'OfIll2xlwwl9c9W3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'AdminDeleteOfficialContentV2' test.out

#- 103 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '5tV3uL70YL0RON7y' \
    --contentId 'wDalV2E2rJeMsZeo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"QcPilc89RPwe031I": {}, "ewO2Nili0FnjLiaj": {}, "jtWihxCRbYVKuwg2": {}}, "name": "QddtgTNvMXSgRC29", "shareCode": "sP66civRoOU7a8dh", "subType": "QopNwkMgxD3Q5cKC", "tags": ["oxwHmgJURZuIw59F", "IrJAr2PoSgbwm1on", "WvIJkWEqZdbxbccT"], "type": "2aadVx8uAi80Yadq"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminUpdateOfficialContentV2' test.out

#- 104 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'N8bSGaCJ8n7jtkwJ' \
    --contentId 'uKuuNcGOIggvaZI5' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "HCyl53ZDPbKgfBNk", "fileLocation": "sltWxvc2O4LxUvdC"}' \
    > test.out 2>&1
eval_tap $? 104 'AdminUpdateOfficialContentFileLocation' test.out

#- 105 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'Z44UU2FdQyjkCoWy' \
    --contentId 'Ew9s5C8XAuBG37Xi' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "0oZv3QlWyzMylKRf", "fileExtension": "jsHy5nObGP7PVf15"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 106 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name 'vVhmPbQCtPDdpTLK' \
    --offset '33' \
    --sortBy 'MSXeb5kJNy8E7vVz' \
    --subType 'AqC7GO19uoT1XqtH' \
    --tags '["1KKgPdMXLaOq39XG", "gbMWg2sAExJUOvyt", "DruzAGtBh1J6LOYE"]' \
    --type 'YD3i6ewiWwLW4bbh' \
    > test.out 2>&1
eval_tap $? 106 'AdminListContentV2' test.out

#- 107 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["clvKgN7U9wNuagAP", "5fG4LwxvcEJcRg7Y", "3m2y42ycCTpXFPXc"]}' \
    > test.out 2>&1
eval_tap $? 107 'AdminBulkGetContentByIDsV2' test.out

#- 108 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["7evlfHkiq9txxN9i", "wxxTRlMHFObUH6m0", "AL1fZEGh1mlar9mo"]}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetContentBulkByShareCodesV2' test.out

#- 109 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'owrdQNAosDZCBlbv' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetContentByShareCodeV2' test.out

#- 110 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'FhWtuOQZIm0QP589' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminGetContentByContentIDV2' test.out

#- 111 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'TR5sqc5tstUB8fKo' \
    --namespace $AB_NAMESPACE \
    --versionId 'gmj1WIcWRoEJ23f8' \
    > test.out 2>&1
eval_tap $? 111 'RollbackContentVersionV2' test.out

#- 112 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'L5bZYQj0zBokiwce' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "mtJt6XblfPYjNGj1", "screenshotId": "7dPS3QAQKRZ3ZNiK"}, {"description": "1vCwCIjvZ0qhCmud", "screenshotId": "AWOBoRh9gKtN85dZ"}, {"description": "uEmkUrSnnJF4TyTB", "screenshotId": "jOekYqx50xXxag8f"}]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateScreenshotsV2' test.out

#- 113 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'UP25rxXuLKgwiszz' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Ke3l5cUZVRNTtmAc", "description": "z8NBjOeJ5CsZ4Few", "fileExtension": "jpeg"}, {"contentType": "BWKoEMmbEU7zRpby", "description": "LDKu7orEjkKBpoK1", "fileExtension": "bmp"}, {"contentType": "o53jgNhjDCXZXRk8", "description": "9hQgXtaPPj8dZnEG", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUploadContentScreenshotV2' test.out

#- 114 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'VvYMNNiZ6yiaSsNz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ZJ9077nbjexY80yG' \
    > test.out 2>&1
eval_tap $? 114 'AdminDeleteContentScreenshotV2' test.out

#- 115 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'jghbnPlAKM9X5GLG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'ListContentVersionsV2' test.out

#- 116 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'cc9xfZVln76z0nap' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetOfficialGroupContentsV2' test.out

#- 117 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'SsFfHclUGH0xrHNU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'e5sMjLOCCNCgiKl6' \
    --userId 'mhKyrLHBBkWApz9T' \
    --body '{"customAttributes": {"6NoVFyrGpDTmI6C6": {}, "B2dpvSvoE1IY8sh1": {}, "5uFpIqAoFeL98S9B": {}}, "name": "mbkh45ALIvYNGQkC", "shareCode": "T3fW9ikizZ134Teo", "subType": "gRk1noXNcei2i0wF", "tags": ["0MkMKZY2feJFO7ax", "4f26kRHPTFJvJMg3", "98kZ3oYO4M3b7tvD"], "type": "EUThQocshYxU14Ha"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateContentByShareCodeV2' test.out

#- 118 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'OWZTZgQ0T28uh1pn' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qGrvI9lsZ1fcROKc' \
    --userId 'YCl2flaJbhgsf2MT' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentByShareCodeV2' test.out

#- 119 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'RpY7q2MiNlHL7fKj' \
    --contentId 'zwaDwkbqkSYwKLLR' \
    --namespace $AB_NAMESPACE \
    --userId 'LYYnmOofQJq2vara' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteUserContentV2' test.out

#- 120 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'IXVUHPxZe5igmVeX' \
    --contentId 'opFAleTdy0SoydzJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ZJaARmqdvJCzmsvZ' \
    --body '{"customAttributes": {"99CIfklCOr2k2KwC": {}, "5EwNZV0lkbPVI0Dx": {}, "pXKpPRbHvmE9rj17": {}}, "name": "Ao6bFLf7eGb2x3cw", "shareCode": "udNqgNx9zaSlGI2f", "subType": "5VJRLPiydFVwscBV", "tags": ["Ftofh0ayN3AFRZK8", "iNRVRLxRyuXzJmQ5", "Owr5Vz07XZkhF4EQ"], "type": "dJYlbZ7LNwNHyQBt"}' \
    > test.out 2>&1
eval_tap $? 120 'AdminUpdateUserContentV2' test.out

#- 121 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'ECSoauypbyrYMdKD' \
    --contentId 'vMbhAouuawMrHoTo' \
    --namespace $AB_NAMESPACE \
    --userId 'levQzwhO40fqvFTn' \
    --body '{"fileExtension": "WxsRhxjHAhka8yNn", "fileLocation": "fzo2W7Av9A6PrKTq"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateUserContentFileLocation' test.out

#- 122 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'Ixm7Uc5YJFVPcvKo' \
    --contentId 'HGd2VYojvDHkAiab' \
    --namespace $AB_NAMESPACE \
    --userId 'XOJii6CjWlmWVKZo' \
    --body '{"contentType": "9SGGYfDsYTcukkvP", "fileExtension": "AJQsXY7APRpzcUOh"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminGenerateUserContentUploadURLV2' test.out

#- 123 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'S8HDekclUN2Io1F8' \
    --limit '52' \
    --offset '90' \
    --sortBy 'UuYw2OTLFPTNTneL' \
    > test.out 2>&1
eval_tap $? 123 'AdminGetContentByUserIDV2' test.out

#- 124 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'CDagQ87OQH71qid2' \
    --namespace $AB_NAMESPACE \
    --userId '3JMfEq8J53l7c0a5' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentHideStatusV2' test.out

#- 125 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'pg606qSw08N3abNV' \
    --namespace $AB_NAMESPACE \
    --userId 'QcR0dvdJtPycmTjv' \
    --limit '68' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 125 'AdminGetUserGroupContentsV2' test.out

#- 126 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '97ZOemmkHVoshKtC' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '39' \
    --sortBy 'wVt1WgShALD4YTqP' \
    > test.out 2>&1
eval_tap $? 126 'PublicGetContentByChannelIDV2' test.out

#- 127 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name '8ecXcGWxab5GNKL1' \
    --offset '71' \
    --sortBy '8tPLOHLP3FzjoWgD' \
    --subType 'Ups7H0uEwnZtyC4t' \
    --tags '["Er54EW5jEx6CmWO9", "pZYGdhv7wkWi7LnI", "eJ1iZghEwjsEpdxR"]' \
    --type 'UItpBXIO2YhYpyIw' \
    > test.out 2>&1
eval_tap $? 127 'PublicListContentV2' test.out

#- 128 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["j7EO26iHoOWA9yGl", "5AmmJ80JscHrArze", "pLkVoZkfw52rJnj9"]}' \
    > test.out 2>&1
eval_tap $? 128 'PublicBulkGetContentByIDV2' test.out

#- 129 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'wX2pV7MQFw53AaSM' \
    > test.out 2>&1
eval_tap $? 129 'PublicGetContentByShareCodeV2' test.out

#- 130 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'x2any4XLp3uB7yh6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByIDV2' test.out

#- 131 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'ig8ewFjO9oOSYpZX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'PublicAddDownloadCountV2' test.out

#- 132 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId '79FtbzIxDEkYYfdh' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '6' \
    --sortBy 'z9c9w74mNfMzmpve' \
    --userId 'HIUHmeKTsfnz7urr' \
    > test.out 2>&1
eval_tap $? 132 'PublicListContentDownloaderV2' test.out

#- 133 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '0hcC5gEEOaHgv7tB' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '57' \
    --sortBy 'Geggc7vT1S3zM5NK' \
    > test.out 2>&1
eval_tap $? 133 'PublicListContentLikeV2' test.out

#- 134 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'NvZ2wkuG9NggPncu' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateContentLikeStatusV2' test.out

#- 135 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'Z4nV4JiyoQgcmy00' \
    --namespace $AB_NAMESPACE \
    --userId '0wJB9IkGDNulPGbi' \
    --body '{"contentType": "gCXq5rETYAa7t5t6", "customAttributes": {"lCeT5lkUxrSalcM5": {}, "04WwBsPVLwgEi4mj": {}, "rAyWVLEIz1Q2nfH8": {}}, "fileExtension": "8PAxGfCbs5LGZSon", "name": "ZCqJMm9OF8z8OxXc", "subType": "3gf6CqGPtPcGf63F", "tags": ["GyhBiCEexfc8cNX4", "tPwBFNvjgqtIqOaS", "atSge1CEBzYimHH4"], "type": "hEn7NV87Rhfig024"}' \
    > test.out 2>&1
eval_tap $? 135 'PublicCreateContentV2' test.out

#- 136 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'BqKgZCrtI3hBMHjK' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Mj74UtJbsrCy2MMM' \
    --userId 'cGkDt7ex0skoKeOw' \
    --body '{"customAttributes": {"dk5NJTxbkUApzdsJ": {}, "qupawC2ENmVsUj08": {}, "1Vl4Hw8yQ1folzaJ": {}}, "name": "iyI13p5MUksVYIL8", "subType": "pe7ApP5I7ZF3VmrU", "tags": ["l99eGlHPrcQZyupU", "VljCir6GiUtg71UO", "vekhghW50WzvCZSd"], "type": "3eNu2gtO6zCmyDcK"}' \
    > test.out 2>&1
eval_tap $? 136 'PublicUpdateContentByShareCodeV2' test.out

#- 137 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '3ycxEhxF893B5vRz' \
    --namespace $AB_NAMESPACE \
    --shareCode '5R448OhCzEiDvqyI' \
    --userId 'MrHlFSRnuDfw7fdI' \
    > test.out 2>&1
eval_tap $? 137 'PublicDeleteContentByShareCodeV2' test.out

#- 138 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'y7fhYtaJz4CG62Rg' \
    --contentId 'yXsA5sDawbuxk3mf' \
    --namespace $AB_NAMESPACE \
    --userId '6rPLYXJeCi1RUg3M' \
    > test.out 2>&1
eval_tap $? 138 'PublicDeleteContentV2' test.out

#- 139 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '47QQNvsG5XtdzVwI' \
    --contentId 'PQeTijO3rrYLuvqP' \
    --namespace $AB_NAMESPACE \
    --userId '9Vr4uGIYkiQQrAyZ' \
    --body '{"customAttributes": {"RR8giE4u6xdmQvZt": {}, "MSNhjtaLFsSNfnLK": {}, "fbEZyegQJF5eTdV8": {}}, "name": "HHCGZKdytaWBJgoY", "subType": "tARDzqRJfAgQp1Po", "tags": ["6J3SPSkk7WxdaX1z", "nmmmMyoFQaA7eWS5", "SJktYBa08XXSvhTN"], "type": "lvrxU3WGkrKU3NBR"}' \
    > test.out 2>&1
eval_tap $? 139 'PublicUpdateContentV2' test.out

#- 140 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'SUl5g8o7E5TiUpjx' \
    --contentId '7UewJCNngGWIJhuf' \
    --namespace $AB_NAMESPACE \
    --userId '1tEMmALVvoTqZN3c' \
    --body '{"fileExtension": "QzqNua89vTISxv3H", "fileLocation": "EiE3PjonlizJeVpK"}' \
    > test.out 2>&1
eval_tap $? 140 'PublicUpdateContentFileLocation' test.out

#- 141 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'JgUxibOMth7kl3EB' \
    --contentId 'qIJgTkahWNSWanct' \
    --namespace $AB_NAMESPACE \
    --userId 'evHGHo2DaU2fNXbj' \
    --body '{"contentType": "s6Do7jrKUaHud5ha", "fileExtension": "5DWiRaKdT2Jjo5rF"}' \
    > test.out 2>&1
eval_tap $? 141 'PublicGenerateContentUploadURLV2' test.out

#- 142 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '0YkvajChtkO3bpIs' \
    --limit '37' \
    --offset '69' \
    --sortBy '2Kd0f9RSEfwjbBxC' \
    > test.out 2>&1
eval_tap $? 142 'PublicGetContentByUserIDV2' test.out

#- 143 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '6XQFwod2thduBIcN' \
    --namespace $AB_NAMESPACE \
    --userId 'Dbq5m30qkdbkzKWA' \
    --body '{"screenshots": [{"description": "TBfG35v6hihuK6aF", "screenshotId": "LV5LpPKUQan75a1u"}, {"description": "SM49ihVLstoWWpjk", "screenshotId": "EOi0seK5Snp8lbBs"}, {"description": "aFOF48uK0hA6zsYn", "screenshotId": "wIzW0LUqddRfeyQ6"}]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateScreenshotsV2' test.out

#- 144 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'WaMFYt13HK0YO1L7' \
    --namespace $AB_NAMESPACE \
    --userId 'JOY6FeYfAk2XxBYJ' \
    --body '{"screenshots": [{"contentType": "YMqvFWaeQsI2TpWx", "description": "JrbveeZr0tOnTKWs", "fileExtension": "png"}, {"contentType": "9ROHp9iZDv0vJ0jZ", "description": "dP2TFERAegCvyyw0", "fileExtension": "bmp"}, {"contentType": "QdnyQT4PipgkEvZd", "description": "DmZTzofv9qJfIHiA", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 144 'UploadContentScreenshotV2' test.out

#- 145 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'qdXrCJz9PGVh4n6e' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'mR5i7ZqOAUo3DUm0' \
    --userId 'HeHmCTGiTURiMNbh' \
    > test.out 2>&1
eval_tap $? 145 'DeleteContentScreenshotV2' test.out

#- 146 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'O2zJyHEXXjSiHFyi' \
    --namespace $AB_NAMESPACE \
    --userId '0inSy3W3qOXUbo3v' \
    --limit '54' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 146 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE