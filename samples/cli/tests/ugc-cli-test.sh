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
    --limit '14' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "r6kRk4fIcwtcWx8F", "name": "WThboKn4zBziVibE"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'd3aTIOIWZIZjUSTr' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "sshrbGsk5S9QECK9"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Q7ckjYHjuR5WeAGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'lFoWTQyuSh7dGt0W' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "C95xZ7eL5fDQmNfB", "customAttributes": {"yZdmW7wJvHRviMJW": {}, "qF6ERQhpu4Lig370": {}, "PAVNdRNH0Am7CBsD": {}}, "fileExtension": "XiNQERTVPjP2BKzL", "name": "TpM1cNwDDO4yM0Yx", "preview": "AaaXVlqIeqV3c5uk", "previewMetadata": {"previewContentType": "AtbyhmGdf9H2gTfY", "previewFileExtension": "vGGbyzEtFDQX6ajU"}, "shareCode": "0bOdLbPo5YZ55Zj0", "subType": "vI2O46lXeAnueeU7", "tags": ["Aw22RPSfJmXZSDgM", "mwnFOkDV72shg3B9", "NrjmsvVa8Acdf3cT"], "type": "vQXx7kMc906Lh6gs"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'fzLj7DTHDCQTf4WM' \
    --contentId 'VtD5M9mnWJ90U5qr' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "3FwCmDM0KL9x1Mof", "customAttributes": {"04IcrQ5svootj0aO": {}, "nxLOv6NBtGYziEaI": {}, "0LnNYeeActLol5lT": {}}, "fileExtension": "EdN9ie5svH9szwLb", "name": "KVRWbAtsUdba6YB1", "payload": "zG0Sr3DEpjOdp149", "preview": "MUm2VA7hbXwribT0", "previewMetadata": {"previewContentType": "BbBttQNhx5CfQ7nT", "previewFileExtension": "JMcMKluUSYzBqFkT"}, "shareCode": "TPDLYnfldyrTEJGE", "subType": "eXB2dZMExbOYVDXM", "tags": ["3pRIQt3H2Kqgi9PU", "mu8qceJjSwmuFkp9", "exRWwr0zES8QgHjm"], "type": "kk6kO5ilakFZp7e9", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '0lXb6hatiCclmTJp' \
    --namespace $AB_NAMESPACE \
    --creator 'SXLX8TWa74DJXEia' \
    --ishidden '7KcWfiPwNS9CLV31' \
    --isofficial '16gjgyM4CVf6liK8' \
    --limit '17' \
    --name 'csFSZf1xyHCtHWsT' \
    --offset '73' \
    --orderby 'PXjzaUCs7WC9q9u6' \
    --sortby 'ssxuJpCOYTSA0avO' \
    --subtype 'D4KpFKNjjSaoPbnG' \
    --tags '["OMZ4lvxMsxrzJNav", "JaqP2dFTIj3U63sg", "yrUpaahrPIuWOiYj"]' \
    --type 'cvc63R2tpfxUTdaA' \
    --userId 'rYCAWimy4OIeTUpi' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'hD8wDZTtZ80ZTNJk' \
    --contentId 'm4n1z9NDZ25wGlzP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["iFkN1Fy4rDUFGYVn", "JBdrvADgfxB9kYyZ", "UQjyxDeqgCzu56vD"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '8AzGZ9gsundz9Nue' \
    --ishidden 'iepPKFdQtGaUM05J' \
    --isofficial 'bS8w21LtCpsZ9rE7' \
    --limit '23' \
    --name 'xgQiJ3jL8oWkII2N' \
    --offset '21' \
    --orderby 'GaKpeVE2eEKJRyzm' \
    --sortby 'Y2hvhnjlkeRjjcNZ' \
    --subtype 'J2CZRmGVtisx2xTK' \
    --tags '["1c9zOVNL8K0zENRY", "CcXfEvaojvXARdEy", "RhbNZNp0zapmXJ07"]' \
    --type 'AU2db8xUlv9jsYLh' \
    --userId 'hB515aN9XTuSL7dp' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["fG1ZSAAJ81kHiS5i", "EQxQIbhdnHVKOye6", "Be30s2hdAcLMq7VW"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '7AldPLCTzYUs5lRv' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'rZaPepl9anh1xwt7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '0gIzXageCD1PGhGF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'eJ8zE8th0SAp4kPJ' \
    --namespace $AB_NAMESPACE \
    --versionId '5rfplSbA4u3GFalf' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '7kOMjhZdFthEY6qT' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "5skbR4h8FPqcU3Ct", "screenshotId": "UwitIfHocaSWEj8E"}, {"description": "pPlS0UckGmZqQLO5", "screenshotId": "TXRTb9yGF8sds7hr"}, {"description": "L1T5CRjEnumrtEwi", "screenshotId": "ky9xuaTHmTngL6UR"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'zxYcRtwrxJLzQmKP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Wo2CLQgGC6zwhEgZ", "description": "NfaUdNgZdQv2A86a", "fileExtension": "jpeg"}, {"contentType": "Wso9PfCEhlGBXT5Y", "description": "3qRGDP4D7IyZixjV", "fileExtension": "jfif"}, {"contentType": "QzM4xY1ByawtO0NP", "description": "ccjQotNG1V5itEBU", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'u7YkSNwNWC4Qj51P' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'BWI7hrvZPM1UljlN' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'jgHNwNqipgJQL1Yk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["JlHfX7kF17LAJtN4", "SWnOLupGfSrXPhew", "YNY3kiMG8Jrzal7D"], "name": "N5EBGO7KwE3AMb7f"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '7nhcXW5ykbxrftrs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '06ymzliSuPKf4YE4' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["WzYOrNrO23TaFn01", "SIW1t5Q00UxhxAw1", "oSuDfpcHyawqTKfv"], "name": "wMhcmmMh48FPgrfZ"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'WtmRgJA7KjYspZOW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'zDD4uBCHip8Blj3X' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "B1foFl5mJnsmqjId"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'dNfWjqNYsnSuyeGF' \
    --body '{"tag": "4QHCCvKLiVnE3jr0"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'qCK0ZrRJCKFFO77s' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["0cDriok0kcuQwsed", "RTDTV3FtE4bWI76t", "rz7BWZhYY9y7cy5S"], "type": "sc1Ltj6Cl63Xma9W"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'pWPY9KZ11S4M5Siw' \
    --body '{"subtype": ["E2cLIPX7iXi2cdc4", "6njRn8rguMW7BDMx", "jZ2Gx91T3EtKohjt"], "type": "HNKP4fVhbcBHQe93"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '5qQ9VHtmqgQ9dPPM' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'K1yXtH5HOljKPqlU' \
    --limit '31' \
    --name '50zJ9QXoHheJIOR5' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '67sopuwEyHWTRGWo' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'S9CnrBqGEzNrJgWR' \
    --namespace $AB_NAMESPACE \
    --userId 'MBRAa5EJHygbvjiK' \
    --body '{"name": "AegQRSSYVKdmDibD"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'YFmz8n9nKTuwBamU' \
    --namespace $AB_NAMESPACE \
    --userId 'ztNN7SMyu02cvfpg' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'qbXmyW3CY27yB7Pq' \
    --namespace $AB_NAMESPACE \
    --shareCode 'k5G6EEZaJ4vqdZ8H' \
    --userId 'gcHUaqX4FpiRWW8g' \
    --body '{"contentType": "0VmQBZLpV89vmMUf", "customAttributes": {"RXkhgVZrerdOpGdA": {}, "rRaOIOuqlnq9AgNA": {}, "HXBUDOGGpFGWG51b": {}}, "fileExtension": "WOWrkZev0h4ft9aw", "name": "3VzWzsF0S3hgKTZg", "payload": "Td9GxDLgEVHiDyVb", "preview": "o8mvx3jdFL2Kgi2j", "previewMetadata": {"previewContentType": "hi7WI1uWl0QHMgKM", "previewFileExtension": "Ugna7tgr8QI4j6hN"}, "shareCode": "aE1erTfUv5uEWmqF", "subType": "oo2R4KzC7S4viENY", "tags": ["xyjvOoAKrNQI4oki", "HGCHYFHlebJGBc8q", "FFLZMJdcFfl31ntr"], "type": "qcZN8oww0guLrqYo", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'NU0tQvoUuUnA6bdI' \
    --contentId 'aWxAubjrxO7uOb0s' \
    --namespace $AB_NAMESPACE \
    --userId 'a4XtZEtrDvbCwzMc' \
    --body '{"contentType": "M2obKI9ULFS5pQXW", "customAttributes": {"LgeB1lHQi5Z3sS2B": {}, "AsmDboNSNr4twCl3": {}, "hNWw0ISbQUEWkgt6": {}}, "fileExtension": "W5zP2EuScwHVoslo", "name": "j078TUBLQC1H24PX", "payload": "lEshfEtkyoUD1c6d", "preview": "JR9yrJrMFYUORzf2", "previewMetadata": {"previewContentType": "tT9VSmS7sc5V87gC", "previewFileExtension": "M3W84UJzb9pfb4xN"}, "shareCode": "ZIR9nR0xLQVUTsKo", "subType": "1ql6pKG92Xugdga1", "tags": ["C9ZCWoFLFUOHZpAO", "vCHLQ3cipY3pW1Lo", "PvJD39ZCqzyNZ3kA"], "type": "b3NyUjAdShdTgmnH", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'lCj4hIbO4UPEoDTB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CeUcxq44TYf6ttLK' \
    --userId 'hVvHtBP5hATNOGr3' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'DX3Wbub8yTFRnK05' \
    --contentId 'kvgpOT6G2pZgYnix' \
    --namespace $AB_NAMESPACE \
    --userId '8kI0prhd2d4rSiBt' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'KHuECsTzhDog3fFV' \
    --limit '40' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '5X8FtiPdKyDYQVLz' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Ugzo1Y8hLp6jooTM' \
    --namespace $AB_NAMESPACE \
    --userId 'dElYNKk6CXrd719q' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '5MDAwGLcxEZmucVh' \
    --limit '16' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Y6CCj4aOLGbrEXSu' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '72ajAUUHtmf0cbbH' \
    --namespace $AB_NAMESPACE \
    --userId 'JQ21mQ7mCdEhAc80' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'tT1MxplhCcgUwDCx' \
    --namespace $AB_NAMESPACE \
    --userId 'qrUUVKq2s5NugmvZ' \
    --body '{"contents": ["3LXPn9iCFXwAwbce", "0Tpr1WOW0hXhZMik", "AB3RgxHstGkuF7zE"], "name": "xADMwfjkj7tp6ASI"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Liv8ewjL0QFczxt1' \
    --namespace $AB_NAMESPACE \
    --userId 'go0p9oxlQjBpDt2N' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'GVrzFzkOaTmYkQfe' \
    --namespace $AB_NAMESPACE \
    --userId 'Yx2DhlvN8H4FSMMP' \
    --limit '66' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'QqCEHk663lUYvetR' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'iuQpTTREZ5F60PLJ' \
    --namespace $AB_NAMESPACE \
    --creator 'yN9OFPU7z8xhlvRT' \
    --ishidden 'S6BSer62VluYohEU' \
    --isofficial 'WowL0E8OvBgALuxM' \
    --limit '74' \
    --name 'eewzIoajBAbJEU1L' \
    --offset '16' \
    --orderby 'ZloWlesx1Os2WNoK' \
    --sortby 'YVqUKIyhp99Na26P' \
    --subtype 'HIcMguS0Kavi7sLx' \
    --tags '["XCZD7o74OzbLDH0G", "Y3fwbOpquG9ycbhT", "mLXfnUlP7juJO3fn"]' \
    --type 'sODgyYmPtZPoBot5' \
    --userId 'JMZbERLyPiymf1Jg' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'NLtEPM5s0csYFSX1' \
    --ishidden 'HoWfSF6SpINbVQrz' \
    --isofficial '4q9x7Iv76UrUWxVd' \
    --limit '22' \
    --name 'XBqY6ASVcNaYnq10' \
    --offset '82' \
    --orderby 'mL15p07Qehjkxd6B' \
    --sortby 'fKo33TV4dG8EZHax' \
    --subtype 'lppXhoiy7EzeB40m' \
    --tags '["dkVSPJqje9YgngwK", "obaFeqyW0sjwfdBJ", "8lrNROO8ipzBKNr8"]' \
    --type '7sLgJ9jk5HL4nBo5' \
    --userId '9bg3lCLVlxRk34eX' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["uzyGndZcwGmK3tAP", "gooJxH4PJw85KmyJ", "Jib2ZMvwd27YQEa6"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '74' \
    --name 'CQ98WOqdfnR4rlsx' \
    --offset '8' \
    --orderby 'yks67Tn7kbIvC4RC' \
    --sortby '7KGF6il015O3C8z4' \
    --subtype 'EtGVHc1tRNKezyid' \
    --tags '["ErVNzamA8MCZMJob", "hSHTCq2zKE17MVsP", "3CSAnDxdEFpqQxcP"]' \
    --type 'fXP4pKUevbUErfxH' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["U029mXpfgSRKiaN3", "QCnxP5a7A8FTIsdm", "Av2pa8kdnian6Lzz"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ArS63BhhDmZMXH8x' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ikzeEw2oIidK3SVO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '5xHAtDbsRUj2gmjd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'TaDiqpRPU2hPrILy' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Uf8UPrHpYPMaJd72' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '15' \
    --orderby 'fG8Kz9RoV8MkkDn4' \
    --sortby 'nQgnDZeOm8WWR7wE' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'KJoVfO9L3088jNQY' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '3rCBXdboSYUisjMe' \
    --limit '27' \
    --name '8ZdvXPJNGNeA0QF7' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '9Y85Z284ZlYyaK1e' \
    --body '{"name": "qJDMNsPgGJ1D9bJD"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'R8jVAGlXQyKgLNoV' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'ssK5JkdJpVzUTlPO' \
    --namespace $AB_NAMESPACE \
    --userId 'R20vEpDkhRhstOLf' \
    --body '{"name": "sH5g5B6pjuWTZJj3"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Jz1EtfR0ZVyfdK3M' \
    --namespace $AB_NAMESPACE \
    --userId 'PrrcbP9crLvh9xAU' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'uqPTIUGv6kmxnxUH' \
    --namespace $AB_NAMESPACE \
    --userId '6punbmyIE6DN4He4' \
    --body '{"contentType": "FrCqjpSSAAG4H79L", "customAttributes": {"SZTNFAvIGz4ZnVKA": {}, "fcj7WdPxI0deq0I8": {}, "ZmY5XHOdLX7CY2qn": {}}, "fileExtension": "foycapnBULMorE1I", "name": "MkAlMRiKXCw9XjIi", "preview": "Jq5YP5DqELHS6FQL", "previewMetadata": {"previewContentType": "AU4AZnLyLe2xCsRL", "previewFileExtension": "L8GFPAUOx51NCEsv"}, "subType": "h4oPFXrDzLhl506c", "tags": ["8OmCosKjmTxyKmx6", "9UyT7tNatKOIayOM", "LWfCa6uA6bcB8SjN"], "type": "10sjzdSUVbsO19wr"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'Hbq8MkuU9hjotun3' \
    --namespace $AB_NAMESPACE \
    --shareCode '3g7WyNOKAGis5PZd' \
    --userId 'Kl8I1GTWqUVrkRZ8' \
    --body '{"contentType": "8rKY4lz3s7oFPBPA", "customAttributes": {"KvKB71aC5GRh9NI8": {}, "4Op7zvlKThzFmeag": {}, "DNZZC1aid60s9iv9": {}}, "fileExtension": "AjTxO6kcqgyE4pBT", "name": "Oe6SGBMpKnRf9ytx", "payload": "uScKFFhtO4po7F8F", "preview": "DF9rBXrse0cfa4XW", "previewMetadata": {"previewContentType": "gSaLmBQ767hVxByb", "previewFileExtension": "mDl1T9A0TDqOqoOh"}, "subType": "jeG8Dmax51OQtxz9", "tags": ["vLaH2uEXREi5I7ck", "oeNzqqdXg7l8eZxd", "v3A3168VumB6tsbm"], "type": "YeNVx1GhoTgeWRKm", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'eopLEFT9QaAQx3O7' \
    --contentId '5ufCEApbLgWH2Yr0' \
    --namespace $AB_NAMESPACE \
    --userId 'UF8GFwwdjILOdm6p' \
    --body '{"contentType": "H77rfxpf1qk09jfx", "customAttributes": {"pNGkqUqJjMrMr7BJ": {}, "sLDa33jg0kRGHaUk": {}, "rzQ6iyikBk5iQ4nU": {}}, "fileExtension": "9kiMqksCnOu5EvQE", "name": "FzZTyndzOxQsJCXw", "payload": "j8Pakut0oMIIRfc3", "preview": "mMSptTEDyrZgXBFN", "previewMetadata": {"previewContentType": "g2G59khTjJW5WAp6", "previewFileExtension": "RcnD3kL3gOqRP5FE"}, "subType": "w4g8LH1knJwWqv8y", "tags": ["gyxUGRzg2Pirnft0", "7mwooTXWDivClfQP", "GAHaAFhPuKUgoxwp"], "type": "AYNNvcV8lo23wb6B", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'HVQ7UoJsth2o2woc' \
    --namespace $AB_NAMESPACE \
    --shareCode 'l0LgiXOJ6QaEtMLR' \
    --userId 'HCpqaXx1LTDPa9ri' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '8kqfIeOxM7LwkAQY' \
    --contentId 'glo5JNY3dzT8N0Zj' \
    --namespace $AB_NAMESPACE \
    --userId 'oe69eAspaxgGLY5t' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'r4LE8L5DxBpNBB25' \
    --contentId 'lOBRptLoX03VUPzC' \
    --namespace $AB_NAMESPACE \
    --userId 'IlcWtzkr3pPgUhdv' \
    --body '{"shareCode": "AETEjwqnhk5ULurN"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'wUQzZU3tZdhFBuBO' \
    --limit '84' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'gw78GP65Y4XRQPAm' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'LSDzXdMCEcdebUUj' \
    --namespace $AB_NAMESPACE \
    --userId 'k9v9Cgfj8tUW1uwm' \
    --body '{"screenshots": [{"description": "vIsltKdnyYK8ZOFN", "screenshotId": "x2QuC5dc9Jh4FoaB"}, {"description": "24jPecLU0WM0shkd", "screenshotId": "pudXCkEt103wikaf"}, {"description": "g8QgIslFKkMukDM2", "screenshotId": "vKAlL0d7Iwi8aPJC"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'ih70hGa9RKNHOBjX' \
    --namespace $AB_NAMESPACE \
    --userId 'b6IBjtgGCkAYSkqh' \
    --body '{"screenshots": [{"contentType": "3JDR0SKGxfDwm0tT", "description": "Fmv66bZUp6mG2Wxt", "fileExtension": "png"}, {"contentType": "W8dfwrHHrms89rOu", "description": "BC5Bs75mRzJaT3KK", "fileExtension": "jfif"}, {"contentType": "l1Zlk7fslBEk3WKZ", "description": "LhYpq0TVlmWFkq6J", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '7f6S7572l0j680Fx' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VMbmJnauHY07M8MZ' \
    --userId 'ZQFXXQxx38Z6sGvx' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'hj2Pg5neV0ys0786' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'bQh2YYO03fzGF81Q' \
    --limit '87' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '0fA3eXJC5n1oyZNh' \
    --limit '26' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'bHqRwC2t3WnROfSh' \
    --limit '100' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'v0Wj1f0w53IkX2mC' \
    --body '{"contents": ["KqdPdlefhtAuB2f4", "b7vfI6hcKEPtEu7I", "AXytSio7B8ib6lag"], "name": "9nMzwoVeeGB6v4bN"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'GZtzK8qQbVeBXQHO' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '29zbxZVQB8qUTOwg' \
    --namespace $AB_NAMESPACE \
    --userId 'VLIb0J83tTF15diK' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'Bcyi2BZLrPuOVKAX' \
    --namespace $AB_NAMESPACE \
    --userId '1CZ2iTcd56ovgvw5' \
    --body '{"contents": ["t99zmmlrcF9HYySO", "NMxMcZRcVFTUwca8", "u5mftU7vnEPNH0C9"], "name": "NzPjNkddPxfNFtzR"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 't6kFEtYaYBdTMPUD' \
    --namespace $AB_NAMESPACE \
    --userId 'uK3iDvLbqpZAstFn' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'b25YcYKhmBeBQxDR' \
    --namespace $AB_NAMESPACE \
    --userId 'gyK7GH4Ydr1cg9wt' \
    --limit '90' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'hEDywkVHDDhda35D' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'IZcG0URfALQX9lre' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --name 'ixL7FjVk000EgYr9' \
    --offset '6' \
    --sortBy 'rhtOM0GrsgqNoISh' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'Hin1ghGPAiTdjRyY' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "cUDoPETm312kgQlM", "customAttributes": {"WpVGH7KbuHmTrarM": {}, "pYJODrZLpvu3RAPU": {}, "UG1LoXqx8erV4ECg": {}}, "fileExtension": "0C0OTJL614ElyMYi", "name": "W0n6YBEyFScgkUHi", "shareCode": "l3kkqKozlPzZXVGs", "subType": "kSMFkRF5Py5udIGD", "tags": ["HEFGIee9i4rJ9akK", "4iB9zYYZYINO1aVn", "ZCmFkeoyYjVp5Zkr"], "type": "xUV6syH7ovhXEByu"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'X4VhM6xBZyGsahO6' \
    --contentId 'BP1z3WwWGwBFxssA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'eL4owFPrLH7LFBiF' \
    --contentId 'BVw9OVOYKDIZrSmH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Ic5tjlRKtu5yTRbg": {}, "xmIJM1Mo4mGRkEHh": {}, "3TYNf559a3XCZ1uI": {}}, "name": "lEYZTjfoTs4FpiBC", "shareCode": "4HJOTtSmODLoCrbj", "subType": "3taqJOxifZ6YgggN", "tags": ["3kPNs5oGGnpG9r6L", "02cnz6GUxPqxjW2I", "fUMh7LVFl5DsYGOe"], "type": "aouQDPv0UPXkJecN"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'rjRAxCqw7Hkceorm' \
    --contentId 'oguvhNyBtPbyYqPv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LWTiI2c0GAVXkHea": {}, "ckQ2bCPo92rHBS08": {}, "2wS8wyoqolDoJGZO": {}}, "name": "5TTEf5YbjE5fj4W0", "subType": "ji7GeBXzWPWvjW60", "tags": ["3QjP5l7OMQItZbna", "049g4k3BQz9VBgJY", "pgrbBdSND0cDUrec"], "targetChannelId": "dsAWV5Azh8Dxu3W4", "type": "yjvxHBidbvsFxZdE"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'Me258xn2893t16e3' \
    --contentId '2lxPkxY4lYFGfNzB' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "J3UyMR6sKbYqW3xo", "fileLocation": "kuZE1ocVXeAOZRFG"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'idh4TAgwI3UCeQ1D' \
    --contentId 'XtPHf2p1g00s1L0T' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bXdtEKQxkHZDIxdj", "fileExtension": "0ehj87e9Nnvk9Lr9"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'QFfAYT76Jmh4UTg7' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "W5e99goA5Xu4gLbk"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '60' \
    --name 'AVpAOprAQsucAfZP' \
    --offset '35' \
    --sortBy '8wFPPvRyHdG60zV3' \
    --subType 'ecs9a8JlSPKtZZsP' \
    --tags '["d1RvXXFd0mFlXgIr", "P7sOLHQV9wTNhzYr", "0nAeUWtpn27c8tDv"]' \
    --type 'zACJRJPXtMKZHize' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["si1id0ga9GERfbNg", "caB0V5taVsp5TkMX", "qzSPvg5UwYhnBOB2"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["qKoamel30PfTKFkJ", "jMlWCYD5dIFVrX20", "7jY8AgK6mmC8Xu6I"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'LGPFuF34IkhFiJr8' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'pFo2ca7tHNOBgHBW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'hybzU6hmX54g6whE' \
    --namespace $AB_NAMESPACE \
    --versionId 'GTNiheIswjE6p4B9' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'O2CnTM1QY4pMda2X' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "whCJ5YflKJHfsOxb", "screenshotId": "TFHr4fA7DNxMA4dZ"}, {"description": "FGjkBWiRmqgUVYm8", "screenshotId": "gwBCFXg5DaKSesNp"}, {"description": "qOH7GrxjuzQbLXn7", "screenshotId": "3Wy2AM0c4Hm5TmKe"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'EfzVJYA9fzgie6zN' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "OOG9bAFioxIZu9bv", "description": "h67GPtKlOjyB9clA", "fileExtension": "bmp"}, {"contentType": "ZoqkVCh3Gqg49kzC", "description": "v2a9T6JTWcuYj920", "fileExtension": "png"}, {"contentType": "HW4jdt4RsLEtdkfz", "description": "9O8hNPKeJrT8kw7c", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'YdBPi4x4OnLvvorp' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6iLzCvdeXnTTNYU6' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'X2g0qIdiPmD8C5Az' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '5HewaR8cgSs5hbmX' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '83' \
    --sortBy 'ZWC2b4k0WX5Hq11d' \
    --status 'FQdDpgLO1Ru7bg2d' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'rhSEfbHyqsYVJvEV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'nkWm5hCEdiXcD9Hm' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "D5u47n0w9R6319W4"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '3DilALbC82rUX9lO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ss1P3rDEoSjToZrw' \
    --userId 'wYESvV31xjbsQuG8' \
    --body '{"customAttributes": {"X3VIbUOtoTcsBfmM": {}, "7YDEoW1TqquWzy0P": {}, "FfrkrNLQtuKbJiHu": {}}, "name": "ZvaXw1y02O0JkCuX", "shareCode": "I5SdyGsh3PfUBli9", "subType": "ni2TcYD4owZjwtRw", "tags": ["yQNCiR2iBygtd1Pd", "TKdFDe9RKRedAAVo", "z4DjdmiRkMBujqEa"], "type": "5Z19FxUjVA6JJ2So"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'zgqb4oWJ6b3ntE6x' \
    --namespace $AB_NAMESPACE \
    --shareCode '8C5U4w35NJsozHjg' \
    --userId 'bmWIWfWShzjMAOUs' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'refxRByWdAkDUY3N' \
    --contentId 'wxaRl0e81o3luqA5' \
    --namespace $AB_NAMESPACE \
    --userId 'hLBUSDep1E94zHZr' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '4GiOYETvLawYKnLt' \
    --contentId 'dw5fYukXegI2I8ny' \
    --namespace $AB_NAMESPACE \
    --userId 'NZNeeDpK4wtvPIHJ' \
    --body '{"customAttributes": {"cirR9EI7IuIZe1BP": {}, "rSnrnydJyD8xIh5N": {}, "GFFN3tUAne3pOyXc": {}}, "name": "6nboAdFHuWWBS18T", "shareCode": "PARs2w4jIaM69wjp", "subType": "PUrBXjbgrgxBeV4b", "tags": ["ZMXqbNbTYQ06iDeo", "d2e3STzMqhb6Hr6Q", "H6OCwgQPwVhWmnuF"], "type": "4ooW7wMARUtZM5rK"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'foZJsB3Q7JL9IiSX' \
    --contentId 'Vfl6b8cYYWxMXpRN' \
    --namespace $AB_NAMESPACE \
    --userId 'gmZKWs68Op1XWfyw' \
    --body '{"fileExtension": "eHB05fEQeivTsgm1", "fileLocation": "tuBSeQXQLtWno1cp"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'qiKzhG8bYGAJwu1F' \
    --contentId 'AFuZmRNjH6TdXUok' \
    --namespace $AB_NAMESPACE \
    --userId 'dl77bj9ztV5aJTWg' \
    --body '{"contentType": "2EvRTOVVdaBuZGt4", "fileExtension": "SwLDDpwp8lP8Yifh"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'o988wpANpLjAUNBy' \
    --limit '91' \
    --offset '98' \
    --sortBy 'EJi2dG2CjPgAJcMV' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'nVNyMp6w15Xkydu5' \
    --namespace $AB_NAMESPACE \
    --userId 'un9aci92jwJYJg4M' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'C4jiymnUCfAMwObS' \
    --namespace $AB_NAMESPACE \
    --userId '2ewIbvoyNCZjhVl4' \
    --limit '88' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'w4CybGGpKKcMC5YK' \
    --limit '81' \
    --offset '71' \
    --sortBy 'pBdjRyWoS2AXr0Mw' \
    --status 'KgW6E30017D0R0Ne' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'mX04RhebQsce6R2l' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'nyZOVTQndU18ijZ8' \
    --offset '41' \
    --sortBy 'ZeFQMW6OkvLFdkv4' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '41' \
    --name 'xkqFyEME4kCyNJps' \
    --offset '31' \
    --sortBy 'qMiPPRjylhmDRSts' \
    --subType 'zLBlDo9Q0JEYfS9q' \
    --tags '["TnkDzcfpMHjP4qY7", "wzEW771f4pd72SyO", "0V30PE3gw1OBkfeG"]' \
    --type '7IIhe5gbOMOW1nCy' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["sC7BkVyceidREwLf", "9zWVVMbpYqRjPGAu", "KPeSB9RiyURyyTkl"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["uREVRgRlP1HURGXM", "XHCIAilwSOvLZp6t", "odJ6DbORLTFePzfQ"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'DLdmNOqTQoSKK8tq' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '2OTOVAmM1Pu4021h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'aUzVXOyfj7yuVD40' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'TmN8MAB25uuGr57X' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '67' \
    --sortBy 'g7iegY730pP48dWu' \
    --userId 'TxiMbnx5qH3MchrM' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'D6jt7mcPrDsFbLyV' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '12' \
    --sortBy 'OcggpYrut4p7Ncxc' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '7rJVsWnmrd3HNY2k' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'gy5rCSrpvkZJ7Wso' \
    --namespace $AB_NAMESPACE \
    --userId '3EuIzLFDyIpTm652' \
    --body '{"contentType": "AhBJvLzFWtHk6cmz", "customAttributes": {"b8jXEsjkYoEKGkQS": {}, "ruNve4mPgoDC8lVV": {}, "8khMF2xnhVOKerYX": {}}, "fileExtension": "eb41F201321X5Oy5", "name": "Cs2iJs4rDTqsMbVZ", "subType": "BaueqYk4DxuWoI69", "tags": ["8UqVlkRTShYPqKbd", "0xOG5KkZWrpgFnZQ", "7ps2clBbqQe6Ygh8"], "type": "k7Cup8VgXnmk6DXh"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'hsn7BLnMC6ajabLW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dvjmfgGX9kQyPEZQ' \
    --userId '8lqsKBJxvtmU3ZH3' \
    --body '{"customAttributes": {"GSpsZyW55nTGHgyT": {}, "vJlBBSdlcinztSe1": {}, "TjWWbVIfay5FATlO": {}}, "name": "lwZ00DTxVVbR3wDe", "subType": "Go6PpBA6VAHdeB8D", "tags": ["5nnYl15qEcKaVBWm", "UwpFaQ8DCQd9UUXb", "3VbuwHfQVsXbSAWf"], "type": "Hgo6iBiDZuMPZPDt"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'L1lLhoXKhjL9NIWx' \
    --namespace $AB_NAMESPACE \
    --shareCode '7RtrXPQg445WbwiQ' \
    --userId 'bZtzHRrI39ug0mkf' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'rZNiCWPhGlLzAM0n' \
    --contentId 'h4TN6xXEKNep7VHh' \
    --namespace $AB_NAMESPACE \
    --userId 'NiEGfjSYaLPUD1NZ' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'ariM5CfdIcs9Vpf0' \
    --contentId 'b8SetAUhYQjaKWW5' \
    --namespace $AB_NAMESPACE \
    --userId 'vMGanK2F8q0FClZh' \
    --body '{"customAttributes": {"4iw3enRUUAyZ7EpL": {}, "KN39c2489Ku4d3JQ": {}, "Denn7kJqfOCY6Qcx": {}}, "name": "UOakM6xSRRRRyVxX", "subType": "aCxEBbGhxXXXWhRf", "tags": ["nfinuMEAIvlACIeZ", "m127Gie4Z4INpvUC", "YQjl8Me9cH5S1N3D"], "type": "WIuHPyks79t95HZO"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'BBCNn5MP2zCGDurK' \
    --contentId 'dBT3SvOIbcEhBLBh' \
    --namespace $AB_NAMESPACE \
    --userId 'M7inegeqS8HO2YZV' \
    --body '{"fileExtension": "C01zieGHyzC3vMIp", "fileLocation": "zjKjss0cP4IT1ct3"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'tuwuROtVlbz2y8ay' \
    --contentId 't0F2CapBkbi73AJz' \
    --namespace $AB_NAMESPACE \
    --userId 'LAunuW4W6Tnx41x3' \
    --body '{"shareCode": "dtc6krasoPaObJmU"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'IrPynTMTNly3NB5q' \
    --contentId 'RDotsJC1ioOU4krE' \
    --namespace $AB_NAMESPACE \
    --userId 'BZleK9FHaB4obQUU' \
    --body '{"contentType": "7lTw2mXAE1Z9jFr2", "fileExtension": "7LjHTkIziJQdV3hv"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Yzle1Bcsn4S11hpY' \
    --limit '99' \
    --offset '30' \
    --sortBy 'g9FkxG1LuZWHmcIN' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '19aEr5reRo3O7K17' \
    --namespace $AB_NAMESPACE \
    --userId 'KigAm1G6Dc0IWQHk' \
    --body '{"screenshots": [{"description": "GSDwKecCm1N6yDUp", "screenshotId": "fsrtj5ZsyvPhJDXr"}, {"description": "BSgZS4nJFgw3erYW", "screenshotId": "4pf5UhjwNKsOibic"}, {"description": "rPoDsrZmIFvKBUAh", "screenshotId": "kdIiWBws9Ls8cyuP"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'dWJUldrZ4zy07vXv' \
    --namespace $AB_NAMESPACE \
    --userId 'eAYRznhjY64DfvIt' \
    --body '{"screenshots": [{"contentType": "c4rRZ9ILiIaWhPWI", "description": "JowHLrIPqblyy0qn", "fileExtension": "jfif"}, {"contentType": "DZsDbzvmcwFgGWuT", "description": "4ejsmqQMmQ0wizw6", "fileExtension": "png"}, {"contentType": "g9zZhuB0QtGzStWZ", "description": "wy95QnSGqY38aSfy", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'SceaQ4YmVOpvgIRB' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'wbc7r4kxBSrrBF6F' \
    --userId 'WmR3Ha1FCGigouPE' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'ycRH83jf2yANJX0k' \
    --namespace $AB_NAMESPACE \
    --userId 'YmJNc6kHFiQaFsL0' \
    --limit '69' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '23kNKPjQajlGrDas' \
    --limit '56' \
    --offset '11' \
    --sortBy '4mCqoqVxDsHVFBlU' \
    --status 'mhMPwii6p1rhilTA' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'Ozszh732a0TVTYGB' \
    --namespace $AB_NAMESPACE \
    --userId 'dJC8iJYXqG1Rafo2' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'E7CenigpRQWR8JSe' \
    --namespace $AB_NAMESPACE \
    --userId 'mfM18UuGSbPpw48k' \
    --body '{"fileExtension": "VQvJncvt1dwpF8P6", "fileLocation": "VxIw8XUqKGxRwO28"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'mKILr6rg6KJged0o' \
    --namespace $AB_NAMESPACE \
    --userId 'oxpDhnJxq2PWQGpq' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE