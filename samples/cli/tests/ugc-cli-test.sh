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
    --limit '71' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "jxPWGKcLTQx5uH1G", "name": "CcSxQJqsc0diD9pU"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'VA3DjPpLiwqF3bgd' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ib5GAKURrHRsq4Yu"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'dFf7mElEBE6vDUOc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'pYkat3LJoWXkOuNQ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jUbeMm73COHw0YW7", "customAttributes": {"KH0meHK5uMCI6EwE": {}, "sIQLUxzk23ID7Usr": {}, "DLZnOE5btQzuK3sP": {}}, "fileExtension": "RMMS8dGCfgi9esa2", "name": "J4oTEutE2JYuI7eH", "preview": "LQVZsS8uYxxhND9h", "previewMetadata": {"previewContentType": "K1Y8k4JVPTLeoOwp", "previewFileExtension": "0eT47dFR5xIR4eNf"}, "shareCode": "FJZEaoPCMSWFnLnW", "subType": "0zrnFN4j8H2XPnKA", "tags": ["Hx2hiTubyXGAL7i1", "KjER7EJ0NTXiMbJ3", "bzFMLjEQItapRFCY"], "type": "1NGdTFd6CshJQspF"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '71YNvF7ukbVjPhfB' \
    --contentId 'SPR3fEXayzVNs4L6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "dZ1zojwTg9ZiYkMU", "customAttributes": {"tMKOvJlox6MPXUad": {}, "npXH0T7p3bZDAOSN": {}, "HbxWfmHYtwrgcWOo": {}}, "fileExtension": "kkm9VWfaRZQBhg8q", "name": "McFoJzuGf6phFtHV", "payload": "yNDjGfLNB31vvPaq", "preview": "MXPoSFVejIAaH37D", "previewMetadata": {"previewContentType": "yqyBaUT3YbawgENV", "previewFileExtension": "Goe2cy5Fp7FzPTQk"}, "shareCode": "Rn2tSalvr6QmEEnu", "subType": "nkKyqsDE0GEOUPjG", "tags": ["ZzZadnAHhGdQPCQm", "1sBHNuCXukDQfYRt", "U7mrDAs5uP2mhnIv"], "type": "AGv62LW0vKPK7zaW", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '7rxGCA0IXJkXf4Di' \
    --namespace $AB_NAMESPACE \
    --creator 'D0jM3YIxtrFWI7PP' \
    --ishidden 'GtmVFN6dEKufNZD9' \
    --isofficial '4I4HckvdgOUcc5yr' \
    --limit '66' \
    --name 'Qn8wlssVXhHGTc3t' \
    --offset '57' \
    --orderby '08bL6ZEvRi0IfPIl' \
    --sortby 'mczI7YWK1ZWfVdCJ' \
    --subtype 'jCx02eNqR5DRMCwm' \
    --tags '["QkxZwFZZL0MsQD2x", "Mg56NpCaVwyJ45Ym", "CGcaMKmBbIDCtIYU"]' \
    --type 'L5cvnHil3nEHEj3b' \
    --userId 'xBr9fgXxohu1XZhs' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'Smkbe8CHQ3JMd2gm' \
    --contentId 'VLP8ca5WavYl53nN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["3ZxkDpbRKO3Jhacs", "0qgPTOl1eIUoWWPW", "wmfK9UYyzQqw61kR"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ZYwukiEe2MKi6nHy' \
    --ishidden 'ychufiBjE8wwu8lY' \
    --isofficial 'dEzyWj1JvOFhbDKW' \
    --limit '91' \
    --name 'VpZCzOT4xeQUqfii' \
    --offset '95' \
    --orderby 'Es6xaHMT7jGx4jEC' \
    --sortby '1QVak5WfBAHZMQcB' \
    --subtype 'TGSjAdagmRgn7Z08' \
    --tags '["Hh30ucGBF5cCz9DU", "OJtVUGI4uFgSTHpE", "kvtRBv7iHNhYVQZx"]' \
    --type 'pqmlOVnV2wQd2OwJ' \
    --userId 'CIvwhlj8UPrZE81O' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mOnlipOPjIhCUCx3", "zHVckwfMtDzejwIs", "kO107CRsPpFvnvp4"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'zR2iFnY58GRYANAe' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '9ZQifNywFGwYzdQ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'iarm4S5FhpSaoekD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'iDshVbU5g0SVuv0r' \
    --namespace $AB_NAMESPACE \
    --versionId '4fBakr8FWuEe8bd9' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'GchHw5Xa9zYEa6qd' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "uc4TzpuqdqLqXNBI", "screenshotId": "ETGVfMrCrv00An7N"}, {"description": "aQwmIqdRg6mpADVO", "screenshotId": "HWX9hyAqz0RPTutc"}, {"description": "VTb98tZeTjrTPQ6r", "screenshotId": "EuRnqMHq3oBmJwH7"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'gjoTdTtppOu48MoJ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "0UFSijpbLu68DrP4", "description": "NFVRbsXHWDlvanTc", "fileExtension": "png"}, {"contentType": "zrlRo1culX8lhApz", "description": "vmUasu6tyIBa2u4z", "fileExtension": "bmp"}, {"contentType": "vlnSQ5u2EvRizZoZ", "description": "EpnfFi5YkhBLMmbq", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'COyv29cbZDc7MC5X' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'OE6wzk0rLraEb2AC' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'N8rN16xyZ07PNLEa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ydF9irix9SC5NiL0", "ysvX58gteunASwF3", "UbKq9fTlZ3EawkhW"], "name": "1MmfGPKOoOjMNm21"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '8V8aYPa6kVRT6sm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '3H7gfR7HyoqPimdS' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Y9kHeYETR9Evawf3", "PxIQo5IZvzOsBr8G", "993PTMp1anpgk30V"], "name": "QkOv19R5vvc1Sune"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'i2YK3OqiMBeQsnhV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'iGybgzSuKKohFGbx' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "ht9130wldKkZdh9H"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'yr6hSc0QBAsbQSPS' \
    --body '{"tag": "xSQfHiSrmW8azEca"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'HQYtjvwsKgka8xC2' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["u5aCNQKsTmAdoTsA", "x3kKLAriqqBIXDeN", "4ZbPMYPFwntI0L95"], "type": "DQbGsmcEGC1XH8Lg"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '1IocwfioI8c6Kg2G' \
    --body '{"subtype": ["HkXOx33CfoW9E6B9", "d3k2gsjWxvMz89Zy", "0dpiVJdblrYOV0dC"], "type": "cz8QfGghrRHg3RFT"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'qZzgBPSDISsAWHBU' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'IaNv6Hjh55xJzQXR' \
    --limit '62' \
    --name 'RiSFA5Hn85yRRdOk' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '6iwDX8Jjqz9hS2C4' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'QdDujk956WRpcnpR' \
    --namespace $AB_NAMESPACE \
    --userId 'WGGwe6HNsdI7X4O6' \
    --body '{"name": "P1eg1VQ0AAfvmSoe"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '2pfDbKFEGqakxttw' \
    --namespace $AB_NAMESPACE \
    --userId 'dlBDfUY4TGAR80Y5' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'ueB5wVUN80JIquPT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'd3cbwGgu6lfxEEpF' \
    --userId '1eOtNvOpYK2RFwJl' \
    --body '{"contentType": "KMQi3W6TD4jXDTB4", "customAttributes": {"3sH9JPeuDZagoDaA": {}, "V4QC4K6t2Sz2frDT": {}, "B2mZdABk55K2dwjb": {}}, "fileExtension": "F9OlotDjyWuRNJKb", "name": "0d4qmjlaidejBI2w", "payload": "Bzij43oBVRYGLpLs", "preview": "QWVB2LTpCkeXVLDe", "previewMetadata": {"previewContentType": "Q3RBrx2L6aLq0oEN", "previewFileExtension": "y2uGQcN6kuHU8u9N"}, "shareCode": "8Ga2oBRytYB13RiI", "subType": "g2iPj1pNIF3kXHjj", "tags": ["iSL6YvoBEcbPjW4y", "8D7XSfsxAiebMMiF", "y06Qr5gHgOh2HZ3Q"], "type": "LTlLh9ygyMkjtd5a", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'QLYprjUd30Y0j6Ca' \
    --contentId 'X4jB9jXDhMmxHWeH' \
    --namespace $AB_NAMESPACE \
    --userId 'yIZsbKXLz4DoU11Z' \
    --body '{"contentType": "9wcwCiIDw5gpw9nV", "customAttributes": {"EMVZEvdq5GRoKU0J": {}, "no59ez5RH3vmpeBa": {}, "O4AMEdCd5qZLnCb3": {}}, "fileExtension": "JFAT3NTU9izD6C9Y", "name": "hmIlGRZw9bALbzA9", "payload": "DyzUIPUHEkurBc8o", "preview": "wOzkmixQAqSXLkh5", "previewMetadata": {"previewContentType": "DaY2w2BPBemWYBau", "previewFileExtension": "UxdQaz9uX7GzdXES"}, "shareCode": "AOILwaPYNGwkZBrs", "subType": "xMDJlV1dpjjLttv7", "tags": ["R1RNTAYfIdwpqDSi", "V8gHuXW2Yvr52pmw", "r38oOmm87Nv566d4"], "type": "soIvqdGJVi3iNCZf", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId '9CrFwOkGPhSSYyeL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'kc8yVI6OhQ1cgoRU' \
    --userId 'J5e5ZiErI4LZdAc2' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'e224Eca6fOK6ULNR' \
    --contentId 'FQLy6w22Zyp7oQAt' \
    --namespace $AB_NAMESPACE \
    --userId 'I87a378Herju96lT' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'OSFfmfYaPWpyarIB' \
    --limit '44' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'pxzmlLvP9nF9BGKp' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'H8OGYmvpxaSc5n8f' \
    --namespace $AB_NAMESPACE \
    --userId 'oiotaL9rS0qLzQIJ' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '0P6Ex3VVg8KLE5Ta' \
    --limit '82' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'x0FkP7s2CX8WzDoT' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'iH6RdGZfTtD3Bccj' \
    --namespace $AB_NAMESPACE \
    --userId 'cSeRLD4qIEhL6ovh' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'TRCv39pgkd5HpBKO' \
    --namespace $AB_NAMESPACE \
    --userId 'puww631rdKbNY45t' \
    --body '{"contents": ["MeT7rqS9mKJczeXK", "669rMgWtMmymlNlJ", "AtkE7pzvl1zoIbui"], "name": "es8bU7o9RLsXQ4XN"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'RX26KMhvgX0zq54R' \
    --namespace $AB_NAMESPACE \
    --userId '9YqsQywfddNOQg2m' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'lxNaBBGfnVv9Bnw9' \
    --namespace $AB_NAMESPACE \
    --userId '3iLW1RqpmwDQfSVs' \
    --limit '40' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ufuYqdbx4LSRsnSJ' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '4he8uvPMWUuJxzMi' \
    --namespace $AB_NAMESPACE \
    --creator '8bzvafmopNMDd1hU' \
    --ishidden 'DLoGNfJZ4u7HEp0s' \
    --isofficial 'c70p4rVggIwivljx' \
    --limit '92' \
    --name '1XkFfStSw6jhrCID' \
    --offset '87' \
    --orderby 'LPFC9RSutRnRWaOv' \
    --sortby 'EtXsec2KCwdyPlqZ' \
    --subtype 'rXa0m9dMCVoV0Qwy' \
    --tags '["jvaZlQgJgvfMIeJf", "OooE8vXpkF2FkZHl", "8S3K4FXSMZ4zVtXh"]' \
    --type 'MAXsDrzZbyi9zN9B' \
    --userId 'PId3E20IiyWUfHO2' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'lFrf29VNzc3kQXOB' \
    --ishidden 'me7j1DFKLnbAGAUj' \
    --isofficial 'j0ldnYjBmWMddbn5' \
    --limit '5' \
    --name 'K8ujsaV02Hd13jVM' \
    --offset '94' \
    --orderby '85pe9ux0ND9Ic7We' \
    --sortby '9OjWbG3V0vJZTmKv' \
    --subtype '2LcJ2E53hpctr6OF' \
    --tags '["1tQ8gcrm1Qxhpbl8", "MsTpcEawIBC7FALS", "MFcJIykJfbwS86Fx"]' \
    --type '0z9goWe2idl3rkR5' \
    --userId 'Ynf1bRBfzNS50zME' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["oUtebTq5SD2mRTzV", "3duwHARuNkxdX0zQ", "d3IXmr5Lu9gqP2xJ"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '39' \
    --name 'v55swI4SN0wyJPVg' \
    --offset '60' \
    --orderby 'QmZZz5UId64fRGb4' \
    --sortby 'c7iu4EGSORndEeLk' \
    --subtype 'gt6o33dGKNiSYsJK' \
    --tags '["tygNGrHzZILmyxQ5", "dVtyw6RjnkKLOOUK", "59bXYDsTRfJzSIhJ"]' \
    --type 'L4c1Zxsu2xmy0MkS' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["SFqYDUwntkx93EJB", "hqWc5AC4k3g5khDD", "kgRpaCi9KqT1uOLi"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '6lJQaX4IVyEshmvg' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '2sU0dBZG8EuKdOg0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'LG2ELn4B8c4SEoP4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'RQb2Q7WH5N8ZePyl' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'X62REPGvpoZ7VNnu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '31' \
    --orderby 'gZpxdeT76krkJ4UZ' \
    --sortby 'IKpVxP1vnNaAvZsN' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'TyKO1SokENOe95Dy' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'aE31niTZ52EW7B8H' \
    --limit '48' \
    --name 'NXygqX2XqYJA5mTk' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'JxAbGLC7brQCTNy6' \
    --body '{"name": "7nNeqdBy3xfpVIyF"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'OikheRPSXNxIeTiE' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'YrqwzrKy0dW4qKaz' \
    --namespace $AB_NAMESPACE \
    --userId '3mzGO7Y7AZuoL7nc' \
    --body '{"name": "RwNeNPojIIuTOYHo"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Y4TIC6x6ChlNCTKj' \
    --namespace $AB_NAMESPACE \
    --userId 'w3CoWWw9xUmi8cDR' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'IzitDXuFgpqJa3i7' \
    --namespace $AB_NAMESPACE \
    --userId 'UcnBb9SvOhYKvrK9' \
    --body '{"contentType": "uPqq4sZkoFUB9rdC", "customAttributes": {"U6465fslw1K2FNxb": {}, "m7fI01avynvBLF0z": {}, "pHql0wyIsrM4aQkm": {}}, "fileExtension": "pMMR2KRToBnFPoIM", "name": "YtTdWIP3cgzMOdb0", "preview": "CzDEo5svyF6Npo4n", "previewMetadata": {"previewContentType": "xySd5edh0KtO7u98", "previewFileExtension": "Vl48DgNWr7IVRq8D"}, "subType": "rlCqI2wRg4hymLVg", "tags": ["1GzS4zOq9iDI2wez", "wVeCOmJZLrBu9cY3", "vL0APuOsnEmcggSX"], "type": "VOrkxg2DJHkdBNDl"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'IWZkDq7nl8DTYrVG' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Rgq1Qd1fD31ZVV64' \
    --userId 'U6dTXOFAWoRUsMXj' \
    --body '{"contentType": "LfkOqXjfy8lTGMbS", "customAttributes": {"gWy5GGkeChIFcSAE": {}, "BXLAWJlSsBeNmPAe": {}, "Bbwq4nOdXMgTyq3f": {}}, "fileExtension": "S5DkIGcPX4ng4Btp", "name": "euehYTnNIYbWdlbB", "payload": "BWfTCt67fS3DmWD5", "preview": "3L1haABErXR5Z7nP", "previewMetadata": {"previewContentType": "MaTBfNWMwuHpvnCt", "previewFileExtension": "HPVySduQpR3ZXSAT"}, "subType": "Ak3AORlsyAZc4ubh", "tags": ["6SFaf3aXuUA5Zz6m", "25itFj33hFVl4MIU", "OVcDjSayfF3OcGzW"], "type": "mKyOaUUahNcFzx03", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'usL458iwXuOxxyQU' \
    --contentId 'eLwoqDoe23EDGrs5' \
    --namespace $AB_NAMESPACE \
    --userId 'DOTJYjN7jfsDEQ6L' \
    --body '{"contentType": "GMZMc1Vck3zjI9Nt", "customAttributes": {"r3RPmatFi7fRAJAI": {}, "cv8JqCgfsEd3jfFR": {}, "VM0qL34H6r5OR7if": {}}, "fileExtension": "g3M5bHIvWsxSutUs", "name": "IohdtMhtgBIY9Lxq", "payload": "xEXA0ka0eSBmbFTh", "preview": "gTnpnKQOzstN08Vp", "previewMetadata": {"previewContentType": "6wuY033TckQXhiTb", "previewFileExtension": "4SMDALdtDFawyGOU"}, "subType": "ooJ1ZIbmQgfUCHhQ", "tags": ["oRQ3OB73niti00zn", "ORerZcPxnXgkA0Jt", "8NeTzfRwsMIXQdcX"], "type": "DrYZMAqs0qIEoJUF", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'je7oQU3oMAqjFupi' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wWZalDmnCCR7YT3U' \
    --userId 'qnidu8NvHW0au7jz' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'EbXjqBfDCMF5shda' \
    --contentId '1jWhbNuuFgoW1lfK' \
    --namespace $AB_NAMESPACE \
    --userId 'DW4sCnpZOcdtRFWr' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'oOxt9EsHDeBqEYB3' \
    --contentId 'waOeSAfo6UqBWEkK' \
    --namespace $AB_NAMESPACE \
    --userId '1G0QXHAGAeEyAVhP' \
    --body '{"shareCode": "uzmoHW6z0ii7rH6p"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '5CyRMMKNWtphKYze' \
    --limit '99' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'lPnSSu9gCY0cEoop' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'i8PZwQuGs6bFqigk' \
    --namespace $AB_NAMESPACE \
    --userId 'UQLPmi0Id2bq98qA' \
    --body '{"screenshots": [{"description": "AqRVF6ExOK4PjnPy", "screenshotId": "HnGtAm7YPnmv4OKD"}, {"description": "9hgKHf4ExVA5xWuy", "screenshotId": "13UrylFZwiQRPbiv"}, {"description": "CUYBbxWiL8GdXfQn", "screenshotId": "otKQiyHYk4o5nFHv"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '7p6yAkSzZi9KjfPF' \
    --namespace $AB_NAMESPACE \
    --userId 'Rg6HVoF6FK4uwEEx' \
    --body '{"screenshots": [{"contentType": "mres9wi3K5pnsdyg", "description": "B7xDEhxkAocIepox", "fileExtension": "jfif"}, {"contentType": "tQK9nd290Hlqcdf8", "description": "wi2ctkvNo40jyVFu", "fileExtension": "png"}, {"contentType": "QD4eeIbNfkGJ9DGG", "description": "HhRcKQYy4OlNJSkv", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'lKVxPlafwLy8JZcw' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MByWTo4chLmbrBTj' \
    --userId '6Th58dTaWtYO4yKn' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '2GwPR3v7oCZ7a9Tc' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'M3HabRL7ngy20GCD' \
    --limit '54' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '6beBeV6IFooPRxsQ' \
    --limit '70' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'QoJaruTheRRqtdgj' \
    --limit '40' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'kZRFeGomomcAEfaL' \
    --body '{"contents": ["GD1J6x1sveEB6EjL", "eGVJiN5rioUPBqEA", "wIcytMzFJoWPrVDl"], "name": "JjNlIa4mdKLPfXkP"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'VapCXgXBV8heCgOy' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'Exq0x6S6YtG1Yces' \
    --namespace $AB_NAMESPACE \
    --userId 'NfaxCKB8ZqfiPkB6' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'WaOZU82Qyx70bS2W' \
    --namespace $AB_NAMESPACE \
    --userId 'mc8nrPEl6ujBjDwX' \
    --body '{"contents": ["vHDroh8RbYbKku93", "BaDr7ygorXtuCYz6", "EAhklKr69oWh1yxn"], "name": "CHBowQh9YwZ3L4bY"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'D6aN9IpAWhz2oZts' \
    --namespace $AB_NAMESPACE \
    --userId 'rGMdWOaFRdIrkFfA' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '4EsD7MCZ0ELEENpL' \
    --namespace $AB_NAMESPACE \
    --userId 'PUymCQV43V4njnxC' \
    --limit '88' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'TaaPZIAsuJ8qtH2R' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'ydD3YtKbqMlQYbCG' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '20' \
    --sortBy 'QeCZrF8esGFE2TQb' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'VQ0itvSfWvTWaAdz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "VUhNah0zS8F7mxuD", "customAttributes": {"oFWxro9Ra7HP3apF": {}, "QXq7yzk5hWtjPw2H": {}, "01I9AjFZQOl4ohLG": {}}, "fileExtension": "23aArhL3tAuApGJY", "name": "XLwmfeEAggwUVyC4", "shareCode": "QjvrPHcUPBfm7wxW", "subType": "0T1gokqvSxE7uiFJ", "tags": ["i0uaDs3VTybta5TG", "72ouKOFCUZcQttgH", "L8Xd8N9zt2Nky96f"], "type": "2uaJhGtnsvJgGNYz"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'ENxGSZJvjgbcAwOr' \
    --contentId 'gXLrkQdwKExEJFC5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'qwbv5wHUamglF8S4' \
    --contentId 'LqoByPc5X08J0i16' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zsULvLNuguVdr3Uq": {}, "sVSKUhllT3phDuJc": {}, "Xsxk859H4qdp5TmP": {}}, "name": "jDzQPxTJV3TdNCwJ", "shareCode": "4kW7VIr7Qs1xFzUQ", "subType": "hOzNUMLUx9Vraftr", "tags": ["tiql6KkpB4MrD8AA", "pBCSKB4URuHkkXhm", "TYqvkovBtmCndAxi"], "type": "fdNmpKsURLws1fkk"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'Oc23u7YnNJr8lqVb' \
    --contentId '3AyU0ZxSsxyBCuuH' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "CQwmkHhHSI6WeCGC", "fileLocation": "YsFI5k9gP2GAb5kD"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'xmL4MQ053nJ9BbIy' \
    --contentId '7HtwrzDr3PXnl12w' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bj2PGN7SfPIhvHjX", "fileExtension": "CtYsAG4PZlylWe91"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'AJUBOrJqyT3DGRXD' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "sKLYcnxBFt5RYWB4"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'EDzCaqN5wtfw5upG' \
    --offset '99' \
    --sortBy 'BhnOVqWEbnIBurI0' \
    --subType 'Th2AuUx4dfGeaaZ5' \
    --tags '["AQNfCwZT3VGHcEU8", "ZIPr6FOroezRBgKi", "GyommuDy9hXD6KoP"]' \
    --type 'op2a4vaIrdb0OStT' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["URxHPIMlFxMzBLYF", "ehY2T76WLMisWYab", "Exhnwu3leQ8WjXO8"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["IJrJkrtKEKiYXXwT", "pkz2nxF38dSts3Fi", "tAsa3m8Kx48Wwwya"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '59emuIpnJPdeYQUc' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '8pt8KH0K7pm9A97Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'jBsaeoTN9hzpQwkd' \
    --namespace $AB_NAMESPACE \
    --versionId 'Bb32Ot7wb7stGnP6' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'tDsUhF0Lm9yhEzRk' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "l3i0ltpZ8gjj2lhX", "screenshotId": "D3oXjMrK7M7RtYia"}, {"description": "qG1uk1UE1VmkedQp", "screenshotId": "4vrNWXHDJe92qHaU"}, {"description": "asZRIXiSxop8yBbk", "screenshotId": "vrVcBc7xJC2YcYca"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'INyNb9YihjdDNCLs' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "x73i9A2hQ9iWa0vM", "description": "7j5b4RGisudqtRNh", "fileExtension": "bmp"}, {"contentType": "snSdOEaM0nlCltdN", "description": "o0lxwK0WN6xoXmY7", "fileExtension": "jpeg"}, {"contentType": "BtNOU0HptJPJlFx5", "description": "z7i9IpfDwXplQBA8", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'bIayz5wMHGZ9L8XY' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'llK5UJXnvfXVsJ6B' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'uFNHw5WUdlzaqpXH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'tHtVw8H9grxqAYKw' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'tHd2Wg5ZCuGASwTj' \
    --namespace $AB_NAMESPACE \
    --shareCode '4pwQ64UPYvEq1Kxh' \
    --userId 'eQbLQsz0fDgfClJe' \
    --body '{"customAttributes": {"0bivX8VDKWYO8G5U": {}, "ub1j6JDhJaK1uZS9": {}, "5kSBP0V2Qt5Rvq8y": {}}, "name": "UuM4J03p2gKpU9z7", "shareCode": "7gXH2NYIH58ofuOV", "subType": "VyNOiS34sFUkbKco", "tags": ["k1lmjaKaJT9QXn3i", "rL3LYSvXZ70ilr69", "mm7vnYVmmpkX91tf"], "type": "Lf2zfHrwneUgLvgn"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateContentByShareCodeV2' test.out

#- 122 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Q2uRu2doQShPs0H9' \
    --namespace $AB_NAMESPACE \
    --shareCode '7QTK97wx1wsUD2YY' \
    --userId 'DwfFyk1bRpYiZ9C9' \
    > test.out 2>&1
eval_tap $? 122 'AdminDeleteContentByShareCodeV2' test.out

#- 123 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'cHILNEo18NO0kU2s' \
    --contentId 'KzDTxFojsPMtLI8g' \
    --namespace $AB_NAMESPACE \
    --userId 'tmeDF3KNqUzLoSRP' \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteUserContentV2' test.out

#- 124 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'oKZEudhXBNc17bNU' \
    --contentId 'YnMb7IhHBQ4Eh2MO' \
    --namespace $AB_NAMESPACE \
    --userId '79JjkQ45PFvz33cI' \
    --body '{"customAttributes": {"QrPgvnSy4TN2uPUX": {}, "xpNeYE5fGiuSj4nq": {}, "8o7etKVCKBmG7U2S": {}}, "name": "m3Qc7kIexczGQXgZ", "shareCode": "LAIEOdPOwl6pJnbX", "subType": "B4QkozRqICsFJP0A", "tags": ["1Up15cPaRHPIBP25", "f93wYr7AOqJ8p0qH", "URuRaNJKrCPrU3PY"], "type": "E9sfjlywe9pM8kb6"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateUserContentV2' test.out

#- 125 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'sRLW9pS25gDtd5fR' \
    --contentId 'kA1PzLwEnHZh4iQV' \
    --namespace $AB_NAMESPACE \
    --userId 'uEeWc87LbxLZ1wSf' \
    --body '{"fileExtension": "uVCdpENupajFU2f1", "fileLocation": "PYOdW98CxSFCGAmy"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateUserContentFileLocation' test.out

#- 126 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'jXahHKdwH9q4qrng' \
    --contentId 'L8DwIQfJXqyrCzuH' \
    --namespace $AB_NAMESPACE \
    --userId 'dtsp9cr0mSNenQxU' \
    --body '{"contentType": "LAZnAIFNGgmQXSVl", "fileExtension": "vi7BJRxs6Oa1cjPv"}' \
    > test.out 2>&1
eval_tap $? 126 'AdminGenerateUserContentUploadURLV2' test.out

#- 127 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'wUWyfahch1HfVP50' \
    --limit '55' \
    --offset '55' \
    --sortBy 'pVVNdxMjZ3q96zKk' \
    > test.out 2>&1
eval_tap $? 127 'AdminGetContentByUserIDV2' test.out

#- 128 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'fnDONkYPLcXLmqCF' \
    --namespace $AB_NAMESPACE \
    --userId 'OEdUgaQ6jMlOca1B' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateContentHideStatusV2' test.out

#- 129 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'xnkijP72N5SMpHxx' \
    --namespace $AB_NAMESPACE \
    --userId 'iiLRQNBsrpZXtspv' \
    --limit '61' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 129 'AdminGetUserGroupContentsV2' test.out

#- 130 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '15cxgECt9w4imFia' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '90' \
    --sortBy 'kLAXjad6EIXLwvIP' \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByChannelIDV2' test.out

#- 131 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'osYhhEKxNHOyCycf' \
    --offset '44' \
    --sortBy '1CuZXgPvZkg3Py9c' \
    --subType 'E4RKE4Nlw8Rdwk6M' \
    --tags '["ZOPCTWN7pl4Xc8O5", "xYMu4minw2LNTs0C", "hwvhpBMiNdPEYR7E"]' \
    --type 'jP8kXJDQ6PlUE9YE' \
    > test.out 2>&1
eval_tap $? 131 'PublicListContentV2' test.out

#- 132 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ma6HcOYbJgHyEvHu", "Tf1kcvzAKTiHVwpY", "XITCuqD1K5SFiLtC"]}' \
    > test.out 2>&1
eval_tap $? 132 'PublicBulkGetContentByIDV2' test.out

#- 133 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["miThqXwwoo02Mhpx", "DIqMFWw1N2FsNP48", "ORfjjAwbhsSQxB9D"]}' \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentBulkByShareCodesV2' test.out

#- 134 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'Fb1LIe7teaMGfRWi' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByShareCodeV2' test.out

#- 135 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'dxYD4bq8aBmZuYIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByIDV2' test.out

#- 136 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'wUF6obbxRAhIKQza' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'PublicAddDownloadCountV2' test.out

#- 137 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'LsdTrVd9ybsw66sb' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '12' \
    --sortBy 'CyAI65Eb2i6s0x46' \
    --userId '2wG8QW708NPecS5G' \
    > test.out 2>&1
eval_tap $? 137 'PublicListContentDownloaderV2' test.out

#- 138 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'L7NrwkXKc80uqNUY' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '10' \
    --sortBy 'U69MLWGXt8AbocOh' \
    > test.out 2>&1
eval_tap $? 138 'PublicListContentLikeV2' test.out

#- 139 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'x5YGehcms1vK6YcE' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateContentLikeStatusV2' test.out

#- 140 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'lQiOCoSkL4AQN3Xt' \
    --namespace $AB_NAMESPACE \
    --userId '4xeNoxnDacfRVd8m' \
    --body '{"contentType": "06kREtEVH3yPQ0FF", "customAttributes": {"1IGYMlPjhM1i6msh": {}, "VI4qY1CnCk3DO0DG": {}, "BTzbG1nu5YjOBDWf": {}}, "fileExtension": "amPXjbpXh7pG8P84", "name": "Xyn68pSe2RRgtVOj", "subType": "5jxx7AUaB6EB8H0O", "tags": ["T4vk1ttnJDhWuXWd", "9hTNJkOYvTwlasY4", "fq47BolV4Oge51B7"], "type": "UvsqZQTcZXmH4lHc"}' \
    > test.out 2>&1
eval_tap $? 140 'PublicCreateContentV2' test.out

#- 141 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'G0FrfHjNW7AHspZY' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zOO9XJJfYvxcyDAJ' \
    --userId 'Vkz4hnNZL4u6DJX0' \
    --body '{"customAttributes": {"lzzLd6mDaQgNsr4e": {}, "RTprbRaBvoVhAgLu": {}, "DMY1vsd1e71QpEKD": {}}, "name": "iPlT57TdztS8r6hX", "subType": "BTMmZZlOhT4nwX3L", "tags": ["M9FeMJf4CR7MkMJY", "lXRZNUdiKtdmw9a5", "HsCVKyRwp2LpoEkJ"], "type": "qBH6qRV5ISjtYIxS"}' \
    > test.out 2>&1
eval_tap $? 141 'PublicUpdateContentByShareCodeV2' test.out

#- 142 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'kh5UC2qH60QxXCTr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FRud3g8rDHrkDlf7' \
    --userId '0fv2Pe0ZyzYS7Y8I' \
    > test.out 2>&1
eval_tap $? 142 'PublicDeleteContentByShareCodeV2' test.out

#- 143 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'JAjtEUQmT4DXuw1R' \
    --contentId 'xM7F6YlYrTUpMajM' \
    --namespace $AB_NAMESPACE \
    --userId 'eSzusgMH7UXiGco3' \
    > test.out 2>&1
eval_tap $? 143 'PublicDeleteContentV2' test.out

#- 144 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'ufIPXR5ClTXZrbKJ' \
    --contentId '64xvR9YAimCFMJSX' \
    --namespace $AB_NAMESPACE \
    --userId 'cw4IqZPLRKhZzXdl' \
    --body '{"customAttributes": {"iBgsLJtg6r5ErK92": {}, "6ndLtvTyisRiPo0A": {}, "7dVYOmxvOSgH4uvn": {}}, "name": "0GbAZ7WTnfs2GGzT", "subType": "NYSE7XqXpvQe0evW", "tags": ["wDACHVLYLCG4j7pE", "bocPit9iWS3uqHFb", "SxKtGLf0uwNYroi5"], "type": "WFM5Nzbndnqf1ICA"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicUpdateContentV2' test.out

#- 145 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'yMSvuUGrJEQv6uzR' \
    --contentId 'cvBIZltR2X3Lboqi' \
    --namespace $AB_NAMESPACE \
    --userId 'it3I5xBbAVwKFUL1' \
    --body '{"fileExtension": "0gHZJQZDr8iPByGn", "fileLocation": "JzOtVMxApGpUWZ2h"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentFileLocation' test.out

#- 146 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'jRm1Mtkd5qd9tlnc' \
    --contentId 'pPZuO8m0nQwfPLxO' \
    --namespace $AB_NAMESPACE \
    --userId 'KjnNQva2k8QViS6Q' \
    --body '{"shareCode": "lM2cEp7NfmhY5ZEx"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateContentShareCodeV2' test.out

#- 147 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'd5lsivoPXWq8ujDR' \
    --contentId 'V7FMPNZgt4NytIvB' \
    --namespace $AB_NAMESPACE \
    --userId '2g9vy0kxrYmGXrG0' \
    --body '{"contentType": "ffcDaxavyJ1DjTRz", "fileExtension": "CZjiQKC2lsKFuLi8"}' \
    > test.out 2>&1
eval_tap $? 147 'PublicGenerateContentUploadURLV2' test.out

#- 148 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'dVb4tVjMRW7G2kzG' \
    --limit '3' \
    --offset '10' \
    --sortBy 'yhMDhOYetkEicP0z' \
    > test.out 2>&1
eval_tap $? 148 'PublicGetContentByUserIDV2' test.out

#- 149 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'Q70PUCe4sQLN1dae' \
    --namespace $AB_NAMESPACE \
    --userId 'vwl4S34GYqulwT3o' \
    --body '{"screenshots": [{"description": "w2DHdxBJUerykgyv", "screenshotId": "pBNKj3XAfZkt7fJ7"}, {"description": "Cp4jYmzVExTq7gYx", "screenshotId": "v6WTcynY6qkgJ86h"}, {"description": "h0mcBIr01m24VJrd", "screenshotId": "A66sx4sh4EzCMKBp"}]}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateScreenshotsV2' test.out

#- 150 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'q7rzPXDGD7FRpWjr' \
    --namespace $AB_NAMESPACE \
    --userId 'zsFBnATBL8j39XyN' \
    --body '{"screenshots": [{"contentType": "tA1chXdBq339hoD2", "description": "dhQD43hu9ButA9MU", "fileExtension": "pjp"}, {"contentType": "15vLjVg4Os95a8hY", "description": "q7IpfpM6PGpVLOVg", "fileExtension": "jpg"}, {"contentType": "cmB6ZpGVo4IBjw8Z", "description": "YIn84y0oiM9iYteE", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 150 'UploadContentScreenshotV2' test.out

#- 151 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'HuQMJ7GcC2toiW8R' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'PTgyyItYR23XdVfz' \
    --userId 'hoOffLAPcnhnLFEm' \
    > test.out 2>&1
eval_tap $? 151 'DeleteContentScreenshotV2' test.out

#- 152 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'FviMzDqTiCCa3eIE' \
    --namespace $AB_NAMESPACE \
    --userId 'Ax7RW8TnCJGOoBby' \
    --limit '93' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE