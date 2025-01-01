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
    --limit '40' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "93oHceRm97kqcrEa", "name": "E39O8rwub7Q9IFC6"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'jRssA9K2ugWJeqkk' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0OKckgnjvbIFtly7"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'LORMmL5lw5z3ZliH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'uztpUNfihvEKLRiE' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kJe0MHLSl6H1Q1tW", "customAttributes": {"xmZeIouszZZoeVc6": {}, "gvNRx5riGAFXr59F": {}, "Yzo83xHTLrAI2P27": {}}, "fileExtension": "3j3HybKVJJaDwn32", "name": "rdCPH9wm5412sQhW", "preview": "zpChmqbrxO64d4AS", "previewMetadata": {"previewContentType": "v0lJwK5XBD75Xi11", "previewFileExtension": "oD8WmJKzCDPhIU4X"}, "shareCode": "2G3WQ1Ga125mIgGC", "subType": "DUXnSwOWgIccZ2Or", "tags": ["Mio4sAfpOVUMTHXs", "toeKUrh7ZV8jkrIM", "X4HQXyp2MfvIoiTH"], "type": "aJxULTc7NVCO1ZdL"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'YpZKCiifuAuM2fc2' \
    --contentId '5ghVxcIo5aEtyMva' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9OaOsaMFF9Tq4RLt", "customAttributes": {"YBb5IZgIqDNHQn2H": {}, "v8MjxiREXvwiQBlr": {}, "ro665ZTapQ6KSE1g": {}}, "fileExtension": "xLSZahToVFwWnGdt", "name": "bFJszwqLwMdlsJnM", "payload": "U6PTTOv8kbjDoeNR", "preview": "h2QoMsSNVkeSte7O", "previewMetadata": {"previewContentType": "obJIGkzXAJq4iPR0", "previewFileExtension": "fhzQNg1CEp8iqr4d"}, "shareCode": "32pfpRmQzuh185mK", "subType": "VUVX4q5ASNDVvabn", "tags": ["Icht3koe4OK73xG6", "hUUf93g3kxwrZ0Ia", "tCF4VwJep6c8gdTX"], "type": "qdUamJ22PLMeCzD0", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'boAa3N3XXlL6IqWe' \
    --namespace $AB_NAMESPACE \
    --creator 'fvNHp36hADaMZeX0' \
    --ishidden 'BPjesIsFLSjDreDb' \
    --isofficial '7aKI9JRnIGcH04AU' \
    --limit '13' \
    --name 'BVDq1y3GuB7vB7yA' \
    --offset '68' \
    --orderby 'I5Z611wuRSWz6VBb' \
    --sortby 'MjHmfe6EQnbt9Ulu' \
    --subtype 'f3mUdWHvMCW0aoC0' \
    --tags '["X7dGHYkDtwVrw3Cd", "EkFIaaQRyFf56HOj", "J6UhjkDVxEhMxNCK"]' \
    --type 'h40jCTNZGALN4Ivt' \
    --userId 'EzNYmCzaqhuCNp9A' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'dxSmUMi9ei8N2ZHT' \
    --contentId 'AjQ87BcNgbAHARmt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["CHOn0I33EzouufJD", "MLntxjxMrueoWTdL", "li4ieVbRbBz7C6u5"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'LLmrjKaRk39G0HIZ' \
    --ishidden 'ddc33cFOijfHQusM' \
    --isofficial 'wLuXL7nC6EuJ2QlC' \
    --limit '24' \
    --name 'FjoVlxgCyLkSrgMh' \
    --offset '29' \
    --orderby '39cyaiiIG54FvuXv' \
    --sortby 't63i2QefPq9TRodZ' \
    --subtype 'HQNvKBAENqWOUOOO' \
    --tags '["OXNvxQr6DSql8WlU", "DKt4OfO9Djk76vMw", "ZNb3zOiE20FZNUEB"]' \
    --type 'hU3DlRrwJV1p4Jr6' \
    --userId '8HO0aNtrBZSaki6U' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["1sNuC9bgCItWThil", "MwAbkBdMFFwczDuU", "jEcFo4Mh1wsrSEv9"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'RfUrFmNdZ9HrgxN7' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'YB3OJuxJzAtWe8VT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '7Og8JwG9i3qpXDnj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'KLzbIuHQGa47qxG9' \
    --namespace $AB_NAMESPACE \
    --versionId 'ndr9xebIHkVACyCh' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'lzLy3FtTExZ5VmHb' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "RIwcMX5uXCEq5KwP", "screenshotId": "evikZfl8fwz9eUtV"}, {"description": "sFxzBSiUaFghaeWP", "screenshotId": "tDHuEzl5XwP0kTDj"}, {"description": "FGJ5Skqgcfwtcrtd", "screenshotId": "97KmoQ0mU3jHcrN3"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'M7nayVAlqeGc1twV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "YdNaYOuRGWLyIU2c", "description": "FszQlmQVbZdQ3Obf", "fileExtension": "jpg"}, {"contentType": "HA0KbME5MTHfC5uc", "description": "arTQwHq32u8ZquFj", "fileExtension": "png"}, {"contentType": "miOrHaD55so6W86V", "description": "2quCxpOuzwbNAeKx", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'DCUGUOk7Mo0ev0GZ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'eIUMELtnZcx58EA8' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'pyuipN0w7Kghm4Nw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["f58VgjsLdMC2xozY", "a9lIGfDQSdLx6ZQd", "hkirRbhax0FV7uOh"], "name": "CFh5bcEsX4g4ZetM"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'b9x1NnqACJfAEmQ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'QKNcEE5tJ3eJejZj' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["bJz43vYTn9resqsj", "GD5xOk1obIDjXfsE", "eRvlMNGUx5gTxf69"], "name": "UXJrkvbidKMaUGAZ"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'zGImnpa6LYaqRKWp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'yiVnaOgRf6gV4HB6' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "OkHg1jxDDeZTT3ag"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'f7j84ooU9wXr8ZKy' \
    --body '{"tag": "6taR3WWmGQJrN4sZ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'P6NuUXCXcehQ6EhB' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["k2YBqIpKDvnPT8xc", "Tn8SuoVNpDhpENJG", "TOuCNgwMTZeLllcF"], "type": "CHkC5i8YiINogrL9"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '98KHM1YaKu8wq6rd' \
    --body '{"subtype": ["AJZHUbbYwtqFVq0r", "Z9SnNHpo1SHrMamT", "ffoGzxZYS8gNhI0Q"], "type": "1TPqMM11b5BUfoCx"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'M6Wqy10nN3MnRs00' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Bz4ngGykxR3rTUvH' \
    --limit '93' \
    --name 'Xo3jc27gqK2p9qUJ' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'SbFcx0olmhguQhwW' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '7dVTTCddAEbVTYQQ' \
    --namespace $AB_NAMESPACE \
    --userId 'nDm7hbly9CJcvFqN' \
    --body '{"name": "MKrvRffKmn1HUBtU"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'U2vJEjqWJq6SF0GY' \
    --namespace $AB_NAMESPACE \
    --userId 'egk933M2FcHPyUDy' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'qsaxiqF1KYjrFNYA' \
    --namespace $AB_NAMESPACE \
    --shareCode 'HNk80kLaxLS7kZjn' \
    --userId 'YYCGLxlFjb61gOn8' \
    --body '{"contentType": "n7Rd4u1OnBZ9DAeJ", "customAttributes": {"xLfxfwKNFCjVnzLV": {}, "txsaqBVjsShENb6N": {}, "2bjLE81Fq4aZOPPU": {}}, "fileExtension": "VJhyiyCTt7cO99wW", "name": "DP2bXAxpRZy0Tk3b", "payload": "nVc9fPqYrb2AthgU", "preview": "OGc3IJXsbA0EP6Te", "previewMetadata": {"previewContentType": "fZLKsJqiTBpA1MBe", "previewFileExtension": "ILtcPOJ58bUmmVNG"}, "shareCode": "SZ61lqb7lFG8m4JK", "subType": "u79qnyIA0Jzsa7G3", "tags": ["Rh8L1oPkHWFm2Grg", "B3tHA8mq34t4rmsT", "g9tp5MFsI9LO4JPM"], "type": "O8kVo4XgApqi8kyt", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '4JLNAcTiQJ9m1cs4' \
    --contentId 'Q96vJhHeu17nv0bK' \
    --namespace $AB_NAMESPACE \
    --userId 'azczTnNtAbI1wEzK' \
    --body '{"contentType": "VSkLI4bsVCHiDW0Z", "customAttributes": {"wxaiJwtBlRJgVLFr": {}, "Zhj3maACmPH8yaj2": {}, "kjXnWdF40XlfNobE": {}}, "fileExtension": "C3VJpS2iRcx6KOCL", "name": "2K49BAXBQWjEMytZ", "payload": "Tqt70GyupydUcOyA", "preview": "m6MOWJARrd2gfdJI", "previewMetadata": {"previewContentType": "j7PCnWW40Je5Kqb5", "previewFileExtension": "SXy6OrKkRIRv1nTA"}, "shareCode": "6tOkUmTEhkxBhwCL", "subType": "tV9kWCfpKxhRXeK5", "tags": ["dOnXpVqvUlkJP9Nj", "blewl8w7M3SaRn2Q", "q4hoV8O63DeQYGSI"], "type": "OwiPnHoSqRIZPhYY", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'g0hVWk3wuc558mrV' \
    --namespace $AB_NAMESPACE \
    --shareCode 'hu5d2jUqICcXBaEN' \
    --userId 'cLwIUeEboZVDA3tl' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'PKTePfT9TiIopFu3' \
    --contentId 'D7ZbXLpad6Izz611' \
    --namespace $AB_NAMESPACE \
    --userId 'PNRIdDDaFUXbpady' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'jIAotSbBusSOEWQq' \
    --limit '99' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '33JPczAfnNSKC2nC' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '0pp0c58DoYPzBKPf' \
    --namespace $AB_NAMESPACE \
    --userId 'QfoN89oEWwUsiQF6' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'MgqcO8Hd2Om6QJUU' \
    --limit '39' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Jgcwn1MJ1XoQwmwT' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'V1BCRvD8J4MUzuxn' \
    --namespace $AB_NAMESPACE \
    --userId 'vjlUBugrgkfFmzoA' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'xd8wkPbpwsamC7yR' \
    --namespace $AB_NAMESPACE \
    --userId 'KDmlnYRxEmopZvGU' \
    --body '{"contents": ["vs2KdJqieOx8GU3G", "HK1kmyZG32tujaEn", "v2nlO161FYiwqQKP"], "name": "USnXspS0Ky6iUNWg"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'dUX8B0EI811N23gR' \
    --namespace $AB_NAMESPACE \
    --userId 'FuALGvoZmrehK3tn' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'vfz16Pv0xuT1LQVG' \
    --namespace $AB_NAMESPACE \
    --userId 'EKC3NzhNf8bJEYQU' \
    --limit '8' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '6oNg8DjES3M8Ls1S' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'NwHc1HiC72BDo0ZI' \
    --namespace $AB_NAMESPACE \
    --creator 'CvTG5vczRM9kMjE7' \
    --ishidden 'dYUKaW8witixal1r' \
    --isofficial 'LAkXzLM70EDvdIBa' \
    --limit '24' \
    --name 'ga7NKLrj1P4HIP4n' \
    --offset '15' \
    --orderby 'MzgHvvY6HShDRTzJ' \
    --sortby 'QXU3hBdMtmImT1qd' \
    --subtype 'QXfWlWLwg5oiIH1z' \
    --tags '["dDnnWWJ9HFzxn1Zk", "ahyoN0dqnHv3iSLE", "h5yklYqQT8u1jDCy"]' \
    --type '8vqho0MHRR5iJRYR' \
    --userId 'cXfvHQgLccQwo7qT' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '38xC0rumNAzz7Dya' \
    --ishidden 'EvCfD9R5sKHreUTx' \
    --isofficial 'BOmHefdqvwa8nf1s' \
    --limit '84' \
    --name 'R4Vn0razkGW7hYVQ' \
    --offset '72' \
    --orderby 'LwTPs7qrQwbrd13I' \
    --sortby 'PX2s2BqnvlGNZnkP' \
    --subtype '3rFfJcHZlO5vcvyc' \
    --tags '["6Blk8VmxkdWcxwUZ", "wLLdhhajShrO8UBn", "09hk80Oxmoh7J61r"]' \
    --type 'ds0uYKL6MDyQOoCQ' \
    --userId 'LJEU5d04ifeZrvAP' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Zp8gKKj7LWXVEXHt", "XihiivY7sHr978bZ", "rm2A5sKVJB6crVhw"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '15' \
    --name 'KRV86upsR0VhbQ9i' \
    --offset '8' \
    --orderby 'SwT6a6UVVVWh8ETu' \
    --sortby 'hSB1t7kxxtf1aXbu' \
    --subtype 'rLFPQ69mrGGKHLmD' \
    --tags '["l9gTzj8095HnDEBu", "iEefFS3aies3bckx", "ZwqzJKq6hYbxInuQ"]' \
    --type 'ngCntQUzGoznJAM3' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["OWFl2VYrUPG4cNkw", "9svvqH6C4UdyGy2G", "HpjlCnjmdDjAPmIM"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'BU9rZbOuUGnJFN1r' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'zCjNyA2wsfBCAEd2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'nBkypyBhbOTM4Xnz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'zOOfFvmn6SoyLWaL' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'RJa2OetHV9EymwB5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '18' \
    --orderby 'dgbh9Vg9SFoyb7pE' \
    --sortby 'X7NIwBYnHPo7cd4s' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '5VtH36ZwnLC1Lpgm' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'u4eEI6e8sfB5M0CF' \
    --limit '71' \
    --name '4ji3XOISPxcGWdu3' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'i2v29TxakLbhCJCv' \
    --body '{"name": "eWAmmyXtOPBSE432"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'xEmZgZ9s8g82GvSx' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'XHbBopzgIEPBLous' \
    --namespace $AB_NAMESPACE \
    --userId 'n0BCEZ63EgnpHzjg' \
    --body '{"name": "zSCHUUqKf9pxNZpO"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '9IACV0zh7wYUlR2E' \
    --namespace $AB_NAMESPACE \
    --userId 'OwU7RHXnDXluBe8r' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '10ycn1IVZjKIK4QW' \
    --namespace $AB_NAMESPACE \
    --userId 'Y0Jdgt5UuGdXVh1P' \
    --body '{"contentType": "up3oxncJrVqM8RId", "customAttributes": {"tNoQ2bdqY52PC9CC": {}, "YqDgzEpTd5IgZcGz": {}, "USfkHGa4wjbHg7Ui": {}}, "fileExtension": "adLTtdVnwfCFiK7C", "name": "0y5L4j0z0aEKQDjW", "preview": "t0C90UmJeGexflLD", "previewMetadata": {"previewContentType": "KkECJW0Xxs9CwCAo", "previewFileExtension": "ecFSeoUTs2Bar6Fc"}, "subType": "n5bKucgMk3kszeao", "tags": ["SS92umR1oEzsL3dB", "45TynxUdTQ1NScGe", "m6e1Y29v9VzUoSrE"], "type": "vLinlOWRC1CoPxu0"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'iTqaxHwnHAvAHVOD' \
    --namespace $AB_NAMESPACE \
    --shareCode 'hCug5tL3OHNWH19d' \
    --userId '8EeAjf4smngIfgW2' \
    --body '{"contentType": "XpXwH8QuHOsbMQ4U", "customAttributes": {"b0CCDk1ybVOMunig": {}, "TdEighXo4IQNL1hC": {}, "VK5peggGEDglzzqZ": {}}, "fileExtension": "BWBGAQcK1FiTKk94", "name": "2YM0NSYyzbYpl7A5", "payload": "u8oMm4RuHgfNY7Tk", "preview": "l6srE0keqFURtaMe", "previewMetadata": {"previewContentType": "cbSEzFs2CdEMKEug", "previewFileExtension": "Wi85tTupVXmHslxk"}, "subType": "GWvux0ddtyI43O8O", "tags": ["QYXBc6n0x3ATBDuP", "0NyQRCpZhxxgL96X", "Ja7VgXbgjtBmROJ2"], "type": "Ld9u4tXYt65OYMkb", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'A6Q8OSccIuXkPiZc' \
    --contentId '95RF2jdOS2bXAspw' \
    --namespace $AB_NAMESPACE \
    --userId 'qHTSww9BLda5Xvtt' \
    --body '{"contentType": "sQlrqtflEG7znd92", "customAttributes": {"DBODBA4qkRuyQkAR": {}, "VeFkzbA5EgCUsdPf": {}, "GOnc5JrvXNqav6bT": {}}, "fileExtension": "331mr1DS7c1L9R1r", "name": "qU03dac5KJT3OHt5", "payload": "laVpmpDLsJjQBMqo", "preview": "6bDyLnn4h3PydcdP", "previewMetadata": {"previewContentType": "Oq1x6TYqkQVCC22g", "previewFileExtension": "Zm2Va88VPAmBbthD"}, "subType": "kx3c1E6PJx0dklME", "tags": ["SNKkjHKRBIJdSF2u", "BItqoB2YqjCWFjfp", "tl7anzQZ6wlwaMhB"], "type": "zHBB3FApLUEtly2s", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'k4vrPie7D3CuAToe' \
    --namespace $AB_NAMESPACE \
    --shareCode 'lW7F6QIRtRO0X9Bf' \
    --userId '0ROGgVGTdL4CwaG4' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '8gJGBSP9uwvGL0C7' \
    --contentId 'Q4b8dFhjoZyXxrR5' \
    --namespace $AB_NAMESPACE \
    --userId 'vvMe2PkSXAPC1xqf' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'B4tyFYdMahJWTfqR' \
    --contentId 'fZXrikb7xq9y97HO' \
    --namespace $AB_NAMESPACE \
    --userId '8dE2jrs6R9gLlG5T' \
    --body '{"shareCode": "KpMyRuzphbAcXyPX"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '0dsdr0XbHyGMseay' \
    --limit '100' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '8CncfzHBZPlDCQto' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Ggu8TVhpOyDAHWU5' \
    --namespace $AB_NAMESPACE \
    --userId 'UgInZ5kBh8XwDdBv' \
    --body '{"screenshots": [{"description": "vSAv8Jn2U1yaE7GU", "screenshotId": "fhZ1oWwGvomurV8e"}, {"description": "RXigaQqDMPoZPZiy", "screenshotId": "xP4SKfzowsfnWwhg"}, {"description": "yvbXNpJrADh7r0M8", "screenshotId": "MWHnK6TGyJixjfP7"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'j6jhjZQJuogi93GO' \
    --namespace $AB_NAMESPACE \
    --userId 'IEGOsRkjbUnb1SjP' \
    --body '{"screenshots": [{"contentType": "6x8GYbXPKd6q9JFU", "description": "YC2Qo8Jt6Ux1Eysh", "fileExtension": "pjp"}, {"contentType": "2OFDj70d1Jcg6FwD", "description": "pyJLuf8IESV2gt4x", "fileExtension": "pjp"}, {"contentType": "7P2Ih4qiROFhewCR", "description": "1WaajZFyDZR3KDEf", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'mrxgbOjCYb7X6QHJ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'qfplV6sYGfxfHlHn' \
    --userId '9URmvzzCZsvcymzs' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Xu5EWtx5NrNnWFZN' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'aCuskUDtrFEZ5mzK' \
    --limit '88' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'PMXkR2hrFZIQWxZt' \
    --limit '94' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'chkYVpGo0kafufZ8' \
    --limit '75' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uJ5aUiMl0DSP7qId' \
    --body '{"contents": ["60i7QQhTmbd2giM8", "Y2yhSmJ0s3KOnSYm", "bXTuXqIrTmnvMBhL"], "name": "2BbYGxtxaBCCrXeE"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'WLAXrYFWpYn4jAmI' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'PmLE9gw91BAQsCLa' \
    --namespace $AB_NAMESPACE \
    --userId 'gXehaaKKJBdveSQA' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'gpbHDWje9qqtMZ7v' \
    --namespace $AB_NAMESPACE \
    --userId 'pjadXOeyQgqV8l3G' \
    --body '{"contents": ["l57UyR7PYFAxf0sb", "pQJXwcTnzhmogrC1", "qLCYOztRZTHHzcQZ"], "name": "NEu5ACB0YeGc7AUY"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'ZJRxwLHYeFY1TfiQ' \
    --namespace $AB_NAMESPACE \
    --userId 'MrrDckZSXpwDb0bi' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'cBFjqpqWZo3QCj0l' \
    --namespace $AB_NAMESPACE \
    --userId 'kqok8zhUxcz6kBSD' \
    --limit '67' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'X6cbeQs1XLuZ5WsD' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '9RcOCY0z5xmlFi4w' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --name 'HVClFx1197I2czXK' \
    --offset '20' \
    --sortBy 'cBvXqzsI2BMq2XJA' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'qr5kNBcoy3x1I6oL' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "qfmCd5zzTYk7v3J3", "customAttributes": {"539Q5KkO7H7BGcZ8": {}, "iU3rU9XyY8T9A8zh": {}, "J49KAQr8PelU1nnh": {}}, "fileExtension": "eib83dpnBFrnNDCs", "name": "eGdhQRGnkDek5jqE", "shareCode": "Jez2AzYnaBkAsuqB", "subType": "Phos5oDDcjaizXw7", "tags": ["0BPqIDycp4ozlMj6", "ImG3mdB00LB3SMPe", "xTPYBnHgDs5REJmP"], "type": "s73Ba1bkwjOatXOz"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'Gnqou3JOXBbRa0JJ' \
    --contentId 'MEK9IsYKdLdUnI4t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'znCzKXH7VLRy8TSE' \
    --contentId 'wEJmemDODwaaM9tb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"pjRMrP561085NoGd": {}, "YoQbdzhs94lz8Rd7": {}, "jJTTStBXpvqW3smw": {}}, "name": "8GNvWH9QpzEGVS2f", "shareCode": "umUJugKS2VCHfivy", "subType": "IR461htYP4WCm2LO", "tags": ["mEeugt9wq1gOuYEv", "EAPOkGh32Pswh6OY", "hpLwq5PZiBZXmizq"], "type": "TzUWoScTcJWKzhKh"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'HpjmWUa3s60dpnzK' \
    --contentId 'UxT09HkyHeDLKUeP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"uZZDx7PCqH7pJd0K": {}, "gl2VmUwBybNH1zRb": {}, "AuzO2QhM6DtPsOdN": {}}, "name": "HJuE9aN97F2Nwj1U", "subType": "S61OPxENv7fRXpxQ", "tags": ["3d3zu8QhFSIuEjIE", "UfJG6TULMr38PTmH", "8Gkgh6NXBvSw9N2i"], "targetChannelId": "dGUVb1tsWjB6k1i6", "type": "RcnUZk3YW0n6tfeI"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'rYK6EVz6SyB4qZDV' \
    --contentId 'UmNjFuzlBEiCNnnS' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "JSz1dCJhZyWlQpIv", "fileLocation": "fASBUr1yQvdQa8LL"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'N12OnUE6Xnl3FsqO' \
    --contentId 'gsIjOWU5tXQuQCyg' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "a43Fg1Qj7TnOwvPN", "fileExtension": "9cY9MFedUM2PYz61"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '05KkSo8w1jEax8TW' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "t6Z5vHIeEafdnLru"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '26' \
    --name 'dlKRiAN4dNjjJX80' \
    --offset '65' \
    --sortBy 'PYwkwXy6ZLj42lBc' \
    --subType 'gQ4FtVu9HtVwgagE' \
    --tags '["8TmPg4sKDyplq11a", "7w8PTebXf2CKBI2A", "t1ZY2ipy0fCEwrFf"]' \
    --type '6PA3IDekp4hkmLj8' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["InG8Fnm4GyRz3o3o", "pXGUOzkEMrZMgdlM", "LPLQqLg2D8JfVovs"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["R5ihI5b2tFyjvraR", "3o9HZxq5AHp7Lhdp", "Q6rGsCLkGweGO6wp"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'U97A7ActIcWO6OD8' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'yDzkJs0A8PzCXW5u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'DE3QwBKHvPQ7gc7b' \
    --namespace $AB_NAMESPACE \
    --versionId '4LenUaUdJGB9CT0X' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'DlIdQdPojtVNDdVG' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "plodEjH8tiVgNTra", "screenshotId": "fdPaY9fIzdfWBiIO"}, {"description": "Q5QjX8QiZu7QOiGG", "screenshotId": "c7rShAqsmJslpWOu"}, {"description": "vJJmAUQ9nRtS1Hvt", "screenshotId": "LwCkPhX8BDlbnJsZ"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'jEL7eXJFQ2zaGUnN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "wuiJsUh2XijcvnoC", "description": "PfYuaR37O3DoHW2U", "fileExtension": "png"}, {"contentType": "JAzFHoG29oTir1TD", "description": "fxGSjcfdECb9Fy4k", "fileExtension": "jpg"}, {"contentType": "n7VoQ8PUOECFGoeo", "description": "JvfHCcIdWBTCngi3", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'tWZei896nCFMrN08' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'dUosdNrolsEDPIu2' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'Pw6GTTradZkVhlye' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'kxt3SqXI5PLBHAfy' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '12' \
    --sortBy 'snC6Soic86TR0Vli' \
    --status 'rd5nFXGzSYgseE0g' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'jKrFY3fxw2GeOiRv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'TdMET6ufVXzijcW9' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "trzj9F9HY2fHrkRs"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'LookJ5eyfXnHFWrY' \
    --namespace $AB_NAMESPACE \
    --shareCode 'hCD3SB8RULn7Lzc2' \
    --userId 'Mk7suy8StlrFwNjK' \
    --body '{"customAttributes": {"ZaRv3Xjja1VNDgLY": {}, "WDkHAuRSQjkP6p5r": {}, "J9iyTUUgsgNSDt9X": {}}, "name": "JdWnP1jht9aQLCvR", "shareCode": "E7HzUW1de0ko862H", "subType": "irzWbpeSVRurVhvg", "tags": ["5C4HYR0MzpKOJxfe", "jcLrJmZLrHrIvSlv", "tBqJE1qykaUOATso"], "type": "oLJI4LTHqrzfRSNy"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'pNfVA00ua5g1foGP' \
    --namespace $AB_NAMESPACE \
    --shareCode 'HQVhhHaPjVt6JVsn' \
    --userId 'Mqh1bQAZOxTLhMkK' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'LzvRLo86wxRoEJ2B' \
    --contentId 'McPevUsVWNpxBimH' \
    --namespace $AB_NAMESPACE \
    --userId '1koPDZdZodSgMnVI' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'UcGMcOFdteqCjwGJ' \
    --contentId '7xmUKZSYAoBYltxT' \
    --namespace $AB_NAMESPACE \
    --userId '2BnXcqfEvocch1DG' \
    --body '{"customAttributes": {"tnAruHsQWUKavZYG": {}, "kOHE7O0M7LcnErnH": {}, "lhBfmvsLC17VU3Z1": {}}, "name": "Cj6a0IeoIdD0I3VE", "shareCode": "1z06JNxvO1TnINXc", "subType": "gF8D4pcWrh9c2m29", "tags": ["6heTOGgobTOxTqhS", "SpLlDcqh13q3MPcT", "PvWhkHhyYiU9j35x"], "type": "v7Dtugy65wcHJ9PJ"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'BgsbwBL8BDCYhE6L' \
    --contentId 'amtLesCGzjFQiD5g' \
    --namespace $AB_NAMESPACE \
    --userId 'dIf4g954n7TDjVgu' \
    --body '{"fileExtension": "dixuLrzenW8vOYfD", "fileLocation": "qsBjAWxXi0e5FWsq"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'PzTQ0F0OvtDdeZWe' \
    --contentId '77IY0LDETxuBlxsv' \
    --namespace $AB_NAMESPACE \
    --userId 'EtfprKSQNb4FOHgL' \
    --body '{"contentType": "H439A8F3C2UnFHKl", "fileExtension": "BGF2xZBlGINDeYpG"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OpVSf6gbcExve14n' \
    --limit '22' \
    --offset '49' \
    --sortBy '6pclfxTmGjXQwt8x' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'G5ieuzJzRBFFb1oP' \
    --namespace $AB_NAMESPACE \
    --userId 'FYEIs4R9TS7QjzTL' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'XixeL5p9za6MoqOW' \
    --namespace $AB_NAMESPACE \
    --userId '8xSoWMdTGNU8vkqo' \
    --limit '66' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '7YZSD7FlF1GHlYBF' \
    --limit '0' \
    --offset '18' \
    --sortBy 'Ma1in3PLqHEf8ZlH' \
    --status 'qjb3BRsNWneRAYk6' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'FpaAOCQrKtWQahnw' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'Jy8dzXqKMzJS939n' \
    --offset '1' \
    --sortBy 'enapVL3wFywgn02D' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '86' \
    --name '7WI6bKIFtmYoLdha' \
    --offset '22' \
    --sortBy 'QvDxgotj0l8jT64E' \
    --subType 'kHwarNa8hNSBnQki' \
    --tags '["YbYxyHskVfuVlfA1", "ox6OhQn5eOCu7KkT", "PoVnOjmBdQN6UZ1W"]' \
    --type 'GcSys4KDTJUv2hz1' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["3xGtA3X6frpXY9DQ", "67JliPcOkuzV80Gz", "u9Irh9FCmFVRBlis"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["unSBfYFRDkpZgDEC", "zdmmndcEMnS2zzha", "MDvE3oQLfJNSWtKb"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'nKhxLdY8eNVCox9e' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '7Hu5jjK5fIbJ8LRV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '649zrgBeBCZlCBTI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'WN0CHGuZ1bmPuvmO' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '43' \
    --sortBy 'X5654h1Y5SRJWGlt' \
    --userId 'haBWzT8VarsFK39n' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '9kBE62FUwhwLYFNO' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '66' \
    --sortBy 'jv4Kux68YMU48neT' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'PtdHE1IYwOAnEaCs' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '2TFqikCwdXq6fdl5' \
    --namespace $AB_NAMESPACE \
    --userId 'BIIuUiygZYJv9A9U' \
    --body '{"contentType": "3429PUfOY4WNF63a", "customAttributes": {"6n6jTb5eVtFI95AI": {}, "7cERhFh3sUEN026Z": {}, "132UOWR0OMd1MK4P": {}}, "fileExtension": "ERJFSaN2RsTvMdGR", "name": "nuy63CpgpxFC2MXE", "subType": "RehGIwHK0YvV8Lx4", "tags": ["JLTx3gIhv9wrHeJM", "Dm94KkX7GRvH2fF5", "TRD2Ozygbke7ds3N"], "type": "nR0z9c1K7MpFNKJJ"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'aDv2Z9vMulCBXcs5' \
    --namespace $AB_NAMESPACE \
    --shareCode 'LcT7cTfkZpnEtFhY' \
    --userId 'pgEP9BMJvldypVlL' \
    --body '{"customAttributes": {"LUjtafiFyaslx9xk": {}, "UDr8vDB2gXd2UVoI": {}, "BQW7RkQoGAyNZ0XI": {}}, "name": "T9OGPWohzXOoxNxL", "subType": "7JHo4h1KclrJGh5d", "tags": ["rNP01K2iCSD6LXtE", "3Aobcvuj0mMnus1Z", "fmjtRjkI7msoBPKA"], "type": "QB1zgQcMA6WYhyFq"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'PfGzDIBwwMwLG0zt' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yBHk4yTDc5EwunNc' \
    --userId 'bTrz59dMMlf53izv' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'TQ9ydB7QMbGRbUim' \
    --contentId 'ThpQT2I73Inx0ddh' \
    --namespace $AB_NAMESPACE \
    --userId '0K6YWMCzcWOjffKy' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'FPyHRAFtIgohUrJw' \
    --contentId 'gmhtGfSV86pgOw6c' \
    --namespace $AB_NAMESPACE \
    --userId 'JFUYpJKGynCCnWZb' \
    --body '{"customAttributes": {"khwPyVlszBtlDdQM": {}, "yCjHZQKFJKFqW7w4": {}, "nK8eB2D4JpulNefg": {}}, "name": "Uz1KYFA1D61e1ozx", "subType": "zuQ9JwOqsGTIXNPY", "tags": ["DSZTNz1BPwXF6n92", "9TwiRAG4ZBQDlav5", "nV5YqKaoHf57M44c"], "type": "xyec0vHG6RhWia4V"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'APtm6iO7k7z4DYKc' \
    --contentId '88BHWtMna8mHepDM' \
    --namespace $AB_NAMESPACE \
    --userId '5cg4ZlG2kFn9et41' \
    --body '{"fileExtension": "5WnwpwSRVMRL07oG", "fileLocation": "WIDIXr0LvDFQPMIx"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'wm1snFYp1LBzB18k' \
    --contentId '0yy8yVHPNxAgSCVS' \
    --namespace $AB_NAMESPACE \
    --userId 'tV0UKnqGUWtLCiiA' \
    --body '{"shareCode": "gyHFukcur8A0oPiq"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'UOJXZ1ZUG9GMZT8v' \
    --contentId 'SlVyZsGmmfj4Wexe' \
    --namespace $AB_NAMESPACE \
    --userId 'KObVUM1cFy2aXPFX' \
    --body '{"contentType": "HjIYq2Zie6FZE11S", "fileExtension": "sKcV67GIwt1JuYIk"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'MQNCWKKm2QZDgOHo' \
    --limit '95' \
    --offset '89' \
    --sortBy 'n1a8QiaDWXKfUEsS' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '2rQGwa9j0jIa1oAA' \
    --namespace $AB_NAMESPACE \
    --userId 'VZrVaaalDuI4WBCE' \
    --body '{"screenshots": [{"description": "tC99Hk9ynowxWLj7", "screenshotId": "aSRTO0Uu4mvock1w"}, {"description": "0XR7edNj3G0HSLmk", "screenshotId": "SSgRxa3Au4ueclYU"}, {"description": "Gzwe40cQiaUahmG5", "screenshotId": "TA1pUAUK0nU2TtFw"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'HJNCeh5xZO99M0Y4' \
    --namespace $AB_NAMESPACE \
    --userId 'dlQYejBP5kXk8AW0' \
    --body '{"screenshots": [{"contentType": "FcVmPIg9pVqh3IPO", "description": "0rmLf55H7Tmyt99z", "fileExtension": "jpg"}, {"contentType": "GmHYepRajlwkgij4", "description": "lm0XHgtxfNYBD7ld", "fileExtension": "bmp"}, {"contentType": "Ao0pkmNc59u4ZXhb", "description": "MUrZLmlPZW1ITJrz", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'QK2HYsTZIhYhgEdT' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ugcIJPe7QWfQkMNa' \
    --userId 'rdGkI5C6kBWndam6' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'peOIymZ55rzDE09K' \
    --namespace $AB_NAMESPACE \
    --userId 'jpgawyiAq071KQAT' \
    --limit '2' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ZsZMgeZmIQP0NA61' \
    --limit '58' \
    --offset '91' \
    --sortBy 'd4dilKNslbpVr6fE' \
    --status 'nVXA5qoWj0666tJc' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'QTKgOOvOfw8VBDBx' \
    --namespace $AB_NAMESPACE \
    --userId 'M9Mc9HDHtw7jKG2V' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '1QQGiAtdG5dUppSY' \
    --namespace $AB_NAMESPACE \
    --userId 'z6qlZxzxT2okQ3UZ' \
    --body '{"fileExtension": "kVsHGWEziFyTXt8i", "fileLocation": "E5WU0VN6nWBSV09o"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'gp6Jx5BlqK9fVL5L' \
    --namespace $AB_NAMESPACE \
    --userId '6kGpYbU0Jk3V6Qgl' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE