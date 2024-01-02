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
    --limit '90' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "42iCfbA1e7o6ZsT3", "name": "2gRTHRcN8tnGF9Qe"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'SNvI3GX2ckzhYtjr' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ctOPBzbaZmmXHWa8"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'NlJXwW3ceDOkBSdd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'gbRajTTrcgsQolgB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZP79XBJQd5zsVDfJ", "customAttributes": {"doH37yGdsd9IhUMh": {}, "5Aect4rwoHBFtuNq": {}, "YGruFpnILFvVjz3z": {}}, "fileExtension": "pLg3WMWwGJZnl1m1", "name": "C3SPYe6MKW99WnNY", "preview": "VG0wgswPoS5sfG5z", "previewMetadata": {"previewContentType": "Vqy0y4gyfWVZP3I1", "previewFileExtension": "IpF5YAECxD7OgqSb"}, "shareCode": "Ch77N6P8F5hK47Q4", "subType": "Ijx5ZKFRC3Gpqcft", "tags": ["jlITwhrx1JqUAbmT", "2BYpKHHu5PCR196N", "6qfdBIUYLaW1Z3W1"], "type": "SWlJP2HZzxLrlOa9"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'JuOY00BHUkxwEXDi' \
    --contentId '51oQmxcfc2YvXjJB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "n4NHyamhUpBzL9QZ", "customAttributes": {"7oyYBzVkcLhmbSL0": {}, "sRqy6RChDZc1pbIs": {}, "SydAfsms7vLczU3b": {}}, "fileExtension": "uxQ1cCwX4jWY2PB1", "name": "lkirRXWenHu7dFe9", "payload": "O4vESkuzcuBsISkP", "preview": "J2IETyz3s8bWBV1E", "previewMetadata": {"previewContentType": "Ndzz3g4PUYveUHNc", "previewFileExtension": "rKAGZARHTZlOKMPq"}, "shareCode": "iKLpjWszCJoKwIAK", "subType": "CSbLtRoNjVakTGqO", "tags": ["JHyeGpdB9aGsQ1gy", "Vrj7ipdGO6akPZ31", "swrjl2iWeCM1JVzZ"], "type": "CwddfOqAjVsvFDkm", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'pQ3bM5GqCyYIUIIe' \
    --namespace $AB_NAMESPACE \
    --creator 'GmAAkpEHVW377cOi' \
    --ishidden 'UhFssuzzq5KNR4JT' \
    --isofficial 'qakpn2SMDcC2WkkR' \
    --limit '3' \
    --name 'JcGjMPurQ0QnAnx8' \
    --offset '20' \
    --orderby 'Qne3FG3tD9BXY9bH' \
    --sortby '4PCIexrw4IiguwBv' \
    --subtype 'FIq7wlBRgnSpa88L' \
    --tags '["3z9SL2zBscVBHhBW", "jIjOxzDcL3nOBiMA", "5zpZLjjF9VlWbHrl"]' \
    --type 'bQkOM643OzsZssMc' \
    --userId 'wJlMPe6FfKMa24Pf' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '3p9dresl2fpnttre' \
    --contentId 'R6dtWYfc08naCxjT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["EXlkqmHPvbisnZmQ", "XDJx046f0iGFtbYu", "OBOPl8EVdu4OgLWo"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'SH6L0VskaC8r0GIt' \
    --ishidden 'tGp51yOYP9gSyTsz' \
    --isofficial 'wsV4VZwzO8xI0NC4' \
    --limit '42' \
    --name 'zmGAVOiSqnFE3an8' \
    --offset '88' \
    --orderby 'Fuq3pFfioj2za07b' \
    --sortby 'eAciJpyChZc0yZBW' \
    --subtype 'Htms5PbQo3rUkHkE' \
    --tags '["g6USS08vTv5Eb90c", "Hw7NNH81E2ZZUC7h", "JHIemMHITb6nweTU"]' \
    --type '0cY0opzL81a97epB' \
    --userId 'uRHKRvhn0pXp51AI' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["abqXS4Fa8qmGOkP3", "zwi6wPoUJ6XqOO8H", "LnSEwXUVHT9r9Qts"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Q8HQcJZai9QUqrTS' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '3pDY7axpY0aUjEiL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'IqPEpBXm2nWJUOvW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'aZV5psQuk1zt5hNM' \
    --namespace $AB_NAMESPACE \
    --versionId 'p40wj7DDQ2MqOcmO' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '0RDIm069KKGFC3wR' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "H91LkGZRpFaR5Jgv", "screenshotId": "FASiISesxmNfvhcK"}, {"description": "UAzEFjrCsm6fhnYY", "screenshotId": "9DDrB0EZC4GJwNIh"}, {"description": "KqhDR3TWPY01a0MG", "screenshotId": "guoo3chjqF4k7oR3"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'PQAgQ4koPMGs4Kad' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZAEpniWTa29jMmlx", "description": "6KEanKvD96n4onjo", "fileExtension": "png"}, {"contentType": "ASUJqTuhjnYdGvjx", "description": "DQXG7BTnJwj15MJ0", "fileExtension": "bmp"}, {"contentType": "UM1G08SJQSzqyMoa", "description": "Wx05wmv0UQ7prTYU", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'VWISFj54fJRxcWGt' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'qsOd2jVsfjSa5hcB' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '0k9L95JbxIuNxND2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["vasxRBuzYXGGJiOP", "1TcI0Q0AGDMX1wHV", "9s2dylFjo8lElkOP"], "name": "3i6ip9RrfF0MX3DA"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'pJ53cZfsdjvKnYlt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'F2G5vGmjrab8dQuK' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["5n1Yez90Ie8yhzVD", "9SVGzmm0HkZ0HMUM", "dmOyhbSGdb7gGfjZ"], "name": "uXn8isQz8IdP2DTj"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'fKeqXF8wTa4DClla' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'GW8NvD5U1cUqgDi2' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "RVsuvBFDi4dZMH4w"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '3WtwfGEKMr2ZDRj0' \
    --body '{"tag": "OWfFfYyPSMUMHKvR"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '6mu49Qnd7OL2chVD' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["IPFF3mA0vguomRVB", "ANUVDvg1uIqqbm1M", "aNWLC3V3JMyIBc3h"], "type": "5uX4JevTbDLYtdJY"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'hJYkDNV5q6GiFgLp' \
    --body '{"subtype": ["Bj5hOd0IinfrWoeG", "zFC2zUJ5pKakurPZ", "QgeTBk6st6o9G2HO"], "type": "UXXIVH0Msres9Otu"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'cQZVCfB8LnbIwl3n' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ZhRxRb74S5o1qIOI' \
    --limit '9' \
    --name 'o07eoIkioHMEKXdv' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'PWIkRRUDsxd4dZtd' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'v0UekNr8XOfFORkd' \
    --namespace $AB_NAMESPACE \
    --userId 'KhR1GAuS5TyshRmc' \
    --body '{"name": "XjGt3G1qdORYtogS"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'T4uMSx6vRNSslMXw' \
    --namespace $AB_NAMESPACE \
    --userId '7lX1kzkfg6mYKoTN' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'HIBEzlZ2blDmT3kj' \
    --namespace $AB_NAMESPACE \
    --shareCode 'alixTRY6lPa1hzSy' \
    --userId 'MjgrT45OQLNcetwm' \
    --body '{"contentType": "8DDChabBOVYsB0fQ", "customAttributes": {"bgUn3aHUsqkFxFRl": {}, "k9Xb2XdzoPHBakmi": {}, "OlN3NfTLl4s7wWBO": {}}, "fileExtension": "ODZkoMpxJEuFPDTt", "name": "8BueKzpmpmtBuGz6", "payload": "zTBJRj0daqfhZv5v", "preview": "O5XFE7HC8lMVJZPX", "previewMetadata": {"previewContentType": "1DktL1hEfeg0MJpF", "previewFileExtension": "U9cafXvUGIVP9nx4"}, "shareCode": "DDNLME5ncGgo0Jhz", "subType": "LDgL2E6xdNDh6fRZ", "tags": ["bU4HszHNsuKM95iy", "oXaGefAwzOwpSlrh", "c8YexJuE31PqYuaQ"], "type": "OR5rma6gj3lujWdF", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'gd2azORsi1ZLZSFa' \
    --contentId 'HiQbqWgM5rCgp4DY' \
    --namespace $AB_NAMESPACE \
    --userId 'YiBh3mWT80gZlzBt' \
    --body '{"contentType": "HdzGubXmTDLSpjrR", "customAttributes": {"hFU0yugvfsRLwWjf": {}, "ZWge9ui2w3baySyC": {}, "nbeE9nR5k4vU7bIt": {}}, "fileExtension": "B30HyswmjmM9kc1r", "name": "Q9NdzQwgDIMgbhGn", "payload": "V6Wm1png1aoy3Ar9", "preview": "lXuTArBMDnOzBU9S", "previewMetadata": {"previewContentType": "4UT3aA8AmtCRC8sC", "previewFileExtension": "fBXXu0mNX4VuOr3z"}, "shareCode": "brepqn44AtiLnVrm", "subType": "X13QzLupj5r8bBfZ", "tags": ["hIwnd03AYhNV5apV", "yk8xx6AnfkIBaMvR", "Dp4AjwYqCsOkstsl"], "type": "OvC4t42UGbt5ZiAW", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'gVOTV6waYXmxjdIM' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mRdGAzXwAZBX0DzW' \
    --userId 'Ebou2k7bwJarCrZX' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'j8SSbTJ9B6aJglmK' \
    --contentId '3whdXRoqHvRDoO8V' \
    --namespace $AB_NAMESPACE \
    --userId '6LPGFnWutnTiBJxY' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'iilPCS73xYOXC6Z6' \
    --limit '10' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'FJjqaJ9A4IKUUKUi' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'rylqz3azeCI2894L' \
    --namespace $AB_NAMESPACE \
    --userId 'YVHhtNthgV6t0pB9' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'OGhJ9HvwrssQYCVj' \
    --limit '67' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '61Tt1Xib0SsjTrPE' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'OFJPvzzeOgE99TU6' \
    --namespace $AB_NAMESPACE \
    --userId 'wrvdNkNAFEPben7P' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '0KEeQKV1HmaWgCEp' \
    --namespace $AB_NAMESPACE \
    --userId 'luYrWsm1Uzla4Hu4' \
    --body '{"contents": ["rpsP1PMEgZ6Jsg0U", "OidBYplXUnKCPEt5", "Nmq3H0jr2YU6qPEi"], "name": "WlXoFZaGV1WuloXM"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'q52usq35s2Sm0zIO' \
    --namespace $AB_NAMESPACE \
    --userId 'focfDTnPpmNtptnC' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'RdjXglQaaDWYV75o' \
    --namespace $AB_NAMESPACE \
    --userId 'PTnDQbiF0sku5z5S' \
    --limit '19' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'A7s5vMJAic4Motsb' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'htq6XGIZbwmYKj9g' \
    --namespace $AB_NAMESPACE \
    --creator 'qLGssu7bDHEh2p1F' \
    --ishidden 'wR0Af9Db6Wmsz9dH' \
    --isofficial 'OVH2O0kBX0lrGpQX' \
    --limit '9' \
    --name 'uUBU1o0RgXZD5GNz' \
    --offset '64' \
    --orderby 'Q7qQcPrMjsUx5Vat' \
    --sortby 'XYH5KXxGDMecqSap' \
    --subtype 'Ej4zdZzW0ju33e7g' \
    --tags '["d5M8kEEQSRTUGFrJ", "ALRUkJGx9zaW6Y7E", "De1rtdoeSn1NY9oE"]' \
    --type 'VY2W84NiZk474sd7' \
    --userId 'cbAy4bAEAww4E33t' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'G0wV3OjAIVHyKtKw' \
    --ishidden 'sTGQOROjTi4k6glT' \
    --isofficial '9qENRSTmC11SdfJP' \
    --limit '35' \
    --name 'bniDyRRE5Whrav1k' \
    --offset '30' \
    --orderby 'mqN72X2U57tl1OfQ' \
    --sortby 'w5EsVP3KWD981XFt' \
    --subtype 'CkENsWafXNy6ugsn' \
    --tags '["mHZXWxVMdOR0FQHT", "dc4DIDOlocBj8KUZ", "cZrFfBgstHkGYksO"]' \
    --type '55vTOqtM5Ju9IwKx' \
    --userId 'u2xqbOyp0TUMr8MD' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["wmviCff38fAHLIeu", "QdmRADJsYDjUHkLZ", "G26P70MTbAEMcgxs"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '69' \
    --name 'ZcYlZcL6azwe6Hcr' \
    --offset '29' \
    --orderby 'FXUBLVR5vhCTLq1D' \
    --sortby 'ZVxhEjT3Zvb95C1b' \
    --subtype 'JjkMJHmICbi38mwx' \
    --tags '["4HXHbnEwcFNhJFwI", "MswUGe0td7z47R1A", "x0BNQf6HggqXMK5a"]' \
    --type 'X3UBLF3cRDFeMYli' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["oxlAJzViNbM4lFdD", "OMdmgrJfQZHNQW2j", "vTf9UDe36JB1OrPM"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'TI0nXCvwAkPnMfRH' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'r3B6rKI2K49GtLye' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'Wcy7pEhNeY5D3Okr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'yA3SPMiyFe1dORcd' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'x2mgeIlzrtDPEeYv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '38' \
    --orderby 'NPRHq0Dqb3Mfnvgf' \
    --sortby 'WYEd2sarhootct6h' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'JaXT8AVf8iky2C5l' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'ke6F2L6x1UqUjoOK' \
    --limit '66' \
    --name 'CUjcQC90dhqIlZCH' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'UgSLaad6Z38jHR9Y' \
    --body '{"name": "guPJj9slS7I2E8UP"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '1icew7PlSyU4R2BG' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'CrOBzUl6RHaB4nQk' \
    --namespace $AB_NAMESPACE \
    --userId '9Cjky4AVOdGupAeO' \
    --body '{"name": "I5nVZ9dGyAoM4KCG"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'AHp9Q31gMkMOFrFW' \
    --namespace $AB_NAMESPACE \
    --userId 'tlZeiB7iy12bkYkA' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'REGmSgB7jJjJeMu5' \
    --namespace $AB_NAMESPACE \
    --userId 'wOXsuJLjjkq73zsT' \
    --body '{"contentType": "g25n19TpEErLDIw2", "customAttributes": {"keWXTTplspad98VH": {}, "JNjx5q4Y1ycQwKQe": {}, "9L60CCc0PDP5cb1m": {}}, "fileExtension": "pJ7MtNYeJ1Tfd6xD", "name": "mFvCLomiNs6OtnA2", "preview": "dqTcSY4LYohuQcf8", "previewMetadata": {"previewContentType": "7xCT7Jcyw4TrK04V", "previewFileExtension": "rnEZe5VSlLr2jrCa"}, "subType": "2n96jOYYcWKv8Umh", "tags": ["GRAicxUCpMkYiFMj", "hWzlZyICfn0s9u14", "ua0tLyFnnJVbhNjN"], "type": "LNAvI22KAOG0Jdvv"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'CZ5HpvJ29JHL8J9k' \
    --namespace $AB_NAMESPACE \
    --shareCode 'J3fgpcAU9rEPHSsM' \
    --userId 'jkSOYs8SD0QLDdaJ' \
    --body '{"contentType": "5gyWvSn1TUtSwPSh", "customAttributes": {"nyoONnAU1GZ68anR": {}, "qjKAaZvMPiCvBRV2": {}, "ULzV4O4dFl5J9AIW": {}}, "fileExtension": "HoinqLzuLAc2ahty", "name": "xHKIJnDqvb74yLao", "payload": "q8hvFePZMqg99RTB", "preview": "AC15ZnT67TyCiKEB", "previewMetadata": {"previewContentType": "IUC9KrxCHOCy9wF4", "previewFileExtension": "ZJUVqC6M6Kj3hFdA"}, "subType": "13JflCAvVbZMw8pZ", "tags": ["xgf0HzI5VTtMuKNI", "5XV2p0Oz76Gz3WcS", "eIVSyXC8fKRi3APd"], "type": "5rFMHgzMm90YagIc", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'AtdqBKJVGy4JEYcm' \
    --contentId '3sPopl41HycD3K3F' \
    --namespace $AB_NAMESPACE \
    --userId 'RoHOUwTnxF3w7S7X' \
    --body '{"contentType": "wq17OdQVWJJieAQz", "customAttributes": {"TlLVSGx2NpcK3Bth": {}, "OdYNq9qTaMkYoNJI": {}, "ljGeXWA0LPMfiz0O": {}}, "fileExtension": "gsoENTFCh2aohuQu", "name": "BV76FuxRsqlJb9yz", "payload": "0cAYWjezxvitNd0O", "preview": "u7NWGJKlmuiknUJ5", "previewMetadata": {"previewContentType": "96VOT8jm2m8dk2WE", "previewFileExtension": "6lSpGsmrnJTlxp3s"}, "subType": "rqO0yQC8KtMrEBOY", "tags": ["0P81GvqlBwAAyR6i", "Q59z5BPMBqV2QIJq", "xpzFGSTSjGiiy1q3"], "type": "TeulOWMtH8g0lDMg", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'lprHbWC3iOrazsVS' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yaZtmeWMPp81UfTC' \
    --userId 'xTQ3dk6YEDqCUS5c' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'dbsjGORlwbC1iroz' \
    --contentId '1kdhgOjyrmZq3KMd' \
    --namespace $AB_NAMESPACE \
    --userId 'oKSCl0K0JGY9uLSD' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'BRysPhgUMcPDKMzb' \
    --contentId 'Cxg5ZDsuDR5yJuaq' \
    --namespace $AB_NAMESPACE \
    --userId 'tKNKf1s5uHHEVucV' \
    --body '{"shareCode": "quXBN9OkQezqvp5J"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'ehQ8wkXwNO4kDIFf' \
    --limit '86' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'EmaYMhynj0MnTnem' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ldVxbhzS2t217UQH' \
    --namespace $AB_NAMESPACE \
    --userId 'EUxvJKcH1MpothsE' \
    --body '{"screenshots": [{"description": "JPH4zSUCuhvg6PEp", "screenshotId": "s07cFfj5C9VoAEkT"}, {"description": "sofFGFgYIHk4k0be", "screenshotId": "bBv3cNUbM5hQcmEP"}, {"description": "YzZfNiwzAU9U8fHz", "screenshotId": "pGgNJBin6DEQ2TCM"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '7qJ9swB9yfMZf5oP' \
    --namespace $AB_NAMESPACE \
    --userId 'cqjRpdNRjncpEuOy' \
    --body '{"screenshots": [{"contentType": "s4U5TLimmFUgT7Hj", "description": "lAJoi705wOjn8PwS", "fileExtension": "png"}, {"contentType": "rxFDOHfBY6UlIQpg", "description": "vKCpAIJGkYjtATxB", "fileExtension": "pjp"}, {"contentType": "1VnuaSTgk9fAFP1F", "description": "LPtkUouT4wByP6K8", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'r91zxXelU3dcQPE0' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Sff34hgNkCoBs35u' \
    --userId 'BveDD75klh9uLpIj' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rg2XAP7A6vOiJDug' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'LOPjJIWA1WmHT3PW' \
    --limit '98' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '1ZwofzsPG924wxA8' \
    --limit '77' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Mvns0MELFZEVPxf3' \
    --limit '86' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'shDPFtQ0gJdi81ms' \
    --body '{"contents": ["1xVtPJWkc0Q1phzE", "DQudOh62rhGJyZE7", "UcWsY2nQBEKhPOWL"], "name": "XP0TmYGduyKvo7dG"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '5jV8n0IZAHjJdUvL' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'yzqEU74pc8RyLcwk' \
    --namespace $AB_NAMESPACE \
    --userId 'Zi3ejo9UMjGomOIb' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'BGnl65xHzRvu8qN1' \
    --namespace $AB_NAMESPACE \
    --userId '4Srl09nP3yjrcT5l' \
    --body '{"contents": ["dutet9pSYX6jwJyJ", "FrRectIRYQbWqBDn", "VrQqMwNTVQtSzgfF"], "name": "pfcgB4dVTTAu77bs"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'cwNnmXbvUysLQSnS' \
    --namespace $AB_NAMESPACE \
    --userId 'tZILeILbVWDyrgXN' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'TiOMmThJn33ZCoET' \
    --namespace $AB_NAMESPACE \
    --userId 'd8wPhiayuFxbRF5I' \
    --limit '36' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'LnKJ3FId2pYRnmte' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'PiNe1CsKdxAPzrYZ' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'NSTBdAcKETbnSbnN' \
    --offset '22' \
    --sortBy '2Y42k2Rzz6OUbieL' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'sdt6AYyfJjRZgPTF' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "fw0MT7Ec076y3JqN", "customAttributes": {"6PwuWUMLI07GLYhC": {}, "5AgkeIO84xVdrgrN": {}, "simGVRuFbFAknUw4": {}}, "fileExtension": "PXIYjqTO7CCsw66n", "name": "X5CCDVvX93PjXwGs", "shareCode": "3k9N3u63ULCkhHLd", "subType": "F6ghZKxpFGccNR84", "tags": ["nh6k4zJPLDlKpeHQ", "X0vyf9C7h47Xa7HK", "brbQM2aLt40lAJIh"], "type": "uJxWxxmIsOnmSPTh"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'a4swqrjIIgtaXy9P' \
    --contentId 'Y5v9BCScsBXdUYYH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'wc2nWtuHpbpAKxTv' \
    --contentId 'm4uDXr86jnsBy0li' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zR9ApyWbMRw7SrGY": {}, "g3O6YN6VqZq1dJCu": {}, "UksNubJk17qyFFCE": {}}, "name": "iYOuQN7I8FMoAefN", "shareCode": "BTj1YJ6Cvp8JWQ14", "subType": "L0jXqYpLQdxS6T9s", "tags": ["tfdCfhCBF5EaHiar", "eB80eQyZhl7by4LL", "dQDEYteO5BcB5Nwf"], "type": "o737AN6AYOort0DZ"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'iJ9En7NwLJfQltQf' \
    --contentId 'mR81vGO7M83wj6aN' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "codUcYuoPuWixvhH", "fileLocation": "bT0WsikshR6nB2D6"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'bTGlH5iUe3CVeuC0' \
    --contentId 'JziZgIUazciAhrQW' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZxmKIbvrObx6wlpP", "fileExtension": "LDPMpzhgViPHWM5i"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'JKRoGokqVEnI4bGc' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "OH4Eq9n52vnbopNr"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '87' \
    --name 'bRRhx9GkfVR9cNIs' \
    --offset '56' \
    --sortBy 'q8EB1C2t5S7tDC34' \
    --subType 'bTDaVWyx4QEI07cd' \
    --tags '["jRgehVDPXXui0XlJ", "wZiiVvwhnWDQ59Sl", "Cjbwwm6Rk8RdmtlN"]' \
    --type 'A4ghFqLDEjib7MqY' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gDrH77FWWdQ9Lg1g", "cVieGrq5QsXU5IXX", "fvueHELiUyVEWQkU"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["khic6LEybJcIqWiW", "00YI1WtYpqHUwMhj", "pJrZDXieDnjS3DjO"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'n9769znloWpJrIcu' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '9GinIh0oJETwucQQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'muFomSkDFIRnWyRl' \
    --namespace $AB_NAMESPACE \
    --versionId 'BTc93OhVjiX9l9d5' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'CJxWKVQlyUywFotf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "TMDH8NmHu8DwcIp2", "screenshotId": "6lB3jqlH2mAF3VH9"}, {"description": "ICo5uWj7dkXsO05F", "screenshotId": "n1vDexIlzejSblcn"}, {"description": "lIIcyecHZAqn7qUz", "screenshotId": "EYzHJlcIMt4cEnv9"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'p0iMWAXCjCqVQQbq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "89olaWJGDPXAdHpc", "description": "eCObcP8iRSGkXuqo", "fileExtension": "jfif"}, {"contentType": "AqAaOaYTjDiQgw3e", "description": "oiTeU4hH1We64jdS", "fileExtension": "jfif"}, {"contentType": "TnZx4mvm2PHnksPR", "description": "BaDXpzHEhoVKQbjS", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'mHOmT6Q9qE4YN0VC' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'bE8mNHEuXByMqlCh' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'I1LtvV98U1kUR4fq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'v7eoDM70l1lKiTcb' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '28' \
    --sortBy 'dkWlbhJOhh9mk2al' \
    --status '44FNLGJmMh7VpXCB' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'v6jVGS2AzWzqtSDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'w0CYGCIc7WTbo6Kt' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "kRlD79Noa3B7a1ZY"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'pdnRyvvYZ9KpSxec' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qnQnpCGcOSdJKV8a' \
    --userId '1ONSdr8pNKcPd6v3' \
    --body '{"customAttributes": {"KiuaZFkjh7PNcpgO": {}, "GB3T6e4hUe1svCus": {}, "ZGAe6mDrotOHpPyV": {}}, "name": "BEFXPyMaSYWSpzSO", "shareCode": "8czhuZ2JOFyKtgaJ", "subType": "aJlVe6mCBJ8tHh5W", "tags": ["cffYCmaKWqB8cw9J", "cH8AjPOcWGMJBEf9", "0P0EzlH1b4SQ1db8"], "type": "0tCkF2uGHpIuslWP"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '9tV9qhLSlA0iGPnF' \
    --namespace $AB_NAMESPACE \
    --shareCode 'NNFGI7ANMRK9WUBe' \
    --userId 'awYappP5tO8n9omR' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'LJcJRSYNV9s5G52U' \
    --contentId 'sKk9ULvlv1V13eim' \
    --namespace $AB_NAMESPACE \
    --userId 'QbSMWuXI28Vjqa19' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'DeAFyrSkNHy8oN6e' \
    --contentId '9pURxxMoWDkMRu1W' \
    --namespace $AB_NAMESPACE \
    --userId 'fqb7C9vPEdtyIcO2' \
    --body '{"customAttributes": {"B7IN6mACOr6zanIb": {}, "evw1ja83STFP4m0r": {}, "Uz1xOx6SFcpJ5MYM": {}}, "name": "DhdLkVpVD64nYtcB", "shareCode": "CnKDZacGHvIOFYLi", "subType": "Mba3kRX7b04S7kJj", "tags": ["0THyMza1K9vTFdI1", "YeMPZ1AxQbcN9Z8H", "XQapTt7OwimabJUT"], "type": "SLLb7wkiSglPcdM4"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '8zomU9RAHxQvooNV' \
    --contentId 'oCNu70XNXdfepY4G' \
    --namespace $AB_NAMESPACE \
    --userId 'YFFqIET99vIHfsyO' \
    --body '{"fileExtension": "iC3dAHQg5cZApsjn", "fileLocation": "4Ewpj3ik4GsKLDIM"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'f3HtetF9qpQRRyNc' \
    --contentId 'Kg3acPSDzT1dFz8b' \
    --namespace $AB_NAMESPACE \
    --userId '78NZOvdRdll9tuFT' \
    --body '{"contentType": "db2E0Y4fRT4MMwci", "fileExtension": "E4629vDa8A9zWnpK"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'd9fqPHA8iilr6NEG' \
    --limit '98' \
    --offset '24' \
    --sortBy 'XmtdZZkOIDoaIybY' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'auiMTQnRysZmrrks' \
    --namespace $AB_NAMESPACE \
    --userId 'oKJ0QJ2GZ0fjkzth' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '2lGslJlwy3HNNhxo' \
    --namespace $AB_NAMESPACE \
    --userId 'cAbc2CsLTJDJTA0X' \
    --limit '31' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'yR50bQFjtL4ZfptP' \
    --limit '3' \
    --offset '5' \
    --sortBy 'KwGRBG1CCyn1HC3J' \
    --status 'BLjh8srlk5N1p5oG' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'FCVZaHa3LktlCpFN' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'YsmHf2RGtwRw90e3' \
    --offset '31' \
    --sortBy 'kqx90PzSKEcu5vOM' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '86' \
    --name '0uYp5eAxnb5huouR' \
    --offset '37' \
    --sortBy 'NMcvTgalKHDnVuBw' \
    --subType '3yRGGVMkAu9fAb0q' \
    --tags '["wQBUMnwA8WUQck8x", "aSYEgMGmb5lT6ysM", "MSQAdB6ueN0btZPy"]' \
    --type 'BTrvT1lakuuEl97O' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mo5xqVSUQiUovzAk", "MlunOGQYIr7EeW4l", "XSf4h9iycBiaqTRW"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["v2kjaq5BQ5jlIANu", "LFdbr3P479YmaOzE", "a4cbgJ08SqE9fV3q"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'uFky640QbdoU1aBH' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'Og4NfTyMoXD2Gosa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '8eS5OcYrk0QbKv8Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'WCpiRFasLn1dV1Em' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '68' \
    --sortBy '05UyoKTD6ZeRcuX3' \
    --userId 'A170nLtATf2yrqgv' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'UF7Au5NnFtlAu8sZ' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '12' \
    --sortBy 'dNkS6NR1PSoA1Saj' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'QonKxIJHprgtxUFW' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'deE2FG6fAPAduZqG' \
    --namespace $AB_NAMESPACE \
    --userId 'qLkoInPCbBB0N77w' \
    --body '{"contentType": "THml6GqUpssF3y3Q", "customAttributes": {"DQYpo1d8moKXVD8O": {}, "TnGskGt1YbenXp9C": {}, "cY2JsK0DFHh5EYcm": {}}, "fileExtension": "dWcQrDHUhiNbaK9V", "name": "ELNyY1c8ddfI5krz", "subType": "JqEIfQfzUyGFtUMm", "tags": ["ehHVwevAhcF7s6KN", "G3AZ5eNvpivzKM2d", "oV7p7xmYP9de9oVR"], "type": "9p8j3HR2q21LdsGo"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'ijwIKVMK2UY4lESY' \
    --namespace $AB_NAMESPACE \
    --shareCode '83pF307iSxbuRV3N' \
    --userId 'jzHmZVzjRN3IFnhW' \
    --body '{"customAttributes": {"dKrGaTEPQVVet8u2": {}, "U5ku0zurAWtQ3tPZ": {}, "3GCEWCuYeXq1gmgH": {}}, "name": "XKEhmXtisiF5C2mo", "subType": "ohZM9WItTwR5TeEq", "tags": ["40Gu7bAUMkg9447Q", "nVTmCDhWYqxnN13u", "DfiSLMfDCCtzMpsc"], "type": "35Dfg0WzeqSr4OwG"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'r8IO5ppNJCdCRExW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'AvgjXNcnrholAnsd' \
    --userId 'n96gLlt9y3gpa1EB' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'B2MfgrrauvKXBZGA' \
    --contentId '6NkKIcRENPD8dyfV' \
    --namespace $AB_NAMESPACE \
    --userId 'tmUeGl88vNM3NTyn' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'IbTuEZWOd4Jtljkz' \
    --contentId 'Qtw3Oc9YuRgEvx1R' \
    --namespace $AB_NAMESPACE \
    --userId 'WsfQeA82jPKI7O8V' \
    --body '{"customAttributes": {"2MJjKEQ9IEfehb98": {}, "4eQEtsjxIqBktHzh": {}, "FPyRn1gDud3D3VFx": {}}, "name": "BVWUKXs6UH8o4yAD", "subType": "nene3SAzMZOJ3YQO", "tags": ["RLSjKMpbB0Fo2CpC", "fNO9JV3s7SFeoUMn", "6rClhcG28ESsEC30"], "type": "xIKCgoHe6sptXlFl"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'HXFAYRRLPZb8v1yK' \
    --contentId 'tTxPcfFkABI5UhiF' \
    --namespace $AB_NAMESPACE \
    --userId 'kw02YB8gQdgMLJ2E' \
    --body '{"fileExtension": "PYC7mFyF772MJLtJ", "fileLocation": "YXy3ElbUWlU2GoSx"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'NyLQlpO36lieD9Zp' \
    --contentId 'BJnycVXg0AjFsOcl' \
    --namespace $AB_NAMESPACE \
    --userId '9DlJsfZSeevB0lrl' \
    --body '{"shareCode": "PI8zVA8Z4SWwylJw"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'aAVNCrQhPJoHLe94' \
    --contentId 'ICUeHI6WIIJy0zOd' \
    --namespace $AB_NAMESPACE \
    --userId 'j4mPKDrFDTD9AfsW' \
    --body '{"contentType": "8n9l3R2wlinM1h8v", "fileExtension": "GwDAkUVHqnKihZP6"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'P6NN6bYTEWCLGbKD' \
    --limit '40' \
    --offset '97' \
    --sortBy 'rnjjNnw5MhFwvjCo' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '4aLp4ZV0vQGnLxxX' \
    --namespace $AB_NAMESPACE \
    --userId 'cZoPyovnM2GulZ3m' \
    --body '{"screenshots": [{"description": "x0QLqL3ZAhJlqyYS", "screenshotId": "sVcrZWaf1H3tsMZk"}, {"description": "LQCgTI1MoQ9OvJ0e", "screenshotId": "AKrmNqcmyvwLvfRJ"}, {"description": "VhLZw4fUF44zgTmU", "screenshotId": "q50eYqSt6YC7mYuU"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'eqwMQTBlmqMCgCyD' \
    --namespace $AB_NAMESPACE \
    --userId 'B0lrA4r0MWf7hL1x' \
    --body '{"screenshots": [{"contentType": "JApJC6r7TFDcKpvN", "description": "kfR5W7XQRerBI33o", "fileExtension": "jpeg"}, {"contentType": "TcV07NSfV42bXQGJ", "description": "LSGZvyYOIEOas9KD", "fileExtension": "pjp"}, {"contentType": "0glkTeRpCwt8uhKY", "description": "AZKHqeVomM6QTa08", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'dUNWP8YChuW2ZsY7' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9OpxvdkOIzymqA2r' \
    --userId 'kwhvCvx6Q2KxyANF' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '29CFsSZ83zrwHwVP' \
    --namespace $AB_NAMESPACE \
    --userId 'ueharpldQUMLNImu' \
    --limit '12' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ul8R95UQpKVDIyxs' \
    --limit '45' \
    --offset '35' \
    --sortBy 'F9GVyQnK9CxLrA79' \
    --status 'EVkTLwo5hwYtDPed' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'U9huH0uXMeSanALw' \
    --namespace $AB_NAMESPACE \
    --userId 'M9WHloMN45ljxTRW' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '3Mzufv8iIkMJV8aS' \
    --namespace $AB_NAMESPACE \
    --userId 'UmJV5zCPSdYkFmB3' \
    --body '{"fileExtension": "yeWJydmWsmeymj8t", "fileLocation": "X6O8P7jL7CIoT1T4"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'WwiR1vpY2JgJtvS5' \
    --namespace $AB_NAMESPACE \
    --userId 'byySlqJFDoxaWwbR' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE