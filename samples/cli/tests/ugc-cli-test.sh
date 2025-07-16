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
    --limit '70' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "2cF3fgHZJpNsaZF1", "name": "mM62gdBAyDv1jrMf"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'HPrdzcBPgFGV8NqM' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "zve49jTIStUgY0Y4"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Ur1WK2ukPq53dzWd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'CvNIBjO1UEXXyQfj' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "OaZWH3OTpnZyeyDL", "customAttributes": {"PfgjFB5MKCGFT4Sv": {}, "3mO8HAd1Cie9SC7e": {}, "bEbVz3GZuYTYMUW8": {}}, "fileExtension": "gTvzi2xiyAFJK4cB", "name": "1jrFM6NreIaAjZLa", "preview": "c9SkeVvygxNtzqbp", "previewMetadata": {"previewContentType": "rJfoMQ9BD2ke7oDy", "previewFileExtension": "aiY8oCE4lQKuO5L4"}, "shareCode": "0Wdbq5tOF2qwmcwF", "subType": "ClR7ZxZALILvIZPY", "tags": ["SWrWmNDT2D5Zh1NN", "9EcZfAU1or7Ump0a", "np5gMor3RGw6ctuf"], "type": "dqgtzgntRfrdd8y0"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '0PuUEet5VmT3TvLU' \
    --contentId 'Zy7cLSHm2qRumefp' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "34NhFYHqVgVWfB8J", "customAttributes": {"hkmIkkm9ZVnmXNdk": {}, "tREWzE6P7YOkX3Wz": {}, "9qLw5GzS2AEJ8cXt": {}}, "fileExtension": "7GH5Un9BvhVuoCgV", "name": "9qBRv3Vqa3Val9WS", "payload": "quY0pRFGnaJcNnte", "preview": "W8jpzBoYo33AvEl7", "previewMetadata": {"previewContentType": "8M64pcJNGUxzm8MY", "previewFileExtension": "8ua4788XieZLLI1s"}, "shareCode": "497aVwuOpK3kf5rS", "subType": "ZHzTdXBEy7yeZ3ml", "tags": ["EXwjjYzSRdK4ZMLc", "gdFREF5PazbdMN1S", "E6i1GgwciRtaA70H"], "type": "rnhQrPPzQRdFshN7", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Pf6ractTGa98mjdA' \
    --namespace $AB_NAMESPACE \
    --creator 'bVvqB3qpVMcmB0Me' \
    --ishidden 'UkgEUHcFNbh0BH7f' \
    --isofficial 'ianF9DkzdO8co3a0' \
    --limit '21' \
    --name 'V7LHWXAstB5ZuJyU' \
    --offset '97' \
    --orderby 'KUsOkFYWwaLENkJw' \
    --sortby '6x8LQV71PxvX1YW6' \
    --subtype 'cX9Ve1w4g174rqMB' \
    --tags '["QKTKaKvr9YX2OOgR", "8wjYMgBxnxbqpU7S", "tJYgQCE6qIAwVyG6"]' \
    --type 'XnaXANlj9PZHOSzA' \
    --userId 'Max5wDV0bA3nLAJ2' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'T4SqVOagFy9BzHBx' \
    --contentId 'PAcGth6Yt4R8aO2A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["sOc7bzYZuvW3We8T", "LqxqxZIzLHQvqWAq", "s8ujrejbDKVcj8t3"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'D79m96jSODBn8PFJ' \
    --ishidden 'TVL4bNgAYqQroaG2' \
    --isofficial '3EJIcsjrMzEUiCI2' \
    --limit '40' \
    --name 'umSHztwtXVRwXkTz' \
    --offset '25' \
    --orderby '3teFHd9Glxh2Dzwq' \
    --sortby 'WsOzXqs2gqLZ5Emc' \
    --subtype 'hgkw8wIRL9IKcefk' \
    --tags '["W7GBhaOcZTnmLJzW", "q2gv3JeX8WQHuYzr", "kEFynTlDIDsuDHdy"]' \
    --type 'T9HTjR4f8kfpmd0v' \
    --userId 'Vu8D3HEpwIq66znT' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["y9sV88YAPnPVxGfv", "0pSczrJvWdq72ZdC", "JMRNWo4AcwmXlpTN"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'oq0KTwUeGRntiFbX' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'B0QTnhD6NJdJcDQP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'IomAJe224weMtVlc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '4RMHccMDZ3d45cTL' \
    --namespace $AB_NAMESPACE \
    --versionId 'PNaqFBM9FnT6pZtN' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'fBalpQBr8NAGrGm6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "p29eVQVenTh0BXj9", "screenshotId": "rEXcOK1Cjhggi87X"}, {"description": "GrxciMVlhHI7lYli", "screenshotId": "2GR1t5yeFOA1cH25"}, {"description": "Fz74mMsbaLEzGitW", "screenshotId": "oCXfCaulGmH4iuug"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'uyvuUoDp2vVBdviD' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "DPUdw8IiMzjwXgc9", "description": "f5Li1NnsPFgsNYLD", "fileExtension": "jfif"}, {"contentType": "8muAbbG3e3up3udl", "description": "MFKnpUaV393tya1E", "fileExtension": "bmp"}, {"contentType": "YgTWAWx2B0PpM5ky", "description": "myM4ls7rpIKC31Kl", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '3k2w2W3fWEGCSb5J' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'RlcUQ75S42rfGtJv' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '2Vd7KeZQBvVhv7qm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["5n5mO3rvFXsWSvqn", "kD1ryLFJktYuNXqt", "DVe3wfMCjjNa8BEy"], "name": "L95tOsmODDKCvUxs"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'zaNOU35L6hH6pS5i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'XsPNKdfrguaM4LFq' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["TKHag0yQFKn5uytK", "AruBaOWSjd0nR4yF", "V89gEs9H0AzBaaOF"], "name": "y3q1DI9rnw5mXRRz"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '3P2XbdYEZkhDgCNY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'yNvFjpqZCOlucF0s' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "z2gHwisQyHP4Wklz"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'DVaT07ny81KJCw5c' \
    --body '{"tag": "WOkKf2rSwktUYf0A"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'mHgatZK9mzvnmSiC' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["V6uwzDX6Y9ssH8gt", "016GmjD6d8UDPhck", "hIGgwSRkCxDdKn0W"], "type": "Zo1AbJDh3EdvkUFp"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '9LDkSuTGkM3emCvg' \
    --body '{"subtype": ["MyBEXfvVa59i9P6H", "QwqwNcV3lhYemugX", "S6KL802ABQuk8lL9"], "type": "lWmlrCHLb9YhuVcm"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '1ifmEl4vRGaaBL9q' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'XjfafXguMZS9AKSu' \
    --limit '74' \
    --name '1Q0doeg18KVvTDvV' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'YJa9yQ1p4nw1Yi1y' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'yiHQRXLhR4hgF6KB' \
    --namespace $AB_NAMESPACE \
    --userId 'c8RJ9GCqKMoGl3R5' \
    --body '{"name": "8yaH7Ko7kjk6n3kQ"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'X1aBatbcCQsStQsv' \
    --namespace $AB_NAMESPACE \
    --userId 'XURboWNV1zW3j94q' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'Vgte4i1UI07eQJ0P' \
    --namespace $AB_NAMESPACE \
    --shareCode 'G2Z02UZC0z1v52hw' \
    --userId '2GQNYw4RNGgcAPbc' \
    --body '{"contentType": "5s7jea5eF0Z3L81x", "customAttributes": {"q7qbZYz4wyoGJMw0": {}, "89BgICDIlJtshizx": {}, "gV3rjGGnuDuoO953": {}}, "fileExtension": "wQIQPWsDZXPJjLRl", "name": "PbhME4SSF8S3gfLd", "payload": "mQ40TUVhwqhO4eVs", "preview": "4sth4NonfLj6TtMh", "previewMetadata": {"previewContentType": "S2rog1EdHJ8KBIKh", "previewFileExtension": "7mIxroJjtN2Xbo8P"}, "shareCode": "rm1mgGXhMITed6XT", "subType": "dMEdlu9emZLNyIjq", "tags": ["F1y42OISk4xiO8mi", "PCQw3yrhvgylorbQ", "fujzxlaJRCXFsA7R"], "type": "ft7qFjcKPpxvYlV2", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'XwWWZoZwpcKwWI6e' \
    --contentId 'EpYWj2YJdkp5iKvl' \
    --namespace $AB_NAMESPACE \
    --userId '0Zz5NdrQdDj8S25K' \
    --body '{"contentType": "lfhb7fRLSxxvsoee", "customAttributes": {"bTJH3iivdxbs7F6x": {}, "6Wd2wjouPUCd6h7W": {}, "Q3oi7pJfTtizioYV": {}}, "fileExtension": "f9durIqQTQJ2vu8p", "name": "TlYAzlXy9wBAP8Fh", "payload": "k1gVJ8TRDIVsgW8n", "preview": "2QvH5o2lgOPtPqZ9", "previewMetadata": {"previewContentType": "fOLdHMsLJAypVXNU", "previewFileExtension": "Fe968ONLQdYSWmkf"}, "shareCode": "ET24u5kenCWa9xye", "subType": "eYYsfnJeFlCwhLeq", "tags": ["6qWwCOdNtvxoHAS0", "5qjHjKVlP6rpoErk", "F3d9IdyxjfKoh4ye"], "type": "hcRvXHeEdiB0WEEb", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'nzk0ZUOEOd3xCaWg' \
    --namespace $AB_NAMESPACE \
    --shareCode 'O7YX0yfpPtK2icT4' \
    --userId 'wa9IezHwXBO6Y7dY' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'fMpNKn5jUs9O8dvv' \
    --contentId 'EZhGTZ8clT8Zhuiy' \
    --namespace $AB_NAMESPACE \
    --userId 'dvBtjA37NnBPk6gw' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'bNJpNr13gfOdWCQv' \
    --limit '65' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '1xfb9PrYZMweNbSJ' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'isQ7TVw0P8CXvPLo' \
    --namespace $AB_NAMESPACE \
    --userId 'Sj2xtPRjxKPU6jRk' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'eICdU5LvgL28NH82' \
    --limit '95' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '5a8lSrdartJwr0Wk' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'VkCMtdY6yGCH1L8y' \
    --namespace $AB_NAMESPACE \
    --userId 'j65Eo9mDHgXeo8D6' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '6pLoqxNPq6LORSw9' \
    --namespace $AB_NAMESPACE \
    --userId 'HhoDL8TG4e1KbVcU' \
    --body '{"contents": ["kA2eKmAHDXfM7z46", "DxTnsGEADsRwz2My", "unFKwRoxF54SNHxW"], "name": "XnP31S8S4f9a7OeV"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'cXWjNQdfFpaZKNXX' \
    --namespace $AB_NAMESPACE \
    --userId 'zV56LkLkU84pfceL' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'S6HYHTpcgXg8vd3e' \
    --namespace $AB_NAMESPACE \
    --userId 'xjGve6jl6ISP3csS' \
    --limit '28' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '6txAuh2KVFa0MV53' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'dK3OZksynNwpfesb' \
    --namespace $AB_NAMESPACE \
    --creator '7PrRJYBlSeVTC4uP' \
    --ishidden 'waCRySE5GznTMib3' \
    --isofficial 'fATgVDVakAGfm6Iv' \
    --limit '45' \
    --name '2QHvH2VkDlRBYS8V' \
    --offset '86' \
    --orderby 'nvYGoNcZDOvW2bo9' \
    --sortby 'MfcobHN7qyEDJDvK' \
    --subtype 'BpmXEWpc5S5TQ549' \
    --tags '["bkXNKRi3jtxFcUNK", "XC1qxD5wYq0R9Jl4", "nLoyHkskz78Cx5WK"]' \
    --type 'ud6LVqfYgxA1MpJZ' \
    --userId 'PKDUewILjehEVSdy' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'kjcg4ASApjImrTQV' \
    --ishidden 'ytxdj6WJ2etdKRq6' \
    --isofficial '7fWKqDbxOes5QKoT' \
    --limit '21' \
    --name 'kGbwUfT9IAkKJgej' \
    --offset '15' \
    --orderby 'CRjvbkUWik92xzEo' \
    --sortby 'vZqDXDkJ2WtLokyk' \
    --subtype 'LPKU6bElrmiUand0' \
    --tags '["zLGebyNAt06MFfLm", "0Ky1PH4MhK7J42gu", "wHFgyy8lYwmlH8Le"]' \
    --type 'YCqNHIsB2RyhlEXq' \
    --userId 'EqLSPajH5o6Oim5X' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["oa48j3W2sXZN6Zpr", "sXpTxiWtJawUs0RX", "NDXtwLiHAFs9ggte"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '17' \
    --name 'HzOS3i8JkeLyORuQ' \
    --offset '66' \
    --orderby '4wJPmR3PHHgvap2e' \
    --sortby 'YnoDQSOZHUpf3Qbm' \
    --subtype '1kj84NqnS7P9ip6Q' \
    --tags '["YxKnRGOUGf4Q1ynL", "GusADwpIEQLOBNcm", "BnYIJIFLJBJuIap3"]' \
    --type 'hnfgNsKyzJfTAWOy' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["2TPoAOls5Pj3WPRA", "pt97WK2yMomg2JfQ", "Tm7G2gssvUa5EFav"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'KrMr3UG1eREYJ871' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '5Zmuz3fyCF49xNTV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'Yt1Uw5PRdVS42ncT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'gf8WlFJ4BrW64YpB' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '9z0dZDApSSHdgDnM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '11' \
    --orderby 'nqEqEjckRShfSk3H' \
    --sortby 'qIWjDSJ1D6RFd5aJ' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'rwoEZ3vkdTbVV6Se' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '9uNLoXdbX7guAq2R' \
    --limit '44' \
    --name 'DPLCSEFtN0w1k75V' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '0oM83pQGgQKJohYl' \
    --body '{"name": "bfP3MrfmTGaeDrSt"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '4aSoWt1bK5ZJzCtZ' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'xmgaLDTs99Nccd0l' \
    --namespace $AB_NAMESPACE \
    --userId 'jRpw5crXuctt8Oye' \
    --body '{"name": "L22SweVh6bZCNWRp"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Yq3QzDlCtcnTlvlm' \
    --namespace $AB_NAMESPACE \
    --userId 'eKZ8xQa7XsjY61tJ' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'xLCYzgacRvPK99DY' \
    --namespace $AB_NAMESPACE \
    --userId 'gWDv0FUeigk62dnq' \
    --body '{"contentType": "MTHIDr6FcjYAqIS7", "customAttributes": {"Rbzzsc5U3ZGP6EwQ": {}, "wRuWUTTw1ku4OtX5": {}, "LjS08OUtXnkmtZp8": {}}, "fileExtension": "D4GRHIdveZPy2hY9", "name": "foJ9eTb1eFeiGW0Z", "preview": "hPtfYWyYCXwvh1Dq", "previewMetadata": {"previewContentType": "4eGqg2W3xYgGGVRL", "previewFileExtension": "p0g2cdBLMNnF4DDs"}, "subType": "GRQLyGwBVbqpMc2R", "tags": ["tvb6gBOybdqjCFpX", "XgBr2Cy3MxuPHqYt", "ASzRCjyQf7K1lSsh"], "type": "PXeAl1QbtuT4pXXC"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'XAdhweV7U6fvwbYk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Alcv7EFtqQleAiK0' \
    --userId 'KkgtjdH1GniMAq8k' \
    --body '{"contentType": "vNSZs4xKjFEqaD9C", "customAttributes": {"XZfsdRkB8EPJwiBH": {}, "3Gp3TWKEL9yrptc1": {}, "potjZZzjba1OKwwW": {}}, "fileExtension": "ct1Iy7WJwT3Tc7v8", "name": "EXdf1PiF90CNp7dz", "payload": "pmNYzDFj4MyPwIHT", "preview": "mMacaBfl8njzqI8d", "previewMetadata": {"previewContentType": "D5ul1esZDAOqnOlQ", "previewFileExtension": "Fj1xG0ykPf8NzvUE"}, "subType": "xz2mU7KPJ8iGGDli", "tags": ["O5tAZV8JfJATHfdU", "uVs7G4QFowl4Yvyh", "unQHdqG4qqJHHNbD"], "type": "YR0R98RoNxIqleMG", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'M0YlvxSdbQAEzl7t' \
    --contentId 'Hr7z5NGD6sylve98' \
    --namespace $AB_NAMESPACE \
    --userId 'h1hGSYNcSXP2wtri' \
    --body '{"contentType": "u5c0K3qVFJ6Mbh1A", "customAttributes": {"JiZXZqFjYSCiO5BP": {}, "YtEJILecXxH0L3Bq": {}, "mCSVMqWM062fbzHs": {}}, "fileExtension": "h5aIiOTxu5szMahx", "name": "3SkLOCeuK1TP9dc4", "payload": "uv81jKSrOLrEnp3z", "preview": "hRAEuyhGnE26aCXH", "previewMetadata": {"previewContentType": "y7aEddPLn4mQaNkT", "previewFileExtension": "9LFlci9AJUfloWU6"}, "subType": "JS6dbvlBZ87ej7Zi", "tags": ["GWHsXnwRYTxqJJJ1", "kBEzL3HYiDmNP5Aw", "SfAhGhYtx46EfZTG"], "type": "78Cku8r0z9s3P6uG", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'iHHetUu2jbIuy094' \
    --namespace $AB_NAMESPACE \
    --shareCode 'rsWLxuFFkJUwAcqc' \
    --userId 'H6gcLlQe8AVqg3fW' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'aNPa0Bo4TPoPUqZy' \
    --contentId 'JhGqE9dXS2BiEamG' \
    --namespace $AB_NAMESPACE \
    --userId 'tzrjiWu7DsBXKRYC' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'e3EEmqVDsPweCYTT' \
    --contentId 'uIPZo26i9aFDDsDY' \
    --namespace $AB_NAMESPACE \
    --userId 'Fk6QVZhgSGxqnEG6' \
    --body '{"shareCode": "yI2FSs24uOlTnhll"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'arXkg73f759ZKaik' \
    --limit '11' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'kcch9jdRZlLBFq7N' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'gGexkdfEPXbLOU6J' \
    --namespace $AB_NAMESPACE \
    --userId 'ZSl6VFSN9pC5zs6J' \
    --body '{"screenshots": [{"description": "g1t87pYPZ12rOu2H", "screenshotId": "NBzUdR6VPTIrl8g0"}, {"description": "M2yxWC1ir27n7EQg", "screenshotId": "klJuvZlppTv8TQTs"}, {"description": "4vBuIPMU9p0WzqjD", "screenshotId": "398fFpxwDOe0UgBr"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'WxXDtLczLpxS9TrT' \
    --namespace $AB_NAMESPACE \
    --userId 'JdCQQdgyIWjTR6mu' \
    --body '{"screenshots": [{"contentType": "ccxd4LWjht4OVtUI", "description": "fAudIUsuAbGWGIUG", "fileExtension": "jpeg"}, {"contentType": "exzEVIBrnjRtD7fy", "description": "x4HoIfEAygKvkEca", "fileExtension": "jpeg"}, {"contentType": "ElIvldQGbdR4Lccn", "description": "IvCmmKe0JTVyufuW", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'ex85rQuUcxvixlCC' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'IPKcsRv0PyTuIFD8' \
    --userId 'w46714U0RZRhvTgB' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'M8vRGp9PzGIy7SVY' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'KVCD9WEaxdqqviaa' \
    --limit '60' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'tW16jwx3Jg3o1oZM' \
    --limit '56' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'SNot3YzWEz8Ij0jh' \
    --limit '92' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'La1yFeuNYheOFkuj' \
    --body '{"contents": ["OGfmrLUM7mfTwImT", "zXLnRKbcaaYDPy05", "LUMUTgwekX2Ep6KM"], "name": "MhxWDBzSbGneq5Te"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'hwvvNoS3Z7zHCU2G' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'iT7iywJGXBAEBfH9' \
    --namespace $AB_NAMESPACE \
    --userId '89a379fFqw42sa10' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'g3l7gcWpEdTBZH4C' \
    --namespace $AB_NAMESPACE \
    --userId '7GIHZjkCcZwsJ91u' \
    --body '{"contents": ["C1eas2sDTo3xFjZH", "QWNKiAvAs2DCCNvf", "q9g6YESnSbGkmcYE"], "name": "QilhNedwATurb0Db"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '4x1UJZXUCWafOJ8O' \
    --namespace $AB_NAMESPACE \
    --userId 'sUaFpWhp8jYsBXVM' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'jsdlraowvP7ozmjP' \
    --namespace $AB_NAMESPACE \
    --userId 'aIf2wdoXd9xT8fiM' \
    --limit '65' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Up9su4XykH91pmfN' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'ymyigy0YRQe7NtP5' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --name '0TpcJHIzg24UaXYy' \
    --offset '7' \
    --sortBy 'EPRaO1X0Z6jr48Uk' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'ylFBxQPBcGT7RnWm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "e1pEUAul13bbpnrX", "customAttributes": {"7srAirXfXO0FK9ik": {}, "bZOESgSps0NbEiok": {}, "vwxY9uIP5r7Gcqh9": {}}, "fileExtension": "FNu0A1UtyKR4RdnQ", "name": "Oc6UKLAyTxj0oU0O", "shareCode": "HuwKPaANMdkXx0TB", "subType": "gQO5z6nI2ZYlschf", "tags": ["I37tFDlI6gvbfmnu", "Z6gZ2yy6SS9KplWa", "3EGKF9oLBdYME4It"], "type": "SSH2xyorhsgFAnHN"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'kw0SoiyS2v5JIPjO' \
    --contentId 'mEu7GQWNYsjW3a6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'kX7hV2kT0Z6ae6CL' \
    --contentId 'Tw7OSwJcfNrnE93T' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"cffzDY1J3mTyKVkw": {}, "7HX2eoEy0y2bxadv": {}, "CJpZbLlqieLUiufE": {}}, "name": "Tmp3JteSGQ2eyWqr", "shareCode": "MSbPnkQmjtaSyUJh", "subType": "EWCdaiByXYqr4nW3", "tags": ["OR5O2gVTXBwykoOK", "TiizFe8CHiBqUtOo", "g5ajlvnH1d7YdvmZ"], "type": "He7h9M03F24cpMQw"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'RQwphM9MASMadgtl' \
    --contentId 'zIGB93N6jsKPRlBj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"YjOHObNa3BdXHls3": {}, "7aqoxGiz8rnZKyGI": {}, "qf71xyE4NkyhFTsh": {}}, "name": "Ns4bSX9tNFzcof2U", "subType": "nMH4AYD0lLUzL06I", "tags": ["vEGllCgL490MiNXB", "eqJcVQVvtXCFPJtc", "LSw9xOZMgjKhdmnO"], "targetChannelId": "8EHt787SHzME7b5r", "type": "nStlq5Nh2vAVWs3R"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'kT2SkFKyN3XihG7j' \
    --contentId 'fOzXpcj4qLXuql0K' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "QuqT3jHmAnUAxRcB", "fileLocation": "BWyExYjZ6r3wMnMc"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '5fo6Zio96kTKVwyf' \
    --contentId 'tuIwSZFWAUb8QV6Y' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ScI7WIg1OJJ9Iw5Q", "fileExtension": "Tdi5I7vF45qM8rzM"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'ETtNxQk8D2rJ24S3' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "DHYw66H1RjFj5ut8"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '58' \
    --name 'umv3uJ63QNMSjUkA' \
    --offset '25' \
    --sortBy '2G2QDQj1E7rWqAVc' \
    --subType 'lDgaqxPa8pHAx2fJ' \
    --tags '["3q1cGTsETuG2eKwz", "lLqsDwjJzcaN1JPE", "MkkpsPZyCF9Hzpcw"]' \
    --type 'GWd7yr3ivfUnvUtd' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fSAqIa4NQ0HVqhNr", "7H1GByl6VFgvuNj9", "Enr9R31fHvR0uyz3"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Hi8CcRIK82iTqIrl", "GaTdqaKbWrQWsKf7", "v2dkevFtVvrsr5Nz"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '8tCULJyx3DA4xsHo' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'AP0zDMZuJSSBiHxs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'kLfcblCBug1gU6oc' \
    --namespace $AB_NAMESPACE \
    --versionId 'xmhKgckcI3bIquya' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'tbDUv0gB6m3x1m8C' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "39h803XoLcfGBtVX", "screenshotId": "oaTipI9VfbWPzQoM"}, {"description": "xCQItS8dV3s4HjDV", "screenshotId": "bXK8eQhzPn7lOdJF"}, {"description": "JI7YzmjxAZT9D3Cj", "screenshotId": "YmVacKawpcwAmHEW"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'G4iKxfABUAICcFwt' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "C8GPJ86TxkAEQAnc", "description": "gzDaVSrLlxHoVroz", "fileExtension": "bmp"}, {"contentType": "II2a549Sgf1uisXS", "description": "d3KmSGN83L2B4ZXg", "fileExtension": "jpg"}, {"contentType": "Szmsdm2zHDT0Y1ka", "description": "teeLzL2qEer4JL3K", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'bCw8k8zEXFwN3oBi' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Wa365ZLj4jJ2jp6c' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'OqwU84rIWchyOi1W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'DUgOnC6XHJPHQSHv' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '83' \
    --sortBy '74LHlmOEvdeEG24P' \
    --status 'TZADrMsolaqnEPvc' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'uKDQxrxJFHI5OmUL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'yY8sxir91b4xOcIO' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "e3atfrb0xvqww9ZO"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'kIEnYNmfwZ0ZEXek' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Pu8zK1ThaBS2V9D4' \
    --userId 'SjCLHVZQxVhAmJiU' \
    --body '{"customAttributes": {"k2U11jJ4Rik4t5Cb": {}, "85aG1q61oZTOpgC1": {}, "SADXhT648kFHhVYc": {}}, "name": "Q0WT5BlfViPCnjtv", "shareCode": "bhCqdM09xYZhkPA7", "subType": "298ldNfnbWCxF5fR", "tags": ["eavQjoziFNe6Rm9o", "UnoDK363zyTDtSCF", "bvMYsVWpUF0D1tTQ"], "type": "NgM2NSAfPu8HF4TL"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'ENmOje8HhLHgz28g' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vdH932y50RFo64N5' \
    --userId 'yibJTAq1GfyEFeYN' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'pk72XzIXSTSvr2Ak' \
    --contentId 'ySKQRbGTvUJ6DXcq' \
    --namespace $AB_NAMESPACE \
    --userId 'OFp08QhhvDa28BsW' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '9xMdUISXh74g8xi5' \
    --contentId 'pXuTW16nXhkJmSk1' \
    --namespace $AB_NAMESPACE \
    --userId '9zP9GKfD6oSZ1NMT' \
    --body '{"customAttributes": {"CGAlmJxF5gE3SFhD": {}, "YtU1JtdCvvzlyGEi": {}, "Qr06fF4KOXTI4vSF": {}}, "name": "g6F6KNSOHf6331uY", "shareCode": "3OY98S5XfdDQ0vjK", "subType": "0CF5JNvlCSWBffbK", "tags": ["vdvg8H19x1DxuKHv", "g7BmKlyUZPKAvQ32", "GO3oXia8LApbMlxH"], "type": "NDTfGVdcPmg3KkVi"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'YvaBzODd7xLwcxNd' \
    --contentId 'RIBaR2pLrwKn2SIU' \
    --namespace $AB_NAMESPACE \
    --userId '1uxoacVBxBsC4GJ4' \
    --body '{"fileExtension": "tIFQ8AdvrH8B4qf5", "fileLocation": "9ie0DvPFTXMsprpj"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'jm1xWvkZPK9ALPfG' \
    --contentId 'QohMyIITQfjLd0Xz' \
    --namespace $AB_NAMESPACE \
    --userId 'scMfHLShRSm0QRly' \
    --body '{"contentType": "k4z7S4Yot4qHUwwZ", "fileExtension": "cylcjMLST3Jfup2n"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'WgC1LMho0WVXFlgw' \
    --limit '43' \
    --offset '62' \
    --sortBy 'wKnkvrpzS5BVh1vH' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'DEjnWwbhCJgF75PL' \
    --namespace $AB_NAMESPACE \
    --userId '0oDRZG8o7a1tVzss' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'KBxSKJaqTGRH1NJ4' \
    --namespace $AB_NAMESPACE \
    --userId 'kL06kXnGmaEtstdE' \
    --limit '15' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '9jb3M6kKafJMbOTf' \
    --limit '11' \
    --offset '68' \
    --sortBy 'O8OFIDcdqmcEHTP6' \
    --status 'MEmRTxMVMS05UngF' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'Mfa4RjUirZNfYOc2' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name 'fHxSbOSUe8TvakYQ' \
    --offset '87' \
    --sortBy 'tVX4Xdt82NLQInZR' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '49' \
    --name '9aANN3RNU0TrMUTN' \
    --offset '40' \
    --sortBy '4nHiEcURDZbN2q11' \
    --subType 'UGRZjWhoeAgq2lmo' \
    --tags '["nAA79z7qVzZYvnCU", "GvQH5kN0xWuopR0U", "bkG6mk8IOqv8EmD1"]' \
    --type 'GIknFsdUzhu0HKzP' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["P58QOMNK8uhQU4OX", "EgIUbjMamYFoic40", "Hr3hIdnNzRBhJFX4"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["OgoWILFrVlEyAIjD", "3lepbeNC5NSamcVC", "jYU1wHKPvN0RijlP"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'EmsiIcMxQhgvDiVW' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'VLBDl4KFFDA8jqWi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'QXVFkbt2g3BF1d61' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'RCM5JqLHoUUkcuBJ' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '11' \
    --sortBy 'GRK0oAhlYJgVlnIO' \
    --userId 'MYEm5ccIJt0TXHTB' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'o8HDL1r4xLmszTnC' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '27' \
    --sortBy 'qhUA8nMSxPa2xJBH' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'Yjz7225ACshw83WY' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'P9oNujIKmpAq5zvX' \
    --namespace $AB_NAMESPACE \
    --userId 'OKHR1e3aVZhB3S2m' \
    --body '{"contentType": "Umv1Mp2Z8bQXLfEQ", "customAttributes": {"dzYMz3zSliONvVUb": {}, "JlPeodwjEV53OFRQ": {}, "0vdkyUcj2jteUcBi": {}}, "fileExtension": "xVQ49c8kkLKARlqQ", "name": "Ue6l5oQpYfVgTLLU", "subType": "qMBFDhnqT3xeiUQZ", "tags": ["k9KuBBKkWd5q1ANK", "9TphNTcgBaW69TZ7", "P8iMmEBgQeIiQ3Qy"], "type": "TvCg0HlTodl5TpNW"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId '075UieODHKKUjxFd' \
    --namespace $AB_NAMESPACE \
    --shareCode '7YOg0Zh8uagI6FX5' \
    --userId 'L1lg6u1zHpjLMANO' \
    --body '{"customAttributes": {"GGlHoBvP6v1gHmPs": {}, "8bJoOb9sY8aQte56": {}, "pqRdiNhYUWc6roHc": {}}, "name": "7K8lybHaZIGJX4Ky", "subType": "WxoriZPMhJ2FRsor", "tags": ["3txmo3WXu8tFc9KG", "7ngNlPg84HpdIxec", "yHR2dWf4T9E91IZM"], "type": "vWSI6q14oshTPyau"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'j04pGiSXR8nB0niP' \
    --namespace $AB_NAMESPACE \
    --shareCode 'kJ4jglqdvc5FyCrH' \
    --userId 'FaxYH6lYsiPDrNuC' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'bB1gJzwbc8hazrXy' \
    --contentId '2FWbqOw7SFDaAlLp' \
    --namespace $AB_NAMESPACE \
    --userId '58KgMw1Og8EZKtqd' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'OKVKSfHdGzVrEKQa' \
    --contentId 'VINm8KR5E2NbJH9t' \
    --namespace $AB_NAMESPACE \
    --userId 'kStOnOODj4LmaHxD' \
    --body '{"customAttributes": {"CcnESINM00IBBh1y": {}, "1wnMlYPhkLX9Qghq": {}, "anM07mKlUlthx95F": {}}, "name": "15dDtmf2BG3jGjcG", "subType": "N7VvT93hoA1tLRIh", "tags": ["MNfwT3dEzYeFYSEx", "XkV8CIxrClRIzqoy", "EVwJZomz5ouTENq5"], "type": "O00cCPkuSexbFMle"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'P18Ew3DFGqepTDuu' \
    --contentId 'K45Mn1wZKB4ZfVu8' \
    --namespace $AB_NAMESPACE \
    --userId 'eZrxim7te8Y24qqY' \
    --body '{"fileExtension": "swHUr1Yng3TaTxWo", "fileLocation": "EC9fbF5bZxOzb65Y"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'dVk2YRd9cda5wD7o' \
    --contentId 'IF572WM45tz9T8tR' \
    --namespace $AB_NAMESPACE \
    --userId 'INe7kEiW6dszelY8' \
    --body '{"shareCode": "wuY3N4ZFA8UdAm5H"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'xRjVckrbzq7atT8z' \
    --contentId 'lLtzzctUBrd0U4L5' \
    --namespace $AB_NAMESPACE \
    --userId 'paXpQ6m8PVLEE0Zf' \
    --body '{"contentType": "FrjwH82bvzJDg5uu", "fileExtension": "NkZQMSaKsJZ4usNA"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'aYyjiJCNB4mAhAOR' \
    --limit '81' \
    --offset '17' \
    --sortBy '7gHNJjNRG2npNa60' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'JlHPhnL6W9Xrxmys' \
    --namespace $AB_NAMESPACE \
    --userId 'qi2Sx6xF3CoLkxYB' \
    --body '{"screenshots": [{"description": "nYBOM6HqVyeeHHk0", "screenshotId": "4kH3XkxkCITXyNkK"}, {"description": "DKof889VB4YePuQC", "screenshotId": "A7Bsvi3t0KuUfCho"}, {"description": "A5SwiMaghnqvz5FI", "screenshotId": "GmnP9yjZtjTO7jAb"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'BbgBw6vZj4hXozpf' \
    --namespace $AB_NAMESPACE \
    --userId 'rcu1DUNepWgqrubF' \
    --body '{"screenshots": [{"contentType": "wKB7sfoGTh0Ach5H", "description": "KqQZ3harU8f5jpnm", "fileExtension": "bmp"}, {"contentType": "SsZIXjvmTC7NulPT", "description": "5aeiGROh50Rw3q2L", "fileExtension": "pjp"}, {"contentType": "qhT0mzRiv3Cg7dZ0", "description": "ZiOwvvWRlNZrQaYM", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'qy5MFFnlUk65c10C' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'qmxDloBPflxMpWHF' \
    --userId 'KYKdi4ySJqZ3wddY' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'zuZdG06AGQH6NZwV' \
    --namespace $AB_NAMESPACE \
    --userId 'khTkprYHthOWHDjz' \
    --limit '43' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'hltdATcwXK8Ox4Bg' \
    --limit '75' \
    --offset '11' \
    --sortBy 'gV99Kx9dpMVD2xSg' \
    --status 'DyvM89hs7ZzSmNip' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'lUXdHG0blaUwrFUQ' \
    --namespace $AB_NAMESPACE \
    --userId 'lQ0LB9IbqFqSrz5U' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'MdiuH7a2HYL3PHh1' \
    --namespace $AB_NAMESPACE \
    --userId 'LaU2BdYDrG5Z2338' \
    --body '{"fileExtension": "wfCB7y3xQsCU0NFI", "fileLocation": "reFXTYWExl2dAJyP"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'clQoquyS1vHDO0KB' \
    --namespace $AB_NAMESPACE \
    --userId 'GfaOZc9cJdBRae7y' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE