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
    --limit '19' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "n69yIeYvI5A3hBwf", "name": "8YbMzFXke0NpXBw5"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'mYCUbeYB37unbyDP' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ro4cS0L3zpQN88oB"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'a80EZQo3GRYhoSv8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'EovRjK8YMuPBk3wB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "F1O5tSw4AIcTyPXc", "customAttributes": {"Shy3Zz02WIc1T6Kz": {}, "E5QKLXLw7lZXEXtS": {}, "d918b9QCdVwp83xC": {}}, "fileExtension": "jNzxypadS3Qx78Ny", "name": "jmBBUkVcbdW4d31N", "preview": "IWn3quuMzLlglDgY", "previewMetadata": {"previewContentType": "cfV8ddziiiJVqloh", "previewFileExtension": "A532C2xytYDSBQYU"}, "shareCode": "hlppqf5b8s3vpaRQ", "subType": "YEVY1NtFjU6xRI3p", "tags": ["YClGkGXaTaP91Vp5", "9zAFbjuhxUUvv7CJ", "ThSobouBbsnM8K4r"], "type": "dNPEouaqG2Mi0QzZ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'oUMnlXRuYWn1tqvU' \
    --contentId 'Mf268KXudE0s9fQa' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "fC5MQgDzr0E4fujB", "customAttributes": {"74FcSc8WVUiiyTHc": {}, "R091tcaEDviRu9KX": {}, "qLhImSca5iFY4E2s": {}}, "fileExtension": "BqaNNAxx3oJ95OUg", "name": "EAtwJGcN5OpqBWg5", "payload": "fJ0z7uMi5lOTir9h", "preview": "8VZn23RP6UhYrb3W", "previewMetadata": {"previewContentType": "XwfnMzCQ9nd0eWvP", "previewFileExtension": "lexqHyM8q4bdiLJ7"}, "shareCode": "RXa854zGCgtUCr17", "subType": "oO3pP6N0QW2ew0ca", "tags": ["BZXDrGQNFu1zkUY2", "eRDXYamFDRMk9frw", "ooLY9EAWz5qenqlU"], "type": "6hrFnm9kKvqcgwX2", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'idKT3PGH6qaAqIWj' \
    --namespace $AB_NAMESPACE \
    --creator 'lhiSCBSCGI76lv16' \
    --ishidden '7GN98jItSW5ujejf' \
    --isofficial '0ySw8PX9EojfsDXD' \
    --limit '29' \
    --name 'YCoZRxDgrNwuvF6b' \
    --offset '96' \
    --orderby 'kYtvR5eFZ7CkCHos' \
    --sortby 'tH5QlYLkHvzHLc3l' \
    --subtype 'm0tzQfBHYWJAApWe' \
    --tags '["aWdJTViImmCN6LXp", "cztsENTlARjSRPqj", "99V3QSzQh3LKB19g"]' \
    --type 'VI8T9GpjNyFem1Yb' \
    --userId 'yJgpcDdHLK5aEOOg' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'haFSFjvqH1rQqVcs' \
    --contentId 'd999wLnKaYfUNY9H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Zxr4rcCNOCIZLaQ0", "jMU24uoyCuLGk3p4", "CUa7te9zOCoI7G7G"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'HzQlIt4OMOlI6R9C' \
    --ishidden 'mfCT7sjk2j8xiWLi' \
    --isofficial 'wXwPcPlkEAKVrTZ3' \
    --limit '77' \
    --name 'Iqry6qzFk1gsfMB3' \
    --offset '49' \
    --orderby 'AehD8wPBQYh32x3m' \
    --sortby 'K2qsAONIbBzmlojI' \
    --subtype '1QSQ2kh6o3rLK7Bd' \
    --tags '["jY8AagDXwGiceaK0", "JDIS9Pk7pylfyKUk", "k8SlMvXDyTPU0y78"]' \
    --type 'LlTZ3Ai6V6Y70GeM' \
    --userId '7tV0wYmvdMG4McPF' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["pJBT2hkCnMuHOpba", "9USOgSCf3cKhRXJH", "yaoBscaSgxKeyxvZ"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'fQ3E4SdcjfHxiha4' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'y4ep7vonyPGStYip' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'MjLbFGwlyJFqt9PV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'lP6jkjPQv2isTiFZ' \
    --namespace $AB_NAMESPACE \
    --versionId '83aeusStSJ29fH6o' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'PcEIB5zydEgP5ObL' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "3MKQTRuQIz7oqrmd", "screenshotId": "FDKpeep6h4kJXyLU"}, {"description": "2Q4shzwJAu1YEEZU", "screenshotId": "WJJwJOZSj70Hj3ER"}, {"description": "Y9iPCssztDGGqSw1", "screenshotId": "3Sy2HmsskFFFdAaP"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ziUgw4EluD95Wym4' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "9KOt7LjEAEnyJHP5", "description": "VfLugGIRG6gbj1qv", "fileExtension": "jpg"}, {"contentType": "U9nUZItSd8VkFVvQ", "description": "zXEufkdMbLH6IvJo", "fileExtension": "bmp"}, {"contentType": "4s7LT7GW3eDzhN8O", "description": "xTaukN2Moo7ag264", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'kTWqwrstrfmGK2gl' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'sBgYetrNwFx1PbqJ' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'EBuG1OX8ze9iEPjg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["t9vwtMSLL6PweyRR", "fyY9cxD18F7K47PP", "oCwk4KaWWPMASMOS"], "name": "n1SSGsw4hHWVUadd"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'XXgzn58k7K5aHHHL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '9e5mWiVXo5Xebbr8' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["8Pqh77yS1RR4izys", "pKbKs9mINshwAV3e", "6RQN2ynXX0a0GsLd"], "name": "ufCXOdaTIjbt9p8d"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'QK2cFn7N6MkUU0ch' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'frpKhvZeFA6OAtqG' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "P8AHp6bdU25ejV9o"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'gYgGuqTuuZRvpZjQ' \
    --body '{"tag": "pmezUQ4sxDidVJOX"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '0Axr6GHCfbJxmiF8' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["VKVMXo6DweUex3G5", "1eFWMcNj9ygQfX7j", "VBEQNs0Q3rQrgJbE"], "type": "301J42ZiWc78L1EU"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'x02NzbduLRJ69YqH' \
    --body '{"subtype": ["tQJs9nb4yP2RAJd7", "x0Mj041Hh2HgaF98", "OgicPl5Cwvvz7M5c"], "type": "h7fPTwWvZKCD5Pqo"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'fH3L8dBh0YKIL56B' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'xv9Jz8CZd499xb7M' \
    --limit '87' \
    --name 'pw45tc4d0baBNWtO' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'pxcJZmHSyfpuBQBi' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'DvpZzWk9jctaK90e' \
    --namespace $AB_NAMESPACE \
    --userId '33oRd9xFwDmHZGN5' \
    --body '{"name": "D4k7ndwBzUJVKBaw"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'KwUH8gFYHUbpP9Ek' \
    --namespace $AB_NAMESPACE \
    --userId 'hnmdtzDQlqutTsEW' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '3fAYpov55l2tfJX5' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Mjw62GQDOSSg25HE' \
    --userId 'pgCgOOZLQgTOtfc0' \
    --body '{"contentType": "IfgXUv7ryeVAStrC", "customAttributes": {"MJFoB5lKx7m55jmk": {}, "WjoFLQYtdnzgqJEb": {}, "kZNPbrtqXSTxSHGh": {}}, "fileExtension": "ju287LUNkQJrXviQ", "name": "G3hCb75WwbxQLNST", "payload": "TgoUJ7m2f0r4tGX5", "preview": "EqGH1foe4UXQ81mH", "previewMetadata": {"previewContentType": "VkqFha1nfVSZP265", "previewFileExtension": "1GVQJRwnsRqymYZD"}, "shareCode": "u8N9wRsJrxngtSyc", "subType": "pyNOxR2E1gHCsdYr", "tags": ["aNH7Nv91pD85tJ8x", "NffYsFVkX3rlqPB4", "Y3IhuNEu7ph2vIar"], "type": "aVEZKihfj858aq4J", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '8ni3ZIGpsEkbrIg5' \
    --contentId 'wxw5KvZc1MfojDsk' \
    --namespace $AB_NAMESPACE \
    --userId 'tBw9nrC425XVcVnt' \
    --body '{"contentType": "PcpeAIfdDjtlTt8b", "customAttributes": {"iJhZHmmWwML3cIqi": {}, "RfNuAFkygLKb7eEh": {}, "Ns08hSaoskq67JaV": {}}, "fileExtension": "DAnyN2HrItbmNLwH", "name": "HN3FqEhH320O5uVN", "payload": "Tzb2OPehrsSOVrtY", "preview": "d8K5impDwAIwCUro", "previewMetadata": {"previewContentType": "ILQWvkoeC9kGQi5Q", "previewFileExtension": "TjQZMhUSGGdExIRM"}, "shareCode": "uuPt55MqDlzfEG6N", "subType": "bFMC76yXmOqlFx0Z", "tags": ["ViuQEFwmjYBZZOLW", "YPyDFzQizAdYpV5O", "dr6QbtV3Is7dHYqg"], "type": "feg0kr4t3u0wHQui", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'YrZeryqlTdNjvMM3' \
    --namespace $AB_NAMESPACE \
    --shareCode 'V1Zu8xPMc4m41qdR' \
    --userId '9iFFHKT14wYoerMS' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'D0n10bmyCjxmSGI4' \
    --contentId '604AlYPTaqYXIKqn' \
    --namespace $AB_NAMESPACE \
    --userId '4H0VZlwEsP0WKHyy' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'rxe7Ds6lbGLrROkm' \
    --limit '63' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'EeUaUQiSynJprUgG' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'f3cT2wrLlizk8OrG' \
    --namespace $AB_NAMESPACE \
    --userId 'ONYbkmu1qUc96n80' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '9560X6NWH53zyEY8' \
    --limit '39' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BYMXpufr7FKWz8X1' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '84faoDbLIyDil3bM' \
    --namespace $AB_NAMESPACE \
    --userId 'tlt6pobgyDjFhTmX' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'B78kYvZhbSAmdhUo' \
    --namespace $AB_NAMESPACE \
    --userId 'wSCnDqju4FFlfnEa' \
    --body '{"contents": ["4tfjusrnQKbR8m08", "dE2Eov2fDiGt46yu", "tXOTNsrd1BYVfLYU"], "name": "02zyqMynogvxZPaC"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'lpwWFD7508FCMEMU' \
    --namespace $AB_NAMESPACE \
    --userId '3YVah2HGoWoT7mQS' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'Z6IEHd5r2vbdlawB' \
    --namespace $AB_NAMESPACE \
    --userId 'nahpJe3xAUDW1MK1' \
    --limit '30' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'phm8xEGPhJfdygpH' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '7kyAsQhq9WpeEHlb' \
    --namespace $AB_NAMESPACE \
    --creator 'hUEFt5UbqgSCVjb0' \
    --ishidden 's2vdO7hwQKIlGi22' \
    --isofficial '8PBgA89BFfLXKyW6' \
    --limit '56' \
    --name 'xtRz84qZ0LiCfKlq' \
    --offset '29' \
    --orderby 'v1xqKEnYFN99I6oW' \
    --sortby 'mU2FONAJY1xtDJq7' \
    --subtype 'vyYNo9l07tsLoE9N' \
    --tags '["TvnovlmxT0447KLS", "XpopSw1LYVObiQjW", "R248CTVQ0xtSliFo"]' \
    --type 'sIr7dHNFgEZhnEIX' \
    --userId 'iWX7rYGbWsnz6iDV' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'UG0d8ubQJez0MSrH' \
    --ishidden 'm4umxdSKMGEm0vjt' \
    --isofficial 'jB5itsv7qjI8CWuR' \
    --limit '42' \
    --name '9B9srLFDWOvLxH4o' \
    --offset '10' \
    --orderby 'YmVcmdy2rPgC4Jj2' \
    --sortby 'oSabVVpO4KItm32w' \
    --subtype 'LKMEwakr24wyCKn9' \
    --tags '["RRQh5xcZlWYmHz9l", "HwsJj6xrrukIN70b", "NyOqVBizwFB4TV49"]' \
    --type 'sEdvDzb7zAkV1ZoM' \
    --userId 'P2qFPSnxFGhv23DO' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["GyjprYYV7hhBlrZ9", "zIuE3FDgFB8FEY34", "3xSMV4glIWg1Tt0F"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '89' \
    --name 'j4zZqSyxLhInTIXI' \
    --offset '100' \
    --orderby 'dqiFjewi47jIflab' \
    --sortby '5aBMWUInwIEtXzer' \
    --subtype 'KKgGkEdZoZwegBHE' \
    --tags '["8b5G9ciQFE4op7mB", "0na2sBrcsIvhx6C5", "VP9dgcYAnYkIcNIs"]' \
    --type 'U9UuIOECAVwigUji' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["T9Ll85x3GPOhxJqV", "D88mzz0GQw9IRyG8", "jRhAQwYzsbMY0VQk"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Yp5k7kc54oMuKHxP' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'tozoa2eiWevD5V4V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '8N3eqzNKMZQF43na' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '49vbLkqSDSryfQ3h' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'wcESHR9SaaWDIskz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '9' \
    --orderby 'nHGyz8hlVNlBlVG0' \
    --sortby '9cADp7dXr39BxnfJ' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'rp463PC2yim43702' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'dH6pGzIaL9VomGO9' \
    --limit '68' \
    --name 'PUkPRWiVAZEmj7ZA' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'L0iBJeEXmkJuqsLF' \
    --body '{"name": "pWveIOAsRrWkDts4"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'XLTfFWG64ivYjYHJ' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'Jp6asxVWawHxTuge' \
    --namespace $AB_NAMESPACE \
    --userId 'yqz42OwGzsWs34pC' \
    --body '{"name": "GJze7mN23ws0YAqW"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'rjDWmomYDdIWuwDI' \
    --namespace $AB_NAMESPACE \
    --userId 'UX83iS2aRFtLcuL7' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'afnpRcBt96pzIKET' \
    --namespace $AB_NAMESPACE \
    --userId 'DRoiWlJwXYpDy8P0' \
    --body '{"contentType": "cpiW711fX8hjRA64", "customAttributes": {"NlZQLUOkYV6fj7fX": {}, "ZnHBM4k1x8WyAvIL": {}, "DUdCMHMxwuvk4Ih9": {}}, "fileExtension": "OWwjabrMwaKuT2gZ", "name": "qFBmbzOJYaP9pe7i", "preview": "AlXexr1MxZ8ErzJq", "previewMetadata": {"previewContentType": "dvHTNcyHjLXsPKID", "previewFileExtension": "AMgAaFYTfll8PAHs"}, "subType": "Qlrk3gMvlqaJVEb8", "tags": ["GnOEe4vQw1vIiZkp", "sdjpOSZNqNwLU1mV", "A4raEHCl0JMUrbBQ"], "type": "lFwsX4Zj0x5w33tu"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'g3WUzK7F9IhjZnav' \
    --namespace $AB_NAMESPACE \
    --shareCode 'hkgYehcNVv2XkeeI' \
    --userId 'STPi4DT4kXpBfqwY' \
    --body '{"contentType": "W20QVG2vDPAhkAbB", "customAttributes": {"hl8Vf4e6U23eBhS5": {}, "870KetGmDjlebw1B": {}, "KUoqhGNvL11RKU8D": {}}, "fileExtension": "Zz5Sf33IbGWPyE2L", "name": "MFAIz3KHMW6Nr598", "payload": "bMiXvfJvzrIRqcTR", "preview": "FLpzcFcgkE40jiBx", "previewMetadata": {"previewContentType": "haNH0e2sAVdp6wDM", "previewFileExtension": "XkWmF1E4LjBLsRux"}, "subType": "mgiTAq3iw74iHrIR", "tags": ["W3LW4zR2yIOb4muE", "4kaKu24ZWzdaNSkd", "rmSPztDO92vJqnfL"], "type": "pTGgzS6BFpJSKcy0", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'IXBX3rszglYmkBAf' \
    --contentId 'ScghWySLEFRXyhun' \
    --namespace $AB_NAMESPACE \
    --userId 'F75BHAdgrpsVTYPu' \
    --body '{"contentType": "qz3xpQJXm5Ko1aSj", "customAttributes": {"qvR0awzs6h5zhUHF": {}, "tqpJ1zLm7ybJ8aBn": {}, "r1miS7wP9OFM8AcL": {}}, "fileExtension": "4wV16JxDyYueW50m", "name": "fM1YokG1L9NzFsrM", "payload": "dK5sKACqhniiGtBu", "preview": "UFKS92Ogb7Exk3UI", "previewMetadata": {"previewContentType": "qlAXCydEDA7LHlNT", "previewFileExtension": "PdSMDGtIsItHiiqK"}, "subType": "27EqfQjilUkwKYDg", "tags": ["1LYT7EbdUU0Rs605", "nCJOBRbWVFBPT3np", "lzVTE8kG7sDzRyPR"], "type": "wyj7ys0Xa1unPNr4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '5U5tH6gKd7XlSAwK' \
    --namespace $AB_NAMESPACE \
    --shareCode 'd4H1fnzeCTBN8ABo' \
    --userId 'bLQEjWF61cv0LnTn' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'UXI7PV5PAjYf8Tli' \
    --contentId 'WrM14mH0EVmLxixO' \
    --namespace $AB_NAMESPACE \
    --userId 'qrUS7EqNOPz6wDrq' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '8E5w9SyQjT8UFrF4' \
    --contentId 'nv6CPpfC2pGx9ruN' \
    --namespace $AB_NAMESPACE \
    --userId 'M86WRgt9ETe0TDAI' \
    --body '{"shareCode": "7cG3aoooMUoX54j4"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'nFeLRBP25X4aEWaj' \
    --limit '67' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'QYWC8pkPtXE7uOsP' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'EBCnEkw5UstqWZ3I' \
    --namespace $AB_NAMESPACE \
    --userId 'vmztKECck0ReIEbw' \
    --body '{"screenshots": [{"description": "0R3OO7yrfOJFBqDX", "screenshotId": "i4ANfr5gkM33Kcdk"}, {"description": "6szgdBXv0qqN7ce0", "screenshotId": "q8s65ML2sC9GKHM2"}, {"description": "cO8oPFkpeC2XIt65", "screenshotId": "dg3cS2f6UMdLx17O"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'hNQlgSj5DM2DfTR1' \
    --namespace $AB_NAMESPACE \
    --userId 'EVr6rOGHQ9Fl9Mlo' \
    --body '{"screenshots": [{"contentType": "0Y8hz1FHNoCKYOAH", "description": "q3ot215dbbcJJDh5", "fileExtension": "jfif"}, {"contentType": "MUDzD4MB5UbGwRdY", "description": "lYPViFvM9aouLeGA", "fileExtension": "jpeg"}, {"contentType": "N24sxqwFHylav0h8", "description": "ixsMLkL7Y3hc1wC2", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'GBjDMZQhiL6rXSQC' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TiNxjsnDKcBQ1j8L' \
    --userId 'b5oYwZEP9xbuR1Ud' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Ng9tchg9rtgtAdAx' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'EwKipmI9O0ssR1rx' \
    --limit '78' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'sM0n6cOmQCOMapdm' \
    --limit '28' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '6CpiByhj3kYUIIk7' \
    --limit '91' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'defpE7KmlhmCCGng' \
    --body '{"contents": ["6p2oAtgiakoN8KQK", "E22lD8ffHuFGByrS", "Pek9XuuoNva4HIIU"], "name": "h8lsRwKU6IjrzhM4"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'VccuR1eCHkgNXZKW' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'sTngSywccPvKD04E' \
    --namespace $AB_NAMESPACE \
    --userId '0bQ8HkXE3VlJiW2d' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '7VcIA2MtjKvfWQap' \
    --namespace $AB_NAMESPACE \
    --userId '5ORxbkPg5MMlfp9p' \
    --body '{"contents": ["bUMjFbWr3rlYLECp", "IXRam0oI4wWqFyJj", "lq9mpDCNCz9iaRAo"], "name": "RhufI0YDK28WHD8J"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'wuUX7YYGDVs8qdvS' \
    --namespace $AB_NAMESPACE \
    --userId 'PZ96XsON1u9FF0Ou' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'wU07bWTcwKTyFlv4' \
    --namespace $AB_NAMESPACE \
    --userId 'kGx4HFgx7HuAvbgS' \
    --limit '89' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '5Tm0rwCt0F1Yut9M' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'zzx9VngMyVyD9nq6' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name 'd01bwf4Wod3Ppgse' \
    --offset '75' \
    --sortBy 'PhfxtSFAh0yOpqKF' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'oJxiHP0NrDc7ekw9' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "NsMXBCPXxrMVxnn0", "customAttributes": {"Wy2lGeYf5eIIa90r": {}, "PgjOq7Sl91jqG16Z": {}, "bY67JMiehWa3toHV": {}}, "fileExtension": "YeERdNhZOAVbc81T", "name": "rK8ranO5buzLNv1w", "shareCode": "ywcdrGfRAf2HDPNG", "subType": "kTXjprWkpILaq7Yl", "tags": ["KawpZoMa1EJN5PaT", "aAX3kEsOjUfkH3ww", "CDSuLjgD78KkyGMQ"], "type": "lLrcQcdmIFwsuUrF"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'l84CFJcUaWNnxHHk' \
    --contentId 'dpZ3rwIpDMJHvcdI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'ecIMyoVa41Atq3t1' \
    --contentId 'G00LIa1n78Q4B48G' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"1AhujKQFrU3J8sCM": {}, "qk7hIWvoyWQwDDY5": {}, "EUlkkW5uO0XDzIRG": {}}, "name": "GZ67uxxPCu5joGgu", "shareCode": "VnxWCEdKlptjuGPk", "subType": "uC4qpUXWUg3Q4Z4k", "tags": ["tGmeQxdIebAhivLj", "QEGXmDIpT5gE19tB", "KbjesRysnT6jrgdt"], "type": "LcoJCX1dKFp0Z6sD"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '5wC4g8ME0t9PhUNX' \
    --contentId 'wU7HvjRJn7zCnvDt' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "jZKAHN02LpovEsXO", "fileLocation": "SIPlMqkjBdNhOj95"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '6FakgjcThiua9slD' \
    --contentId 'nNHVjgvwkpoMbFjm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "t7hEMvCuzYAYTV8P", "fileExtension": "vUBHeFpg96s4f7uG"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'UeZxlD4RySnaXmMh' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "ihqooLqnTKqIuY6A"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '12' \
    --name '7ObDpDYcrRz1c0rB' \
    --offset '53' \
    --sortBy 'mD7qxBGpStsO7kdY' \
    --subType 'wvZwUUt0XwIR4YFF' \
    --tags '["BQ0LoGZBghh54Ged", "pGZvBB4O7EMzeejh", "LDA2qI0jGfut5cnG"]' \
    --type 'bz5OStqhsvWhQ9Uk' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gCBFIuAdaRhmC2CM", "VDNGwGNS8CM4hrLm", "oDWOhyBuvttZ8bFU"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["RBfB4MqMpTzennTf", "iQnJT7ygpI8GbTcn", "wWFlrrOoM26pWJlv"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'yGA6fvB0QEsw2ZBH' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'JMYpCD1DVB7W7OIE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'Hhj0Prqo4FXFaKSl' \
    --namespace $AB_NAMESPACE \
    --versionId 'pqhJE16lpGDnkbWn' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'LpTkDKpKTtktX8Tp' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "f6RszTllAcvSOrfy", "screenshotId": "v9gLVtKDWcal9PwC"}, {"description": "jxyOvuPLFHcYlxDq", "screenshotId": "fFVUisQV022KYyz1"}, {"description": "gnSieqbXQMnho6zY", "screenshotId": "LL078Ygtx5dDjsTC"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '1PDqiZ8hk7zJqqqk' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "lHjXXTFgnGEcY4Rm", "description": "tRX4r303oIjesfgz", "fileExtension": "jpeg"}, {"contentType": "3qxv0HpcOvCW1RQy", "description": "bARhQm2NEJoATU8I", "fileExtension": "pjp"}, {"contentType": "dePRLshtUjMyfVoo", "description": "qxo49BwTyzCT7apP", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'ojd6qPBzugYuHvFs' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'utP4RKgLD2X6GWEK' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'kTzOko3S3c7bxyAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'SJQU0xLkciqqepsL' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '65' \
    --sortBy 'mD0CKIthNbVTRXoZ' \
    --status 'EwNWfJRmE3LuJiNr' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '3uhBkdNZDeW7dIZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '3iirFkqSKeFrYsSb' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "Yxk8qBuRytiof5Me"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '8WYOWi61BEWSiXg2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'VDdXz72nLNaETkYp' \
    --userId '7w1btQWkLTs9AZfA' \
    --body '{"customAttributes": {"9ata3MowjmpDl9Cr": {}, "VjpPgCR0xUE3SBMU": {}, "uUGvrWcn9BZg8Dn0": {}}, "name": "WJoMqF0Maiz9xCJv", "shareCode": "GsG3iVeMlW6VKulz", "subType": "izlhMcyHjnWp0JhJ", "tags": ["ZReWfcr1p0Ec8VmN", "ltP1ArPV4gn9QfsB", "EgzTabDBx972mplg"], "type": "XwzDHMhUHPmEPjXY"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Juqas3cLvdSET1KB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vVt1mhSU55nbeGj2' \
    --userId 'vFtY5MePgOsjez0q' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '1BWbLLuobCiSDr4M' \
    --contentId '3JynJoKKJcpbWbCC' \
    --namespace $AB_NAMESPACE \
    --userId '18EshnDmA65pHtSj' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'jL35zU00C6N1vseg' \
    --contentId '5rWrchh1GixHA1KT' \
    --namespace $AB_NAMESPACE \
    --userId 'HNC2rK3vPWR37OS8' \
    --body '{"customAttributes": {"HfMhtGPctXW44svT": {}, "pUscrOIoak5rPObZ": {}, "eAB2XiNBdvm2ZyYE": {}}, "name": "jI4pBgFBOagSdZ8P", "shareCode": "EP5fYMYg9ajrnFOM", "subType": "W3s7kdaKFeVJXjcQ", "tags": ["ZCucdBkHsm2UzZY5", "zUN2LnYj0GSlzEZN", "UlBLek2RescnJdHs"], "type": "fZVp1HlgLOcBBU7G"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'lG6ujmWBFIkmAOuG' \
    --contentId 'lhtupxn3D1Hkxh0N' \
    --namespace $AB_NAMESPACE \
    --userId 'FqYnFfXOPxeJXj57' \
    --body '{"fileExtension": "nMyQKPzNdlwC2Hqz", "fileLocation": "UfdjZdRBWkuDJyIe"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'jZL4W2Jk45oCqSSP' \
    --contentId 'id3HyDBJJ7Zf7FNu' \
    --namespace $AB_NAMESPACE \
    --userId '7vGikxE62DmojRxn' \
    --body '{"contentType": "vk6YentFblaNQ8E8", "fileExtension": "kNVqQKmMH98dOEIf"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '9AHP1k7b1bIKKkHp' \
    --limit '83' \
    --offset '95' \
    --sortBy 'Yupmv4i4ry3QdaTc' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'w4X1YRGe6SetqjOK' \
    --namespace $AB_NAMESPACE \
    --userId 'KxygvtU7bvxcCS0H' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'CDK1N2JBioAmzVEh' \
    --namespace $AB_NAMESPACE \
    --userId 'KmLqVGGe354hyhD5' \
    --limit '56' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'oTPNbO8OcVmFJpKe' \
    --limit '89' \
    --offset '70' \
    --sortBy 'aWOiBlOVYwgBvxus' \
    --status 'lesbFjVUrZkcSFxi' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'taaHin1oCBI2y0mZ' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'GM8Dr44diNeUhfyl' \
    --offset '49' \
    --sortBy '143hAXFtdrTAz8Dh' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '53' \
    --name 'NvMloQfKEs1ROE1O' \
    --offset '71' \
    --sortBy 'XOSvORPtTQbZQ3qq' \
    --subType 'w64c5D87UCQoTg7B' \
    --tags '["3O3JuZL2v8FMaHD3", "ZVCbayGdAMd6ITe9", "cbBESC0aYmx5hRYa"]' \
    --type 'dv25KoBmU3KgCFgt' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["bjMibITsLqdxRBmX", "Onajp25BnoYFUuII", "FvUhnNpyTzHrWmTb"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["jWsehWH4ZsXUDc8Q", "JzrRY9qelnS1wckd", "OQQMbh4ILqUbJkVL"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'wQAyaCqulLeJfesU' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'P3R8GeYFdW1noEQa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'dGNw9pxusEBBIaCv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'iDcQQgBSHZjAkycf' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '64' \
    --sortBy 'MCNg42JF2mEG2ZHO' \
    --userId 'tz9rDH9pm9IPDP7G' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '031EqfWYuFga56m2' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '31' \
    --sortBy 'e46eSBR7ksi8fqlN' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'SlFdpbJvVKBVJ2KT' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'XPAMnUNyOSmpQkRh' \
    --namespace $AB_NAMESPACE \
    --userId '3Sjowe886RMBG2IA' \
    --body '{"contentType": "Cksh4NNWw8V3bBov", "customAttributes": {"7GVYTJuSLLWiQUxJ": {}, "xHzxOJooQfE0J3Cr": {}, "eMLCZQfFfnd1Stbk": {}}, "fileExtension": "9bfEuGoP9TlMxXpR", "name": "0Gl0P51PPifmMEXK", "subType": "GzzCUNk7bqZNbsnp", "tags": ["BxqwrLkg3m9kx11h", "73IH5DlsigPyzUYa", "bVaBPXG9KLyz6xAB"], "type": "gy0Q4XNyNfNF78nM"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'PToAf3O655BzPhRU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'T86vZo1IflvWfyFL' \
    --userId 'KFdxCU7SODTRv1T2' \
    --body '{"customAttributes": {"1RMnhPeQmpxdNvZM": {}, "DOdKUQo0tftX0Wjo": {}, "TeQKlzC8b3E5HeTo": {}}, "name": "Vdm71Zue1WjYq93V", "subType": "5ObXkCCwn0oYTZlF", "tags": ["kB6H6ClYEOGvFKYa", "3NQgRMiz0QiBKpkd", "Cppp4cqn6w7q91sH"], "type": "RuoUgDrzCGSq4qEg"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '1s4EDv0QnjhdZzR7' \
    --namespace $AB_NAMESPACE \
    --shareCode 'bepB17MzwH0jW98W' \
    --userId 'ff399DtZ4sl92Cyj' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'wRmaEuaowiIucpiO' \
    --contentId 'f8TjRKmmzvd3blv0' \
    --namespace $AB_NAMESPACE \
    --userId 'utplmZcUfGI0xr60' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'pnuB9sTPt54Kj8Ic' \
    --contentId 'D6vfUWypSkDd3sw9' \
    --namespace $AB_NAMESPACE \
    --userId 'm8hl5vG2r7RUJh2P' \
    --body '{"customAttributes": {"jBf9QIFA1D39Enfu": {}, "uafVkdMJ0cHUeotZ": {}, "anQla5Cbv2Zb5GtH": {}}, "name": "ypUW0wgdeQIvPs2i", "subType": "5zY5DFOLwO82tQBS", "tags": ["cCEuEd1k4VSxsUtB", "BjZetMxwpXFVS3e8", "RL5KfVnokipQg6Sc"], "type": "JO5tClOqfzldV1Mv"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '64dY0LtlTWwCFsoh' \
    --contentId 'oh23HyxzXDaAKwXX' \
    --namespace $AB_NAMESPACE \
    --userId 'ANdlIBUZ5OrR0k7d' \
    --body '{"fileExtension": "iWlQn8KDI2tZDLG7", "fileLocation": "WqZmmFsoGirwmLnI"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '08dS4nSLDIeA4yVg' \
    --contentId 'Qmhx4azT46qPxapq' \
    --namespace $AB_NAMESPACE \
    --userId 'eaxcpYSzS9olYwxT' \
    --body '{"shareCode": "4MFZ9fHY9Iwa11ut"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'Pmt6nVQn0XvgYTP6' \
    --contentId 'QigpGryyRqLBkTFe' \
    --namespace $AB_NAMESPACE \
    --userId '83pc1hrngvTiy4D7' \
    --body '{"contentType": "KesZfHVqRcXIYojZ", "fileExtension": "NFhXPqTHhhiWwGqC"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'GlJPKz79DHFVZ9F7' \
    --limit '55' \
    --offset '5' \
    --sortBy 'bqnw5jnqYFjBc64V' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'wHv3jU5lhJdKfteF' \
    --namespace $AB_NAMESPACE \
    --userId 'uDGrUUOuB4AwVNgs' \
    --body '{"screenshots": [{"description": "6EwO0JqFpE3LVpMj", "screenshotId": "2wAmP38UGO7k6nmw"}, {"description": "j52iOJLOjjgnPs8C", "screenshotId": "Y8Zqwpa4yMC4UXFa"}, {"description": "kV9nJnzJsK5A6GMD", "screenshotId": "Zt93lAohGXjjSOY6"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'QBwkSBZVJQaiRlGd' \
    --namespace $AB_NAMESPACE \
    --userId 'QYwTm9JqVV8r5tse' \
    --body '{"screenshots": [{"contentType": "40igyCOioprOMdL8", "description": "xtrnMczjktOuyYkI", "fileExtension": "bmp"}, {"contentType": "2HGzKy3rE0vfk8XD", "description": "upa2u0QZJhsay1O4", "fileExtension": "jpg"}, {"contentType": "njE1iKV5FR9etZdW", "description": "VAISKrj8jPcvG7Ka", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'ui2sCPSQ5UVQ88Pz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'O5BMCdW29UCmsoo3' \
    --userId 'eL07fqZKcJx3RXK9' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'p4zM2geET9EJrhrM' \
    --namespace $AB_NAMESPACE \
    --userId 'X4OqTH7U9jPsuzqb' \
    --limit '41' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'zarN76armgzcaGXM' \
    --limit '37' \
    --offset '32' \
    --sortBy 'MB4C8DmtjFHXsPYh' \
    --status 'bc1lPIbm76SNjh7x' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'lOJh60DoH8wLXK0n' \
    --namespace $AB_NAMESPACE \
    --userId 'lf5dGB1ckxRae09c' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'DtwHkfz6LFquIIx1' \
    --namespace $AB_NAMESPACE \
    --userId '9H1JhhzAm0ADXMnc' \
    --body '{"fileExtension": "9YcHIdpoDru3enBO", "fileLocation": "GQKJCpkVJHtbY7mS"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'vsEKnnjnq4h5pmRK' \
    --namespace $AB_NAMESPACE \
    --userId '6RSOgZg5Vb1LTUW4' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE