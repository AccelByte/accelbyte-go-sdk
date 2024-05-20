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
    --limit '95' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "voXAksnIZILU95IE", "name": "VOxPH1DjU9NKhkz6"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'SoKPvVzf0xHKR3RB' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OM0mXrYGGAXigmdx"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'ky9eztcAIxxJYmZR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'AyntXXNcEDaSRRxO' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "fWcZlCwGSsG9JxKF", "customAttributes": {"10KGTqGswVEGmSeO": {}, "cDEfkWwXCZEaZlRr": {}, "Z0JY0mAbuCGOCFpn": {}}, "fileExtension": "brem8ynPWkfRGePh", "name": "bJmCpHikTR69EEPG", "preview": "jwU1DkCFwiXiZyuX", "previewMetadata": {"previewContentType": "AK1dbYVlOv0XKGbQ", "previewFileExtension": "XtFDXZ8mAMeE1WcL"}, "shareCode": "aKmAJiBu16g6rXzE", "subType": "THKYUE19p7HR8nZe", "tags": ["MLl8ZsRZ0StiHqEr", "V13PPzqYWStMZYUa", "gju2PXhDD7SKfo0e"], "type": "KCS41mz9BVevF9Ve"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'qwcFfIFOYLRgDmmk' \
    --contentId 'pSJavlioTDlbZgoi' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ennA9bujV9145tHX", "customAttributes": {"RNWxeGQ7ohAIKVz7": {}, "Vgv16PC8F51qFldI": {}, "j5FIMRrCWVaK1eUf": {}}, "fileExtension": "QXGKwYdtitoPjceh", "name": "FtpLVuPVuynxTFvX", "payload": "01LzD1ftQ0BKKXz2", "preview": "RWfjKVFUAl6eXdaZ", "previewMetadata": {"previewContentType": "Nn2Uzn9S7y8LE3Z9", "previewFileExtension": "AHn1HxgkFj23nYxo"}, "shareCode": "GfMc76p10JSDOPUE", "subType": "x5kbclbJxNqXV9Bf", "tags": ["3aJzCNREj1soZZaA", "AcSFqctHCrpovnt1", "bwm7ciz4gboSQJAE"], "type": "CESHGtSE8pfJQlUg", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'dIukSflFsDsqkEoR' \
    --namespace $AB_NAMESPACE \
    --creator 'he3R4O1OTKGMUBlw' \
    --ishidden 'tR46eBjqvbZedvEV' \
    --isofficial 'eV6ra1KQgKdK5W5b' \
    --limit '40' \
    --name 'GTMBvgRGkf5DjWKi' \
    --offset '40' \
    --orderby 'D8i1AZoM8l1bYQ6p' \
    --sortby 'JkiFIIj8lbn3bsnT' \
    --subtype 'shai1lSlOxQfaHB2' \
    --tags '["SnPwYUxPMDok1xvY", "yHB2Fz4LcDigY2sV", "wyaigILOJx39oeHn"]' \
    --type 'mQAgO3jtn2xqRmW3' \
    --userId '78BhMVY07GUQ4rId' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'bYgsSMxeSWRUo3pr' \
    --contentId 'fwmVVnI9jRc7RybJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["4qCcOqqNs1GeGtVy", "XqoDKLmNk4PbzWgZ", "YFvJiicx0LIBeDng"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'l2P1gcGIa9JWv5JW' \
    --ishidden 'SzMct2NMoEfq8qbV' \
    --isofficial 'yYA3um8ZdRsEUwnL' \
    --limit '41' \
    --name 'OusHZgApnrgeI9zw' \
    --offset '3' \
    --orderby 'oTo8bgps6OkWpAO2' \
    --sortby 'O1D0eoSxKRnXLKA7' \
    --subtype 'sPpdFCM1CO0jyvVi' \
    --tags '["Vx57TLQKLmCKniez", "PWUXuZjDRfJRlgGL", "me4lxt9pfQgga9je"]' \
    --type 'bnjgFNWMt2LoEZot' \
    --userId 'xPsiGNklzlLPygMM' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["zJqVz4slp7111L9Q", "ihCCCdLhC7kmhMFe", "yIewW4P9eIGPjHQu"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'qjmaEeczjC73rHTU' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '2xUblNs0odl6P3zN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'xLqFnqlkYuSqTQus' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'wLr6KTTRV28IAHIc' \
    --namespace $AB_NAMESPACE \
    --versionId 'e1VDacwzV64itVbU' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'UXwEZcTzYBTwwPbu' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "LmQIRjCdB6pIf8CH", "screenshotId": "yqtYSC5Z1RFjgSma"}, {"description": "yyuNOoVH7abgwJrC", "screenshotId": "zTfRcEPm7S3ND340"}, {"description": "0oRY2mXhxFiZUaHU", "screenshotId": "Woclgx5g6Llqu5DK"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '3wJcDKkqjBsFy2Pu' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "wk6aMScwYL2b44da", "description": "tkc5bPIcUnJCMkNM", "fileExtension": "jfif"}, {"contentType": "AzfXycR5HBWtQl2K", "description": "wx8MKoER2aIqu6Dq", "fileExtension": "bmp"}, {"contentType": "yHLfaMR3miZjYx8Y", "description": "YecVMVacOcY7aFlJ", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '6pMUyJvmUFGOd9GS' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'FN0Jv8i18lhImtTy' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'CMsPaZwchEDZ3La8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["JZigtCsri6PvhNLV", "75nOJhMpz9vfveh2", "mswvts6dHcyE2okO"], "name": "sQTEPglDItiq3c6M"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '7MkaVuHmXkvlr6km' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ZGWesPSuT7OI8i89' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Wyf31iXlG69Gmx4R", "hd1JcdTH8njjP1Pk", "wI3x77S0bfE7ajGP"], "name": "HmhNRMlspOGtNiUN"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'W2eHuzsLpFVOJaTs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'KcFrS1tR42ppPfT1' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "5HKLPZiOSaUBvTQo"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '425j8qbMCjiiCUjb' \
    --body '{"tag": "h5fMbmOr3JPiqvtv"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'XGvRbTBAGEts9etI' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["6wtasHJ42er4YnVR", "oSkT5yUBa37afbKN", "7gcVjDSQoXzwP4pf"], "type": "aOyIsnZM5gHaXBzU"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'aXHGIrDwRyN1e1vG' \
    --body '{"subtype": ["j6tBQwlIHZmEiXaC", "m5JeKUspd3ZDgjRI", "IFpTrnn3fyBglBLP"], "type": "DqfmPPYInP2t5lnb"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'I0HCrDxFl9Pn5mNx' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'PjBXmt6b3ureRt4F' \
    --limit '44' \
    --name 'mxIM5J1gNTACb6Bs' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jRoCUhYDBpT1EUIN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'p5ExsH6ioG2OanSb' \
    --namespace $AB_NAMESPACE \
    --userId 'LKTpUgKRjQ4t2AkO' \
    --body '{"name": "NdirvhRcsHyJsikO"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'bwHnoMkw04L9hhHW' \
    --namespace $AB_NAMESPACE \
    --userId 'nPGfeHR1cLHKUcBf' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'UdHOq8abTsfDYtwR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'g3LQ0euh35VojBHM' \
    --userId 'st57yD6qIONeuRf3' \
    --body '{"contentType": "fE0Jj7BVUlfCjeqg", "customAttributes": {"Zk8Ul9WBBZosYbT2": {}, "PSsNTcfm3P1avQUE": {}, "mhJM2DHPZvMQNoPF": {}}, "fileExtension": "6EVrj10jttw9ujvc", "name": "iQl7kO7uibKV23M4", "payload": "aCcXlo9pSlSM0xCK", "preview": "wD594qRKnkquAAst", "previewMetadata": {"previewContentType": "OtdGlH0RJMjFXdyt", "previewFileExtension": "wGJa4IWGls0Zdkpz"}, "shareCode": "4Gr4BOo7LACg0U6X", "subType": "FZq6eMECnWlbEEpR", "tags": ["0xCzjNJE4IN8anXD", "8l4LLmmtHYsOZ5MZ", "Lkzst0U5HCADbdnn"], "type": "MaZ17yEaJtQwjb51", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'hbSO4ewp6bqAjHMo' \
    --contentId 'xmFrGqJvzhLxXrnK' \
    --namespace $AB_NAMESPACE \
    --userId 'Faov4iJIAUuuYBu2' \
    --body '{"contentType": "0SeejE0PVCsR4Xtf", "customAttributes": {"MarHABlnU1wRp5KP": {}, "UrWkSr6yQYc4z5yf": {}, "8nx6xkZzFqVtY3X2": {}}, "fileExtension": "GpcV8YTFsxCsL1KT", "name": "ACosf2oHHRoL2tSG", "payload": "IkYgp78wsFSlq3F3", "preview": "frWQPKkNR0Epyq8H", "previewMetadata": {"previewContentType": "rgT9THfooXVC3xFG", "previewFileExtension": "F0UsuabqrrUu7pyi"}, "shareCode": "LHaIRNUeiUphsTFX", "subType": "yWQCqEB7FDEwLETr", "tags": ["96oUXfswWKcUreuC", "Mm8a6nceakcXpgCp", "BAXVkrhQZrJyoyQb"], "type": "2O7pAVzNXgu9JlQi", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'EkrkKoKQzV7vLjt6' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FQwFozccbH5hAxJr' \
    --userId 'IgQ4vlQXddaMtCGY' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'UCCF2MuKLN0dXjO4' \
    --contentId '3PYZ21UwFE0PlL7o' \
    --namespace $AB_NAMESPACE \
    --userId '61LTNX8P54plgqWo' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'FlW8Kh6gF7uCOlvn' \
    --limit '34' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'JBKmVW9oSnSbMRIE' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Bxgb1M3LG2PwD5wF' \
    --namespace $AB_NAMESPACE \
    --userId 'cohSz8t4nFMzK8xo' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'IApEbBV5hbRwG3Ne' \
    --limit '32' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'O3hWcAANtqPDiJ65' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'wNWFWx2nIRJ9YPNn' \
    --namespace $AB_NAMESPACE \
    --userId 'dyzkubYFgAFWVFTg' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ywYyhCKaISxAAnCR' \
    --namespace $AB_NAMESPACE \
    --userId 'dihGW8iLtndJcn65' \
    --body '{"contents": ["SQFwZQJRqmjleHlp", "oWA5v5MSNpXoxFnu", "lSBhdna6yILc9mxV"], "name": "JQCLKJnVp97omJs6"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'AZ7J2vl3ccVpusG0' \
    --namespace $AB_NAMESPACE \
    --userId 'Yv8nwW9jB7bMIAmJ' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'JKNx5ChsNiClyRPV' \
    --namespace $AB_NAMESPACE \
    --userId 'DCr3rOUO20qFnB8j' \
    --limit '42' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'P4lp3JhHYFNHrHyK' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'NrtK1dNx45XzHFMR' \
    --namespace $AB_NAMESPACE \
    --creator 'pikJBvUgPbguApDP' \
    --ishidden 'dHr6uapOSPQTzX3J' \
    --isofficial 'B1Q3lT29BzkcF8J8' \
    --limit '82' \
    --name 'vFEGGs1YlnV3G7wU' \
    --offset '56' \
    --orderby '0jhLeGgNTzf9fwta' \
    --sortby 'k51Q5ZS1rZLBzJPX' \
    --subtype 'dq9MMwVL9CE5wFAH' \
    --tags '["I0KrBUsQfJP5GBCe", "LmUAjVmR9aXh9UDi", "vREKHHwTRxvofzGD"]' \
    --type 'uGeCvn4olh1hLUFP' \
    --userId '4OEXICFyHFfs0Ovm' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ruQtDeBTTF5tuvhX' \
    --ishidden 'k2xPbP5HofY7kVx8' \
    --isofficial 'NzbiNq6vyfAo3gHM' \
    --limit '56' \
    --name 'LbUxlaAWNVlRHZHu' \
    --offset '53' \
    --orderby 'u5axNJEpKxnTxu8b' \
    --sortby 'npfH04LJcC0MDdxf' \
    --subtype 'CVHSuWNyvNTqcEIa' \
    --tags '["V3xWK2HdyVrPUViR", "mJz23hg20KImibYk", "GlFEGapy6WO7dDgR"]' \
    --type 'b9fi092L5PewMnL5' \
    --userId 'PZ02rjzW7lcP9nKP' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["TSut6kQvi990KqjU", "GZpEGT1nO244fDlz", "ujCM3a4Ar4uKzD8i"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '84' \
    --name 'BckyIm3CbwEdOdTL' \
    --offset '41' \
    --orderby 'FzOp6Sy71L3aRLk4' \
    --sortby 'LlMx3gT6SnDFJ2of' \
    --subtype 'CvQ4wtpVdpYJqTlN' \
    --tags '["zrfVHD6RBthkOt41", "vEm004smyL0tK6gi", "yL8NDRsRuiYbGbKK"]' \
    --type 'JPZS0CFbtkNf6Ves' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["nn2B7rjz0oV2DoZX", "V5wspJVyQqzEnurw", "C7WNquDuuSEe84rV"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'bRpI34VszaF0wtWg' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'dsLxAxbDhHtvV8ea' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'wboKsnv4Jv1awyqW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'sRW3INU1G6u06Lhf' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'njOZvru6IhXXof5K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '85' \
    --orderby 'Hxl9L5Dgls0UW0mM' \
    --sortby 'AsnA2izeOt6EKhSe' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'FKSZQ2zIhvVGn6Lg' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'XApUMq0p3paTP5TX' \
    --limit '99' \
    --name 'itDJP4iA4dBrjvJY' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '3z0mANsBl64iiAGI' \
    --body '{"name": "irGE2c2PiyC7izVR"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'TPGQby04oDrIz92G' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'xBbu7f4MqdJDW32V' \
    --namespace $AB_NAMESPACE \
    --userId '5CsdTKrez6ujEN7Q' \
    --body '{"name": "iZ3yyPh1jiqevJQM"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'fZPAJhAfdeBgkDaN' \
    --namespace $AB_NAMESPACE \
    --userId 'GChQ1CskDaLhwK7A' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'xtH4tM7LS27rFGMx' \
    --namespace $AB_NAMESPACE \
    --userId 'NJnCAc0JzZdIMezp' \
    --body '{"contentType": "LEGOsoNkUZYe8WGd", "customAttributes": {"QnrCSc4KJbiUFOKh": {}, "BL8eTkofw8ogUOuv": {}, "70u9gYAdB86wKBvV": {}}, "fileExtension": "hH1EWCUFD7KnyKa2", "name": "LxGdBeRTbsDwAVbG", "preview": "4KzabWu0f9pkPwqg", "previewMetadata": {"previewContentType": "65b0aUjZChkWGJL8", "previewFileExtension": "nheQU3zLchZVctdq"}, "subType": "Ko0iqkxXyogyDKm9", "tags": ["LvxUvruwsIXPydMi", "niHqwmtzsoyoyNQZ", "jMbNjaeaCDcdqtz0"], "type": "kvdlyUq6zvri0kNJ"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '2hpGkACwUrBuChyb' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZREsRvoRniuuR3hK' \
    --userId 'AGbUyCvEa16uXSbI' \
    --body '{"contentType": "K9Dvs03RzXZv7YMi", "customAttributes": {"8jA4Q2dh9D76dLq1": {}, "KS8JRZgFVITHvb76": {}, "fBhCmTWHerVU0jiO": {}}, "fileExtension": "52N0QrprbgD5Yo4C", "name": "x64GE0dY8zNPVdRG", "payload": "ylF0S8F7y5u0hnzC", "preview": "zOdlbm44A6hEiDGh", "previewMetadata": {"previewContentType": "xLUrwbGRf6I3khI2", "previewFileExtension": "7jp9KyY6g44HO6JI"}, "subType": "uDUZJyewV6oTTLtI", "tags": ["6VNbJHIFkeqEheJY", "4e9kjHcv5Y6dKFaQ", "052Vp1QMDw9IIhqt"], "type": "bSW3laOO5IDtwV9b", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'N1HrP6oreuBtKTOr' \
    --contentId 'pl7LgBnOEU8V6IQs' \
    --namespace $AB_NAMESPACE \
    --userId 'Z8lsfWx9dE12pNTF' \
    --body '{"contentType": "OIMj9JYF33DJRrT7", "customAttributes": {"gDPakmo4RfGOI7me": {}, "JSAz60DdWjs1Vcxc": {}, "jNJ7JzZm7C51b6OT": {}}, "fileExtension": "QCTK0vVEfwAVgM8H", "name": "beXzuPwgD2u94iWF", "payload": "yRJ1AUN0gsEZej6f", "preview": "sFYYVCi1b2m2UGsE", "previewMetadata": {"previewContentType": "dRy2t3W4h7qslx9m", "previewFileExtension": "ZGwr5MmyKUZZF2i5"}, "subType": "iMFeIuBZI8f5Jwla", "tags": ["hHrR8h1jkzUMgpNV", "dwvI5fFm3rWH0wyQ", "57cAibj1bwBZsnD4"], "type": "fb9MdlQwWsvdtQ4q", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '4XXPQFt32okq8VKq' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BnYASDQAKZcUmZZ3' \
    --userId 'JEAs5hxZFGHsgcud' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'z75BqZIkde0rnz9e' \
    --contentId '9fsE7g2Ps1RiNYTj' \
    --namespace $AB_NAMESPACE \
    --userId 'HAokIrsGHrto36jW' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'nxHrJg8U4NBOt4uU' \
    --contentId 'RHrrjZUL0I9aUxIB' \
    --namespace $AB_NAMESPACE \
    --userId 'CsrZq9UvXuE9Yo5H' \
    --body '{"shareCode": "H0ZeZsh3dygF2AHq"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'nUJHN4VpedlJxdVk' \
    --limit '55' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '98tcphca8o9wmQmw' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'vopv6l22KzV8mCmO' \
    --namespace $AB_NAMESPACE \
    --userId 'oFSLL4tBgKuuqD9l' \
    --body '{"screenshots": [{"description": "9MPciKOQ7XVpEYV4", "screenshotId": "zOpnQeAzwrHkrMKo"}, {"description": "rKqmcAprxlCnZ2Fw", "screenshotId": "h4zK6dJhYNOlWh33"}, {"description": "ljDHpIOvy8fcjd88", "screenshotId": "MR9WO68Mb8wCLG7c"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'YBNvVQiX2yv0Mh3u' \
    --namespace $AB_NAMESPACE \
    --userId 'O7GlrH4Ctna0EyqN' \
    --body '{"screenshots": [{"contentType": "CRfBbfL0ZCsTHs6e", "description": "Tj1yI6Wm89MGB7C3", "fileExtension": "bmp"}, {"contentType": "Teyxau5tyzOkBiDr", "description": "a1WvduTqivJXoZ4G", "fileExtension": "pjp"}, {"contentType": "6ktyp7zUVpM19nue", "description": "G8YNmZNTDIioRX6w", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'isxafHKik86hrj3R' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'c2SFZs0W3ALBQTS4' \
    --userId 'UUwzlpQXmSZNUCbB' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'N9EdFS2aeW5CSRqa' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'y6SbM9nta5Qfh6iE' \
    --limit '67' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'rsoDldCjy4gu72oo' \
    --limit '75' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'xnIf17k92Nr0XBef' \
    --limit '55' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'OEEL69uK5ZgRcM80' \
    --body '{"contents": ["0mLzOapHaaWCniIm", "NPLt2OqcsouhNxqA", "PcAhiTwCTEsz7B8T"], "name": "S1z2K31ZOwqBzYdd"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'e6CGV36EAPCeIaWk' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'd6dfCthnKcNWeezJ' \
    --namespace $AB_NAMESPACE \
    --userId 'X5MoHKAC1JyA7Gb9' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '23ezbPTWDpcUazEW' \
    --namespace $AB_NAMESPACE \
    --userId '9QUCFKjTO42WytVG' \
    --body '{"contents": ["hNqjkDZKodfGT7fs", "b4WhpiVXZnlBFrW0", "EHYLJJeQOQ5zL1R4"], "name": "dJV3ctE1QDvyMT1c"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'gtu0tgMdzaEA2jhd' \
    --namespace $AB_NAMESPACE \
    --userId 'FHwlogtdU1s05IfG' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'ecIc9Y3ijSMaAM70' \
    --namespace $AB_NAMESPACE \
    --userId 'F9XMBzvaqSlqovYT' \
    --limit '24' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'qoAQ4dVkqE8oAKfM' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'a2Qt9IcTKcbXF6UY' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --name 'iOnfSgxfwscEvdcH' \
    --offset '79' \
    --sortBy 'sCXU1qgEUiJQrzZV' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'whJ1dXLvKTqDjEvf' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "NTpj2DvjheOPK5P1", "customAttributes": {"7HSFY22MDb97y3br": {}, "q13IUnD5owQESq9V": {}, "f5dQ7K9ebbVtGULB": {}}, "fileExtension": "UVroNPNjxF4bcdbo", "name": "GeYExRRw37VN7AIq", "shareCode": "PuM4YfF5wQtkXfNL", "subType": "85Mna2e4RBEjDS3r", "tags": ["9SIoMjp8nJi0SPjV", "PuyvRnscN0DmFp33", "1Pux2bDe7iJgS3IM"], "type": "U8JswcZVIiwvnCIR"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'nlskUprKplFf9Bcv' \
    --contentId 'LRrOYUPpAQE4dPmC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'm6b5rh360qAkrd6v' \
    --contentId 'xKKFHxYaEiUc7JbE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"S5L7gUoFLliHl2Qq": {}, "IJRMz1v8RmUTZyQf": {}, "yhfZsAidKdUIvz6a": {}}, "name": "OUwXzUPKJ3WX6YES", "shareCode": "YZLYratgJlHkZmPu", "subType": "vk5y4KCTHSrdoTJ5", "tags": ["z1qVwJf5KKvwld0s", "ngjlP6FBkQ85AOX9", "BpNKCnI4HjHAZ1bk"], "type": "rEKN2g825JXaoFJA"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'LTuBVJ2VC1GNaLtv' \
    --contentId 'MSi5f9Ux1yRhFFgq' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "AluxvIVEHkMteRcI", "fileLocation": "j8SmNJ26oHcRS4kO"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'aHkIjgOwmm5BIrQD' \
    --contentId 'edE5EMxLFthv1PBj' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "wxIBfYBG7gLBHiJ7", "fileExtension": "B2mFzxTlfeWB2FFq"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'E1tPXwOZHAnyBpUK' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "WImsj7bleDf7vlAD"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '90' \
    --name 'bW4ayVWCtoATMVlc' \
    --offset '29' \
    --sortBy 'X7oY4ePI5y6lCHCb' \
    --subType 'cyIiaGOwTzXiio2q' \
    --tags '["q9pza726wnz6YoVx", "uF4VBYdeIYUO6ngW", "tgTeUQ0Z1p7GycrI"]' \
    --type '0FD0cZwT04KjIGZw' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["qiQXteNDFhqhS0Pb", "tTwdGWIYfHXzcWIc", "pIQFCE7BlLqJy2Ap"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ajPP8nzzdz340xMv", "USTtzVm3rUgnu8rs", "rNwGGOL19uA8uWgO"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'bjKPJ5lRki9uRJ0F' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'NgbfnL7cCGvw46Fr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'cPpqfUoYamKQv4z9' \
    --namespace $AB_NAMESPACE \
    --versionId 'Myu1DIOop2RaV1Dz' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'fAd1EFiFHahDM75F' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "UfkyOfVulVi2V6Vx", "screenshotId": "PCchuc7b5xl15KfB"}, {"description": "7ZMW6tUVH7YvKK1M", "screenshotId": "tOM9cO4IcfjVwn4n"}, {"description": "IWqlT8HqxwFHQwgn", "screenshotId": "GtwuNjDLJp07piy6"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'YnWtlP8TS84AYK8B' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "s11aka7bnNtHrykn", "description": "TfkzulDlviyGl7Iv", "fileExtension": "pjp"}, {"contentType": "bjneLbUFEOwTlhkY", "description": "45OFLhTyjW929LPo", "fileExtension": "png"}, {"contentType": "yvma4fgZ82qpDMuw", "description": "GDpZVtrtDO9PWauu", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'F9F4DnuhJElz3TJE' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'YFE6BzWuRHAvG1At' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'YY0WVL1SwXfsgEh7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '75T2gJHwtrmMe7r3' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '86' \
    --sortBy 'UlrQ7tdRf0xyNSzG' \
    --status '2JcJtMQYT3dMhkDG' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'CjHLSBvZ58ttkYVP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'oFarT1XU3MffaoWh' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "4IL3D5OQz97ISJzy"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'OHAhOaPiDG1u0xA3' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vRXNX72Gz2C8zXod' \
    --userId '8vJHMnDKfImRlYfH' \
    --body '{"customAttributes": {"9Cuysnq2ZICcBBsr": {}, "bNzkCRWWyuaWNYee": {}, "uTmIAWhU9YFj6n7J": {}}, "name": "ZYzNR3ue3CRC251v", "shareCode": "yummNGkqxhvUVu9i", "subType": "dyhsfKyyQkT9dybB", "tags": ["MAQRvcy8mumge1sd", "bh5aPDID4Aje0LS3", "WRzwbJkWuh7hnszO"], "type": "Lib2DgOn9Vd7CGhK"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'r4IXtVm1sARcnYbu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Az12oAHm7kV17yOJ' \
    --userId 'rG7864WPpuXCt4a5' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'Zrw1r5Wzad1ZcM5e' \
    --contentId 'lxEUDvSBtglZwBqq' \
    --namespace $AB_NAMESPACE \
    --userId 'Eh42G2c9jcpb6rHR' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'TSYGCwhjeKXMsgFm' \
    --contentId 'slaePGbzEONzrPJO' \
    --namespace $AB_NAMESPACE \
    --userId 'Dz7VlVkLvfOtKBKR' \
    --body '{"customAttributes": {"rYpWf7h3LxhI1rRx": {}, "plljeuMODNXpvD0f": {}, "ibXbit54JqVkLQsY": {}}, "name": "brT66afx1an2zO82", "shareCode": "KrM8kORYljfqaJm8", "subType": "Kz8RbgA2vtlDftet", "tags": ["6J8ueKcW1JwG6hx6", "QIGN5Fr39mVtomH1", "5FV9PjyH02OtEyJi"], "type": "lRy9j7OtGXJF1fm4"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'f4Smh0uvcKgUbyOj' \
    --contentId 'NXvIZwmgnP8UXtcT' \
    --namespace $AB_NAMESPACE \
    --userId 'p4uDFKsekHMm81Oz' \
    --body '{"fileExtension": "SytZL8LoK8TG6Xva", "fileLocation": "nqGRNAZgTWBSLZuP"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'r3iFPxciqpJCGMnw' \
    --contentId 'VkMz5xhInnm5l2rF' \
    --namespace $AB_NAMESPACE \
    --userId 'mxzBwdGdFKk3kMNL' \
    --body '{"contentType": "cFYbn3IgfcXQvnft", "fileExtension": "gIx9rGZIGshSkmyZ"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'VbtAaVbkfUZYv9xt' \
    --limit '7' \
    --offset '28' \
    --sortBy 'LsiHoynAC9hUlVmi' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'UsWlfJFVXNC1NI2i' \
    --namespace $AB_NAMESPACE \
    --userId 'lnTQ5H0yf3x58HtS' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'lkQBmuAFAnrDGWAd' \
    --namespace $AB_NAMESPACE \
    --userId 'oTOIlsxavVcHp28Z' \
    --limit '60' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Jf2cfm1UE0q2YeH5' \
    --limit '33' \
    --offset '95' \
    --sortBy 'Sk15OneUsGWnyjjS' \
    --status 'aG2yNsCnovh5oeUA' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'SUV7HiG6BB4LeqsN' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'nrKSCoj7CwyxTbcs' \
    --offset '92' \
    --sortBy 'cDfGsKKHXtNSBe7Q' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '59' \
    --name 'hEeYzgowQkdfM8bK' \
    --offset '69' \
    --sortBy '5tHuKqyd0TFacFaL' \
    --subType 'sHUDSbYAxzRLv3X6' \
    --tags '["BzPK92Tf37Iak5PL", "DkyQE9palOrgrHKB", "fXP8gZE5j9sqS1Cy"]' \
    --type 'BgjxpgUOFRBkyikf' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mnrXthFqEDVDGv7M", "oQNER1A0vEdfWM4e", "OXDKTTPFvzRg98X3"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["0s0MJd4w8Y56UpVS", "FEcdFWNPG2oVePia", "gWLrMIf0VhCUZ1Lz"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'nXdAipnEsC7WMPcr' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '0Rl6PGBQLUqwVj23' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'GZyfEMpnsyJ1AQFy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'UEnZRDM1qo4LPCBH' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '41' \
    --sortBy 'TbtlhYhMo4czWBbl' \
    --userId 'Bby8Hq7vrCEoJoau' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'Ebj47cf3BF6b0qVv' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '61' \
    --sortBy 'NVBcT3LjEOsj9w7Y' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'IWsgwpc35FGkfaxY' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'jHg9gk2ULs1sZZU5' \
    --namespace $AB_NAMESPACE \
    --userId 'OEG8onIvm9uka9dl' \
    --body '{"contentType": "hfgGKZO86j5Ybchz", "customAttributes": {"nOvZcpeP3nlKtftT": {}, "1eVPXLaT7j3ABMVR": {}, "TmV2cQK9J1Yi2mLq": {}}, "fileExtension": "WYVwrJM8VzRx8wOC", "name": "p8KiPmvaTehwsiIW", "subType": "DvujTb9rPYGDeUTN", "tags": ["y6F841Iw0KKtABrP", "pLwpeRFDCLlFPv3t", "vgfyohBIFwhUOzme"], "type": "reJ43wdLQuoUGAPD"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'ldFXJWgP5hHVIkqd' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OX9J5ly1rvEcO8El' \
    --userId 'FrPMkNgMaFI4K0l7' \
    --body '{"customAttributes": {"v8Ip2OPnrPdzFWFe": {}, "38hVC9R8IJHnVKuS": {}, "EzpDinTgmLr0wbtD": {}}, "name": "edcIGMB6aT53z9r3", "subType": "xRT5U3V4T76f6H6V", "tags": ["aQeqqY2D3WD9I1Y1", "FLth5RvTOmTuizbN", "uSN9HfIVMfqTWXAy"], "type": "7GoQA1BbgrnzdIz2"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'TZswjPXaEFjQDvJa' \
    --namespace $AB_NAMESPACE \
    --shareCode '9PYuW4IsmNuXYp2t' \
    --userId '491JlolXWf69e06G' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'HUdz6z5fJWejueTw' \
    --contentId 'cEPixROgtWeOBJOT' \
    --namespace $AB_NAMESPACE \
    --userId 'aoa2vInKD0Mes0XX' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'YEGNU3JkdmQTumWd' \
    --contentId 'BcUyxxXuxbz8p6cw' \
    --namespace $AB_NAMESPACE \
    --userId 'lFrQFZHufWMqpA5M' \
    --body '{"customAttributes": {"xJaWMdUx1CfTZsjD": {}, "19e8L326EKgcbot6": {}, "OECuuKWuojdD6NEy": {}}, "name": "ENOs3M3IkO44DJqW", "subType": "oW9j2nVJibgUJP6d", "tags": ["2QB9TDE1H1gAgLWt", "S0kmgPYalD7JOSwN", "lOkNe0b6UHmZsR59"], "type": "fkfQZ6oekrGSSpx1"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'vlhRyubmG4fjNAys' \
    --contentId 'Uj2lMUBfIQ9A8bps' \
    --namespace $AB_NAMESPACE \
    --userId 'Dygw0dNIr09fJ5WV' \
    --body '{"fileExtension": "ezgiGO18z8wPvTO9", "fileLocation": "Zyxu3YXkDbROSwgv"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'TfsgmvIrhCzFEzu0' \
    --contentId 'SxBERnPNTaoW12uk' \
    --namespace $AB_NAMESPACE \
    --userId 'jHnmt0MEg4DpUrR6' \
    --body '{"shareCode": "u1GXiKcZ0Ub4vipb"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'lzOLvkfMLFCvx5oP' \
    --contentId 'PjJnk2iOUA89bpUA' \
    --namespace $AB_NAMESPACE \
    --userId 'aQOPKsVhZND6Nf4U' \
    --body '{"contentType": "Y2t7Qg6HSV9BpX5B", "fileExtension": "nqyRMoTTB7HIbJJN"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'kBlSPMms1JsOUOoV' \
    --limit '6' \
    --offset '35' \
    --sortBy 'r2WwsvNMMTOPXM7w' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'FxixAoxApTu3aLJW' \
    --namespace $AB_NAMESPACE \
    --userId 'JuzRFslOwMEtIZns' \
    --body '{"screenshots": [{"description": "rrHzi2xPcXdmgUQA", "screenshotId": "1C49hdIlo62aGEPn"}, {"description": "lYJIGhKDEaDUnrZK", "screenshotId": "WO8pmBYm1toHpqJK"}, {"description": "ZF7qYNHJfuLX1eE8", "screenshotId": "NIkgHrEazIKr3SdN"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'NVDcon9KwLe9schm' \
    --namespace $AB_NAMESPACE \
    --userId 'tsrczP4HtRHQXi2R' \
    --body '{"screenshots": [{"contentType": "xAU1irolXFzYl11h", "description": "XvdEzNePnDFktrRu", "fileExtension": "jpeg"}, {"contentType": "lglfFSPseBcuBsE7", "description": "gZuYc4vSDHmZWFjL", "fileExtension": "pjp"}, {"contentType": "2SDgjBxVZmnLjcX8", "description": "7qubmppLNFQ3E18p", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '6SYWmKM0sYF6rNla' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ODEjIdGbpoZY7uJi' \
    --userId 'VH8sz5EYMXvLXCPD' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'EfyUDT7ntejtXP4S' \
    --namespace $AB_NAMESPACE \
    --userId 'iw8p5gUp3TqVFtNE' \
    --limit '72' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '2fxj0yxKhWVCdYE2' \
    --limit '73' \
    --offset '15' \
    --sortBy 'JMSIilQa5OHVE2cr' \
    --status 'SeXIzNiK1SmdAfHa' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '6zrCHCVxKWtIbx1b' \
    --namespace $AB_NAMESPACE \
    --userId 'nLxahheLlcU8ItNg' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'gQEcwCDSWGsQy16a' \
    --namespace $AB_NAMESPACE \
    --userId 'lCJeg3D4vvWyamqo' \
    --body '{"fileExtension": "DEe69xOLvOS3krxm", "fileLocation": "caHm4XH4EZ2uo3my"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId '52IMMgbEQAst0Ezj' \
    --namespace $AB_NAMESPACE \
    --userId 'iRCDJWb1JcktnbMs' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE