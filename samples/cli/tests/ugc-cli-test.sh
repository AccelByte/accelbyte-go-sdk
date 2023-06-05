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
echo "1..92"

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
    --limit '7' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "QyCGwziXHMFMtmD0", "name": "yF0DTlkdgJhrv5a4"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'TqoV860ZGbu8Og67' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "fnEcAkfsqbDOjDgn"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'AMO6udeuLK1jR3wf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '16BwHxj82FunFY3U' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZAcY1XJ98rLZDbw8", "customAttributes": {"kLdcbSAgnLRtfXmo": {}, "HIbVI0pcQRa9X5pa": {}, "D41yXONTFAQ3F1Zo": {}}, "fileExtension": "jkgIu36Cyv4knMzo", "name": "OpFXfcrXgzk4dbbu", "preview": "K8ojKJFNrDUeozS5", "previewMetadata": {"previewContentType": "TpnDFXEWa81jh2r5", "previewFileExtension": "QnhbxpBZrigsk4BR"}, "shareCode": "AeBzoQRMc22PRFkO", "subType": "Fj4Ocfx8RvVYyLWv", "tags": ["lrW3d9A3zt0UH5VO", "McSr5oa6osIkty0L", "Cm8JC7EbaZ8KfLKw"], "type": "bSk0TcytykSNh588"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'jfXSralcSvotv1yi' \
    --contentId 'd4hjff3A8DnU2Vtm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Q3yfg50hfSVmlFfB", "customAttributes": {"vO5sGHtO5UpUgcae": {}, "wn13VcC7nDRVzERc": {}, "5tI1rBjgW4btbSWC": {}}, "fileExtension": "C5JuIPos2kk3RDUz", "name": "HGd2d9nrR1003NeE", "payload": "f56HHoJDUAvR4cWp", "preview": "OhuYiIfdqlejwKvG", "previewMetadata": {"previewContentType": "7eb6f0s7e5fnFTzl", "previewFileExtension": "OwJ1F0oHNXxAmfmE"}, "shareCode": "P1R78PK0yYduTeBK", "subType": "JUcQo0J8sk9TyyOs", "tags": ["WksCQH1ow1BcvfHn", "YWs12ShFaGrWzTic", "B5VhyKZOFyNjnZXj"], "type": "vYbbSbgNMSBXIHNc", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'm9mWT7f7taJGlcFV' \
    --namespace $AB_NAMESPACE \
    --creator 'zIH9uL5MLN0a9dp1' \
    --isofficial '7IYxO2aYwLLKFa3q' \
    --limit '28' \
    --name 'rLHKhDJOPJSGKpgy' \
    --offset '39' \
    --orderby 'J0PYAzHHZernXXsq' \
    --sortby 'aVyp313ceKJNaqDt' \
    --subtype 'DlG0sO7d062UyoO7' \
    --tags '["nTYRQby0BTvhfHzY", "Syl9kYEFvFpJnH7l", "39tDbJgUwtcby485"]' \
    --type 'uvb5Ogj4uASs99mX' \
    --userId 'TumD7UfKbkYQHRLG' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'PX9Ey7JFEJJGLF9d' \
    --contentId 'CbL6QivksbpwWOwC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gGTZbnujK7vkKLRz", "9SgLYaYINYW1DcYg", "UPDMCv99eEAf4dZV"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '1gzn83Efv499NiyR' \
    --isofficial 'WSI1ahJimhNVcJMF' \
    --limit '94' \
    --name 'cmgRD8MwAEbxX7qj' \
    --offset '58' \
    --orderby 'TwnFfHw0oa5Z1Ps8' \
    --sortby 'Ekozq0eOOCL9okvu' \
    --subtype 'ZwxVm3b4fi0qgxu5' \
    --tags '["q4jmKq3ltxLYDSBH", "Fz7uZPcfh9EWC0Ca", "oMxezhkTug0ignZR"]' \
    --type 'TrKXPnaIhldVwx0C' \
    --userId 'ENWqVxkvcpnfz5hj' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '8O194DK7tVMTV4Ys' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'z16ktQump23CBsMX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'h3vNFVTTW3Npx0b9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'TJ5b7N92SJksiYH5' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "FIidIcCmqFIlSxqY", "screenshotId": "vkOjJCkqjyX3eBWB"}, {"description": "EiChcpffl8XMh9jN", "screenshotId": "znZua96EYH1B8GfW"}, {"description": "RtgCIkXdnujoXnv0", "screenshotId": "VEKD9b3x4eBxCHXG"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'M8wtUoGI68I8lHVN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "jDpXrj2jylUbY4Oi", "description": "mMCpeFHkB8nvoTof", "fileExtension": "jfif"}, {"contentType": "BBJkzc6Dcga6tRq7", "description": "eN8JD0KRZgBHGvsm", "fileExtension": "pjp"}, {"contentType": "XMcwEZhfjhU2Dupc", "description": "7fp04E1qIChxRYvW", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'roZUym6xJGGyBNXo' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'CxYm1yUgqWixkvaz' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["E3rfywjsr92mJxVK", "Ip077zzKEBCHppUk", "wvuKsiUwpcoCbv7w"], "name": "P0SESGnv7AljS2D1"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'RQBLahFanhtJCFxh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'U9XLvTRZtegLfcj9' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["a4GdtTrgZLMaD0Ey", "vQBD72SG4RQV5A37", "aH0jyBbymEzlNNaE"], "name": "JrZp1RHYK2iCA9Q1"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'nUmnPHhogw0gOWFm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '4gFLCQ1lyFrOjLEz' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "j6eaqlOv6EK70ZPg"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'kbVMv5LXyxXmESgF' \
    --body '{"tag": "1M8wCudbOGtAD7ff"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '3SPq7sEkxh6YJyIT' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["AsC70YIcZQdOQTxi", "tBnrNXcgxgLRp9T1", "XT9vjqfmS5mi2qwE"], "type": "4WmhduJKo1P1ufmF"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'UYY28xyR8r5yHVei' \
    --body '{"subtype": ["05GwaYwNHcT7rR1k", "4mA2LChXevH5bzlr", "XdGFKt6kadZt2sFT"], "type": "aAE9jx5zthYBwsuq"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'kEX17S1HN6EmNHr8' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'JMTuRxualSlnqCTZ' \
    --limit '38' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'K1HO07ScZeQ0ELCy' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '6hgzsIOpbhGafWTV' \
    --namespace $AB_NAMESPACE \
    --userId 'ltjvJ3Zph9ZFW53p' \
    --body '{"name": "W0O9DUrn5ISrHoYb"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '4Ju0VUED5QZbQzeL' \
    --namespace $AB_NAMESPACE \
    --userId '5ogiF85Lj159Ybno' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'tXQIsMZ5PfYMRVRu' \
    --contentId 'DcIBjouRTV6PMB3S' \
    --namespace $AB_NAMESPACE \
    --userId 'mx7K2R9FuvkpGrJL' \
    --body '{"contentType": "ILec0Kj4N09nXm5o", "customAttributes": {"daEWmKgL9zzV67tN": {}, "3cLUUKK1G4dZB1kI": {}, "Q0syGZpO4aRQVBqz": {}}, "fileExtension": "X6wcuVV1CvodzedZ", "name": "AeNbujGz1PFadWtA", "payload": "EGjtcwSihYQbYlp2", "preview": "xOKgXnSIAaEusxb2", "previewMetadata": {"previewContentType": "vVSSEQbiNcMIdAw2", "previewFileExtension": "J5UuQvORXRss2FDH"}, "shareCode": "4EeWgdsBshaQ9xUu", "subType": "gDYAabZ44z58g0ic", "tags": ["8PlaxtUVqMzDnEZ4", "FjDWF77tSBz6H0RI", "iRY0aNVHxGeTL0Q7"], "type": "LLv1k11uohp9FtRj", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ixMWC9141QQLzwAS' \
    --contentId '41wlCq7qPRPnUGFR' \
    --namespace $AB_NAMESPACE \
    --userId 'dMoxt7mqPnvQmOtP' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 's7l609bQz79buSS5' \
    --limit '21' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'o3FShAypynhKfnC0' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'g6qadLVs4QYPNAdB' \
    --namespace $AB_NAMESPACE \
    --userId 'p1OI4guZQrMnYtix' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'yswZ5N93OvRsBNC8' \
    --limit '78' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'YEjg5VFeEukMJ8DG' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'FCsIujf2g0ipC1bu' \
    --namespace $AB_NAMESPACE \
    --userId 'hbpGTAjGgjaPfJkN' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'zZFsnaVfVkiJp6Wo' \
    --namespace $AB_NAMESPACE \
    --userId '6TOervKwsrO4hFyY' \
    --body '{"contents": ["gtki9BKorUTbxRgz", "2emyKfG7gZ4rlDmW", "Pra1T54SJ8XuFTHd"], "name": "Q1vAjTOUZJMLHTQJ"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ow1sk3ZLdjJqRrmP' \
    --namespace $AB_NAMESPACE \
    --userId '5z2QZAt930xOuRvJ' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'SpdTqVciUVyqx00A' \
    --namespace $AB_NAMESPACE \
    --userId 'yIcQUXyXwQnuhq1b' \
    --limit '93' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'vOebLtkce0RNMQrR' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'P53WlBGy33710GJx' \
    --namespace $AB_NAMESPACE \
    --creator '5g4a1x1OcgyDrKpW' \
    --isofficial 'Rl2mftV5c1eBw735' \
    --limit '61' \
    --name 'l6dg2GpVfLu9KjRe' \
    --offset '56' \
    --orderby '7xODg8mVDDOd1p4Q' \
    --sortby 'eHA1cCcubXt9DHNO' \
    --subtype '6MZ5DTxOKJ5UW6wc' \
    --tags '["xWjWgkw3IKwoPB04", "5mjMcym5T5LaQ1gT", "y04II1dh3VcFlI5O"]' \
    --type 'HKdgPyPLyPaxuBch' \
    --userId 'CbnmFFWaJLM1mb5s' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'bjtIu4uHEdyg0q8j' \
    --isofficial '19fG678eKB1tDIOL' \
    --limit '44' \
    --name 'nEFjsn1GuiiIMmWI' \
    --offset '69' \
    --orderby 'tuZj5qfasU6P41Gd' \
    --sortby 'SfKSXDYlgA0444ei' \
    --subtype 'kGssr8DtCRHoACCt' \
    --tags '["ICPTDy3yDqpA5wp1", "uSwre3EBKbzAbw6o", "bURwxzRoU7KIX7xe"]' \
    --type 'UUbHLImj45j31Weu' \
    --userId 'VfPjBoNolHuQvUx7' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["7Ap803Uj8JNeTzxW", "h7BSSs6VvYzkHHVp", "OspH1AMRahbQaWDS"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '28' \
    --name 'umU3InzFEIwHGv0C' \
    --offset '96' \
    --orderby 'qRVf6LpOUA2cH9Cx' \
    --sortby 'xT2j2YjLUY3DDrBw' \
    --subtype 'lcueGHO696NL9Vha' \
    --tags '["Q8UoMoeaYscyTNQp", "iQTxr8Ymre3B943M", "NFc1hEcPiIgrht6I"]' \
    --type 'o3vOrxv89xBUYCqH' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '9CUYg0wQbNIlVBid' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'gxFtIaEea3Y0DaPR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'bCkfndXWawBrTzj2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '76Xf2rFQtZ9hIKXh' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '7YwXSaGP8LiHPV3c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '97' \
    --orderby '9s3xGXwNEiCklYG9' \
    --sortby 'DIuKUrb8NVdtx48v' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'zQOjCHLOXW22LmZJ' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'vHl7xIj5lAEPw59s' \
    --limit '24' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '22yw4Mz2A4cBJRbc' \
    --body '{"name": "FAfG8SvWl0aRlCyz"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'wlAdqi0yRtpo00GJ' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'kjsdOMpJ2tnUJ6Pj' \
    --namespace $AB_NAMESPACE \
    --userId 'VKBwDIz5wxfN39TZ' \
    --body '{"name": "xMr9qyC8Evf7JYQN"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '6uaT15CRqb7RacZd' \
    --namespace $AB_NAMESPACE \
    --userId 'Xh6eGXK5GiAihUUP' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'V4RluCFqMJU7MxoG' \
    --namespace $AB_NAMESPACE \
    --userId 'mtoeDTeslegDL12Z' \
    --body '{"contentType": "UzlSAfQlipcE25hu", "customAttributes": {"4rFyvcMSYvxgMOtE": {}, "YvzwVFskKhBoFEZh": {}, "LQyl0SQP1lmbs4wV": {}}, "fileExtension": "gLKPL7F3zJTYUyGc", "name": "fe1DJExbtZjUxSze", "preview": "EtwiSwchTogI07Nd", "previewMetadata": {"previewContentType": "S7hvCdwvepaPf0ic", "previewFileExtension": "2ZyYuxRRqPJJV9BU"}, "subType": "BWDBF6JAcELRUuPP", "tags": ["HwAEAHUYrpXcMJK9", "8LoqnYBm2uxSk50U", "LDUFHA3n5TyAE1IG"], "type": "7CAnug3ya2VkTCMy"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'BDG1MWCqyhmYh9G0' \
    --contentId 'EdONZFH1eAKbD7wf' \
    --namespace $AB_NAMESPACE \
    --userId 'BscmduAQTPVkd9lA' \
    --body '{"contentType": "4u0WGiZ7DmPoNVG9", "customAttributes": {"sMTITLrNpeuzIZ8E": {}, "wUc5u5Xn9ODADL7i": {}, "OPzyxJCdMqDIFCZC": {}}, "fileExtension": "77N5pD9Fou9wj6C0", "name": "b4hl4nyGGUFVFfoG", "payload": "Gv9FinFny8d9mEq3", "preview": "djqf6ObStUXUkaJw", "previewMetadata": {"previewContentType": "E7fNtlUhxq6GLWQL", "previewFileExtension": "3o5xFLxnVdjqXgVE"}, "subType": "tFRBf6pAMe7v8pCe", "tags": ["1Nmc7Yxfij7XzjH1", "RPdrvOx8E5tkCV12", "tkulhBPojv4v6tRx"], "type": "nj4agSVjG0o68LLp", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'ywLHbq9eo1mQ95lg' \
    --contentId 'p7GorHJZsvtoVccr' \
    --namespace $AB_NAMESPACE \
    --userId 'TYZDPuub3TKCFrZd' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'JbA9iICrXvyBFITT' \
    --limit '43' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'uUPz4ufStaDVPPtl' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'fAGWS3VCGKF1kPJG' \
    --namespace $AB_NAMESPACE \
    --userId 'kSTzprUEZKc4hEji' \
    --body '{"screenshots": [{"description": "GTjZGY2TdyP8c6tY", "screenshotId": "E8wh1nEu9RWgsbkS"}, {"description": "DWDiG42tQ8GZt8re", "screenshotId": "ZNkmdDccyK3H9Sr3"}, {"description": "I28ippk6OzPzUCiv", "screenshotId": "KkK9cDZ0Dcu03pBT"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'azQYyFLqdkq0w5Fy' \
    --namespace $AB_NAMESPACE \
    --userId 'ZI7QUmJvUdDHrK8z' \
    --body '{"screenshots": [{"contentType": "XDuootOk949c8RYc", "description": "wYtkRAhvghidbhdq", "fileExtension": "bmp"}, {"contentType": "fENE1n3Erp4eLLrs", "description": "TPiMmbkv3mI0F3i8", "fileExtension": "pjp"}, {"contentType": "cTF1paqvtTWYf7GB", "description": "IMHWL38ygREimYDM", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '40jMd17L3T3pBejl' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'E1iquTNSYBxzXTAC' \
    --userId 'ud6qfAq0EQR19RDJ' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rJEVgczUgT73IMFZ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '3qhHsAFiuOpoVAYg' \
    --limit '18' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'jbM9Phdm3DFS5KB5' \
    --limit '52' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'CAKDWPX2GqelKGyt' \
    --limit '44' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'bCYx92CShAv09Sir' \
    --body '{"contents": ["jHmpJe7eAk0zpXEK", "weXA9sgfaEY61mPh", "5tUw6Zu6DCX8KrJu"], "name": "wDxpuQqxHslmKdrZ"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'tOu4mBQXtchBCVcz' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'a0pQeiOZeALoyDPj' \
    --namespace $AB_NAMESPACE \
    --userId 'rT3asBNNKpcpoJj0' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'ISgpy4y05nNGCZjj' \
    --namespace $AB_NAMESPACE \
    --userId 'pBODcdB6WCMbCjCo' \
    --body '{"contents": ["0vS3d0oZrVWI3IUV", "Sr1LWkGyV6pRENrX", "ws84bmkGQhyplTyP"], "name": "J0NNTyVnCw5jWrNU"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '8zrNUD6jjpOeE8ua' \
    --namespace $AB_NAMESPACE \
    --userId 'y9rdYnWL9gwmw6Fp' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'Gx8JttTCdHEuffjJ' \
    --namespace $AB_NAMESPACE \
    --userId 'wyQeeeQhf9sblhL6' \
    --limit '9' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'YDFlfeyhomjdPlZd' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE