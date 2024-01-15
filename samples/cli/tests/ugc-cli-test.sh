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
echo "1..160"

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
    --limit '59' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "pV6Fi6zuSelEamSb", "name": "xNMxlJQtMKTYJbZ0"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'UgkvrgcyVsh7WjCD' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Ez8icF5jjDzxj7rC"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'QC7L5j0F93OfVBy0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Xpde3YzFgDvN5Wmz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "cUzvVLe77cU9R7hI", "customAttributes": {"6LwXSflQwBATsIO9": {}, "PVHeVFjfOVyeovAf": {}, "BlrET6AfI6ZyHVOR": {}}, "fileExtension": "p8shkQR7PyJ1vv2v", "name": "L8IrWWe5MWqpQ7Zn", "preview": "8u8q7vH25tHKydVb", "previewMetadata": {"previewContentType": "uRCDbHQVAlAo8wwa", "previewFileExtension": "0Y4MGuNBXiaOEdui"}, "shareCode": "OxWYJ3ingbwdUTnq", "subType": "I93wQEFUmsPcJq9h", "tags": ["8MoGmytnojmYBQYW", "3nNjEFqKo3lFytVg", "AxIpr9kc5tGOx9Ln"], "type": "HHXQgJPs4C4MT6s5"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'MLv0u1MQDLIRPZhW' \
    --contentId '9Oiy96cTS42RfI7d' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ymR94Y810Kt5Plnm", "customAttributes": {"gUWJikBBO1KXDN35": {}, "6afpJ9OcLMykV0cE": {}, "3BCSF8QgoZhlvzs1": {}}, "fileExtension": "hGxzwoEOtNdm3nRb", "name": "8d4DHS91N1l02wED", "payload": "jk0G9lnjLznjMvLi", "preview": "u07idbxtwxs0vEUs", "previewMetadata": {"previewContentType": "0ZWBCIYUF4h1Rund", "previewFileExtension": "uBbuL4BRqiGLU5hN"}, "shareCode": "ITHy1GSA6BXyFXrR", "subType": "Prga78bZ9LDewin3", "tags": ["9GTHPDOJHWfR14Og", "OraBC7RbbFs6FBpv", "8uZiPOXbPRhaK09I"], "type": "L2sQsYk6gmenGb1O", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'YUVIYSf46GJfynLh' \
    --namespace $AB_NAMESPACE \
    --creator 'Hp5yHkug8RUzze1K' \
    --ishidden 'gy9qlgq0STlcWCQC' \
    --isofficial '753nqDZJ4hQxF1BX' \
    --limit '33' \
    --name 'DzR4ouWThBtiCpXD' \
    --offset '8' \
    --orderby 'erAio4WumsDD2obb' \
    --sortby '38S2INBmkvGQiWAw' \
    --subtype 'EOXFsAB9h9jL148E' \
    --tags '["rCemAX3Ko6yIerSS", "XrHad30HCgnMYAmL", "bp3YyNO54QkjPqkI"]' \
    --type 'eZfUCbQfDmQ6lRn1' \
    --userId 'vMTop0yMinZszhib' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'vN64984MOKo1V13V' \
    --contentId 'Gc4sA70oWhy3yR3Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["jesHIe4jVmjL1uHg", "ksuPFsKmlMepJ4zh", "GaQdRh8iuAGNT3rT"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'gHsSLcSOdkbRKhzN' \
    --ishidden '7fOJoVMLKXEOi3Gn' \
    --isofficial 'lCmJcEqZYUO7fEg9' \
    --limit '48' \
    --name 'DbovpzSxVcOn4f5k' \
    --offset '79' \
    --orderby '7Mlcntl5zvzjWSxq' \
    --sortby 'CndWMKmBTK45YW7H' \
    --subtype '9P4srz399DX0GQzb' \
    --tags '["k9iBDHVS6Ruc5bQj", "N8LH9oRKiSqtTatO", "6cfSmD1yShmBQUO7"]' \
    --type 'm3jwqGUcveeI9DIK' \
    --userId 'Ue1gGBvXhXUHrAcE' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["f7eTrUB3i1pI2K6q", "vRZXSlcDpbKXCOGz", "Z6M0pZQa7X7FG5EY"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '8mpVCDXOjqFwV5uY' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'QIlSwF6rMcWOj6Cw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ivzg6FvCKiy3tp0a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'YprVTuD3HkwtmO3J' \
    --namespace $AB_NAMESPACE \
    --versionId 'ID987cJo8w8Bosbp' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'Kv25Z54xx9qdRIDw' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "cHFDVf0groUuoonY", "screenshotId": "LCPeiszsLwGbJnzT"}, {"description": "HeOYwbk6uHJbW9yW", "screenshotId": "RKYfPem3kmOO05o9"}, {"description": "D3qrVOuVB9gjlSFq", "screenshotId": "8lOQwPyEtYhxCiWO"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'LvrA6CUF0oiiLG14' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "1MDljyWr3vAxgaw1", "description": "rZDEFwYBlKNFtJdu", "fileExtension": "bmp"}, {"contentType": "4korkgaPrRA90sws", "description": "r3mTbVXtrfEhvJqx", "fileExtension": "bmp"}, {"contentType": "lmy15QpUmXyf1IIP", "description": "cGiZWedrxQPb6zKI", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'A2oIiHxSjrkBJBmZ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Tw1IFzD833IIp8sf' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'h68VogZVJqoOuwvu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["O1xTiXyN1jX9hHWL", "mQnNSldcvrru5WKC", "uR9Glc0PHOZe173C"], "name": "LZPzsuGe5mieRSJy"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'rcVIaFzjgZk8ZlGG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'uISbfNQDS3rD3o9U' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["QbkXx9QJX6xrQoTg", "ZVkDwA1lEj0S2SAf", "s2uLddDWJDIusdiJ"], "name": "wn7COA5mhwk9y1Ob"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'WYNaFoGbC85Zy3Xz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'xquXAL25lWA1t2fe' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "nSd08wCwarAYxaXu"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'A4ZprgRXJrPr9RPr' \
    --body '{"tag": "6GuLoA8XAm15H47Z"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'u7gaVgBQpDxQZPA0' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["l6yYaUHIvifEr8qM", "4sqjLzgk8WQLfyds", "Pi4gnX3vmF0o6CWF"], "type": "17BWkpGMA3btQcw7"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '0roB8jVZ3xB1LRne' \
    --body '{"subtype": ["KaBavEN12B9ehMqD", "eN3CY1imkO9dEwe8", "7L12mxOIsn7a5Rip"], "type": "XJJvd5O0szftWS4P"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'jrVyT4wVr7GDZEcT' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'q6oS56KGb0Msm85K' \
    --limit '55' \
    --name 'nNOtLLr7IFsX4w8u' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'dLSZhK0uSsRIMK3Y' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '1XXS7RP2iWWrSnaZ' \
    --namespace $AB_NAMESPACE \
    --userId 'pGyzOYeZ9QEtEvkO' \
    --body '{"name": "AmVxrjSUOqxNL6VW"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'WiEVBZkhJzlHWNYS' \
    --namespace $AB_NAMESPACE \
    --userId 'zN0KZoNubQ56avew' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'i1JQRMyTLlNu64Jj' \
    --namespace $AB_NAMESPACE \
    --shareCode 'c1q6F5MpbKemVUAf' \
    --userId 'cQ6vCU8MENmGYpFl' \
    --body '{"contentType": "jFabhdVDNkidm9lO", "customAttributes": {"du9xvzKgx825u69R": {}, "tW9jBRjXOzSih42B": {}, "YUrMb8Jc3bmbWvoS": {}}, "fileExtension": "oyWxbZ57W5hEID5Y", "name": "xqustz4UQCneEqOT", "payload": "DHO2HrCh3fOafXfs", "preview": "7UPXojoBef0Attbm", "previewMetadata": {"previewContentType": "8p42PHKh3mPi8bbc", "previewFileExtension": "KK3yRdg2iICxgUCk"}, "shareCode": "lJNUSGaFwPsxtUlX", "subType": "aCvwqW1EUV6QnFCm", "tags": ["sfz1515hi4MSE4qP", "4E74Py7lJfOQqhhJ", "eHJU4ibFzWx82muG"], "type": "JVkpp5hvyQgfJTMO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'zrwi8BQbiXezfTta' \
    --contentId 'Qy9CMxacBkXZh9zl' \
    --namespace $AB_NAMESPACE \
    --userId 'cgpSuqUgbawb7vHz' \
    --body '{"contentType": "sfJOfPD2GM6b6bsf", "customAttributes": {"vqIUAWqWKT93k4OU": {}, "Obu9Cb8SazPk4lyt": {}, "EylXdTZAWUF0xASs": {}}, "fileExtension": "H7N5vQaeB3NJUQNa", "name": "bDDoqY2oq5d47MUt", "payload": "lmiZrZdUOej1tyXl", "preview": "2NDK9gGJJNPoPKBv", "previewMetadata": {"previewContentType": "opdyrsd0jX93emNY", "previewFileExtension": "1dD1DlRfgpCd9wEJ"}, "shareCode": "CyRI9Wqmw8qBfJ7v", "subType": "OyUcANgwbLz8tXUs", "tags": ["3W4vCpHRImhxZkFv", "XJwdmHFQID8BEBqh", "b7R7gFubgGfv3iAV"], "type": "BviQCzvuw2u0vOgh", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'le56uLTCDrB0Cy9p' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JzxPEqS5rPZeuoDF' \
    --userId 'LsYOiWQg9ziUnFHP' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'BrX9NmWOIc7rDGsI' \
    --contentId 'EnxDPJ4JiOKvOI3R' \
    --namespace $AB_NAMESPACE \
    --userId '8s0g0AJ2eMJgPtI2' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'kV2wW7RWuF63htR2' \
    --limit '54' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'tFNUkeVWMVlUrNex' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'ZKfYH09Ksj1u53c9' \
    --namespace $AB_NAMESPACE \
    --userId 'wdGKNoFyu4ZCuvRI' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'YPIcsLNY65LOLEjM' \
    --limit '74' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'IIw4nd2rclftBDv5' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'G0wh45gIOug2inWm' \
    --namespace $AB_NAMESPACE \
    --userId '1Eo1KDVESgmQujCl' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'kYaZr9CITfR5Q0nM' \
    --namespace $AB_NAMESPACE \
    --userId 'qOSkEO3mMmZzQXpq' \
    --body '{"contents": ["SyaIbjO5hW9TfdVg", "097wSHfinJwuQzqA", "JjFwAh9yV5aYSEGv"], "name": "bluHpPYNqC1vRz9Z"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'T9DEXbz3aO1Nzogk' \
    --namespace $AB_NAMESPACE \
    --userId '2YZ6ecc876GGmzMp' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'Ja2RC2gSoEbWD9wX' \
    --namespace $AB_NAMESPACE \
    --userId '0vDwvBfSJevkSSBp' \
    --limit '13' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '9aJVeXgN2IOOlbjZ' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'hG0wWYsWARCu71jm' \
    --namespace $AB_NAMESPACE \
    --creator 'DBRDQTEar2NlVR3T' \
    --ishidden 'if5GdGD67nSNxcfy' \
    --isofficial 'm0RcsfRzBLiYPggp' \
    --limit '9' \
    --name 'DO1hvTd6fao73pr0' \
    --offset '58' \
    --orderby 'n3zGjj1rveQC8nJe' \
    --sortby 'qH643xBv5ZOW8rwb' \
    --subtype 'LHS25x4L35BDBxKS' \
    --tags '["nfsbOMEsXAbrVHvy", "4rZyVD2eru12mV3C", "KyuAz26ASd9j9mQJ"]' \
    --type 'nMk1rq9GorkHXpCR' \
    --userId 'dbtHFqXJ8N9sxaFN' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'RFaNnLNfAKHs57fk' \
    --ishidden 'FVtOJUWoMxa5U7y7' \
    --isofficial 'QBTaEDSnWul9hUo9' \
    --limit '87' \
    --name 'CKvFmxFZ5gSlXbLe' \
    --offset '26' \
    --orderby 'S2rKOP8Ss9KFwxHC' \
    --sortby 'SSiz4DfH8frvYaBm' \
    --subtype 'SwF0k1mElzBgZ83o' \
    --tags '["tJPQjWRoMxYWkW9y", "L8GgecVEq9Iektfw", "4YASmdw02xVCaWri"]' \
    --type '4Z1fZ52pBCYqiBkj' \
    --userId 'QgseLlzbVQP2gBwN' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["eISB3lUbFWT7g6BR", "mYNbr6Qozqmezrx5", "0Uu1J3UlVmGNtipx"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '86' \
    --name 'aWcj7y3KrmQ5GfLx' \
    --offset '52' \
    --orderby 'LkzXDRJtKoaVCHPe' \
    --sortby 'Pu5ZrCaqSwXAczYD' \
    --subtype 'XJFqdCT4OYSN6zq6' \
    --tags '["rglOaRmATTP1LiWp", "rvpG54lXNIF1MlCQ", "CKsBjR7rRBYV2qh6"]' \
    --type 'qucJEtW6wPfwkGbh' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["3nMfTBeBpcX1LxIN", "WUztqG7fkx41VodO", "cZQNe9CjoLGYHZnJ"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pKzBxkSkgvntltpX' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '9SpfDyKG4TQXtcBl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'aS3zXlbyhZwFkM10' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'rBKdsmJy3w6iA9Hn' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'lKIGy6hFi47KFbzP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '46' \
    --orderby '34nFjatFr0nTQUcP' \
    --sortby 'UWkzHhYknJO7as5d' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '0vgcQr6F6RSvzZBX' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'KedmQ1PbNoD4WXvt' \
    --limit '48' \
    --name 'ywwSRvTBTFGiUKLx' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '5c3lx9xhk7SmkMXh' \
    --body '{"name": "BUFdVSMPrzR0EWVa"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'GviikcEBBuI0f4Iy' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'Z3nUSrz5WZQhynuV' \
    --namespace $AB_NAMESPACE \
    --userId 'UOWngHk5EoEHKEFM' \
    --body '{"name": "14MOA2C3fpkXSLeY"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'xy8QOk8QlMRWkyFG' \
    --namespace $AB_NAMESPACE \
    --userId 'PuKMz8Y21kWmKNDQ' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'yKWQ5pR2Ac40KtdS' \
    --namespace $AB_NAMESPACE \
    --userId 'd9uAWS1vlGfdih21' \
    --body '{"contentType": "pA8LwevAr9mJePRw", "customAttributes": {"HAppYNwyXYltYJ0q": {}, "Vl7fAueOvUcckDNR": {}, "qJq6SO9Za9vEZ6Im": {}}, "fileExtension": "llBqW6a0M8Ea17E2", "name": "ciU02Tfs8NpsgVd2", "preview": "mmYaXdnba6z2NNcY", "previewMetadata": {"previewContentType": "KqeGCNNCu3tW8BSy", "previewFileExtension": "06vEkt0MfjUUkfnV"}, "subType": "0t6MAAiiSVcGADWt", "tags": ["w60PuMIRlmh719uj", "pHzuX0Bc482wJf1F", "WA6fKjdj0fGg07oI"], "type": "jYw1KX4AsL7zbYFd"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'yErLjhUIGdTjTOMR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'QnPuZTQrABnBITA5' \
    --userId 'M6wnyinTaoliHMte' \
    --body '{"contentType": "ezskcruRHZ9SAFNP", "customAttributes": {"9peZNBxdLEPqRi8r": {}, "DrOTndbFOBkME9zj": {}, "iv0k5of2OfeivRsC": {}}, "fileExtension": "GqA4k8ClXh0KXgcp", "name": "zH4a3EhNmTENMJOf", "payload": "zKYjf7Z2RP7spS42", "preview": "X46ZAmxMmmlRcZHe", "previewMetadata": {"previewContentType": "DblPi82pXBUX8UaG", "previewFileExtension": "TaQ68SuJTUs3rSzY"}, "subType": "2CmmXkg8Dp2lCEfz", "tags": ["uSePIMo4ynB5cSJr", "rA04fuCVFjpRzqVO", "AZHNhrt2aAbns3HV"], "type": "72vxvnyiEfAHenXN", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'imZY4x1I9Jk5WUK4' \
    --contentId 'AHRfWYJqButJXt3g' \
    --namespace $AB_NAMESPACE \
    --userId '4NhvoZQCpt8anc5m' \
    --body '{"contentType": "LfzYuVuRwTvEVCz7", "customAttributes": {"qYNYl1Up21gpNVDR": {}, "GJht8TS8wUjkdawP": {}, "8MbUvCu7isnsrYzp": {}}, "fileExtension": "NGFaNznMLAnxFqdQ", "name": "xdo2D95YvF1hwAYA", "payload": "nbKw86Cx6Pp1i4ym", "preview": "zOAfj2gQs7KgVJmA", "previewMetadata": {"previewContentType": "zge8QbSx7wgauJNS", "previewFileExtension": "rRsZKUPbEiG2CK3V"}, "subType": "479IJT1gBNOTM93y", "tags": ["AL97cHSPRwJ1o1YF", "wLWwAKM16SPMES5y", "60AZcLIITXeyowl0"], "type": "YCagQArrd3ecsXeg", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'zxupyUqXzspFlO5q' \
    --namespace $AB_NAMESPACE \
    --shareCode 'oU3kMMLaLxvtQnxQ' \
    --userId 'pp0lsZtSaYlQeB12' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '0IupC5j9lzsgbiSR' \
    --contentId 'aD7FmhjLuwjdZulN' \
    --namespace $AB_NAMESPACE \
    --userId 'iXPS1bO0uRr6C9lu' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'jcUCP24Vm0Lmgigf' \
    --contentId 'udG80aTjcmPusy53' \
    --namespace $AB_NAMESPACE \
    --userId '5web7WL7K7Wezued' \
    --body '{"shareCode": "LoSICUrXASxfrCSe"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'UhnUVPuxGNNtu64A' \
    --limit '54' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'AbgdpoKYeFZWWzck' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'G0YnYTh9ohsKGW6d' \
    --namespace $AB_NAMESPACE \
    --userId 'N7zgpFDYfLYxbuQo' \
    --body '{"screenshots": [{"description": "cQkfxnn5ZmCRgjJd", "screenshotId": "jpTHRnJcUjDLqzIF"}, {"description": "8J8JFiFiH0P4M0LV", "screenshotId": "LimlKLR530mKSBQU"}, {"description": "lYbcfXpynY4JU5dZ", "screenshotId": "6OyUppJAyi6qBgR9"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '6C1Q3s6F8yv0itu1' \
    --namespace $AB_NAMESPACE \
    --userId 'TDA5jx33NensTCej' \
    --body '{"screenshots": [{"contentType": "v01B26ruCM7HfdiU", "description": "ByvLMMAQ0nc55dJd", "fileExtension": "png"}, {"contentType": "4yyme7YbpolCNev1", "description": "AlOUR4QANMshWANc", "fileExtension": "png"}, {"contentType": "idvskOpshTI15q6y", "description": "vsxVXYWfMNDIH5hy", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'e1uDPweKHPhd88DG' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'fCbo8lf4y7sa4715' \
    --userId '8kb3VRr6BmFYqs3U' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'wkDKPfljqLIjpXKo' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'x0pBVOYBcsnmfL2h' \
    --limit '50' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'QJsjOCyKtd5IMmF9' \
    --limit '26' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'e9fRhV4sM3DyhA6U' \
    --limit '7' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'fuTI6Zgsvh0zduCZ' \
    --body '{"contents": ["y7YaHbekrKLdibpT", "g8W1hBAB5tDSXs6z", "optp00XI04d2qEhI"], "name": "wFsmTJ9Z2lUbTSMA"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'FFnjAiA4ou4iOY4h' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'XqnR3oTdGKRh8hxF' \
    --namespace $AB_NAMESPACE \
    --userId 'xvWbAW0Q2rRP3aWZ' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'kmiX4CDNJWjTd8Vo' \
    --namespace $AB_NAMESPACE \
    --userId 'o9KFwYkqjA5AQmbN' \
    --body '{"contents": ["LkdLoe3aSfDGe8t3", "hoDkaSZLqzHOlkqw", "wBgpNnQiCz17R1Cf"], "name": "uNNaaG5Bsax94lND"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '1shs0JNt0aAA3nVR' \
    --namespace $AB_NAMESPACE \
    --userId 'C5TBRJIzOgrH6Qtg' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'IrCyDgEa7jvNwG39' \
    --namespace $AB_NAMESPACE \
    --userId 'wepIo0fphk0e5dgE' \
    --limit '12' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'vUgTqgL4IWdSObba' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'k2Gtdg9pFSCapWAR' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'RS8xvYgxwHMJtkaE' \
    --offset '80' \
    --sortBy 'D2HcU9121SGcLTdw' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'uYxo36wUYF1AotNa' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "PoyeXxHDWmNF0cOD", "customAttributes": {"gck85j4pZjhRIUJd": {}, "r6oU0BC2BuNLOcdl": {}, "P4EzIYwRnfyzJX8T": {}}, "fileExtension": "aZoRnjXPP8I4tWJb", "name": "0uVkmdLUvltIe09G", "shareCode": "AEgTr7uVV0bWDJnB", "subType": "rUg0lJaSAKtH9LpZ", "tags": ["cJpEqKPU8wz3sVCp", "bwIp2E6hipBwSgju", "RJnjdGdGig6Nst5a"], "type": "DmG7XDkWbVZOgfVW"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'Qg1ApyhSONq03OnV' \
    --contentId 'WsKmKt7g3xExQM2E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'k2ilpdGQ9bvba5l2' \
    --contentId 'KntoObnZhxYbcP29' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"wRviFy795yj5kCav": {}, "BZAenQXQNlXkHmJv": {}, "dvBUcXXDRCirkTqc": {}}, "name": "aAtfcAV6MrW2Asz7", "shareCode": "xSSBoqv8ebA7AI72", "subType": "2syrJARUiHxOhaV0", "tags": ["fXHjNqXnar1ccXB5", "Otk2tRDPa6HLeLCd", "FyczYPWiX3eYswua"], "type": "8AhfAH2wA91yHS2z"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'eCCDPhUsZoYklJ6Z' \
    --contentId 'fF7UAF1JokNCqLYS' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "pW2Rf8ipjx6zfZp3", "fileLocation": "Ir09jCyNDnBvFFDm"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'dy3OjKoDtOlhNOOX' \
    --contentId '9tVkzh83yLq1a8dX' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IPWDVUVP6p80GIS1", "fileExtension": "H6zQlY7lnVIvsYKC"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'lBB0vGlYFTE4tiqo' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "09P0n91gFDw31Fat"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '73' \
    --name 'BmBt50ewTZq1HEbx' \
    --offset '92' \
    --sortBy 'Qe7FKHMimGmrkYJC' \
    --subType '8D4YXDFd1CSXQkgP' \
    --tags '["D9BIPuwz3TYdZlrm", "1V1FdepbX3xBtsOn", "D7mkXxK2a3KPK7P9"]' \
    --type 'n64NfwTxMgyPaIW6' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["m6IbDZoQndRwRcYM", "6SIgztvcF5c4pkJ2", "sRDD3FJ9O5sOIo1y"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["SF5BOb37qCj8hRbs", "5cry5pvWZq1ygGVb", "nHHC3ZBB9nTQPsox"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'ajEJL59LHZ20HxTk' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'xYwTsJLtWrzg7Q8U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'lzQtgoanvRNk78GL' \
    --namespace $AB_NAMESPACE \
    --versionId 'LgQSAVBLHjXGwLu4' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'cCGpzWctMwbwj7uw' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "cjknS1jmIgU36bxY", "screenshotId": "K6s79Dy6hNOdvXDh"}, {"description": "DtD31GkQoAreH228", "screenshotId": "ezf4dIV1wuyAwVzC"}, {"description": "aDXgxHo7kYvVkelg", "screenshotId": "yYwv0nisjkL9vx6P"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'bELRakzHgQj5CjMd' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "bCUlm4roayQQjVqg", "description": "i0Q87knFYddEctcE", "fileExtension": "bmp"}, {"contentType": "wdbH17R5EGzTuIHd", "description": "qxlErOz9tzra49y8", "fileExtension": "bmp"}, {"contentType": "qmlx4TT9TzEYRAni", "description": "lWNoDHWLXRMBMXyp", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'G58zudc06peCxBpO' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'd4uCP856gNVKjA0r' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'AY4CSzlVJRElJoFm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'WUVGMflpL7yGlSMf' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '85' \
    --sortBy 'dIyOK9eWd0MrcLgc' \
    --status 'VTlMRMYd1uyVr2wD' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'h32T19GUY1igqoFS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'b8wuUj7OhGvAba93' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "VZltlkOzF3ZfXZSd"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'jHUDTuoYHIBgt1P2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'DLnhi7QuVJ48FcgN' \
    --userId 'kwJFYydYK9q13ok9' \
    --body '{"customAttributes": {"Rra9MCnp2fLnRCqm": {}, "xreeW0QBBZC1lcIk": {}, "X6vKE7BuqWmWUU5A": {}}, "name": "rQdpCCUUqWVbmyAO", "shareCode": "64PtsEixK3o172eD", "subType": "5ulge6cP7sfQav2T", "tags": ["XZ5LIIkyB4LSBKEG", "oWxmd88AdrUgAmEV", "BwIJXpY46p5uSO7x"], "type": "E10OzHOwxb52SZIF"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'TAs3M5NiGgyPP9YQ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ECvIlNMBj924tShE' \
    --userId '5KCO95hC3wDoo0fV' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'NK5ma42ru94AuTVJ' \
    --contentId 'WZppyLKh19n6zpjv' \
    --namespace $AB_NAMESPACE \
    --userId 'YXxJO4roujFL5dgZ' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'elVOP7gIeJ3AQ7Kp' \
    --contentId 'GQ5ZJhrlcwv6nfM2' \
    --namespace $AB_NAMESPACE \
    --userId 'AWhiihy0SrIYzXuw' \
    --body '{"customAttributes": {"HXiO2sopJxDAzXqB": {}, "4CK4s7GNx2osn6aD": {}, "fbmI4oDccJOyQ5UR": {}}, "name": "3JjFjxpIZqXCj406", "shareCode": "ti2qZGan1SMwr0iR", "subType": "SYvvjSFQmHCQdakp", "tags": ["YuqPssseZYHeO0A1", "rd7AC35AMuODnqUQ", "dNJJ3uG8LwXFA9ko"], "type": "8HvguCaij3CcO9IJ"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'vAKg2Fu3txTZWtWr' \
    --contentId 'nJoFeA1a6k3718lz' \
    --namespace $AB_NAMESPACE \
    --userId 'MKwQNI7yNKWhroS1' \
    --body '{"fileExtension": "6BLIWJlBmq4MTE0Q", "fileLocation": "KarIQVXhE852zPpZ"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId '0sPBR95u4GbiK9Zh' \
    --contentId 'RLIlwmDgGcG3EWYY' \
    --namespace $AB_NAMESPACE \
    --userId '7D1eBSgmcquY1IK9' \
    --body '{"contentType": "nEvqidEUe3gxt7TR", "fileExtension": "wxY7b04D76tPw4y2"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'A0DspRovMhvDJ9eT' \
    --limit '85' \
    --offset '17' \
    --sortBy 'NmNWwIbazvJsJ2Xk' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'dfrjDIhA2BGhx9z0' \
    --namespace $AB_NAMESPACE \
    --userId 'yFy4knkqPjE889At' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'AfNcQ94MQglNiHPc' \
    --namespace $AB_NAMESPACE \
    --userId 'zYe14G40BI2hemjv' \
    --limit '13' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'MqiAQoQDPa5pY7S6' \
    --limit '91' \
    --offset '83' \
    --sortBy 'BmKgBGoRhMB1MzQE' \
    --status 'Zw9QVcGNoNXWePSO' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'oHDDgQ9UaI0emeza' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'zVD2LXKOugJblGGt' \
    --offset '73' \
    --sortBy '8r00DyDMhBrGodGK' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '17' \
    --name 'YmHVIbqVITlGIGLs' \
    --offset '79' \
    --sortBy 'RGZKJR4OWBRZUurj' \
    --subType 'QHVdncuQndoEWpQf' \
    --tags '["JRSGbdP2FQuS6NRU", "27TB69GkUrRslrrJ", "R8zCpq1HnGsF5FRy"]' \
    --type 'WTktp17T9DbIMo7g' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["erleMq03mRy6Mq7A", "9aND59ou0JnCsEbc", "pvhjsbCTbDZ1y4l9"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["e7GedzBTW0Dr3dfl", "OAL3fvw1aTj4Tk9j", "kGFtkzcqKcr90oSC"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'bupfJXEXOYIvIQgM' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'XqD4Duuwl4ZcB3d2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'GSKmDsa0VyHKA8pb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'YbQlp05JRM5ufaEG' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '92' \
    --sortBy 'ZDMjQUew1IRgGeXJ' \
    --userId '3jWgOlWNJJFWkxak' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'LRt5r7WB54iNPlcU' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '21' \
    --sortBy 'NMGmEG04jU4zTnUC' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '9HJgmbaWnRj6UjTz' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'ANrBDtV0mxskJiST' \
    --namespace $AB_NAMESPACE \
    --userId 'vx55bqjVsAztopn5' \
    --body '{"contentType": "XtiNQW4sd6q3g940", "customAttributes": {"GVmuoZ9U8gRZPKRA": {}, "BuetwEYbEl37g7wj": {}, "A0TFllCXovQXpzDN": {}}, "fileExtension": "15JJpla3KB3Ox9R8", "name": "YMGvK1BfISmNAOMm", "subType": "S772fgoXI6OSCtqa", "tags": ["f9doPlGoMOGYJo2R", "IOBE4RsV6d1q3Ljk", "GaYqKZJAy7F0aw5R"], "type": "lEBKCT93gyDYCw0T"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'fiPmRJeu3FFCFxkQ' \
    --namespace $AB_NAMESPACE \
    --shareCode '9RcWrGnK8CBQMR0q' \
    --userId 'SDOZWHe8ZSEszH6c' \
    --body '{"customAttributes": {"UiOBcmXsrJb2hRTe": {}, "2L2Y1VBkzPsWPDu8": {}, "jd6g2q9GTWez0zWA": {}}, "name": "jd3hiFAIlsyE6oc3", "subType": "vZKx0aJ9t8v66ZeS", "tags": ["j1ceybYgUP1NNhDJ", "o7XBB0KbbqevzKyV", "SzpUsONxCQjmC7tX"], "type": "FkTxibL7jYN4Kt0o"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'I0P3RWECfhMsDreH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'EPw3BBydI9eqZ2I6' \
    --userId 'SaQDL7BJcFYv1tB6' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '8eNlPbM4HyWI6xim' \
    --contentId 'HoHd9FY4MVmwj8Ht' \
    --namespace $AB_NAMESPACE \
    --userId 'CbCrFO2EtCc1Xywa' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '7d4ZhrqzJdkQNzJI' \
    --contentId 'mneakSeyu2buEFQ9' \
    --namespace $AB_NAMESPACE \
    --userId 'KZrcRRq9oBNxtCwl' \
    --body '{"customAttributes": {"Ku2qX3tplbpQNhRd": {}, "KtTrIXaf55ZbB0J7": {}, "QiB1xV9ud7LQ4zAl": {}}, "name": "xTWY9qzbBhcVApSI", "subType": "qhvfHqtUF3EURjgG", "tags": ["bTHICS6jlAhitIpa", "PCgAVHjnB4JRY5gZ", "bpoPs5lvnmI66WfT"], "type": "1ZLa0RVwzLYAOrk6"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 's2lVpkH5DjWMU10p' \
    --contentId '8c0DcA46lxV80KtX' \
    --namespace $AB_NAMESPACE \
    --userId 'MBNassrtqLA1cntO' \
    --body '{"fileExtension": "BuRim9k1cd62jXrr", "fileLocation": "vKXUr0weBmTuntFs"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'cIzcuFqRm0qYwz2X' \
    --contentId '35x6JzHVTiDSoFjn' \
    --namespace $AB_NAMESPACE \
    --userId 'JigmwF7B9mRcj8Mq' \
    --body '{"shareCode": "7wQSJXRuCUbPZIyK"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'hYZPagZJzavrSmxd' \
    --contentId 'AklSdQodS4Xoizu7' \
    --namespace $AB_NAMESPACE \
    --userId 'Mx4GbgXYazriumdV' \
    --body '{"contentType": "3lCE0vH0eSr1gqDq", "fileExtension": "EdOUwS4IfZzDHaXM"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'TMac1EIEtLOtreTk' \
    --limit '36' \
    --offset '94' \
    --sortBy 'wbYhNl8FuMMiEID5' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'RqUVrtOLdzdP6Gpw' \
    --namespace $AB_NAMESPACE \
    --userId 'xwBozOq2MMPeZ7OR' \
    --body '{"screenshots": [{"description": "ckcTkOdCQ58xsqek", "screenshotId": "G63pdeIWsOAS60oj"}, {"description": "h8VG9G2O4RuS87t2", "screenshotId": "frU1Mq5e0W7fuSTO"}, {"description": "p1WtSXWaisVjfFHW", "screenshotId": "7eMCySvGuu1S4MLH"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'mIcJZDAPwYoN3wVN' \
    --namespace $AB_NAMESPACE \
    --userId 'JNrcH5AbIogtDOgC' \
    --body '{"screenshots": [{"contentType": "kicN79RBNrUYSXk1", "description": "lmlniu9m2EtosO2U", "fileExtension": "jfif"}, {"contentType": "ue26RxF66PWEA7uH", "description": "G2bHGSNwk7y5GvuI", "fileExtension": "png"}, {"contentType": "opIUVVL09nrC8xG8", "description": "Fc6kA58St5LItr2J", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'Gcq9whIJ6ubZwzrH' \
    --namespace $AB_NAMESPACE \
    --screenshotId '2auvsnk13axu74v2' \
    --userId 'obRbUtGmeP3LfGPt' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'opf4EKViXEnbAMJl' \
    --namespace $AB_NAMESPACE \
    --userId 'I539TvGkGk6rezz1' \
    --limit '83' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'iaM5tdqiuqTSlJXv' \
    --limit '37' \
    --offset '49' \
    --sortBy 'F2O2DSHMyBdR3HO7' \
    --status 'hpOnEkrxsni0jE0Q' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'SJGYbgaCWJfp6iF7' \
    --namespace $AB_NAMESPACE \
    --userId '7Ka3dL3GJtnwZOMh' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'bFq7By5j8PDuxsQd' \
    --namespace $AB_NAMESPACE \
    --userId 'GT0T4r3niQFwoFkC' \
    --body '{"fileExtension": "ZqLHB5wIYPoP0sQu", "fileLocation": "AdeykqequoiiQCaw"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'hHBpqo8G6qKPOKkV' \
    --namespace $AB_NAMESPACE \
    --userId 'kRrE32V4T4GsruIF' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE