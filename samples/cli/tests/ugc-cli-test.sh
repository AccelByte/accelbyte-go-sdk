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
    --limit '42' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "ox0ISnWh9aHVQDPB", "name": "fnqu2tUmJz072sMM"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '1MReHk9LVTfEhAhn' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "27LwS03DShq4Vc4r"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '6a3hr3xQxVraA5Tn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '5em2SsVhy1dnxbh8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "iEy3DwxivNiD75ku", "customAttributes": {"PSNK1ynzxrIHsqKt": {}, "n625EcerV3Eo5tZR": {}, "HgOMKP2hrXsb3hw0": {}}, "fileExtension": "asrteMZTtunMTatA", "name": "2VbRR9eZsmKbjeNt", "preview": "JLUModNp6qncWu5k", "previewMetadata": {"previewContentType": "eHFJW8GBoeLtdPrZ", "previewFileExtension": "7BcHB7ym7LoR2rDb"}, "shareCode": "RLfAuCWdeQogf6q6", "subType": "tFFopoK3O4MnBWlK", "tags": ["wUbKeHpLtWM0qOJd", "srhKFJotaWGEvJi3", "WN1zDo0f8E1Q2fhb"], "type": "xXLzCp3eU2IpI9WW"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'KOa3EG45nV0jHvTM' \
    --contentId 'Heu59LYYeFieeFlZ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kv1HuIfMQDvwsrp8", "customAttributes": {"v0feiFihAZ39wJz8": {}, "X3dzMdbu4eVG2sWT": {}, "U4p9CEznTUsS622O": {}}, "fileExtension": "0c3cormgR67SkJNX", "name": "wTkoysHBZMQrJc3u", "payload": "xRx02TVaLO8JNqIw", "preview": "Fwfyfl2xCWwMpext", "previewMetadata": {"previewContentType": "Pq4C57ZYCE96rbft", "previewFileExtension": "nDTGdJrOrgtj7p5G"}, "shareCode": "nI2N3IJFhbmr34KK", "subType": "khjInhkeKvavgkzF", "tags": ["j6fQqoIjoaHF8Eud", "hKXvPRQlf6hLapZH", "Vlt82YJqq7GfGZP3"], "type": "Cmq4VwtO3Ud8Z2It", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'mXZzldIHH6NjoDTC' \
    --namespace $AB_NAMESPACE \
    --creator 'ReV635rgeAHZdgZm' \
    --ishidden 'Z2wuOrSgoORq0krY' \
    --isofficial 'cemIf0AVmr3GRegr' \
    --limit '57' \
    --name 'jIfEFMYsBmpHWlur' \
    --offset '13' \
    --orderby 'kLps7zH5xosdIcgo' \
    --sortby 'GViQs1dLv4vSQ2Xm' \
    --subtype 'HedK0aSPOJKLyDll' \
    --tags '["fik6E9XSgy2YZrwf", "i4cljpLmaXWSWULB", "ihtfJrBzs3h8eQA4"]' \
    --type 'MXXLStXyMHqGPM1W' \
    --userId '6D6zFUyRZy1x2cnH' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '8DXpO42ot6N2DBg3' \
    --contentId 'G0rQ5XGj3cdj66Lc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["40LDz9lKFzmnXS8o", "CnvGoObklhUY27wo", "DIOfWm93rBrLpb8l"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'leY6yzb8vy5SOTH0' \
    --ishidden 'aEJ8YvO807BdGyDa' \
    --isofficial 'E2pRhGeU2T7RKLGz' \
    --limit '23' \
    --name 'klTCzud2XPIofPmA' \
    --offset '70' \
    --orderby 'aa1iljG27jyHAbzc' \
    --sortby 'K0E7DhHxv25KmyzM' \
    --subtype '65ULc3bFR9QKovuL' \
    --tags '["Y6W1AqLAhlp4erQa", "HZL99DpPwN6aVzRY", "kPAJyZrKMRM50AP2"]' \
    --type 'djCN6nvD0OgnW1Xk' \
    --userId 'qrZA5M1ENZJi16f9' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["K0A7Ql4thqLCtRlZ", "TDHa92caYybnwGzg", "KqvFZPlN8icr6TPt"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Og4wSZFP9e81vPlU' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'V1FjvZZNvJHW6dBx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'VTQw5Zn5NiFRHRo9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'iF2ltOc7FH2D8Xra' \
    --namespace $AB_NAMESPACE \
    --versionId '9sbsQfiW5Zo5f661' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '6nIj2zI2tnukI0kC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "BKSf0I754lkJjjXt", "screenshotId": "ejTqdWJc0F9NYdTV"}, {"description": "nNIVa6iwNk6R3Mrk", "screenshotId": "vRGxmxQ03FpZEkMP"}, {"description": "6oH4G1fTA2dWD0fW", "screenshotId": "pZ512xkpeKjaWtRH"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '3NEaHHtPTcnGkahX' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "T3s5DoRTsmBojIpT", "description": "oW2LV57HJftDdGug", "fileExtension": "jpg"}, {"contentType": "CLeJdiIflTaXyXlN", "description": "QhQjtWr5KKQryJpo", "fileExtension": "jpeg"}, {"contentType": "Ec71mzVvRozIFmZK", "description": "v3TOp5DeePDfS8yZ", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'W3qnk3wlUEwIfa70' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kCKguxTiPCJO2ifc' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '4L65qDdy1SrolcIN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["bo5fV9slcb5akvHJ", "Ou2kcnnPcUDjgl8G", "A473Rh6jmwi3VlU4"], "name": "cgZcVXb4MCv6vRwx"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'loMuDVlq4M8wpmhc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'EQREsxOKOMQrk0UR' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["llAtL7dFIUIFuuKF", "KQ6sSvBTlQeX49Nx", "kgnNrKLvtO30Lb3K"], "name": "LXk6aCDDZPl25VKg"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'xww1JclM8LEd7olb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Yi6yWFARunXOLb6V' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "WfNJNTTHgxMQ4Pqb"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '3DDN6JBSFHHmzj1l' \
    --body '{"tag": "ynI7QmES4p12FEgp"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ODiaWu4ADLZYDJmQ' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["B5D9xOwoyy5xrHNA", "w7SaI2uPwL7K2BeY", "8VvUGT6NvgNDDKCK"], "type": "cZ1UKQPlTYmsZi3k"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'OGuCgH47MabExs3z' \
    --body '{"subtype": ["mLyBVSEaaE06ypUQ", "8Egqc9oA8ewG4T7x", "UQT9RuXwnIcnWMuf"], "type": "wrm8MUzTXx80soLB"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'odqPPOamJeQzRcV4' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'rbmjw3L2q06Zmcok' \
    --limit '33' \
    --name 'zuNmalFEyYIIDwjv' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'mhNJ0fr3VM4zTkv2' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'z5VNoFSpZxJjw5YD' \
    --namespace $AB_NAMESPACE \
    --userId 'IVZcYTzZIeZ0CAo4' \
    --body '{"name": "OaHYtGB0aJvG42ho"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'M6m9XgjAWTnJB4pa' \
    --namespace $AB_NAMESPACE \
    --userId 'joqpbTCg0t22osHs' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '3zn1wNCEVFW7iaGm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wxL52tQ0qVSkytVx' \
    --userId '0zdt1LUiMEgl6ZVe' \
    --body '{"contentType": "1azybSVRKLr2BehZ", "customAttributes": {"6kcKxRRAD08sJhUG": {}, "K2eih5Swu2KRGrPj": {}, "pkE7ubvWyKXyE86l": {}}, "fileExtension": "EDJnV5uLbvDkDfSZ", "name": "eJJtVn9QE7WTEuur", "payload": "OXoRtcfreIbMpziH", "preview": "iAgQBLkedXy9unPE", "previewMetadata": {"previewContentType": "yreoGN119xI256F4", "previewFileExtension": "9iYBopY8z7Rgl0TP"}, "shareCode": "pSXs9ODxvHOeXy8o", "subType": "h0l5m3gKt7DLrZmu", "tags": ["XfDcHaCjq2WSe7B4", "93SnXJQT8W7VTJTF", "FgdJrpJq1VdH3MKP"], "type": "LmfuQt3ufiTzOccX", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '5XTHD5v2J06hkMqp' \
    --contentId '4iSN3NeEErJFyMYu' \
    --namespace $AB_NAMESPACE \
    --userId '6HRooKT85L65imRy' \
    --body '{"contentType": "un7Q3IuBCuTsawAf", "customAttributes": {"8uzYEjR190jyKqR1": {}, "6ZVeQ9AeTjpoZAQo": {}, "FghvOsH7VgGxePIf": {}}, "fileExtension": "xJXVmU4hFvhbUOd0", "name": "WuKcIGZLhsRG9RoW", "payload": "C8pA7HSPuXIs4xYa", "preview": "6u0rjhL2tx0sHauh", "previewMetadata": {"previewContentType": "TQTUbcEEvxGjtHEX", "previewFileExtension": "LJhBZhHyTIh7J5nQ"}, "shareCode": "9hX1aGFinkJFfBxj", "subType": "lrCjLvpsqP82Hh4f", "tags": ["osoRe35S6pqIxvCw", "JUFNh2QPV8XoAYkg", "13TOULkcuZphevAI"], "type": "gww8jxR2R8IcM7Fy", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'vQGSJnXRKawongZI' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ft2AnzQKszYPRjjc' \
    --userId 'rg1yUHrOQwBNNZ2i' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'NRCc1Alyl8NL9jnG' \
    --contentId '0UjWPmS0P8cG9rkP' \
    --namespace $AB_NAMESPACE \
    --userId 'S2yOiWCGNWN55iSx' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'vwLdpQlwEZLetIMx' \
    --limit '89' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'vH9jVlQmrgb4NRqC' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'kcSajeMSsAptPAj0' \
    --namespace $AB_NAMESPACE \
    --userId 'BLr8JhA6CScdBSoZ' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'OkaqdmCwSncOr845' \
    --limit '94' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '2i7o8vBkdEZvrCWW' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '4TDGcUhSl46Ob1FF' \
    --namespace $AB_NAMESPACE \
    --userId 'Y2I01i4ns1NW7Z66' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'gX6b3oBx65HsKgWM' \
    --namespace $AB_NAMESPACE \
    --userId 'CvnXvQKPsoPS6p1u' \
    --body '{"contents": ["Fj1HGs4Fo54J8j4s", "zl5p73nIdAX5Nyss", "p7rBruUPW2m98f98"], "name": "IXM1d9D9GN2T3ZXz"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ju1rU3VVGoskB976' \
    --namespace $AB_NAMESPACE \
    --userId 'rmDs65s8Z0nug0Yu' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '0BXtY88msHtguNP1' \
    --namespace $AB_NAMESPACE \
    --userId 'jGT9ZzhO6qMWBS3x' \
    --limit '14' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'TGOeUhQikUk22Y4L' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '1pZRwsnc8tmxW59N' \
    --namespace $AB_NAMESPACE \
    --creator 'c4q2HCMJWYkIEiib' \
    --ishidden 'DyQ3S723frN2hvoT' \
    --isofficial 'iQXtGSyOavxX9EiF' \
    --limit '33' \
    --name 'MwKFBOoWIk3sqlu7' \
    --offset '72' \
    --orderby 'u6yQvuiZlxBaw7UK' \
    --sortby 'E88ihpnbZX4hfcxV' \
    --subtype 'YKO8DA56rKuCDuzC' \
    --tags '["rVV8cexpwHdSeX6U", "ezlMC2UHWgubSIt5", "iNzmyEG50slnLlQv"]' \
    --type 'hgZyBt5fk1MoZPLo' \
    --userId 'X9LAD9J2uRIya0ac' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ahYLnR5VCRJ6Oucj' \
    --ishidden 'OUJssB9lgW5XpYYp' \
    --isofficial 'Vg7XxP46iQuB2CAJ' \
    --limit '86' \
    --name 'gPitcwToCdCIlAu4' \
    --offset '57' \
    --orderby 'gHWjmyIJIu95XKBd' \
    --sortby '6wgos2ZUIOofov12' \
    --subtype 'j4xyKGGxZCQWFGAb' \
    --tags '["JxZdALVQ4MGBzpRC", "iKRpLIpaMQzZV9sH", "V8Q8qRmihzaCzpVB"]' \
    --type 'TdbLwEYx5DuVQeBY' \
    --userId 'zj5DdN7oZnaeXfEA' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["LjDdsxknJ1TGq4d8", "qIXWeiSvqXzyZmUP", "wK2USSaJAGLP9HH4"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '81' \
    --name 'yRmGqR07Ea3qoDMj' \
    --offset '28' \
    --orderby 'h6YxPReQyjUmHEUd' \
    --sortby 'a63cycAbFRI4IAoq' \
    --subtype 'A2UpKb67PX1475KP' \
    --tags '["UAQLyH8ybpmbfZsJ", "Y0QwA0mAGL7T1EcN", "3fbTvQPQ4wSZ60o8"]' \
    --type 'v7LvzQQcRm2oK5GA' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["CAnlC6yeNkxFYS5C", "DaPl7v6X2IqKYbxY", "8sDmcdj6S2Wu5n4h"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'y4hWuIFWLEjNNiWp' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ZmXMerLDf7OkChLp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'ZMdIhDAFcLp3WClJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '88nwGSZCwLrzINTF' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'dIBUf5fx4j36lZZ1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '95' \
    --orderby 'ioG4GVDPLmG62hpu' \
    --sortby '5mW17O3JzxDqb12F' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'ixOX1gkGfV9nOZUg' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '6aDi4058OTlcMYhF' \
    --limit '25' \
    --name 'vSvpZ4aF4iXaL6ij' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'TsbDHVFPywPYFkGy' \
    --body '{"name": "FrKkKosObCvv4t2h"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'MgUC7wsxY5oUajDt' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'yFF91lcgg8dk1EM2' \
    --namespace $AB_NAMESPACE \
    --userId 'vFWdZbzwDTSdmnh4' \
    --body '{"name": "DJLTLh8DTx7LAm8N"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Ti6I3xiSuoHALMU8' \
    --namespace $AB_NAMESPACE \
    --userId 'wLDktJfUgn03YCvC' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'vzAbNfTHaAUXadu3' \
    --namespace $AB_NAMESPACE \
    --userId 'eK1On0LtvLxVgRP6' \
    --body '{"contentType": "vm88FGfNYmvJVZYC", "customAttributes": {"AdV3e2qol6M6ybmM": {}, "FWZVtEzK5Q57zVrn": {}, "Kd25RsFpwlkLYf71": {}}, "fileExtension": "jXwovCQbcqZQ5hce", "name": "jiqTxVn9Q4mCipRb", "preview": "zoWaXO3iA7vrABaP", "previewMetadata": {"previewContentType": "09troSK2plaSAYhq", "previewFileExtension": "Er6cgHTm5ceLdQRH"}, "subType": "0O2QKqAGPidulGTz", "tags": ["FDinSDgDJy1LdbxE", "HARPb0SXWhaJsASG", "N2Sh1aY6ah4b671d"], "type": "PXIaFpPN4ZvMVHjf"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '3ErqWzQ1EHHT5Psp' \
    --namespace $AB_NAMESPACE \
    --shareCode 'L8UMHmP9ZLCCfD2j' \
    --userId 'q1iUcilqlr131MNO' \
    --body '{"contentType": "Sfa3FGkeINNZTr4o", "customAttributes": {"NJ18s8WJGAIsr2gd": {}, "AgXoBwEghZibWZEM": {}, "G1WyNORdAXSblWre": {}}, "fileExtension": "gXibZ2jSsYY9LODN", "name": "pqVxGr6L4WVJHsUq", "payload": "sWWik9STUR5fJD6U", "preview": "yvSkg7f6zEAXJ1es", "previewMetadata": {"previewContentType": "GJrDJdTZyMPKQR7x", "previewFileExtension": "lbxeX1vz2iyt2Wos"}, "subType": "8HCg1iLWEGNTmmmd", "tags": ["ciLiEZ7H4mSMbrTA", "fgbClBgrKmn7dDQq", "NQiSkKbPi49zFl9x"], "type": "tfHCUH3AOFpmqlTw", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'YdiKaZPXHHx8uLcl' \
    --contentId 'zxoBRCyO8m1Tzhzb' \
    --namespace $AB_NAMESPACE \
    --userId 'BayTUZIvVOsAyqn6' \
    --body '{"contentType": "MgX8STen7l8Iffsd", "customAttributes": {"0we4aCI88Rf8fwf7": {}, "ivBEYfiKsig8JhLr": {}, "3kmV2yzR9PAWpPmX": {}}, "fileExtension": "cU8knhaieReK9Gi6", "name": "yjHBePqCVCaqBaOG", "payload": "jLLpM9O7MUUz7oeV", "preview": "wWDb6A9qUm3tRHBs", "previewMetadata": {"previewContentType": "BpPtcB0BBl4NX5Sw", "previewFileExtension": "OxGHVLIYkIHDsXM4"}, "subType": "5m53ttaMq6WcqK7h", "tags": ["UdjZ24QQM8dbSUmQ", "MDyrc4KbNaht04ZZ", "qlVwj1KKHik1nF9A"], "type": "k16NLogyLF5kayjP", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'pQjQC6XukWnnbaEn' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mbk9pDpGngeOZ0Np' \
    --userId '8KroFGUUYKBITplj' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'UiL7Uv1MNcghr57N' \
    --contentId 'zuuMlRhrdANTJkNn' \
    --namespace $AB_NAMESPACE \
    --userId 'EVO3oEVMdQF4rDFd' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'xYeSeQtG8O6YLtzl' \
    --contentId 'WGJzH1Co01UCHFy6' \
    --namespace $AB_NAMESPACE \
    --userId '8pWowJU6wAz8vsJg' \
    --body '{"shareCode": "jYLKzI5lL6SfrRz0"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'Nef2xC2Dj5mXyQ9h' \
    --limit '67' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'gleLf8DwoW8nXTAj' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'yiNrKZvMZoFpQN7v' \
    --namespace $AB_NAMESPACE \
    --userId 'G3seblIHIVZzQJhZ' \
    --body '{"screenshots": [{"description": "3mp3Wr2CPxdS9swr", "screenshotId": "4rSGHps4qf4wF8JT"}, {"description": "abeNRSTRuYhRSHPd", "screenshotId": "oahoQFpuJCrxXsOT"}, {"description": "WVuDUyYQZJjr9SxF", "screenshotId": "3rf8H4oYWCZw4vfZ"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'ONg9gPnZfEcUnqLO' \
    --namespace $AB_NAMESPACE \
    --userId 'bU07f4d8JEGMPKpe' \
    --body '{"screenshots": [{"contentType": "ShFoGTZQuSnV9raJ", "description": "nDpHmAGzjx53tVba", "fileExtension": "bmp"}, {"contentType": "C9jKSYrnRXO8KhHK", "description": "iiypSb6fYepcIBQe", "fileExtension": "bmp"}, {"contentType": "KENeYW6fFClNDaen", "description": "EnqIBwJb3DCatYjL", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'HoTGrUQltqoq198l' \
    --namespace $AB_NAMESPACE \
    --screenshotId '039fefEIYCLNMkhE' \
    --userId 'jrWXKjPVbEbrNEwW' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '0M8M3EIAmBxnmpvO' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'xFTfKfQ6QhR7dVFy' \
    --limit '44' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'StZIb9sldUdVXEDI' \
    --limit '17' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'IqnTammi5WrdhlZG' \
    --limit '21' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'lRoMbTBMgwZz8RDW' \
    --body '{"contents": ["wvWqBgcqOydi47on", "QixdVXcyK9cDebF6", "0u8fo8WL6qsTcnZ6"], "name": "Pp8KNFYJrqdlhPOJ"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CAslyyQYkhEEoQa7' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'oBntJxpg6BOMky8u' \
    --namespace $AB_NAMESPACE \
    --userId '41BceWoLURuEvUWB' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'EgjwaRZUn5x9h0Ph' \
    --namespace $AB_NAMESPACE \
    --userId 'GnnFfnWCchEUZmdo' \
    --body '{"contents": ["vgghuXbuzSmmFeav", "KE2AFADMxbykFLin", "Uj6aSBftItdct5nA"], "name": "C2FJnRRAetG3ZO8A"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'gZqxSDvWV8KfZWtt' \
    --namespace $AB_NAMESPACE \
    --userId 'Cfc1BpQ28CZMZxWa' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '9czAGOHxTXXd5akh' \
    --namespace $AB_NAMESPACE \
    --userId 'sdfMWkNPVun3h9N7' \
    --limit '15' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'QlHSSEIFHZlekxvy' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'v4qsZPaNa0xxe721' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'm6AQRB3OOkNZ8Rhp' \
    --offset '76' \
    --sortBy '37ar03BW1bRkLS0H' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'tiJKyYOoFmb7Vpn8' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "D8GoYAoepqPgKYEz", "customAttributes": {"tOkNGuTcyL5MN3ud": {}, "gMXuMEgua2440xAy": {}, "MCS3RSra1j3u93ak": {}}, "fileExtension": "asxFZk6pYCHSPJFK", "name": "LWBGLa40HAtkQS8C", "shareCode": "8hxRvvRVCmYxAegk", "subType": "lEn51MqN8KMQrWkV", "tags": ["l3NhfcmUcWSiDOp6", "oYMEXdZnV8JgHF9F", "d66VewPAh4cqydo3"], "type": "fYfpdnUSYFRmYtkq"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '0bclCgWOdHioGeFw' \
    --contentId 'ZdYIH1F4jc8jENDi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'vMGpzOnnbcdbjZRu' \
    --contentId 'PveqqQaa1QSBzkel' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TObVxi1BHiXh5VaB": {}, "Ij4eSfJZA8BgcHbZ": {}, "N6ZQl70iBTnubrUG": {}}, "name": "tx0pqHm09UICEQNE", "shareCode": "9CsPa4ayHDCGCX1z", "subType": "ybajdVw5h7Qtbb2K", "tags": ["zFuoGuci7ZPoHJwT", "wqo5gFSAWE6Na6az", "szvDO5dTCsvHygdf"], "type": "r1EaLzXBGbHGif6c"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'vsy4T2A3nveT2bCs' \
    --contentId '69TXuicYlpx5BEk3' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"aq9l4mTueFv3ZXvv": {}, "ASpzewlqh60YQj49": {}, "FqaVy53CgDjb5CBg": {}}, "name": "6JH5LxLFAoNjLQvX", "subType": "4PaKhKokI6Jgqvhj", "tags": ["gjoFDxBsSqThS1pI", "cvE4BywiPfanJDhB", "oAJfP5pHTNddlTs5"], "targetChannelId": "oelxqwY5SswgPQWS", "type": "8FvfgDR6fOFgvNzG"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'vz6UaaR5BkNgxmPT' \
    --contentId '7k6NoaJUca2uWNbZ' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "zH8MKxzKfvpLBzex", "fileLocation": "CLibDBcbQw2xGnCo"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'TyKVG8Lryug3dx6Y' \
    --contentId '1p3Z5pTCQ3rbfroD' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "tVFv1CGRN8w8G6OM", "fileExtension": "0OruQg3xa740mu3C"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'GZC0o2ysjq4OWQPC' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "3KM2muer6Jyuk1Lf"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '18' \
    --name 'TPesghZlY4RaxgAO' \
    --offset '5' \
    --sortBy '6LivGbtt6x4VZshD' \
    --subType 'JygFLjhhSoe5XKgK' \
    --tags '["R3vNLZgxBtRlISK5", "NOpLscO5yQHcp5QG", "i974RoF36xvcIt1T"]' \
    --type 'LAl8fJgqJ1ssG5sh' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["QRIJeuS2fJSCuaxq", "iGcDLvi1kzdD5pfy", "JkrCLZnaSrvS9OdR"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["PIEPx5aGt4Du8vZc", "M97f2aWXP0VVkX4D", "0HmAmrhhRre17nOE"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'lZSuG5gWYyN8ADyY' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'GAd6VZBl86QBfc7v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '5Pc5QDJTn02aLTTF' \
    --namespace $AB_NAMESPACE \
    --versionId 'cN5LUmzQtCBUkQaY' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'wPbeSPFn47u9zoXA' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "J4ghv3ie7J89zQ0h", "screenshotId": "INO75XtGBzXh4CLp"}, {"description": "PRj1n1qkSlwXFrcD", "screenshotId": "ld8aIbMo6hOP6hco"}, {"description": "mKo4tVYICKbzLCn7", "screenshotId": "blwcD91JtllF31sY"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'AwiwSDi2DRPEit80' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "OaZTAisu0i3EtxYv", "description": "LHemmQi1tSSQV0kK", "fileExtension": "jfif"}, {"contentType": "TOEpc5WN4GbdmNea", "description": "vzNsKBob4iFuXWqe", "fileExtension": "jfif"}, {"contentType": "LxT6QGBvvEkOeSwy", "description": "O2GxS3K323SdZxdm", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'IhboRIHNJ0rXe0mp' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3BESgADfkecKJJv3' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'HGI5ZbvwGeJOVQiF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'VwUDdDyy6fgHRVAJ' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '22' \
    --sortBy 'vynJ78tHQ9UfI7GE' \
    --status 'PN1egipdbEmzuYD1' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'ZL0IDVoFScP3BFr6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '446e2aU4CzJLU6aa' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "5qMVw8kxmd9ZoRBP"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'ATgmkVwSlbt35KAj' \
    --namespace $AB_NAMESPACE \
    --shareCode 'sFpr8B0Viwz25jcm' \
    --userId 'AFFrz7ELXtEZjSLj' \
    --body '{"customAttributes": {"BRJsZVkcL2mSX7uA": {}, "B9Ji85zoKJ3CLhwB": {}, "deBXokRAXqQo4WFO": {}}, "name": "fE2OXdqHgx8g6vdE", "shareCode": "Eieylc7YgDsgzewK", "subType": "arQjPRm9sHNnxk3r", "tags": ["c6AU1mvVmiyWQ4Tl", "Ao4cySxeDXSMifql", "6V9KRmo8hLByQcVY"], "type": "cUMGgPYVd2rnIi1e"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'WpVsAtPhrGCJ4tUr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'iuxtn6SXZyQFz4rx' \
    --userId 'FFJXv8xZZwRMKo1d' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'LLC3fK0tXjIkiF2L' \
    --contentId 'QIOOzsimcOpFhD9F' \
    --namespace $AB_NAMESPACE \
    --userId 'CcQi2q4cAZQfwJhn' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'VcMiGmPxwh6XBTlm' \
    --contentId 'DdUjI4fix4EQcYh6' \
    --namespace $AB_NAMESPACE \
    --userId 'aBCXQw4oLiLEXjvT' \
    --body '{"customAttributes": {"gLJXbT9R681TdiIt": {}, "Tyx5EMtYn0dgExIA": {}, "KamkFKaVoDjURV2w": {}}, "name": "2ohZ3EMkvxzkYr3R", "shareCode": "dICzzb9cqYbGFw1w", "subType": "NSxoNuYzbjoBBhoh", "tags": ["5sY6ZNBGQugISELF", "LNaJ6fBdWhLsGAR3", "emwGPwmNgHruv5Zk"], "type": "OKgUaLJb0chCm3lU"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'lrhQyxobMDXyWPVo' \
    --contentId '1uy3jheowclqDaaV' \
    --namespace $AB_NAMESPACE \
    --userId 'KqxzJOMozSoI8upB' \
    --body '{"fileExtension": "4vYfA9qea1yj3KZA", "fileLocation": "bEbK0kxyWWMT3PE2"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'H7mODo1JFMXrxX2v' \
    --contentId 'jiNe61Lxg4ZL0k8q' \
    --namespace $AB_NAMESPACE \
    --userId 'EGLGWvdO9canVYGc' \
    --body '{"contentType": "IIKb7muWbXP8Vlob", "fileExtension": "w0xP5Z3iml9lFoC7"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'o4nOthViUHDnvl00' \
    --limit '74' \
    --offset '87' \
    --sortBy 'uyjDQUrJR3mP9xFn' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'PXFqM3S6zBLV8O7m' \
    --namespace $AB_NAMESPACE \
    --userId 'PHCh1MjD6EGo0L8k' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'cDzgxLkoD4za3oZv' \
    --namespace $AB_NAMESPACE \
    --userId 'ndd1jbqVJCIeeGwT' \
    --limit '87' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'TqAT8QbXaBIEqeA6' \
    --limit '35' \
    --offset '94' \
    --sortBy 'hkeqPJoCjW5n0V9F' \
    --status 'RS36OYVy9tkvYLH9' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'z9yVr4W5XMY1UAXn' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --name 'xhXn7lAkVlI2tIWJ' \
    --offset '96' \
    --sortBy 'QlW5LQcKGwQF9uLu' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '22' \
    --name 'kqL5sTcXBY3oe47D' \
    --offset '85' \
    --sortBy 'hFYaDfsbaGPBTUUI' \
    --subType 'XXtBtNqPAQezWJOr' \
    --tags '["Szk29il0GOKW3M7z", "dHimDn8lCKYFB1uc", "uxsToZWFqjgeiSt3"]' \
    --type 'ChiT7yY7JOxtaDkD' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["PvkFemslbtwfHMVt", "9MmWVJnvcCpkr4m2", "0uhaiywDbfdeqXyB"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["g65oey5dQMLUdqXt", "xYl1zkgqDEWuAEaK", "IGOldOVwISxXXCv8"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'pI1ilfdNZaz8xjTm' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'KJgKncvKzm6xYvjB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'Tql2jOWqIoq6JNmz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'wt0nedW7JPNC2J6Y' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '0' \
    --sortBy 'pk3wRtTNQPtMCaoU' \
    --userId '0BtUyxNYLgpNy2Bb' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'us7P4jsuzgD40vgi' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '32' \
    --sortBy '4mFfjWZearFuYgDW' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'n2sCUA6FGXPZala2' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'Tss0PHnScmdYBlZL' \
    --namespace $AB_NAMESPACE \
    --userId 'N3tQlqxvghsXkRCe' \
    --body '{"contentType": "qqHBHwpOSk90EqFl", "customAttributes": {"3BM5OThUbWPbvFRI": {}, "Dq5p7LAE2XXVseYY": {}, "63Nc0Yk20Q55NXoE": {}}, "fileExtension": "ZJyYZSWbjZkQ2bQu", "name": "AI6nmoiK7XuACh1h", "subType": "zQjONq4xe9pag2eA", "tags": ["DcAmywNOb1txb4UU", "Pn4Tny4HlNFeKkW4", "IIkF2VxS93uDKuEY"], "type": "uP9UZd8ncOUL2EqN"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'DlxXQWu10brsQ8It' \
    --namespace $AB_NAMESPACE \
    --shareCode 'iamwjk8EjzUoZVw3' \
    --userId 'rqUKVu2RqIAM2Wac' \
    --body '{"customAttributes": {"K1sLPKExnaZSb2wi": {}, "ucIUjWIpzoupra4I": {}, "qWgkc1dEx4puf31u": {}}, "name": "oB8Zsvaw6flPM4oj", "subType": "TG8ri6y4c0VNmLPh", "tags": ["Nzt9kPm44u9FqWR4", "ULpT3O3SmaZtWZoF", "PG0ta1geLg4uvV02"], "type": "mwJkZaVtLOumbeZK"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '1NqQdjugufqghrQs' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wVFTmGHhDL8FSWny' \
    --userId 'wfcmP1WsFN3wk1rU' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'FmP3wy1z3pCejWmc' \
    --contentId 'd3McAJj6CnWrcska' \
    --namespace $AB_NAMESPACE \
    --userId 'u4kYxKPTtGcjiENf' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'XFiwB1okAo3ic7pD' \
    --contentId 'AxS3sIXGuCgoxbIE' \
    --namespace $AB_NAMESPACE \
    --userId 'PeWgFaI16eBinRDc' \
    --body '{"customAttributes": {"INOwSWd3qVjcaR00": {}, "GF9fv430dQGXns3t": {}, "YA3CxqUDqbMpb3Q7": {}}, "name": "7OTdrE71yMGajURh", "subType": "qTFh51JoYjogE1s7", "tags": ["MmNXLnIVkyihGbW6", "xYSQqAZaVV5y3pBB", "iCq1Jl99rDZWGgZ0"], "type": "UYYuFGCjBLeMwo6Z"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'yLQEmCtpyOUb07XD' \
    --contentId 'RDB1Sll3v45PwkWT' \
    --namespace $AB_NAMESPACE \
    --userId 'dqfswqErE6LUtAz2' \
    --body '{"fileExtension": "IY37xetSjEx1GPUr", "fileLocation": "kS2p5xXpJySryS0N"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'vUeXQUsvXDNtW6PO' \
    --contentId 'LqKF9nqarNm2dJNm' \
    --namespace $AB_NAMESPACE \
    --userId 'pzgjsEgHqor9j2Zt' \
    --body '{"shareCode": "sxcyTcT2Nnxv3dyd"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'lRG62W7EvJTjck0A' \
    --contentId '3RCit8M3eLKpiNoG' \
    --namespace $AB_NAMESPACE \
    --userId 'LO6rBYPKrsQK2tUL' \
    --body '{"contentType": "z0mgRxTwnfl4idzb", "fileExtension": "UzTeM8tAwr1kcahd"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NYUw5lJI4sMtl2lz' \
    --limit '86' \
    --offset '72' \
    --sortBy 'mrFoY1XOzYVLCKZV' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '7487NlvAwAtCDgLV' \
    --namespace $AB_NAMESPACE \
    --userId '49geHI5FOKA5AXbv' \
    --body '{"screenshots": [{"description": "NNznRBskhq0f9aq9", "screenshotId": "nkMs82fYHROf5vm4"}, {"description": "A9AVJGLlXN2aVMXl", "screenshotId": "mjCmS9GEnZvlvbaU"}, {"description": "1CYaB1CeBEILqCs3", "screenshotId": "WpfiQDoh6q8Y1vFf"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'YQ6QJPuPGhoTByGj' \
    --namespace $AB_NAMESPACE \
    --userId 'vRUVXiEkXVbJiLUr' \
    --body '{"screenshots": [{"contentType": "PtQYIBazxnjlamPj", "description": "9gQFhZoXnoEWko6b", "fileExtension": "jpeg"}, {"contentType": "z9eYOAjHQ8VmhFHA", "description": "47s8AJwxOH2iKfnC", "fileExtension": "png"}, {"contentType": "3HOIykh0pp7KwSZK", "description": "2uHVDWFZcuTeroce", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'b37Qh4esza0E5yE6' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3LQi3gPoqbEvgLEf' \
    --userId 'LbZ2NeSCQ43rrFpv' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Umf5B1eF08I2tQsq' \
    --namespace $AB_NAMESPACE \
    --userId 'oZIbTuuWTxUBmUBH' \
    --limit '3' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'WqawRJkfNF2sAXFo' \
    --limit '61' \
    --offset '81' \
    --sortBy 'DIKJL25WuXtumwlE' \
    --status '4140KUuNDZK6y8l9' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'jXRrJJF8usI2TAQC' \
    --namespace $AB_NAMESPACE \
    --userId 'OqAP5ExELJ62e8lA' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'YSfDiPrnGMK83zeQ' \
    --namespace $AB_NAMESPACE \
    --userId 'I98NZjqa72Wksssd' \
    --body '{"fileExtension": "2ek9yA2PIrWQLXfW", "fileLocation": "8x0loSQBGUQCUnle"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'sp3ITBX06kcFA51c' \
    --namespace $AB_NAMESPACE \
    --userId 'aerd9trqQOg6sDHO' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE