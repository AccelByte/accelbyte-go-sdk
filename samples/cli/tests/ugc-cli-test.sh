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
    --limit '54' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "sFg5VAbfDJRNtmJ3", "name": "3tV6X6ypjajIr8xD"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'JZNRB5cPPqSWGJz1' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "oPcjwcKgEmvkc414"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'cUd4TbpUI7F5eIOV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'AITAYR8B4pgQJDLy' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IRkzIOAhphFtXi9O", "customAttributes": {"Uu1obQThbagqv4y9": {}, "Ub1TsWf97WscreYv": {}, "gmQmfbQAWr8gxrQn": {}}, "fileExtension": "452Wmwpm3YXMPXsD", "name": "yGMABwNjf7hIHhXG", "preview": "mQ6s18to9G10kRfF", "previewMetadata": {"previewContentType": "c5Rv3hCNlmn8oe7v", "previewFileExtension": "z2ngS3DmLndJBmp5"}, "shareCode": "Dpkp2CEFyCHEqC3M", "subType": "dNrGoK5hD8OjH7DC", "tags": ["RduCS41ikwCrSQum", "wR4pomRrVdeqttME", "oEZHqiXOrmRDAV57"], "type": "IGpUR58yJUqVfXkZ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'YfwVL5JIt5pFCTLB' \
    --contentId 'HnBp6BerXXkVmFS7' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "oF9qEBtChDPKmq7m", "customAttributes": {"Jt8Q2uHyhdNVjphN": {}, "svP45LdtvNfH42ET": {}, "BajhWgNP8dGK2E6E": {}}, "fileExtension": "Do7BXXADC97FquyS", "name": "Z9fscRDvShjEcxgx", "payload": "XUfdLbCd1iUOxifE", "preview": "amyMRdhqZ8CUdiLI", "previewMetadata": {"previewContentType": "t2iBocyUpYljRuG4", "previewFileExtension": "fqE6UwlBH2kBnnuM"}, "shareCode": "NvNplQBdEOtLGuIA", "subType": "wsbbacBMDoiaHLzs", "tags": ["HUyBhyHjhN49tDpx", "MxmL9cVZSXt4rgKx", "QYtpH8Uqc8cb2qH1"], "type": "0AiGKYlqFFh8KwT6", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ToyTV9g2zJPDsQpA' \
    --namespace $AB_NAMESPACE \
    --creator 'Vd5OAYm2ogr15JPx' \
    --ishidden 'YPPY1L4roarITWSc' \
    --isofficial 'cUvDOvAPHusKL3Ai' \
    --limit '92' \
    --name 'jWhv0AzXPfRsfiQ8' \
    --offset '35' \
    --orderby 'i3GNUTOtxclVLUGz' \
    --sortby 'jgSpRZFz9J5xU7hy' \
    --subtype 'Dj3vEBp9XaA5mHwp' \
    --tags '["0ONNcMaCc0w6kRiX", "LHlmlUcn00QDz4Fk", "1xmnRmbAJ65CdwQ7"]' \
    --type 'zikGpOeEwTnhzAx6' \
    --userId 'oPz2FRrEzYs8OrIg' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'OnugVukckiPmA4Fu' \
    --contentId 'PY1SnyjykEyG3UZS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["5I8G1WvyjD0FfWBX", "2taj0wQhu4A9lNuO", "nKw6DuosKoe4ZBHb"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'U7WooF090PtfojKL' \
    --ishidden 'Qr69er4fAcCmlZAb' \
    --isofficial 'IdbeHrm1kbuDSFqH' \
    --limit '92' \
    --name 'i4RKvttLkdd4Qoqt' \
    --offset '71' \
    --orderby '2CQulukHIMLRdPLa' \
    --sortby 'JONKlOe5YaF5R9HS' \
    --subtype 'Jer870jfQpv85vKh' \
    --tags '["slRUzYx9TaKUHyYI", "BkoixZttKkjOkyRZ", "1So57qM330GIUN5u"]' \
    --type 'Dp5THhq7ttymbErT' \
    --userId 'yQ9HZ7R0SYiEnt8q' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["zFm2QqLWi0YKQm7N", "75rhk9VDf4jwAD7N", "PQ0ALmlrFQ2q23M3"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'BrYRPxvXhbgQhIpn' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'Ss7NgsKqv7BLU9KT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'AnRqdgjGS6ok4Ewb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'oTw6qWUiKZfoftlB' \
    --namespace $AB_NAMESPACE \
    --versionId 'bPBtEMQfyI2lrJm4' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'eopYJzww5ftQVv7A' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "EUgq7mjuyy7K2fdn", "screenshotId": "mnFh5J9VWU7u8cvd"}, {"description": "Erkkz68xS8lH1TBL", "screenshotId": "jw4DI93xYXmGx7qF"}, {"description": "C9CSjN9gntAQASEe", "screenshotId": "dZypdBS5xIp9icV3"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'vYkaIk9bTggbSli4' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "pWdjilzpHjLG4gT7", "description": "C4QwfQP8rATOsLCQ", "fileExtension": "jfif"}, {"contentType": "UqXjPf6RSGBXlXHo", "description": "XjEfo8CH84bE0Qoh", "fileExtension": "jfif"}, {"contentType": "wWc8h7syL8tmvgae", "description": "fjmvXVmoEXSj5BXA", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'WkjQVomNCEkbLqUL' \
    --namespace $AB_NAMESPACE \
    --screenshotId '1PKNoHAXEJrwt3Xg' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '5MmHXGTXv9tNtPSR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["9FrZO2R97ucrzTeU", "tc1nn3nV4pAdTjbY", "nw94wu2YvFvQZ1KX"], "name": "GhUb8E51k8OBDFFr"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'VuL0nSTAkNkeWX6W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'awaKWIyGy5oHduMt' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["yyhgRWRGvk9hOAYY", "SxW4TO4CXBtWGJQa", "RG547PB8rjix9yFP"], "name": "OKiN4wCPYSmvqR72"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'W6MrxlBysyNvjWHx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'FoaetrlntbEKm92w' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "QZq1B3PmIOlzQHBo"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'mzIp1fne15DR3VgA' \
    --body '{"tag": "nGA0JDm6HxkZIqmm"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '6ens1VustgWkl0c7' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["ISa22ZNQ6AuWASmD", "kBPyUh3iKRbFMClo", "y1F4V3Pe1EC8ZGUA"], "type": "c9XuP4jfFqOUMWhh"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '1nnq1kgSoWqF7dcC' \
    --body '{"subtype": ["k1Jp7URURTYON22Q", "idekXBilIUzlhVvu", "c7ZSDRc779ZmN5H8"], "type": "CHqvkMGna3FhwhJX"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'vJA3CApdQDURhRaW' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'G8LFTluU2rhYfnBl' \
    --limit '74' \
    --name 'aJ5UBYxBRMhj4gW5' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'IzknyZPg1m7OpHzr' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'hlmXeQg5NmwRRnmU' \
    --namespace $AB_NAMESPACE \
    --userId 'ZpoAbkc1v4N1mDyf' \
    --body '{"name": "b9ksaDPiIo2GFR4f"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'fXyLYZJhuLhL6Jmn' \
    --namespace $AB_NAMESPACE \
    --userId 'AGKyfAQrylX0u0pQ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'ofSBbww7B6zsAQ8Q' \
    --namespace $AB_NAMESPACE \
    --shareCode 'q8dlhJP70G40lD9U' \
    --userId 'bIb9YEZWiSJRAM9m' \
    --body '{"contentType": "z0dBwgnPSI1qGbn3", "customAttributes": {"qbufCBIv8YvoEAF3": {}, "xfAG2wWL8tqcqEMz": {}, "HZi5uGNF4eRaRfO8": {}}, "fileExtension": "dWzoXfpxJFd6pxZT", "name": "2pZGXKm3uHsMySvO", "payload": "b26upReT7XaIKzCU", "preview": "kEHQkCHS3dFzLTMo", "previewMetadata": {"previewContentType": "meQSnRDW3mVy22Ar", "previewFileExtension": "qi7LhD3YDhISgsbl"}, "shareCode": "aFjhExojgWcw3L2p", "subType": "xqWdXKDY231hMkWV", "tags": ["Xq32A94OLWBZDnxG", "fEV6uxGaBxu9I6Hy", "RVeYzWB2Lue8jlLN"], "type": "syZh8DV0zG3wrbx7", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'ZlrMtS2HRwmEM3fH' \
    --contentId 'cTNryOCrQNbUXPfH' \
    --namespace $AB_NAMESPACE \
    --userId 'WNphwmUTTKJ6ltEs' \
    --body '{"contentType": "tAPBCaDclDvXyhyF", "customAttributes": {"ndf88l9RrZ1y29ze": {}, "bQ5p7EgMxF7PugPE": {}, "V6FMw0wjsCV0Bzga": {}}, "fileExtension": "fjOfJ3sPAq1CvdBY", "name": "kHHdr7XoQk07Hif1", "payload": "XgRtP0eSDNJMCnR2", "preview": "e0PcOVDlWjEPrsiB", "previewMetadata": {"previewContentType": "BDvulMmlWkkJiOK9", "previewFileExtension": "jenxTFISrL4I9Hzi"}, "shareCode": "tfSkvSy6c90oAOei", "subType": "aufsXOPAx7mDTKzZ", "tags": ["ppJrLTlrQvpOlvcW", "vDWL0BSV3ZXt6OJw", "KMhjsuthnAmRUlNK"], "type": "iewI3cFk76bVGlUS", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'TqEZmyiyY4BNHuUU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Eom5tO1ycvytNGfD' \
    --userId 'LqN8RgJRblggBGgd' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'levf19pBhqlLXGqo' \
    --contentId '5tct1Ju0OyiX50ju' \
    --namespace $AB_NAMESPACE \
    --userId 'tx47WtOA3Y805KLV' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Jj5hGWWLTe6LnZlw' \
    --limit '7' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'lQ4dhsVaaTjkyTBc' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'boXObJ3uYuyOwN6n' \
    --namespace $AB_NAMESPACE \
    --userId 'S0rOFoN9CZZkc8yY' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'dAyt4ExRKPsOqxWS' \
    --limit '66' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'selXXZYvV1OPLHoR' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'zGBPYgYKkFkF3TbI' \
    --namespace $AB_NAMESPACE \
    --userId 'fwnGoYBjMfZlgTPz' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'HeiWI68R0SaruOvY' \
    --namespace $AB_NAMESPACE \
    --userId 'lZWbIDenCccl4xKx' \
    --body '{"contents": ["AGrgWX1iLFQ9lBjW", "ahhRfqloKGe038zB", "kW1JKmlCyQUpF0WG"], "name": "z6UpohTLXOkS0zz3"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'yJCQCfCiOZVHQb03' \
    --namespace $AB_NAMESPACE \
    --userId '8PaUyAXwooCKugxk' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'W1Wq8JL1vzvQPJAR' \
    --namespace $AB_NAMESPACE \
    --userId 'qtkTWm3cjeeorqOk' \
    --limit '4' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'qjtznHteCSJbBZ29' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '9DkfzHzuYIFuzt4w' \
    --namespace $AB_NAMESPACE \
    --creator 'fqv6aTmKR9KYuazY' \
    --ishidden 'YPSJVdHO6RBhHLTk' \
    --isofficial 'PGsUfXDDKrzBfMRv' \
    --limit '33' \
    --name 'VG5EIvLmC7cufVUy' \
    --offset '74' \
    --orderby 'hyQwV5q9r3WHlsK4' \
    --sortby 'HB1NHKL3wLlfzJrU' \
    --subtype 'NPl4s8HyHLAnq5v9' \
    --tags '["5qqdtrRMeHdp6zVt", "IqsX3pzEbU5gwAZy", "8MHecdJLWh5seCdK"]' \
    --type '6ZjB6pjwiBqoBiKS' \
    --userId 'KSFgYZBBM9v8o1Dp' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 't8BoQ1PP5qUveon3' \
    --ishidden 'ZjgsVIxDLIqcgKe9' \
    --isofficial 'VFc2ixYqxqkfMK20' \
    --limit '75' \
    --name 'fHIQBr1d4J9HrkCC' \
    --offset '11' \
    --orderby '5T6VKYGgnspb6Y9Y' \
    --sortby 'DK88EOtgYLm4t65t' \
    --subtype 'vNYi0eVLFaudUX87' \
    --tags '["CuxB7s5qjehO48Nd", "y8gTUwHLfWL6ntYk", "I2VYdO2WkwNsLg6K"]' \
    --type 'hhdCedvP7QQer59Q' \
    --userId 'O65y8lNv47kB29Cb' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["w8mjXn9NZ3XVqbYF", "lNLcZvhimiICj2ZO", "Ymx7STfWOq7Wd1ZR"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '57' \
    --name 'sQ68Pd2a5U4qzEaO' \
    --offset '33' \
    --orderby 'FuuUVKSoHuOkzHqs' \
    --sortby 'FLqFVTjMrPFSih8W' \
    --subtype 'K5O75eQrixaqZLUf' \
    --tags '["5dQYsCGNykcv8dNz", "D7uyNLnmSanvpZcj", "R52qM0Lu1EM7p9bJ"]' \
    --type 'nRhaHLKFvz0f3AyH' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Ri1Ms9GZ92o07dgw", "ef4ojlojNK7YbQYy", "PmjIVSmcXQAM5HEv"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'gERos6hx1gxeuFZp' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'M4ABQZnEaCym4TsJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '9W65JAnXsaaZfgCd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '6yqwSSL1Plb0gYOW' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'FYVdqcN1BKMx0HUL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '28' \
    --orderby 'YlzvtNUmwOUo0DwO' \
    --sortby 'ti2hmYZERf0OErIE' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '71JJsCUkdC8Ezczu' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'YnHdrO1RRDerzij5' \
    --limit '8' \
    --name 'MnDHtutfhIE6u22f' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'cNnXpTNMq9OaFSqb' \
    --body '{"name": "GI5aGqcsntr3OCPb"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '3sD7dvg7RDdgeS8S' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'X8msQDEp6r5mnJYK' \
    --namespace $AB_NAMESPACE \
    --userId '3kzLnmR7sCc4gSYW' \
    --body '{"name": "PWVy165q6W9nTzYn"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'xoGqlulsm61H2GTF' \
    --namespace $AB_NAMESPACE \
    --userId 'qBf7vhtZKIIj8WEz' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'GjGqqlAcKB5M1ii0' \
    --namespace $AB_NAMESPACE \
    --userId 'cagZGhH3M5dSXKiA' \
    --body '{"contentType": "ySaonpC3Ft9MnK7P", "customAttributes": {"XdKo2pgchvFzUXLo": {}, "Z0RE61HKB99EiePL": {}, "54qwYOVxOStiVNoj": {}}, "fileExtension": "8E74UQaRGgAVkgJJ", "name": "YYjDysZ3hSHmVBs2", "preview": "TWnwIvfwd5giIRcn", "previewMetadata": {"previewContentType": "Udvky8oER9uheuZn", "previewFileExtension": "hPPDvDsyGPC9cZUM"}, "subType": "4FB88Jpw75XXqJXq", "tags": ["PxIxz8uMw8omx7NR", "pWF4xOrzNGlZWxqe", "46rEmoU5WVsF5JBu"], "type": "2l58U5TBj8bu4uCc"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'qCrXVmshkoTbAmg1' \
    --namespace $AB_NAMESPACE \
    --shareCode 'VsMeJiTP1agNIGvH' \
    --userId 'qSPceQfSDlj0iZnm' \
    --body '{"contentType": "i8ub2ZumG5sVUuWe", "customAttributes": {"htYU1l2Pls3nPE5f": {}, "VHu5lZOnfJkBj5ot": {}, "nI1jzwlrRJ83hQgo": {}}, "fileExtension": "s1lPHs8C9TpdNM2H", "name": "9mFVXrFjJqX7WbDs", "payload": "8CkFbsTff2wPRFcW", "preview": "atQX3GxEtjS8wIJh", "previewMetadata": {"previewContentType": "Y2HWM4DxxV4K4rt3", "previewFileExtension": "Ob2yJOmcoqbwbbLk"}, "subType": "YMcvCiPuvo8QGXRN", "tags": ["C8QczrN5ID5ddHu9", "HYNUlH1lVUmB7ZXl", "oFZU9p5CN2urM1hP"], "type": "CManaRuK9WFdQH6M", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'z4XFRWGxNyEbYqf0' \
    --contentId 'p9pPwkIVF3dGO14c' \
    --namespace $AB_NAMESPACE \
    --userId 'S97eTOIRH5sm2qK4' \
    --body '{"contentType": "xtnNdFsSa4Uy9ZwC", "customAttributes": {"Fm0bSd0wj1wW42bV": {}, "LpTPrWRLzhISLzwW": {}, "YzEbQIV9uvFHbDHI": {}}, "fileExtension": "0jqv8SIxE99Bqx5L", "name": "oiB9EKEGnMoHaCZo", "payload": "hLdJrcaQqwN7e0QK", "preview": "WZP7aQNYXvQRw7aA", "previewMetadata": {"previewContentType": "ayxSq2cYTIMBmrD5", "previewFileExtension": "lVAXw0japvNM048e"}, "subType": "NW1naL2oiAgcBRuk", "tags": ["VZ1uYcc8l5j0b5nc", "6bpuTKyZwoyx1pCp", "l81uWTQjCUD5XUVI"], "type": "3N5YNCgUr89j7hHo", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '0tFXjiGeFdpPJurl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yo9h9vOb1NQrFOGG' \
    --userId 'gaU0zAiipJMyNHko' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '4oc4iMI2a1BgAXwy' \
    --contentId 'gWn8BK1G5qQftmyC' \
    --namespace $AB_NAMESPACE \
    --userId 'NE8IcT6dSReQ72Y4' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'OBJxo1P9Bi86qUBJ' \
    --contentId 'kh7sRHbQxd0LBlEm' \
    --namespace $AB_NAMESPACE \
    --userId 'zBT6usCNFbCRmoVH' \
    --body '{"shareCode": "TRXoqn34luHvdRie"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '7nkVGtZU7s2eRg9b' \
    --limit '3' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'PzwXD2GuPdYFDKY2' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '7W65PPlUVdaXgS01' \
    --namespace $AB_NAMESPACE \
    --userId 'KRUYk5p7584tse30' \
    --body '{"screenshots": [{"description": "LTweBvqAkHbcuX0D", "screenshotId": "lXV2HKLNLp7tmnBc"}, {"description": "xOmuLQiBfr6BRL05", "screenshotId": "JsUGiFbX9rT8sPtJ"}, {"description": "UrG1UKQXt1PXUUdH", "screenshotId": "G1t74xtmNSql0YZ7"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'AEAw41Ss0H1zqeDK' \
    --namespace $AB_NAMESPACE \
    --userId 'U7kCAFIKKkdpm70X' \
    --body '{"screenshots": [{"contentType": "uPIpFGdc3lLkgnvg", "description": "Vr4obYYowSXu1PVz", "fileExtension": "pjp"}, {"contentType": "vjgUptvmSg19q886", "description": "klJJJaru0xTTlCg3", "fileExtension": "png"}, {"contentType": "til84n3qJDO4lr1U", "description": "J9bLHuiGsw91OhSw", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'SFVFUWLhgbIyllur' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'sayE0LrWR5UQSSO6' \
    --userId 'Qg6r37CjGqyvtFKz' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'HUWulVjw4RKJM5SJ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'rgMuij2t6jlZWoID' \
    --limit '74' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'JssCIf5VHVe7Ae2Y' \
    --limit '18' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'PAKR9YtcHlxrFKdB' \
    --limit '13' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'SObaIYtkUJFyonVu' \
    --body '{"contents": ["plR5lWI5H5p13RXW", "SVWO5GLnaFWtcpDX", "MGtuSzQ3XVgl15JY"], "name": "2eCEQbYuqrpLzgjQ"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'O3TN9FmVy8XShQoQ' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'M89FdB89DmJckHBB' \
    --namespace $AB_NAMESPACE \
    --userId 'LJR7SK2lyHBU9iyq' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'pf0znN0PYUztZCIa' \
    --namespace $AB_NAMESPACE \
    --userId 'kv1M0EZx9oSkzoP5' \
    --body '{"contents": ["aF3JhL2EpeCrcQld", "jLAqwnJxsUdBxCKj", "ZflkC0NbQcjDGiUw"], "name": "nvRllIZTIMOyIPDB"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'kvEMAkaMa7i0aqNw' \
    --namespace $AB_NAMESPACE \
    --userId 'FMHSQWpb9MaSD7eN' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'OakEwt1BSbfR91L9' \
    --namespace $AB_NAMESPACE \
    --userId 'LlaQREKkN8JKCTzg' \
    --limit '11' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'PQ1KylXdJGjbT2sb' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'Q9aYdv6OYBSqVmYz' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name '5RtIcHO7BfXv9JX3' \
    --offset '80' \
    --sortBy 'GpEccl2OIWqDUKor' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'j0rKPWEGEjJwAMht' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "mGviAdNmZGkCeWx6", "customAttributes": {"ko85ccwGm54G3YBf": {}, "EN6tgLQEg9AGGG03": {}, "7Euq8Hw4NA6JgJde": {}}, "fileExtension": "Ox3PbPXaBDSrCcgA", "name": "EukD3TqbmWN42VWi", "shareCode": "MMEZzRhpM07tPrUO", "subType": "WJEwEqhqrKP8Bw5B", "tags": ["0Tmxtw0piFWs7CyJ", "p5bAYSkyyCWGvjU6", "XZYN4lATGRwyWAsP"], "type": "bV5HhMZhzILJWyZM"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'Rv0VGUWLwP7RLNGB' \
    --contentId 'NLovIQ4u9bYkpBpu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'goR9nopHFLeSY8Cv' \
    --contentId 'qHHc0dZGCtoPdgk7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"CSd1DnIuPCZuyQeJ": {}, "MK3ZLBWRN2SZjzYx": {}, "fUOHTo209GwfXsMB": {}}, "name": "olMKdTj5H55UnMQ2", "shareCode": "vRrZlhoi4BziSx59", "subType": "RB351zXdd9Qq5IAV", "tags": ["M7Lszq1k6MO7prFV", "sjZiAszJyMQhBC92", "hXAi4K8YcDmCbXGN"], "type": "3c5hVK2DlMxnKnBj"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'Nd34W5p93zTfNOcw' \
    --contentId 'Q09aMVbvzyyKzXYh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MJMyCqJgFDkBYgmO": {}, "8Ramre3eTr6ZMVjG": {}, "68pxigc3SmXGlUot": {}}, "name": "tSDA0rKsF7mnX8lK", "subType": "Hfl8LKLfQMkgin0S", "tags": ["SYGHqeYKuejN8WN3", "poWRblVuYBcCuaN9", "E0WHCTQHd4EgR91t"], "targetChannelId": "IQ1Pw55xyoSsj6PP", "type": "iZZ6nfnx6UdDhYwZ"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'mU61ICS13XFDilMa' \
    --contentId 'HaaOMRi8ahCxwGMA' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "4bTXkRj9CxO30R5J", "fileLocation": "90evD45i7mbZbj7g"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'XkRE5Nbo19uCkL7L' \
    --contentId 'obznGd1bYx91r8Rf' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "cqBAgTsMVcssFJSd", "fileExtension": "cJVhYAFvRKsh4qPK"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '4xvcXS37tQcVpTim' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "vMpKFv8nH4LzRDGQ"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '51' \
    --name '4mjhsD5pLaYMxwgd' \
    --offset '25' \
    --sortBy 'HlC710Wj57nsr6Ze' \
    --subType 'HTMpRa21DdNHJJD7' \
    --tags '["TB21HGfPLHekOy8J", "iuAtfG8BDQrRMBCP", "osY4a3Mmh4ZFY67b"]' \
    --type 'OnBhx5U7pGedwhOq' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["IzGiNWFDgzzVO3hh", "LsLKYdw2qCMrMsX8", "vnbDBkHd1kJQjs7Q"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["raobUfiOPuddHIh4", "wWKGFfk9mbpf4jAi", "PT2GXM3X6VThfoxY"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'Gt5RxKgNwJdUqyz4' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'ljhyrxg2PANN4gdh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'mtczMCKXryG38Zc6' \
    --namespace $AB_NAMESPACE \
    --versionId 'U5YIFMYYbAp9GPiH' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'sUFxxyizQ86qENn3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "DiTe6vlIPGEi4zRR", "screenshotId": "XcMPsJEbwiLumA2o"}, {"description": "of3KIwzxf2rw7xQo", "screenshotId": "wo1gyZ8gtoiAzdOe"}, {"description": "OkksQS4hqhIIKzcv", "screenshotId": "OqBRORDFL3Zv1XAE"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'WfRA8l1WGI3Hv2R0' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ax2T6gGk36rlvnPa", "description": "tCETgcFvyQJztyde", "fileExtension": "png"}, {"contentType": "Jyis4Zq8JZA168zQ", "description": "DTZ95FZoL98CdPkp", "fileExtension": "png"}, {"contentType": "k7ilPyQ6DSyRJsgG", "description": "dqKDnGrMRnfL8Unv", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '76sMC5T1NYxbOQx6' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'LicLQN7Lko8gvQod' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '25ct1n1hOhHKwgWG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'I4IH1I0iawy3KqrY' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '14' \
    --sortBy '6uRI2ETYQy1zAAyC' \
    --status 'FHN0xZLiQ9OShLZh' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '48RnncLJfwcjQVf1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'sQ6e21DlT0Tl3rkx' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "EiBLMsFr3Q7Zrtal"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'p4X260u0d5KCraRX' \
    --namespace $AB_NAMESPACE \
    --shareCode '1XBAgZAsumlCc9z3' \
    --userId 'nRBadp97r54JB4Gb' \
    --body '{"customAttributes": {"xZjBC8iibFxqkoo4": {}, "64jOvrkINw9ZBB1O": {}, "tcBr86jbrW5cHFCD": {}}, "name": "NKCHsEF52JQdkDBX", "shareCode": "fQxJuTN3zY9vAhzA", "subType": "Yl8tnVcEBSmwvTsJ", "tags": ["WBAedC9dJJua6eNl", "RcNgo87EybqyVLlV", "auGkiQBVQDzmSNxy"], "type": "ttH4g65mBzwLrNeV"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'cQX90v26mVKNO8gA' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RFXt4WLjEOMtJljS' \
    --userId 'D1n6MZOFGSX3SiY5' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'fgV6tblJNuVWSHpe' \
    --contentId 'UGJprAhPrb8LwcUZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Y2elmd1NvaQl3Qs6' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '5S3OtGXqYkPbI6LT' \
    --contentId 'mxoTAiRLA9WufPuA' \
    --namespace $AB_NAMESPACE \
    --userId 'eHiZow00aFgpRQxl' \
    --body '{"customAttributes": {"Z2qrFWdmIhvbWYQV": {}, "g44hcDKWGcdGr9j6": {}, "xLoDh1vzJ7PmrcrV": {}}, "name": "ANGM9DRTcFvv3w5I", "shareCode": "q6k2zMqFBNAjlvbb", "subType": "njGNFawpxYGeoW0p", "tags": ["F8zr5lLzqdBpH1I4", "nWYcTagHIq9gQz5y", "IvYdUReBdUxPRzI5"], "type": "5f5hF2CANSSjvFfq"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'BQO8idByoLGRMNuk' \
    --contentId '7Wi8LS5IDr0FDms0' \
    --namespace $AB_NAMESPACE \
    --userId 'cAA9dITRlnMwizIX' \
    --body '{"fileExtension": "m3Cd3jc7Id8ta9PQ", "fileLocation": "7pw9gS43jYecLK3D"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'iP1GR3vW30X0QKh6' \
    --contentId 'TfKORE4OcJ4V9bGs' \
    --namespace $AB_NAMESPACE \
    --userId 'QsaSqbVY1SVKjx3N' \
    --body '{"contentType": "ndpuTXC3rtUIpyYi", "fileExtension": "ZGlJMjgoXI5zwqe9"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'iZgqqJRR1vWxG2mN' \
    --limit '50' \
    --offset '77' \
    --sortBy '9M6uZKyINAO7PeSV' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'mL9DHbJBiuP1m2hv' \
    --namespace $AB_NAMESPACE \
    --userId 'zRCUBDLa8aG82w7y' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'nbt5PQONZLpBQsoH' \
    --namespace $AB_NAMESPACE \
    --userId 'tJcepeBSiKrTnUwm' \
    --limit '36' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'YbXJncPriK8iNChl' \
    --limit '73' \
    --offset '42' \
    --sortBy 'NA3yqGMUyBNs3q2v' \
    --status 'LJaRaJaIbGFnC91j' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '52dLa7WWtdcdaown' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'dg4rmVoN64LB5Ujh' \
    --offset '51' \
    --sortBy 'TW9N83qsuaebAda7' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '73' \
    --name 'OHObkOUv5mFp68EM' \
    --offset '92' \
    --sortBy 'Wx6ama77RHfuYOkL' \
    --subType 'MU0tuYHwLzjxItHn' \
    --tags '["lv02x3bVYzrrEcjz", "f9YENAtS2hzpdWCv", "ptOU7lPXDEf6ijqd"]' \
    --type 'Yjb82rADzvOHG3pJ' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["BmHrl6xoLSP7s5fs", "2nf3sC3uUAwRu5Jb", "0BSdgCWrQFOslcYh"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["q9Fc27KFJh4N5Dxj", "oE2o2knF4vb2ZmtY", "lzSkxFWauKJBbNci"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'HNkYy7MtJGITtFRe' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '7h45PpJkZb7apSwQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'bfBY90c62hv8XVCb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'wQvPViJNWFR8AX42' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '60' \
    --sortBy 'rIYk3gxa7TfhZefv' \
    --userId 'PCE0hktBLvZIHAxk' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'LgZLXJoZxz5QHiTk' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '1' \
    --sortBy 'f34EWkKGCsl5myEY' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'obRJVNhoPE35TVda' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'XibjflMnh4E87Aoj' \
    --namespace $AB_NAMESPACE \
    --userId 'SpPhLiM5ib6t4HXn' \
    --body '{"contentType": "pocKhApuTWcrthWd", "customAttributes": {"gT6jhmIiqh5uE5qY": {}, "xJeQJ9tODMHsvBnI": {}, "ZI3qqEy5KZT92Hki": {}}, "fileExtension": "IQMgOTSHgwr2srr6", "name": "Aay8iineNFQCuudP", "subType": "JOctCgathT4e0kG9", "tags": ["UzVxcEaxewg2cIpZ", "dyPgxIZ42RHs8QBx", "1jTbw14MiUcXNY2z"], "type": "awNQwBGkXZa7V2nL"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'rsveTFWBvl9k9Yaa' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ljVnCVNFRQmPxii6' \
    --userId 'eN2LDp7kX5vmgjoU' \
    --body '{"customAttributes": {"FgPcZ5WJR7xP83wS": {}, "dnBFWI2XVGncmUXN": {}, "yfjCONebOTMpObJo": {}}, "name": "TCxnRqQ48iSQbvOn", "subType": "MFOORTPMuWeR97RW", "tags": ["qqK9TcZG2kaMUbX2", "tGGIHabNbfEJGeNU", "PCrSN9oaNi4AvmT1"], "type": "uqotImhuG18MEz1y"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'U2jrpjcMIR48rj3V' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GTBU8dvKU7ioNFij' \
    --userId 'MudWmvel9Z4ApEBP' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'DzkLWBQOPvlCboGH' \
    --contentId 'OZml9XX5SUT0sXpn' \
    --namespace $AB_NAMESPACE \
    --userId 'P2U80lbIzRprHBn1' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'J4YK8MySCNqXBIXC' \
    --contentId '9kkh7DBNPVJF7Hy4' \
    --namespace $AB_NAMESPACE \
    --userId 'VLXK84nhNAxTA7zY' \
    --body '{"customAttributes": {"Wr3ICxQQJ4yttmv9": {}, "nhCNwTTrRtTQN8HW": {}, "j4IiN1KluoUm8E5g": {}}, "name": "ToERaOuCYgqPB0F2", "subType": "dbJi2u8EUutkximg", "tags": ["ppHn9KcMrIXghJzq", "0rHF8kOViodwAtSG", "CTZVyBAQjDXWESCI"], "type": "NFPDR1vFeVli51Dv"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'JrTm27GkhNl2NaGm' \
    --contentId 'oWhYFuGsyspa14VE' \
    --namespace $AB_NAMESPACE \
    --userId 'GlCfrYCL6rzmoWyd' \
    --body '{"fileExtension": "7zro0vz2M4J2n7C3", "fileLocation": "5eVFjDMibMvocOz6"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'l4Mw2XcTbymEEO5z' \
    --contentId 'QC1CwE56Mt6JlPfU' \
    --namespace $AB_NAMESPACE \
    --userId 'lUeCmHttfUdIt6YV' \
    --body '{"shareCode": "PzxebK8VdwCHpU02"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'DUDkl0L3KiygR90B' \
    --contentId '0klKAG3qb47IO7ab' \
    --namespace $AB_NAMESPACE \
    --userId 'XZ2AAMMnT8rAqNSW' \
    --body '{"contentType": "xSCzpaOKaTxyi2ED", "fileExtension": "5cYkR4fDysFnT261"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'K0ymvs5wOsDtTubL' \
    --limit '26' \
    --offset '96' \
    --sortBy 'imoT2dAAOWROTYeR' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'hjNwGBooalHGhU7y' \
    --namespace $AB_NAMESPACE \
    --userId 'RiUBuGaV6qGDYWO6' \
    --body '{"screenshots": [{"description": "SeR7UtpK5ATCbz5d", "screenshotId": "UzrHUOMt0KpZpHMx"}, {"description": "dboTxkGDxVI9DOZh", "screenshotId": "uUwJEfHTyf7lCi62"}, {"description": "5i6XW358rSKj5Xga", "screenshotId": "8KmTwTTzCBhSTr4o"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'ds4dLPpbJ9Wwr8Wj' \
    --namespace $AB_NAMESPACE \
    --userId 'PvVGOd8TxPZADnQY' \
    --body '{"screenshots": [{"contentType": "ax6GlIy42J8irdxS", "description": "wENxchWK2542hV7y", "fileExtension": "bmp"}, {"contentType": "XBV0rO7QghWc40Eh", "description": "8TRKDF2lV6jFmghq", "fileExtension": "jfif"}, {"contentType": "vWwDsvWtlKIekuhj", "description": "a7koTfAuv5uRzhu0", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'DUBpSJINHD8QT8Zp' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ZcHy4Dq2rscAqoqV' \
    --userId 'rNsaAuiXeFaM6rO2' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'gVbDejNH7qzPyGcT' \
    --namespace $AB_NAMESPACE \
    --userId 'HC3jO7p31BBjFgVQ' \
    --limit '18' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'dRvrm1QhaoAOiaIO' \
    --limit '28' \
    --offset '62' \
    --sortBy 'Kxfhj261p8HgUqd3' \
    --status 'rFZFq37fSi057DUz' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'P1XiMoJ3KoIe7SbO' \
    --namespace $AB_NAMESPACE \
    --userId 'ZfOKSk9U5lMzEDEa' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'b4PEffgsDBceJQvD' \
    --namespace $AB_NAMESPACE \
    --userId 'e1Rx38GM4QzDg6EX' \
    --body '{"fileExtension": "CXnW8rcIcyGZymtj", "fileLocation": "1AlIeKd9o79nzj93"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'jBxoDXfLLodbKX9Q' \
    --namespace $AB_NAMESPACE \
    --userId '7oyXIdms0rqBEjlf' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE