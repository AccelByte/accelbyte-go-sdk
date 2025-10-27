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
    --limit '99' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "eDpwq7q59VLzVz2I", "name": "GT44J4uxcnEloaXG"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'ipacyUynHxaCgN3S' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "kZXtIZ094rhMT87U"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'H6uUjo2dTJKmNRCW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'tpSsOQvHkfdzUpG1' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EVon4Evxmd6jPhVZ", "customAttributes": {"IRdLesQjHusfERzw": {}, "7tLRGJJfuzeBQQQo": {}, "dW9LV7DsjrrrncNo": {}}, "fileExtension": "CWuFxxVuCpyKw368", "name": "5SI8ExiCFwaazX02", "preview": "vHwDYYQ5kRtEWn1V", "previewMetadata": {"previewContentType": "BVIK3bDlZ8Kt11cD", "previewFileExtension": "xRXxPpdIdvBeOJfh"}, "shareCode": "69sx9FclnhlZRdgi", "subType": "eKdF7qv7RpOV7wc2", "tags": ["EawhmoVENrbLACwW", "UNRqnWj0vbpUpJT7", "lw2GkFZjFgJklObM"], "type": "6NcrUwbgzzjaiA32"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'm3dOczbFvqouZDhW' \
    --contentId 'nZXme9Otw10Yt2mP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kY00oJ4FHtX5foVB", "customAttributes": {"m3DYyvDLIdykBjf5": {}, "JEJTDrBNJFWuTg2o": {}, "7QGKDHTeaVKCWzHk": {}}, "fileExtension": "FkPZyZmI6b4ffjK9", "name": "yXdwZuaFaRaYLSsN", "payload": "XXgS3YH3Kjn4B0gq", "preview": "xDRft3DcexOWd6cC", "previewMetadata": {"previewContentType": "xzuzta7We0OJuEQz", "previewFileExtension": "mANWHO1avLylxE8m"}, "shareCode": "cfGVJzg3BxUjKKTo", "subType": "1aSL98CMrvBt96A6", "tags": ["9jTh7ymkTGpxggwN", "Zy2rON0mCS6azmmI", "FUWXbzv8XiSvVJyW"], "type": "LpYhEpELRh4CUsCh", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'VVBG8rmDaMIcSBT9' \
    --namespace $AB_NAMESPACE \
    --creator 'CEUfyGXBQM0sEcFw' \
    --ishidden 'Wzm9DE673uB8XLZK' \
    --isofficial 'G5xyNCHMiXDX53RU' \
    --limit '49' \
    --name '9pfxbVuBfwEoZjcO' \
    --offset '69' \
    --orderby 'Ked0SuqBofNk4YrZ' \
    --sortby 'O11wjvYuytnNs1YK' \
    --subtype 'VZPh6zH5Heomg3YI' \
    --tags '["EGrqchpW5ugKCC5j", "1LKto8P4uj1454oo", "dX2uB06jCReDiQMg"]' \
    --type 'hkqb5qRqhMFTWIbI' \
    --userId 'mA0hhKDlzromQHFI' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '3yWuTf0qzhKABaag' \
    --contentId 'svumHAxff4tubi9E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UV1rrHdxiCkNoiZj", "WjRsDwnv8QhlAx9y", "IEgHptLlPY6UEtKJ"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'oTZl2GctjQPKSePd' \
    --ishidden 'amjZYlz3Y3ttOK5D' \
    --isofficial 'MqXk0l7ceESftfHp' \
    --limit '18' \
    --name 'VvyVYfgwxY4Wgbe7' \
    --offset '2' \
    --orderby '7MUSblM7ARRoUWVO' \
    --sortby 'euq30A63NDtkUkK3' \
    --subtype '4UusCUzJjHd15rUc' \
    --tags '["Z8GNyEb7HlSsDx1b", "o8ydFvi512Qwj2TE", "A4YXUouiBjXCKYz5"]' \
    --type 'P5o9NHBKuzpGVHJg' \
    --userId 'iM8zyKdKnqrRcthi' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["bwcxTp6Nk9g59TGW", "uIXVrINvV3H2fM7x", "xVXvzGIFIkUkxmq8"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'dAJhL7i3lVw3cWxd' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '9CNUhfmoxXNQs9Fs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '8eokf5V8rPszUfKh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'ortrIPSteZVaEgye' \
    --namespace $AB_NAMESPACE \
    --versionId '0pFYTRO8vUS0p4jr' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'z5LcrMhfk3n7y9qh' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "5Q0BNzjQHJ2xmoQi", "screenshotId": "71fs92cpnOblCGKj"}, {"description": "Pw6E1BUjEat2IXNQ", "screenshotId": "zG9BB3e0f8vQ9ECS"}, {"description": "OfIhEMFac41stdyO", "screenshotId": "3xRqfx6RYuo8b3Cq"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'SswwNHyQTLKrBuTh' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "grmtwwPqMbgt0YAt", "description": "XvMorv5uEmbg5cBP", "fileExtension": "png"}, {"contentType": "TJAQZmptHz4I49nQ", "description": "AOUOB1PntQmMWcX7", "fileExtension": "jpg"}, {"contentType": "4t2iSv2oE8YSRE9t", "description": "jnv1AeI2UWRsAxZh", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'ewvQCthlsxgTvmd3' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'mHGMnzVwqAiyMaZN' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'Svxih4V9VtA3wmDY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["nHb7L4apWca2PEd0", "ychPmt9KdHpYg2hY", "vhSVEJ2UVp3uRX90"], "name": "gdxSzsdmiaoURbou"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'IRNZGMoNeXEP7Ihl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'hwF32aK5NhHVRH6X' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["aAvv6mkahaoaWSuj", "0L4LQWhQlIwxcNtp", "qbdWjuy8UAAbahi9"], "name": "GaZkzfkhRyJ0ttci"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'BNEWdJr4vldEQpQQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'LMpwWRtSCArQdF1B' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "a1NQwWUVe8I5lQWx"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'xZMWfPdtObQWCq6R' \
    --body '{"tag": "UUomAk4PNeew6mkk"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'FQPfzOIw7WjVS9DX' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["vMIclIE4UmsBqLpQ", "brLRWCrNqiBXwW6D", "kF8OjhqynYzQtvSS"], "type": "645okuwaGDnANQRz"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'w3lvjYDn35S0Ryhq' \
    --body '{"subtype": ["FfdF0B3dt3xjFQqv", "57CJo8PY43AWtz1f", "tY2qg8HLD5Hqktdr"], "type": "y7o1Wwt52KoOpMqp"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'S6jieVuHaMCPkjzU' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'mTTfpLRvldYOE0oL' \
    --limit '26' \
    --name '4Cp9HHPep18UW7V1' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'RI7RJpedHmIAnnBn' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'KsQf76QLc0oif8MJ' \
    --namespace $AB_NAMESPACE \
    --userId 'tSvMr2ibnWQz3HIn' \
    --body '{"name": "aFvBhyuqF6TRbrrK"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'SFVChLmYeYg4XFy2' \
    --namespace $AB_NAMESPACE \
    --userId '4YVqTbr7WaNDO8FW' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'fs27fwsIChWB91RZ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'h4Z24JpnERxpQhf7' \
    --userId 'cSHoDgsg8MmnrliC' \
    --body '{"contentType": "XT0n4Bzllxc57fQd", "customAttributes": {"UWyxfYsZ3OOd0jfz": {}, "VyseM0yHQ8BCB7jo": {}, "tLkdcl6JcKgasLqI": {}}, "fileExtension": "Wf9FTyQ3WhfEsMLl", "name": "6ePX5afhPJvbAFaI", "payload": "Bu031swMkfH7n3y7", "preview": "iOz1p6FAFxXRAxIb", "previewMetadata": {"previewContentType": "EWbexJbc1ifap0Uv", "previewFileExtension": "sm0ZBCux7tH1TcdO"}, "shareCode": "p91CmzOyi4bS313w", "subType": "wO3ZWz2GibZCBYV4", "tags": ["CCwbm2CGtnSqKklk", "ExFnvQ5mLQPs6urJ", "CgI2ntCAGfGgCuXu"], "type": "OetPk9OO5YVJ8Tac", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'RwoOfx0urzo8mltK' \
    --contentId '42ZFxpCtKOMCxGs3' \
    --namespace $AB_NAMESPACE \
    --userId 'NDt27xo5ThrnYG35' \
    --body '{"contentType": "Dr0gnAE7GoG4NRb6", "customAttributes": {"TWRJYzxLyWYP68NN": {}, "JmTy9cc3vmC8S33W": {}, "KVElZMonFFTLUjGd": {}}, "fileExtension": "WtxsXJujVocAPreq", "name": "E9a6nbTywGCbZA5u", "payload": "TQdhSDggu6XxYkBu", "preview": "6gD5XlPKQpIy1E1d", "previewMetadata": {"previewContentType": "sD28BCUVolaRTX3R", "previewFileExtension": "PSLGGxZl7QZ3fW4j"}, "shareCode": "4KfjbR3B4rRE9bIH", "subType": "i716Zwek65GIAVd2", "tags": ["GI7llqxPt9rwxQpB", "N2fCe9IgYM7cenuk", "MWRVvuvfIC77pTVO"], "type": "FuxBlK0o7ALN7QKt", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'wRnt7Wq3OtBsFJZe' \
    --namespace $AB_NAMESPACE \
    --shareCode 'E0ZIkkZaGNVUKIAT' \
    --userId 'WyDza1j46s0RmBF3' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'uIf8o9toyou7A1S0' \
    --contentId '5Ursd1Tw9I9QXYI2' \
    --namespace $AB_NAMESPACE \
    --userId 'BSIsmsfMsKBhX9ar' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'W1krgidCLSIzw5CB' \
    --limit '98' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'M5Y8ztiU4Tm7ADf6' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '9ySkHhL72JVyPFfp' \
    --namespace $AB_NAMESPACE \
    --userId 'wgKAuZPUY8TEiXpk' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Kk2jvL9XHRTySYYQ' \
    --limit '35' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'nW5h678KC2YvNpLP' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'GDt49MQDMxFppqRz' \
    --namespace $AB_NAMESPACE \
    --userId 'TxNUjX68hERorHGx' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'RfqsdjtZ2fFtegTp' \
    --namespace $AB_NAMESPACE \
    --userId 'bRxv8CDDxTyjNQCD' \
    --body '{"contents": ["A2dnLt2O73EsoU1K", "bznvsojfZ6iU4huP", "sJmhcOnJrWY7vf6o"], "name": "9e0HnHmYWo7sihm7"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'JU7rMh2ehydtrFUh' \
    --namespace $AB_NAMESPACE \
    --userId 'hXCbnVze0DOYGkPD' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'F4X4PGq9JtrZ7s66' \
    --namespace $AB_NAMESPACE \
    --userId '5Ss9vEaYaov85r0L' \
    --limit '21' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'P7itrVJAHq0hmzFQ' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'j5w7xm09crx2lwe9' \
    --namespace $AB_NAMESPACE \
    --creator '8kuw5NmtnrBo1dOd' \
    --ishidden '2e2k806TXKezhrU0' \
    --isofficial 'KRzGIPUsZBSP9PGA' \
    --limit '98' \
    --name '1Rq98KRdqjn3hdor' \
    --offset '25' \
    --orderby 'gsyMViVbv0LDYV2P' \
    --sortby 'oEPLE5RHqNMPRN29' \
    --subtype '70I60mbb87Vde95A' \
    --tags '["OM8WpMFNOesQFUmy", "ldbSH3JuQS6l8pCx", "dAjdzWmjG9fol7SK"]' \
    --type 'IITRitU9DzB36Uex' \
    --userId 'AXHb2h2UIKdY0Bzr' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '0CY3hb5KLEMKS65Z' \
    --ishidden 'GsZZNeKrWwTqpGyC' \
    --isofficial 'NIRrjL9cgUgGdBoy' \
    --limit '50' \
    --name 'h0QIj05AVGzQuC0k' \
    --offset '96' \
    --orderby 'u4OEqqKsl2GPOEKM' \
    --sortby 'TzVQAombMhuBzPqz' \
    --subtype 'auBLOQgvK7DdDwTi' \
    --tags '["bLmGyVqVZO3HeNvS", "WA8ObllM4sH5Bbzc", "HrxnaAdMMonOzR5h"]' \
    --type 'H2LOU6rC433gjJSU' \
    --userId '6uu1blftF3ndEa85' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["5svUl0UDosLfJS4S", "siT3hEyugJaP3ebs", "B3Pbsesa1AWc3blh"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '33' \
    --name 'Y9JN9iv638E1HQI4' \
    --offset '83' \
    --orderby '1AEzyE3ZpOJBcsKr' \
    --sortby 'webOsKHEApW2pPes' \
    --subtype 'ulm1VrqVOgw0VwlS' \
    --tags '["DfP8pjGtTiXCfVJP", "Pak9J4xvVb35qCCa", "HmKS83N1G6elaNAi"]' \
    --type '0yXiaKslcDTd93Eu' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["yWmT4RKKXJ96gshH", "yfpYZqWg0LWQ7vUN", "hnqaFY7JUk4GI3l5"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'SPyrF24u6wgtPfRt' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'jnvZuNMQ8EJ0VUyU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'FIELmiZhRoTuAUDP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'TaQLS92hQiPtM8Sz' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '04EPVsuCihsxU6gU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '78' \
    --orderby 'N9d0flJWAOrv85mT' \
    --sortby 'AobBwKbBoqOHEbKa' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '52WJsDI6cAd5xDHT' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'v5kmgcc2cvuGuVyC' \
    --limit '99' \
    --name 'ZAYvQm45rdsF9JQo' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'WI5qAneYnr6OaOtq' \
    --body '{"name": "CEPyjJDq9Un31IZv"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '7DKE6yJ5qEIxixJJ' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'xZS6QrKtW3sgkDk0' \
    --namespace $AB_NAMESPACE \
    --userId 'LE0Um34lzRM7DLfe' \
    --body '{"name": "cNRIwknjX3aSstIy"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'LliZC4fhx4mKpHUx' \
    --namespace $AB_NAMESPACE \
    --userId 'isf4UkXA1qR5DkRK' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'lnaLdGNqZ2BXyJYh' \
    --namespace $AB_NAMESPACE \
    --userId 'KBrU8igfmuzmwu7u' \
    --body '{"contentType": "gxXdigSBePMkEOaB", "customAttributes": {"CLvHulQldgyxoSET": {}, "OaHSJriWJTwpDWJK": {}, "mBmc6y0rmW7fS7Bv": {}}, "fileExtension": "Oqku6QdrICKfnmzb", "name": "Sgn8VKIpzcAIgei6", "preview": "qQSjbbJtX0l92bp7", "previewMetadata": {"previewContentType": "zBh2KvDKgnfL3YtO", "previewFileExtension": "XuZWMXnstrq80r1T"}, "subType": "SC7jh99nLbKRWt6o", "tags": ["op0VEsWfMynI3m8n", "FEYuR2zzjncanNQQ", "9JcRw6FlZcKU9DtP"], "type": "STp4iGETmAAu8UHL"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'O7xV3muoN9zUjRaN' \
    --namespace $AB_NAMESPACE \
    --shareCode 'f94fuvwfmbMa4Prt' \
    --userId 'zcxbrTC0pumlbLyu' \
    --body '{"contentType": "zHW2RJgPCt31Sdaa", "customAttributes": {"lqTTONUB0irdfyBA": {}, "wsy8iuMCKGGJ1eoK": {}, "ZY2a99Q1DzdnHBTA": {}}, "fileExtension": "gMfvnSLq5b166Z4m", "name": "ED3uMoQBhtz0zYMV", "payload": "IepCO3pW8EnQBPiE", "preview": "kEFWx359ZnFW8C0T", "previewMetadata": {"previewContentType": "6yhAwIYbQnH33zrh", "previewFileExtension": "DbXPVMyQuL6hm9HC"}, "subType": "zKvibaJTrIRpUTUQ", "tags": ["cqczsibwx7vVIQ6n", "UPvbbXkfvtDWFO4g", "MiQ4mWak46Hs9ja4"], "type": "Z6xkvZ24pkfrRBG3", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '5RU9cY1YToiuvaRX' \
    --contentId 'usdtVvPRCbbW45kX' \
    --namespace $AB_NAMESPACE \
    --userId '38KUGndtGlvWNxN9' \
    --body '{"contentType": "IC3FuNhTMHTVPa0y", "customAttributes": {"615MeXyfeArdhI9Q": {}, "WuuzrbWIoU0PoYLR": {}, "mLJpKUSNIpe184Iz": {}}, "fileExtension": "IQyK0eUd9kV14Nta", "name": "1nFu9cG1Orkeq0as", "payload": "M4CoHyp2BWMLQq4I", "preview": "LvHaFcdNHu0HQDGd", "previewMetadata": {"previewContentType": "67M9Tyn6TD00kWLQ", "previewFileExtension": "ff9edxoAxb4MEpOS"}, "subType": "QSdlNLuyyqGv0AP6", "tags": ["sBL6RaMNlfY7qiNO", "AatsAVO5IV7022VR", "NO4EXBuTOegjOj9f"], "type": "kDUrwSATXTc5PU4j", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'mQ0HL0V1LLDTHSWU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FTTgFrZR7vYXxVzt' \
    --userId '33oCpxcnfsVIMbGE' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'lqax10ScqokfYHDu' \
    --contentId 'czEZqpalualUno6f' \
    --namespace $AB_NAMESPACE \
    --userId 'm0L8OUqTbLH2Rrwn' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'MZvabYk8uEYQ5gEc' \
    --contentId 'v7xLa5KbFDEojZqr' \
    --namespace $AB_NAMESPACE \
    --userId 'gPKHJ5zAoXrRj4Lv' \
    --body '{"shareCode": "G08k0crUwSyTgFUl"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'brvuaIXpkJVH4L8T' \
    --limit '82' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '81vXeQbHxmj89LuP' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'rlaqY3fc0btH9vuw' \
    --namespace $AB_NAMESPACE \
    --userId 'kM0q7B3yeWDsPGXH' \
    --body '{"screenshots": [{"description": "cxXeWwX0WlmC4fUV", "screenshotId": "nyBmdrEXQaa04D5B"}, {"description": "KuVHgXGll8mT3E4I", "screenshotId": "oet73QggR6b4L1rk"}, {"description": "GkXaoxk6XFmz4HME", "screenshotId": "Qv7eEDG4zm6a6UtA"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'LWe1NDPXAAbdRFBm' \
    --namespace $AB_NAMESPACE \
    --userId 'sCILQWyW5wBrLM2U' \
    --body '{"screenshots": [{"contentType": "VyLvIDBcjGDd1k1N", "description": "61kI4wvldtbe6pDm", "fileExtension": "pjp"}, {"contentType": "KuZ0PBkp5ufntp1O", "description": "0pwfpRZbnTopMcNL", "fileExtension": "pjp"}, {"contentType": "XPz2RXeaEQ9LBaNT", "description": "xIXU8ecVl9g8squR", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'C85w8aQuB11gp4Is' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'GIV9fZjKHrEzo9G7' \
    --userId '5ogXK0vyo9Sk2oC8' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'hVEqvKMgvHikJxhw' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '1iQeVcHfXvUzfs8H' \
    --limit '79' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'AkcrTGuX2lCICDqR' \
    --limit '69' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'P3d5agUa8HwvpQhj' \
    --limit '82' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'xh9rrZ5roDrzNBa3' \
    --body '{"contents": ["x77eqbzgDkjrpdPd", "w99nQgOGQ7yndIRv", "fWD3wcoeJATyCziO"], "name": "dTy7G0uO3G6atoQP"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'OEsrlfYlhMoAudzy' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'k3LxKheuXKg3Wiym' \
    --namespace $AB_NAMESPACE \
    --userId 'WhXe5dRJm2Ff5XU1' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'WlYxM3rjbuoa0VhW' \
    --namespace $AB_NAMESPACE \
    --userId 'yC5NjZDBXiga5Tsu' \
    --body '{"contents": ["OyitTI2wFpIepYc2", "dEG9JBE25MaP7ho7", "flLUr936ggbZKmQ9"], "name": "7xLdz2uDCcAUIRnU"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Z0PFvnZFdIN3t3pn' \
    --namespace $AB_NAMESPACE \
    --userId 'pN9Ysd93qwQwjLKH' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'u7diAuZXcDFfyhFQ' \
    --namespace $AB_NAMESPACE \
    --userId 'd54QYUXOrEPMrP1m' \
    --limit '21' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'a4SzSfUNuqVrU0go' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'gsfu8glujtePLWQA' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --name 'RObIvZoZv7cMLaf3' \
    --offset '57' \
    --sortBy 's33WLfWWqjutyh30' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'oyR4EeHtnjT2X552' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "tTHPtBsGx6VzJpfh", "customAttributes": {"wPPGzHkbWQ9kWULn": {}, "AYqOKcNo89BYAePe": {}, "tKPg0eNYLaxuz1Hs": {}}, "fileExtension": "3zm8YRNWY09UZacm", "name": "Uc7Nx2xlFyLZqgTB", "shareCode": "1a31wlAZSUfXSTiZ", "subType": "e5aW4E5QRdJk1nGJ", "tags": ["BGnRymoU4OzHYW80", "IBVOG2E72EUl6fjH", "xDxFKGaGltoSBx7p"], "type": "OHiOlwWskHM3cuQN"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'PhpCxXsljaktZhu5' \
    --contentId '4jKlYpIouzsyDihG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'R5Qh2Qe4KcySfk4J' \
    --contentId 'OTLfFMhKMIGWJCfF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"1luksTSecxG7yBJk": {}, "hMl3c8cPqjq3rFe8": {}, "7pdlNAhcNQgu3VY3": {}}, "name": "oRXlw7njp9qUtqVN", "shareCode": "1IFGoBUnAYlLoQP6", "subType": "dLFz8xGfKjUZ0gyn", "tags": ["NnaI4pxuoVm30H76", "8mAIZVSYcg0XMVzG", "bW5OADZj2sFSOsLI"], "type": "gf8oyigz3aejOQPu"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId '9IXdNzAX0y7qhUTy' \
    --contentId 'fwITS8ikbtO0FG7K' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"apDESWr7uTnPjPTU": {}, "JvsCjDoNJkEYwEwu": {}, "PgHgrMI4ZrycKyCT": {}}, "name": "c6XbQPwZhobUl4bU", "subType": "SY0LLQSD6onRQGNK", "tags": ["lUZ79M6EfSO5U2Lp", "taBtn6jzzaBL603G", "I8nElEH5KTBJYdoD"], "targetChannelId": "AMMLa5A0jOiFW7vw", "type": "GoO8uz12jdI8VLHa"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '3UQkuigOJQqPOzr4' \
    --contentId 'bpGgfIqEllxL20J6' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "pc6ExAWv33Gt5e5B", "fileLocation": "RogCvmVmZGELDnSg"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'xAWWkE0TwjVTc7F6' \
    --contentId '2kwNWz53eynIsmPo' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "d0ftZCjqLuACRIcC", "fileExtension": "57Uk0t0MTqIaKFSL"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'MltYZrToH8ajJx2s' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "wpXx8kWD1lkCxpkJ"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '92' \
    --name 'QEZ20xIj1GyufuRQ' \
    --offset '17' \
    --sortBy 'Copi95KKL6xnV2tP' \
    --subType 'QeCML7KMRGsCvBi3' \
    --tags '["FhTQIUUf69vRXYp3", "7QmdHqcQDrP6Gacv", "4utz66pO1UlkK5lL"]' \
    --type 'exNEinY5bRtUBEun' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["L7nL4qwoMiQC45yR", "PdTEIVWbh5sy7sry", "0gNV1vZvONIL9vsH"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["0pw2ENN1H5yr5hiW", "Q3R5aC2gHyVQu5tW", "nc7fDcpHiA4bRH60"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'YRKBdPfbiXH63DPi' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '25lkcabuNZERz3si' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'yBnOPBOrCV1tuRXb' \
    --namespace $AB_NAMESPACE \
    --versionId 'jUgrorwayECAu0mj' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'japDq6ROxEU9S7QY' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "bTStTlJShOCqFDnL", "screenshotId": "cjgYTbFRgO9K2umQ"}, {"description": "mtkDumuRqpvK15zt", "screenshotId": "iFBGrp5HAYkuketM"}, {"description": "LxBxlPrGesNYofMM", "screenshotId": "x3V3cwTQVZ8KpCKC"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'rpyD47lMsSZIVTPA' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "WzdM0Xuj6Kwhmpvh", "description": "waYPiw2WYhfwdwEG", "fileExtension": "bmp"}, {"contentType": "zjsx90tO35I8qwcI", "description": "3TU6yomSHarCILms", "fileExtension": "bmp"}, {"contentType": "vRRLz0cYnJiPO9gv", "description": "8ZnSSNhMWuH8GOa6", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'dIIuITqY5dQKDqaq' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'aJwRHowu3Dhxeoay' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'x2lwNBqAdcYy0xik' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'K0cfowgS9HykCwoK' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '98' \
    --sortBy 'Rdm7tybzlf1EoaF5' \
    --status 'TpDRyw2QCFCLxjai' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'kdf0XWkzhDhvwTFT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'WwHdlYnXWKPwy0W5' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "v0q9TFzFhMrEs2xK"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'fpvmgH6txDdHOIuj' \
    --namespace $AB_NAMESPACE \
    --shareCode 'cRMBHEc8DaStu0YO' \
    --userId 'z7Oyoi97cRoaJcps' \
    --body '{"customAttributes": {"icF3TEutlu2gETsU": {}, "72RDyJiSnsKgiObD": {}, "Zf5fPLsplaUBgWhy": {}}, "name": "h93mLEoJrl5fNYdQ", "shareCode": "0RNdUXT7oqhfFmch", "subType": "PXJ8Qc3HX8qlbRlv", "tags": ["Q53cxuyu3r5RBpFM", "LzVt4dl8CQICb8QK", "QF11q9Z6UJgCOxdK"], "type": "EYA0jLksMVnLrgWm"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'vcJVzsiuhSBT71L7' \
    --namespace $AB_NAMESPACE \
    --shareCode 'SxKe5je7gUR6Dvzm' \
    --userId 'T19JAMxkxc4kKLOx' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '0dJRwpPzWHtH2nKD' \
    --contentId 'IsKwokQGrwXfnOJP' \
    --namespace $AB_NAMESPACE \
    --userId 'EcftSZB8HUX1oQFb' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'iiI5uIgKOimdNM1H' \
    --contentId 'yJ6OcJY4vbvewg9O' \
    --namespace $AB_NAMESPACE \
    --userId 'l2ytgp2ErGnMXzvg' \
    --body '{"customAttributes": {"ZGsetZ8AVc9qZAKf": {}, "Hm9DCVZ2KL5VPZCt": {}, "TEDgvbbHPhoauCgS": {}}, "name": "sWdw5rsjUMqSaoFg", "shareCode": "UWFRkRW8HUJ3P3xY", "subType": "v42AKiXpkd6TCSup", "tags": ["fqvL1eVYIoPNraP7", "oIZGrt7bEKLdS7Rr", "WcveekdzSdECguNn"], "type": "7pxm7sTYS9yVxLax"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'SFHBBLHC4y4zmEOQ' \
    --contentId 'uaf5PlsO1Lfnm168' \
    --namespace $AB_NAMESPACE \
    --userId 'iPfhnzrKarVBXnXG' \
    --body '{"fileExtension": "hOOH8Jl0CtaohAra", "fileLocation": "C0b6gJ3u0EpuYX6e"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'kRAlaAYbsykYUCmA' \
    --contentId '1GfBdf3n3jEAjKCW' \
    --namespace $AB_NAMESPACE \
    --userId 'kEokureDoAtQgyZ5' \
    --body '{"contentType": "HJuLH7hA1yiwVbt2", "fileExtension": "WEIuA9rvlTljilbG"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '1OApptQS9P33xMdv' \
    --limit '65' \
    --offset '20' \
    --sortBy 'qPG1Hr1PRMFDujrE' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'sJIUdcM7G4c6QYjQ' \
    --namespace $AB_NAMESPACE \
    --userId '8AnpnZOaH08XvkUu' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'dKVBDs5E6JRrnVJE' \
    --namespace $AB_NAMESPACE \
    --userId 'B6NrDYhdRfGXpfAE' \
    --limit '72' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ZYppgfzb0nU3tino' \
    --limit '94' \
    --offset '58' \
    --sortBy '5hKgJkyrBQHw4Mad' \
    --status '0u0D4eZ7j3r0YQIQ' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'yxsKj6p6wk2VIZwa' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'Ek8dELyR1unVsqi6' \
    --offset '91' \
    --sortBy 'U9iiVigQ0sD6vJEo' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '19' \
    --name 'XdeW0eoz3G1OaEG7' \
    --offset '74' \
    --sortBy 'yRDW3IF2JRiHfLBe' \
    --subType 'haEfwUIFcRCgmCU5' \
    --tags '["Kb0pniPX3qz9Kfkw", "b6eWUyk9vpY4gcsS", "EKzLhSSl8Gnufx8d"]' \
    --type 'OPHkoxty292D1yTl' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fCWsPeqJ8VW0vo2E", "PtovOorbwcno1BMQ", "SEaOAcUYNivQARy1"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LbtXOt9TgLJua8SR", "zSvKIVnq0JJMiYlj", "pLydYPAOeY5NnT9L"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'smAucqofJXnwoI53' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'pELrkiJWSAfdCRVX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'ebMh5s4WCBuWCNlh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'CqmC8aNBHEIhfPSD' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '8' \
    --sortBy '3kEK5HSFtlFbrlrp' \
    --userId 'UabaHBLHlPY5yXyS' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '47t9UJVLY3kpgzwh' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '1' \
    --sortBy '2DEZffhzJTtbFzdw' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'zOZvAK1zeZ2zr3gY' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'y5nrBG94IZv4ZqRs' \
    --namespace $AB_NAMESPACE \
    --userId 'LXgr2MgVqcPn63yu' \
    --body '{"contentType": "GvNpEMaFIlgJOeA7", "customAttributes": {"qOsTca7muSP8aDaJ": {}, "4lSdEKFK0YwRbr2n": {}, "Vhwit0P5ev93X026": {}}, "fileExtension": "puonjChHMtXHgb1r", "name": "nzuMhF4jUUa6vYiC", "subType": "TGHWN0nIrcFihjDI", "tags": ["fmYszJXGWMbGdimb", "TZzZLE7S0O5H7ubJ", "sl77lKjeQV3sdYit"], "type": "dTmfffxehkVogeyS"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'dUELvFX74AchMWph' \
    --namespace $AB_NAMESPACE \
    --shareCode '3zMRqB7NPF544ZPn' \
    --userId 'BXfTUj9p9o8rUxMW' \
    --body '{"customAttributes": {"nF4l5nSIqb8jODJI": {}, "J93MiobIIA4TLrS0": {}, "XjoMrGUs34KCKNe6": {}}, "name": "dExDiZ08qU6X47FH", "subType": "Sr83yM2xPSBpERk5", "tags": ["qK8YId8DGSGUIFW1", "lEV5sjVhWQy6oVel", "KFEkRJbb2n0YuQ0s"], "type": "SoJXX42pK0wGgAyL"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'XAUNwjdCiwkH1VRo' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JnVpcRBrlBvcnifI' \
    --userId 'f3srbhVVEJGG1rBs' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'Idt7e3heKHbzgFh6' \
    --contentId 'NmRL2K9K0hYhAuiE' \
    --namespace $AB_NAMESPACE \
    --userId 'NpaDUAAHzg3ssjRe' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'nFFAB6DSozjoN2OH' \
    --contentId 'S0ViyDYm1X1kU0Dq' \
    --namespace $AB_NAMESPACE \
    --userId 'kVCWF5SQF6VLV9Pc' \
    --body '{"customAttributes": {"cGhR9FVgPr36TO9u": {}, "stRvjsRSV3cQwa4u": {}, "OBnZBi4IWgkvQs2b": {}}, "name": "QkiMtuzDxuXyJaIf", "subType": "vCctjvsMDU7qtsGR", "tags": ["l12VNec9C0wVGQeX", "w9Cow01ekzwyoFjM", "zCiAjh00YNtmru7x"], "type": "WNlj6pJtBUU5lunE"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'WZcnkS1hyH0bv08L' \
    --contentId 'PNY3FnOFbYh2oAQt' \
    --namespace $AB_NAMESPACE \
    --userId 'dctkFl0HcK9wY4ii' \
    --body '{"fileExtension": "N5i1HbE3pHPQjyFy", "fileLocation": "Wfn00b1DjnFgF0WF"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'QzO0TC7lDJ8FJe1e' \
    --contentId 'gO9P2w4lMkloYsFl' \
    --namespace $AB_NAMESPACE \
    --userId '4xLkOZxk3sFqNO7f' \
    --body '{"shareCode": "LXEKP7wN9CWfDx02"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'qplOaz15tdkijh5g' \
    --contentId 'oasB6azCoVjGztB6' \
    --namespace $AB_NAMESPACE \
    --userId 'BzvNuJDA1kbClpWp' \
    --body '{"contentType": "22GxjgWLKQihKtG2", "fileExtension": "IibBufTZ9GMFvD2L"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '7XJKJncCIYFgiXJL' \
    --limit '9' \
    --offset '61' \
    --sortBy 'oZYQmHyt3heckIkW' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'ZI292UYs3xih1nPm' \
    --namespace $AB_NAMESPACE \
    --userId 'W5fZgEz4LsomHCmO' \
    --body '{"screenshots": [{"description": "elRcwrmhhV2zPVjm", "screenshotId": "K98uU3DtsrPzmNG2"}, {"description": "5dlImAfzgrT4NhCq", "screenshotId": "uEKPrKzAD3hATQy3"}, {"description": "djRkRMb2xPCtoV5g", "screenshotId": "gm9hgRKtwv0GS6bL"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'VcuPwL9Or6TeTCGC' \
    --namespace $AB_NAMESPACE \
    --userId 'YVbWpf9y8g7NitTB' \
    --body '{"screenshots": [{"contentType": "TSfvpsKYaVi8l8mo", "description": "Dp2nuMhEf2qbpEGg", "fileExtension": "jpeg"}, {"contentType": "xv6RpO0Bgae4qfUS", "description": "WDg02BihOr9UZBeB", "fileExtension": "pjp"}, {"contentType": "oZWN8Mnoqs4Kasoc", "description": "XNLyFqajUVfY2qSS", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '5nrp9P7on8Nn3j7q' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'JyR3h9qVUwrVjrYd' \
    --userId '7L16whgQVyTe8A3G' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Rm2n2XSfQh7BcOKK' \
    --namespace $AB_NAMESPACE \
    --userId 'vGhGE6vaZzty1Bk2' \
    --limit '91' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'GC5keM6Su7pCzn8B' \
    --limit '11' \
    --offset '98' \
    --sortBy 'pLp9rF3bVDDYpI1W' \
    --status 'P2s6mtionMK7lmZS' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'bLItrKND7pbFZsN0' \
    --namespace $AB_NAMESPACE \
    --userId 'Q5KAnDMjxjrhPD70' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'Z8caTiInkT85rikN' \
    --namespace $AB_NAMESPACE \
    --userId 'MIdvNISUfP0sYuBj' \
    --body '{"fileExtension": "WBbDyVA6c7XHbPbB", "fileLocation": "Oy50nM5lkQvbe3pk"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'FYrI3y3PQvqYUCJo' \
    --namespace $AB_NAMESPACE \
    --userId '73FnPAC09r8CXFTm' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE