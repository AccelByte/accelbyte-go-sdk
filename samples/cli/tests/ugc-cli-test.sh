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
echo "1..152"

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
    --offset '51' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "pLhhR1aVSEkVWqw6", "name": "mbWIw8wWpJ50wA3W"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '2W36RUqddPOhQxMI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "EdZzsjLGTViQem0l"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'QyeflVjej6bguj4M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Mwo2qZWZS1tHM1HJ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sMOBW9wEsDRFeLXT", "customAttributes": {"PfYBCpZuwJ2IMYCQ": {}, "2xfKnG7nZn6ln0Kr": {}, "7B5OZCJSOWsB1xlL": {}}, "fileExtension": "dqfyKyTOEFbghKk0", "name": "tgehBjoQGwHbaQNE", "preview": "IzPngUB4OxfppCsA", "previewMetadata": {"previewContentType": "RMcGvnpfkBJXrxCd", "previewFileExtension": "p9nQL82AaEJZ3aiO"}, "shareCode": "mZkcIVOoMMg7nAFy", "subType": "RkSALkh45rbkMXfp", "tags": ["dKNpn1TcD0tEgj2x", "z9NDOBs4HDcixhed", "qb9zkLkFz099xOZQ"], "type": "D66cMpi0ErmH3SHF"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'wUOKig9YmJIKYUK8' \
    --contentId 'nv0xWkoXzGQAnTGc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EBGPkvM8ST6A6ECi", "customAttributes": {"gZcA4hm9YQN7hyR3": {}, "wj87rko5WQ1q3x01": {}, "aWFrWLHRDNU80uYD": {}}, "fileExtension": "vKy4BbJ4T8zGjEs6", "name": "YnO43K6jD5zEzXwA", "payload": "Ex7jj0wYdV2ZksDa", "preview": "cDN5FLzSJfO1NqPA", "previewMetadata": {"previewContentType": "hZxPKZoeyHMnU0WX", "previewFileExtension": "kba4GZyFjAUfECnC"}, "shareCode": "3YGvirLGw8Ych5z7", "subType": "IRbKwrqrnzufG6eP", "tags": ["rMgWfCuWtZlfRuV9", "Q5rPAJKslVSKalaU", "7rY067o1E6Jpu4Ah"], "type": "GfZakqbzGuOnD342", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Qb3x67JDft4BeWLI' \
    --namespace $AB_NAMESPACE \
    --creator 'l5R5PJUnDiZ2eRs2' \
    --ishidden 'SitBwwUiorYlrYGO' \
    --isofficial 'Xt8gGXVBNmDRHyP6' \
    --limit '83' \
    --name 'b8tMl1IEwxhqmoiv' \
    --offset '12' \
    --orderby 'n0zDHbTfkGwIIdaS' \
    --sortby 'vJWkXqD0zoSdW7Kd' \
    --subtype 'aesIpCvEeYB5GWMz' \
    --tags '["xbjl7pISkuxORGzu", "SjOBJB7kKy5TaSS9", "K2xXnPkd64nGxvfq"]' \
    --type 'woXDvUl0czB8M839' \
    --userId 'RQL40dmmb9S3AqXB' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'BMtpOLtXQTVrCZIl' \
    --contentId 'brAbigKyT8x95us9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fVYVTB76yF11tuDW", "mxq891nhMTPN6yem", "TxBnfD2AHBkPhdMp"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'DZBdRuezohqNPPzW' \
    --ishidden '2LlDPbyZWAxzbT4q' \
    --isofficial '4kzPen7bg9neVIqF' \
    --limit '47' \
    --name 'FboL1cYDsENohMPm' \
    --offset '78' \
    --orderby 'zvgj6mUyk8QHITku' \
    --sortby 'Ew2Tg644dpg6Il17' \
    --subtype '6BmocR3Au8pcT5LI' \
    --tags '["dePFgoWUdCwSLDlB", "tfoytAxMbdep3vpg", "YH6RYVQQmjshKQL3"]' \
    --type 'A6v8mTwaTJxZauxe' \
    --userId 'B2Iz16WNwwPKwdft' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Q17Qf2RFEgQlpjkM", "WKRqPlQwK9jKXBx3", "Sk3v5WxYtiIqEThJ"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'hMLDqLwEzT5eOocg' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'YhpFKrfgVimithTT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'e1byhKnxqusl0uAi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'AyefuogqgUFxfolu' \
    --namespace $AB_NAMESPACE \
    --versionId 'bbfdZfxRectGSHcw' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'AOpZ0WTlNXxLBwD6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ialX5kxJTz1P3CTx", "screenshotId": "xLkMxGHtJ9bTpueJ"}, {"description": "jDnUo35PJWVwOBaZ", "screenshotId": "xylmI6Af1OCFX1Cw"}, {"description": "t4gBLs34GnAhmO5E", "screenshotId": "HureHVOMqQHmAY6T"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'aMECDoznSHM1EReC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "EZSiToTnnpmVcykt", "description": "3IkHdEJ0UrwP5dlY", "fileExtension": "png"}, {"contentType": "1D6G9tZSAckkRXdZ", "description": "gbg84hJNzYY3ZrH1", "fileExtension": "pjp"}, {"contentType": "cbFy4nuvAuKqpWgL", "description": "m0Ta0YjRTi5aTmZK", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'D3UZ5etO3Ix64kG5' \
    --namespace $AB_NAMESPACE \
    --screenshotId '1XL7SIqz0zS8oHB1' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'B89nmXENjet7DcMb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["TEzXAyapOCyRCAzC", "GnMHoOPsk0JS9nnF", "bJUpZmJxwhmOe2lm"], "name": "7SUyxwUos3zoElFS"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'abdO8Qfa6zYEfohJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'xNOf1zE4CbEbxCtO' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Z8506iuL4Zh3bTDf", "GzwvM2GPIwp6joOG", "l8TeCwIpqL7oZoVc"], "name": "44jzTnPeQURructQ"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '7OFzxVmiA1CuhYtM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '45W14S2IolMQlhVu' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "AbDTw2RrVgIlZOcU"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'cjgQVzMspFaBLdOD' \
    --body '{"tag": "j0kaz4garPvU3DGD"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Su2UsCnXI5FxEB98' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["E93H9kLDgzAS6Elb", "6dGl0JJ7aj2M6LnJ", "CeCr7UdSyDoaU99a"], "type": "ilEwCl7u9z4BVbIy"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'HAtoVBFEASuCcGVI' \
    --body '{"subtype": ["Ncgaq5zF3rpGbQps", "87hcLeEaRXX71Mjz", "cI7R037wODb4Gn6m"], "type": "KU9cwd5gkmtw60dx"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '8YPrSgEmFhuF5Ax0' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'RoPpTXY6kyIcje3k' \
    --limit '90' \
    --name 'RAx4YZngkq4ZevQq' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'e40dwKWCQhsHBBDP' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'fiN4RTGS8bL0MWmt' \
    --namespace $AB_NAMESPACE \
    --userId 'TPWFRaWmTlv7CiNb' \
    --body '{"name": "KK8pIfumy5h5hlDx"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'G3gQmtwWnuR0aaNp' \
    --namespace $AB_NAMESPACE \
    --userId 'DhoMqlzPkrMRZtcT' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '9xUrRwTTA2W1HTnJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yGpS5FyTEQkeHBH8' \
    --userId 'sHxI8zWnoB2lVE7R' \
    --body '{"contentType": "cREDyVEVHS9ufFwW", "customAttributes": {"frvi3aXpjhrq3O1U": {}, "gsXwrLQOvjr7oquu": {}, "06OjHqzbnkbhuHvq": {}}, "fileExtension": "mUcBECDPFqpHITio", "name": "R92zZm1QUa6Wdje0", "payload": "BoMK1YZnNYptDont", "preview": "A6EzQ3tI7x65J6FL", "previewMetadata": {"previewContentType": "ZYoMhsHwZ7HmWb8J", "previewFileExtension": "xdWl11g1zDW7lXdZ"}, "shareCode": "2OYDE40SDdFynGee", "subType": "9RQ2hJKj8EnPhX4U", "tags": ["YK4aCGOYs3VyKsLs", "BS4tCQ03qpwWvj65", "tOha6XexXaMSnzKE"], "type": "dvwbfyC2J3iu6iXe", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'yJRoNxPS8UQrTSrr' \
    --contentId 'auz57ZzsK3hxf7oe' \
    --namespace $AB_NAMESPACE \
    --userId 'OWXDYoizIz7WCw6A' \
    --body '{"contentType": "UdbeJgvOPh8T6yfl", "customAttributes": {"bJcUyn8wntDxI9UC": {}, "7QgEski3EROMwTKi": {}, "S7JxttePzVJbws1x": {}}, "fileExtension": "Wo6OdAaKm0qYijOc", "name": "vA2HAPYUi2tHjiYJ", "payload": "Q1qcZkFxy0JSGcVR", "preview": "j2YZgKl5vHZ17Sp6", "previewMetadata": {"previewContentType": "Cf8rslr6HOFL11Wc", "previewFileExtension": "n9k97quwSzF8lTix"}, "shareCode": "weuaVfrfh4tEcXzV", "subType": "s9FZC12fjRjuhJZa", "tags": ["TTJy7xvwzkvPUHzN", "8qBvHzvZmibf75K5", "a7PUYHDhaovdLrth"], "type": "UVqmbG7eUbxQ3LCc", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'HKlAusngQ8K6Af8B' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wHihvO5gVTIsDOsO' \
    --userId 'OoEnKMKcAsLHjmvP' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'OZ2QQUZfV762NEqB' \
    --contentId '16QGv6end76v1712' \
    --namespace $AB_NAMESPACE \
    --userId 'Cl7vzcB4pZeofbfq' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'BBUiQBKE2o3TD24P' \
    --limit '46' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'isw1CRnMuDF94xZQ' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '0LKjwsQap2fxj1K5' \
    --namespace $AB_NAMESPACE \
    --userId 'l4tBUtckixWobaHr' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'qh3WBZW9UWT6Qsqj' \
    --limit '61' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'o1X0IpTZ1Kjt0z7T' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'uH2KUcT83W6JcEUp' \
    --namespace $AB_NAMESPACE \
    --userId 'nW9OYuMWozr5qaMo' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'fGDdgO9esP7Biwyd' \
    --namespace $AB_NAMESPACE \
    --userId '42PLvBzGfCoddd8P' \
    --body '{"contents": ["MUHG4hxicmXiokpI", "zQ77abp44lBAwv6b", "NFGO9PnsTTPChrGm"], "name": "fWcz9Xsz7JB5fNC4"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Jv8uUnuZH5jySgV3' \
    --namespace $AB_NAMESPACE \
    --userId 'dIAHGEZWpYMHspyi' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'chwPABzqQgU3H1wW' \
    --namespace $AB_NAMESPACE \
    --userId 'kPBZ84sFX5lbYmS9' \
    --limit '11' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '62QBruBYu9ciC0Mx' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'slmupvnMFSl3fhDH' \
    --namespace $AB_NAMESPACE \
    --creator 'wolxJKgxZSimjOB4' \
    --ishidden '19YRkVVVQqXZTAao' \
    --isofficial 'PbDzVa8NFtCrITdz' \
    --limit '42' \
    --name 'Dvzpe0NZEPratsje' \
    --offset '63' \
    --orderby 'Mgmq2XhSMboFdWBz' \
    --sortby 'qo8E2wxRaB1Z8t66' \
    --subtype 'sJjh5oB3n34Gxmfr' \
    --tags '["RkPxS4d5cGwGNNSJ", "LLUAupaqPKFRo5jC", "LyRfW2grHeCeKr29"]' \
    --type 'S6JmNKX1pILbHRhm' \
    --userId 'EZqDq3ijDrzt1BVy' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'iQTalAgnyt0fQJ1S' \
    --ishidden '4FwyFVoLxu5b56kA' \
    --isofficial 'qbGYvwJtk8rUAPOn' \
    --limit '70' \
    --name 'NljVbESf7Fc8S487' \
    --offset '51' \
    --orderby 'yotuTmzyThuOqUMy' \
    --sortby 'x2oOhnQmixfzjPRk' \
    --subtype 'XNunrCmI34QyumrH' \
    --tags '["mu1PW2TnClfc3t1B", "cj6kRAzlWtkpW6Gv", "P0DuCVG5JiVPyCog"]' \
    --type 'aWqFParAL7Cdq3qz' \
    --userId 'IADm6whjZr56yhuS' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["VUuepK246BvrDhv3", "MKHbDlBuce8fhhJl", "psonxoTgAbComxID"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '4' \
    --name 'v43bLyxupnS6VUed' \
    --offset '31' \
    --orderby 'JTjEASFnux19Eaka' \
    --sortby 'RC3bzE9TEQuadyiO' \
    --subtype 'O8rkZDcXKxaWEm3h' \
    --tags '["oBuvkj110u3GaV1F", "NY5VO8RyvslPRvSV", "ruNCzJrKCbpiatc9"]' \
    --type 'UNmzGjZkjHK6kcy1' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mWMutEZofjrNcAzo", "XoFIdq8qLAKzS2bY", "ibgsZk2YN0dK56iT"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pJJOUoGme8cGTeLJ' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'WeThukhJWcUosJN8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'BMwzlvDKKdfI50lm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'XhCu1krU1fWovDOT' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'rQIQkc068qOBFwGy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '19' \
    --orderby 'qqg0xU1S6j6R1ENA' \
    --sortby 'l6f8788Snm0TY5zq' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'm6h4TmTDTvEfTgzV' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'F3gki99VrYwaWnUZ' \
    --limit '57' \
    --name 'fCYSTa8wTzA5FuWg' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'wnPmmzgGhFxUByRE' \
    --body '{"name": "uvopZx33sADAmbMv"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ojn9HOXJfM2CsKkr' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'o2lDDSwvHKlU1MeP' \
    --namespace $AB_NAMESPACE \
    --userId 'rdDkpawEuIotVkdi' \
    --body '{"name": "gIw9q0AuqbgY3dFA"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'nhAFKAOPVqTC5vL9' \
    --namespace $AB_NAMESPACE \
    --userId 'HCyut7dK9EKo9HTe' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'brfhNqi4w4blRLZY' \
    --namespace $AB_NAMESPACE \
    --userId 'pOq2uDj7t20XUwz8' \
    --body '{"contentType": "wl4yppQ5f2HWLN4c", "customAttributes": {"KMgKLhaN9Nuog2JR": {}, "XY2TlV2mHHeVOMrq": {}, "9sSUTivC91w3j6Di": {}}, "fileExtension": "n4vZbN3wRt9Y4IvN", "name": "PE9La5aH6Y1a2FVG", "preview": "y7vQjq4ExfAtacjy", "previewMetadata": {"previewContentType": "7JBVHuOUhajuFJ1X", "previewFileExtension": "SejVMiTYGh8Z4nsc"}, "subType": "eAx3NU6CsGxlNWmQ", "tags": ["anuwzCjG2kF8ICdQ", "QgWBiV1g0JaupycP", "DdKprVY5L62QKJOG"], "type": "Ml8ILhjLY4UQmENK"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'YRe7BVcr3IW0OTMH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'b902QNKnwXQSRTg7' \
    --userId 'TjCzTxXWzyMFifh9' \
    --body '{"contentType": "NSg6RpfHvA0iwJKD", "customAttributes": {"AkxPiomLdkWQNVIU": {}, "ZnTGhavA3m15py0U": {}, "4PkTTogZ63mDzGU1": {}}, "fileExtension": "VZcstmYlqm2Ea9U0", "name": "lPVXgl6nPPfTtBkY", "payload": "7O5qhty8KbrUP5yH", "preview": "5NQRvjJ1Yhwq47eX", "previewMetadata": {"previewContentType": "m1PG38Lz5Qrn6MWf", "previewFileExtension": "xvBYhU3tLuOTy3rM"}, "subType": "WJYXq5pSvm5Bog52", "tags": ["S3QgZ0tkHVG2aGbm", "ZYGlKzN9qNR6s5E4", "P429s1vLedX7CaVN"], "type": "gYjRPC1jb5a7njEA", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'sYbF2DIdhPv9kWEd' \
    --contentId 'j4SddjVzK03O0I3f' \
    --namespace $AB_NAMESPACE \
    --userId 'NNcAQQyiSfpHb9Nf' \
    --body '{"contentType": "aVJjUDT2E6ja72EF", "customAttributes": {"vzUKhinx5rpRcgtG": {}, "yDzqQQtW8uxskvHL": {}, "V9sbkdVvmvL7NHHH": {}}, "fileExtension": "QGi4DtV39fbliyQZ", "name": "qIxGK2RNTooiLsSC", "payload": "JzWF2zfQ0EOnKvPE", "preview": "WvDARLP2RNmTYIgl", "previewMetadata": {"previewContentType": "bobWZT4W3FmGS3cc", "previewFileExtension": "HaVL8WHvQhZGoPWv"}, "subType": "OO2iB4IC4hsPDB1K", "tags": ["jFpWPpAWYxRkebth", "epaf025Dq4FO7DuT", "AMhNIfIfRUttsav0"], "type": "hye6C9BSJXkRA5qg", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'AxigJbZaA0t5Usim' \
    --namespace $AB_NAMESPACE \
    --shareCode 'a0jSeOcCysf1iSpr' \
    --userId 'AHjk2zrD9QtzkPoO' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'DockYgWZ9Xh7PSRr' \
    --contentId 'lwun06O1EREQT5Du' \
    --namespace $AB_NAMESPACE \
    --userId 'nagEZSh8PGd7ZrW8' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'nqc4Pqi4QUK6TAzN' \
    --contentId 'z5VZoHcyQVb9u1sz' \
    --namespace $AB_NAMESPACE \
    --userId 'Uj795MMYHTj8dXPd' \
    --body '{"shareCode": "5k3Geri4T3ACqgRn"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'yty6WHns3Z15vuuw' \
    --limit '38' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'wgX1fHReqBCQdgde' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '314YuikH9S8aq2XW' \
    --namespace $AB_NAMESPACE \
    --userId 'dVdbnvtGs0789joC' \
    --body '{"screenshots": [{"description": "zcuGxqpFlHUaEMad", "screenshotId": "LKQcELcMKU0O5Riy"}, {"description": "9yjo9TRN7laZzB6N", "screenshotId": "aHmLiowv1iAsXCSO"}, {"description": "aCjFVwrytTha62nL", "screenshotId": "i74vUhAz2qBfXQBd"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'J0zUAf8hf0IvOim3' \
    --namespace $AB_NAMESPACE \
    --userId 'wogiDlXg6Y6fwvLP' \
    --body '{"screenshots": [{"contentType": "XMYHMOR9rxbP7YfI", "description": "0JFehgkphvTnW2pW", "fileExtension": "pjp"}, {"contentType": "3DnRFZZfAn7iWI1b", "description": "HVR2IWF6AGUygvKQ", "fileExtension": "pjp"}, {"contentType": "KFVe4I6BmfYfehBt", "description": "LyOP8hZDX67zFpzY", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '8q8vtZo1salaXDq1' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'XABlt65GBUdHZfvU' \
    --userId 'X6vTTu38kQo8mVeV' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'DZBiQ6Y4uGju1HLt' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'uQzZMo6FQoDPQ41I' \
    --limit '90' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'haUjBzVI4qeyagj3' \
    --limit '30' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'STf8FB1qeZWFyiRP' \
    --limit '18' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'xjj1vKSYGS85wHqX' \
    --body '{"contents": ["F6R3p8obWHLBzoyI", "KypYUaboLp1c6jPi", "fl52DUssfaxnuR4p"], "name": "mEh4nc40ujcXzoif"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'vtZoTksdbHJdKu8a' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'zbBIWzcwm6jcnUD0' \
    --namespace $AB_NAMESPACE \
    --userId 'wr58bUJbCXZqPG11' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'rtNSwXVJzpxllgZ5' \
    --namespace $AB_NAMESPACE \
    --userId 'pC4QSXQMH93syJD8' \
    --body '{"contents": ["X73iFeNyt0vplnmi", "hGjUuwOAp24egR1e", "3pE62aUX4vswifJh"], "name": "lMo0MUlsTFe6kbyp"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'r94aZFQ5oR0cHWFJ' \
    --namespace $AB_NAMESPACE \
    --userId 'pBK6xUFwn2hJlyiq' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'Ymi8F3eS8ZgaZqIx' \
    --namespace $AB_NAMESPACE \
    --userId 'fMdQ1iX5gKaFY4iR' \
    --limit '53' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'MkkpO3pQiTm7alUP' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '0H4JiMbp7Y5MnzFC' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'ksWZMGJht9Q3TcV9' \
    --offset '47' \
    --sortBy '2z22nypQaKLx8jAs' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'paMQp62bh7C1zzCh' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "dg6EzfGjhNhLx8K2", "customAttributes": {"APYJ4vMcAI4RXxEv": {}, "yrjVV9vM240OqQAl": {}, "e7skUkWDRpYKD5oL": {}}, "fileExtension": "S2lPP66jOd4VqylY", "name": "6JVCijMGPOzId7VV", "shareCode": "bGpt0KAxaWXeB2Om", "subType": "AnmSd9wjUWsQuuzF", "tags": ["13UXThqpgkv0Uv5k", "KwYJdSzL4sUYcGGB", "pvPVUY2lyU5hTCdd"], "type": "hgjmVHvb5Fp8M3lJ"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'XABY7PXgGKEOxHVh' \
    --contentId 'aW9Km8KNvXwcXeIE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'R7QqG7Vd0HQ36adN' \
    --contentId 'dlVbORp4W26DUbRg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zUKvJzxTjAQ9jh0K": {}, "sGBRPgf9AQcVXvd6": {}, "dNJzP08pQxZywz7x": {}}, "name": "HErczDXOoKWUyu91", "shareCode": "hNxGFy8j06VwltZh", "subType": "B0rqr1lJ5ErONHml", "tags": ["24JRE9ma4kblICrI", "c56MXvAzwZzgpM0W", "oS4sIELWsu2SnLkI"], "type": "QZVwHbi3CC0w51pL"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'ZPUilu99opwf9hAM' \
    --contentId 'v9rtaoUyG4jg7U3W' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "Kaubd9DTi3j4d6NC", "fileLocation": "FSswDJtoh6WGYrfB"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'lsTvBJsPfcchEvmk' \
    --contentId 'hPYUIHtpyAFZuoLp' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CE3UqVT117w6B6FC", "fileExtension": "6fOddD1x6gtAvExE"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'nUA7nKDvdgyTl51G' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "qIje7RFlKcAnipiU"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '39' \
    --name 'DSqa8CmG8imaWzf2' \
    --offset '26' \
    --sortBy 'e5BpSm6bOiejXTgR' \
    --subType 'wOAugfuHEN0KGDI8' \
    --tags '["TAPscVGjvPD6ND0T", "v2cXtYRs0jlh5idO", "nYanWZgT6fjddaNG"]' \
    --type 'eb0xHagzWAsQBLrU' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["kTPfHQsEzmp7f7z7", "DbMoNIquEMyghNIy", "j0PspPirVbZPxW7y"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["fNdkGpam7PxdVHq2", "JblNXCOQ2sLXSiA8", "zdrApkeYp7aIE8Dz"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'ynOmj5hV8v6jmOte' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'vknozdir13MhaPET' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'Eg63RpdsTgM13pY0' \
    --namespace $AB_NAMESPACE \
    --versionId 'fF9zgXbbkKL7MGmf' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'vwtwJ0cJrYgW3aJA' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "jKxM6wBTKC7WUjDc", "screenshotId": "SAC573NKK9Ol7mje"}, {"description": "1IJNwAdNrQ8eUkh7", "screenshotId": "pf1vyOrDtFMRZJvn"}, {"description": "ifG6P9f2AsXTN898", "screenshotId": "TFd1WRonXzaQeC4T"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'xW01TsQANcqw7pMS' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Wcxop4eNq6YUh3l5", "description": "LPXzxk1QeaVK7XXP", "fileExtension": "jfif"}, {"contentType": "cOb1yaJkFG2gna1r", "description": "41m3pVz1y4Vu8zd6", "fileExtension": "png"}, {"contentType": "dsvBKgNMfviUMpuI", "description": "MBavGk1HFyJlgLmJ", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'ELO2dSYP8aEZJuQR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'BnPjlMZrtKuiK76b' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'NOafZDw1epHYscdA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'agPLs6hzuvQOccmG' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'yQdY0vA0GmwACjgz' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZIF9CplPxxodRpig' \
    --userId 'iNTrRPgaHToiow8C' \
    --body '{"customAttributes": {"zSbRbHX4cR7bKZsp": {}, "qYIkDHPxugKLe7MI": {}, "fmH9GIFa88wiIK9o": {}}, "name": "3ubEmE4w8LP9UzNe", "shareCode": "Bt0P5wt9ZylY9aqZ", "subType": "doiedEM71Gz5ICMs", "tags": ["H13UiyKopIUPzxAR", "x98dDsOuknzhThbh", "KWMHb101M72NgqkW"], "type": "Xo6Ihdpqhbv6oxFa"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateContentByShareCodeV2' test.out

#- 122 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'T0dxgr3WdrKlAkSd' \
    --namespace $AB_NAMESPACE \
    --shareCode 'uDojppV7M9TbKlBC' \
    --userId 'yx4b9VOxuDwA82Aq' \
    > test.out 2>&1
eval_tap $? 122 'AdminDeleteContentByShareCodeV2' test.out

#- 123 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'GUdcdgjMlMduTvgq' \
    --contentId '2dimGMsv8eL41BV4' \
    --namespace $AB_NAMESPACE \
    --userId 'L9z5oHGX4gbJd6Ug' \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteUserContentV2' test.out

#- 124 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'pVlhw778jllX1WBL' \
    --contentId 'P1jmf4K3LJ9KVk3L' \
    --namespace $AB_NAMESPACE \
    --userId 'fXBiQwtFtmKZCGpT' \
    --body '{"customAttributes": {"Z2X5SRDpM000mJ5d": {}, "PLVfIOPmVuwqwIoO": {}, "jaxqZVAbRvJn1pSv": {}}, "name": "pk36rtLSYETKLIXc", "shareCode": "riS8xaa1OEIuIryQ", "subType": "FUOd7PYYs3H4x2FB", "tags": ["H8w8SOYdgHYVVrDg", "UvMhbm4fXk7DBGdr", "hs5Kb7UKIiVEqVqo"], "type": "g4wufvk2JVgeiQnP"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateUserContentV2' test.out

#- 125 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'FjERCF9VeYgyCJUw' \
    --contentId 'JFXIHG1ZsZin1jYG' \
    --namespace $AB_NAMESPACE \
    --userId 'U5p3s8yWVVgdIMi3' \
    --body '{"fileExtension": "NLGIbIpg6kZAlwTS", "fileLocation": "H0EnhUVTAhesJ10u"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateUserContentFileLocation' test.out

#- 126 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'Xoxx7fyZgRYDUUQ9' \
    --contentId 'IoP8kG0OHcoTTbDH' \
    --namespace $AB_NAMESPACE \
    --userId 'M7Qhx5GZgdFVa0Ej' \
    --body '{"contentType": "UuxMk7d2qfkJK1ct", "fileExtension": "jJReOMnK347MIqfu"}' \
    > test.out 2>&1
eval_tap $? 126 'AdminGenerateUserContentUploadURLV2' test.out

#- 127 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NdDGVE7eYwbD08Yu' \
    --limit '13' \
    --offset '90' \
    --sortBy 'UTGdPvtobnsPTrrE' \
    > test.out 2>&1
eval_tap $? 127 'AdminGetContentByUserIDV2' test.out

#- 128 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'Oh3zKIkVuq1iEFEg' \
    --namespace $AB_NAMESPACE \
    --userId '5Ek5ivP70SzvMwGf' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateContentHideStatusV2' test.out

#- 129 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'PThA1O4fxQyKW43J' \
    --namespace $AB_NAMESPACE \
    --userId 'QilhlZLWx22ZcHSY' \
    --limit '20' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 129 'AdminGetUserGroupContentsV2' test.out

#- 130 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'GkCpVozvgZTEOtSd' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name 'iz8WELclG7Su12d6' \
    --offset '76' \
    --sortBy 'QregPNkG9H8n2XEQ' \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByChannelIDV2' test.out

#- 131 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '14' \
    --name 'NcZbA3UXlyvK3pkD' \
    --offset '100' \
    --sortBy '3N3g5Lu1REmVWOj1' \
    --subType 'C0d1oRvFzAADrbMr' \
    --tags '["bJ5KJ4Bbt62403qf", "hyZfLg7vqbK9ESac", "4gahAdbT9jAUhs8w"]' \
    --type 'xpv73HJtteZvO7w5' \
    > test.out 2>&1
eval_tap $? 131 'PublicListContentV2' test.out

#- 132 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["wp5ezCpi679o0nvP", "Ws7BfxYv34Hia4gW", "em1ATBu5vu9RKM88"]}' \
    > test.out 2>&1
eval_tap $? 132 'PublicBulkGetContentByIDV2' test.out

#- 133 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["A2LAkFJUvMv95SAH", "mcj86QW0dnmeYpic", "v4LwXXrz2SodcVwq"]}' \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentBulkByShareCodesV2' test.out

#- 134 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'YiSgTyjWQweR16l4' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByShareCodeV2' test.out

#- 135 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'oaphfRXOthN1PUNk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByIDV2' test.out

#- 136 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'jrnkP174pFm3wK14' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'PublicAddDownloadCountV2' test.out

#- 137 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'T65zzYUQPUcd1Qpf' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '49' \
    --sortBy '6OGdUaWCYUqyFX5u' \
    --userId '1xsitJ7bpdBVzXQW' \
    > test.out 2>&1
eval_tap $? 137 'PublicListContentDownloaderV2' test.out

#- 138 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'MEDklhTvG69HPJrT' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '27' \
    --sortBy '1sC7LM0P4c2MFyIL' \
    > test.out 2>&1
eval_tap $? 138 'PublicListContentLikeV2' test.out

#- 139 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '7lTVxlq0ypHHsh8q' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateContentLikeStatusV2' test.out

#- 140 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'JVZuqXs3upeWbA1J' \
    --namespace $AB_NAMESPACE \
    --userId 'GRjssVLfNZ03PYy6' \
    --body '{"contentType": "EXnlhYv4rQQ7Vtzh", "customAttributes": {"PCwdSXzUl2vpwVmG": {}, "oKXw3dMcWEnYbuhh": {}, "Th0E5jCJqkoQohIp": {}}, "fileExtension": "mF1Sp3NuQMqE2uPA", "name": "KyXF4ilhKOwY2Vws", "subType": "08eshWGyYPSCTqTt", "tags": ["QopdlJwpK8Umul9I", "9MKKZJvO2sbMO35d", "j8RxQKo7qB3RJ65E"], "type": "gpGoFtcu3Mbb64Sl"}' \
    > test.out 2>&1
eval_tap $? 140 'PublicCreateContentV2' test.out

#- 141 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'wRYbMVXXTAEwWV1P' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Yvh6aR8pTrJISCg4' \
    --userId '3Z9kPAFZro7KE5m2' \
    --body '{"customAttributes": {"ItzksekcDPezpUP8": {}, "wcTg7Zl6G32BlnMv": {}, "MhM89QkNh28MDmXf": {}}, "name": "PZzcGb01kaIYkPbL", "subType": "r7K26aZtC06tAUho", "tags": ["e3o23tVDogLsxVLs", "iEwZQDKEPSKE7mVT", "pUfCfSf4sag9Gw6J"], "type": "IzXEFdkzi3x4ApfN"}' \
    > test.out 2>&1
eval_tap $? 141 'PublicUpdateContentByShareCodeV2' test.out

#- 142 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'PsBwvH0KRL0VkKBq' \
    --namespace $AB_NAMESPACE \
    --shareCode 'P1fEOYBJ03Al87tr' \
    --userId 'c2xIAOdr4ddFQWOY' \
    > test.out 2>&1
eval_tap $? 142 'PublicDeleteContentByShareCodeV2' test.out

#- 143 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'G3oGbDUrm14SzTAQ' \
    --contentId 'koRNQqCIF0PVqRRg' \
    --namespace $AB_NAMESPACE \
    --userId 'XvXtHEnqHU8qQkHC' \
    > test.out 2>&1
eval_tap $? 143 'PublicDeleteContentV2' test.out

#- 144 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'TJn8lp5k7EVMhD2d' \
    --contentId 'b0hkDsUvVv5LhSJG' \
    --namespace $AB_NAMESPACE \
    --userId 'UyLn2pM9OGpoXb81' \
    --body '{"customAttributes": {"8rh5MoYiWVSsSNqq": {}, "ATUz0KlcyN4vCJxx": {}, "qA8sLQehLyV24EnP": {}}, "name": "dqKOvnS9xWyUNGdo", "subType": "KDqH1N1pz7CO077a", "tags": ["JSCfwtsesULRcKBo", "zoBx5kk8dHiIrxtz", "TbH6hc5k47b3AY51"], "type": "vUpzDfSp4HtTGy5q"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicUpdateContentV2' test.out

#- 145 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'dBbIbzBoZL2FeAjT' \
    --contentId 'KmeJmSLlJ3obSMYa' \
    --namespace $AB_NAMESPACE \
    --userId 'woa5resZzjgU1XpS' \
    --body '{"fileExtension": "oNZCpvRuTmnIS9XI", "fileLocation": "eIcHRIg1FfsHEOqN"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentFileLocation' test.out

#- 146 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'P7YYss0xjmBx10ox' \
    --contentId '5aauUcHvoUzDg1IY' \
    --namespace $AB_NAMESPACE \
    --userId 'K8pXyv81m858NGnP' \
    --body '{"shareCode": "Ub9oaRTAZ4aIFHBH"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateContentShareCodeV2' test.out

#- 147 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'PYHp6QpTLnaCFavx' \
    --contentId 'Bnimy7Cr9SXHmSEc' \
    --namespace $AB_NAMESPACE \
    --userId 'TF86LQy3aUdaCJCe' \
    --body '{"contentType": "NKXEm8VvHZuhFJI9", "fileExtension": "0hG8MUi9u9kC8TZa"}' \
    > test.out 2>&1
eval_tap $? 147 'PublicGenerateContentUploadURLV2' test.out

#- 148 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'nqp6ZJQnmTjDw4FP' \
    --limit '7' \
    --offset '10' \
    --sortBy 'MpKvmLsSvG92avGp' \
    > test.out 2>&1
eval_tap $? 148 'PublicGetContentByUserIDV2' test.out

#- 149 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'zbhn09c8PBh39Ca1' \
    --namespace $AB_NAMESPACE \
    --userId 'BTiaVsLsyFR5LGBE' \
    --body '{"screenshots": [{"description": "l9RjzNYSvKNC3Cbc", "screenshotId": "lndXY1Uhl8QKYkRZ"}, {"description": "RLQZumj5c624Ngjz", "screenshotId": "3WUPPOZ5HTDa9Q0F"}, {"description": "46vPz3GZroHMIvHU", "screenshotId": "uyQN3ip5A6XQ2fp8"}]}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateScreenshotsV2' test.out

#- 150 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'x1qxrm2ODRXtuAEh' \
    --namespace $AB_NAMESPACE \
    --userId 'nELmefp5KOMu05tq' \
    --body '{"screenshots": [{"contentType": "mu49XXF5A2TcvaF6", "description": "rm1GoPpwAChHeA5B", "fileExtension": "jpg"}, {"contentType": "2VHqSpYesP0wywuX", "description": "M4CDjjFawTemtB1M", "fileExtension": "pjp"}, {"contentType": "LWgQs567Alkf98XW", "description": "DBbWNBFVs9PWI4gc", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 150 'UploadContentScreenshotV2' test.out

#- 151 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'qwwQzwTydfjCHDgW' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'X9xOJcWtcIDKpg8k' \
    --userId 'Hh3USRiBcbjAHZTJ' \
    > test.out 2>&1
eval_tap $? 151 'DeleteContentScreenshotV2' test.out

#- 152 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'eG6pzzKcpaaKQfER' \
    --namespace $AB_NAMESPACE \
    --userId 'JdmoqFEekgWOARt0' \
    --limit '66' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE