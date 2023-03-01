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
echo "1..92"

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
    --limit '69' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "UVvDfXLU"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '2qOQD1ew' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ge1H0lXm"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'r1nPeuYK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'tjoyiASk' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "8TmPVOeD", "customAttributes": {"bRTpXz9H": {}, "HbyA0mTu": {}, "XNsMx99T": {}}, "fileExtension": "Zk82OIF3", "name": "FbPUwIoT", "preview": "5vzTcAqA", "previewMetadata": {"previewContentType": "NEP5v8TE", "previewFileExtension": "HIzwea4p"}, "subType": "4B7paD3k", "tags": ["0cbhTkZc", "4AZopfRL", "goABcJfj"], "type": "sVMiR65J"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'OyQUnK9D' \
    --contentId 'nfJQkKr2' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9TQhmDJn", "customAttributes": {"1qZOaXAP": {}, "ddFQzcn7": {}, "sWI7KwIf": {}}, "fileExtension": "MQohzUQJ", "name": "VM2ZEwEQ", "payload": "0xPNa5XM", "preview": "wktc2x32", "previewMetadata": {"previewContentType": "WuwWkNAV", "previewFileExtension": "f8yNGcxv"}, "subType": "q4i8BMGI", "tags": ["VwNPr08o", "mAtfJ3qZ", "Ty08Wt8M"], "type": "U2VXRhN4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'USFOAjmI' \
    --namespace $AB_NAMESPACE \
    --creator 'v7oCwt5D' \
    --isofficial 'yVusWIYR' \
    --limit '56' \
    --name 'LyvBzSek' \
    --offset '75' \
    --orderby 'PI3nk9fk' \
    --sortby 'IoPqqsJZ' \
    --subtype 'Ld1XjolX' \
    --tags '["BOELBWcs", "KW4BUtj4", "pmEZt2lz"]' \
    --type 'JpPQhyss' \
    --userId 'TDFOV2PM' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'TVdzFl8h' \
    --contentId 'UHaUrJxG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["jPCQgxRR", "zhNKx2jl", "HYrTXWpL"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'C4glNpuP' \
    --isofficial 'VeARcnnG' \
    --limit '90' \
    --name 'lAgl4LTw' \
    --offset '17' \
    --orderby 'gVk116hl' \
    --sortby '5iKXPsK9' \
    --subtype 'jSTjNj6U' \
    --tags '["7nIEVJgG", "0qEvcSUy", "UbreuNxl"]' \
    --type '8iRlkHkU' \
    --userId 'ttaaJtbY' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'dGzdYhWF' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'XMQka6gw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'qHXDZqcJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'f8id5AhQ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "PwPsxHFA", "screenshotId": "uRMPKNao"}, {"description": "ZWXE7VJb", "screenshotId": "QlvKrkpc"}, {"description": "f1JYEQUt", "screenshotId": "svMFG1jX"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '1DlQ364F' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "fsAvuZbv", "description": "5acUKhZG", "fileExtension": "jfif"}, {"contentType": "ORaldxxY", "description": "WQxoPHkp", "fileExtension": "jpeg"}, {"contentType": "rbkCbN9a", "description": "XWqb6I8E", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'DtpvdSrj' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kyB1J99A' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["B1pgfa5F", "se2N0atU", "G3lAXrRj"], "name": "ZpBobIgn"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'kazobVqx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'rymwNexB' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["uK3M1A0l", "YMrZfS6k", "sLdNNW1P"], "name": "39OWId6z"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'fMctdjkr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '9Tlrcqj8' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "kxSk14ru"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '5k8Ba6xB' \
    --body '{"tag": "qZdEIqXJ"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'TicuXax5' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["OWBJPFKZ", "1gvFsF8f", "0p6o0Bra"], "type": "QwzXtdBr"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'qz7q7LX1' \
    --body '{"subtype": ["j1uokDJ2", "I82Cl15L", "nOtWrwgN"], "type": "D8wmRcpb"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'tuqeSnde' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'r94S4yno' \
    --limit '62' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'ftVZLG6E' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'qY0Lyjyk' \
    --namespace $AB_NAMESPACE \
    --userId 'N7k7J1pg' \
    --body '{"name": "amYG60yI"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'TfTp1BPx' \
    --namespace $AB_NAMESPACE \
    --userId 'idF8Hw2l' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'DCl8PPwB' \
    --contentId 'f4MlDgxn' \
    --namespace $AB_NAMESPACE \
    --userId 'Q7QJZNwk' \
    --body '{"contentType": "v8MisGwA", "customAttributes": {"ppolRyiP": {}, "UGods1uY": {}, "i6vwnEp5": {}}, "fileExtension": "rEaPfRXp", "name": "bzZGyaPF", "payload": "nc8SYUjr", "preview": "7BLygtQx", "previewMetadata": {"previewContentType": "dwZGZCDE", "previewFileExtension": "YpT7UkJl"}, "subType": "BFVtwtvq", "tags": ["JAoxsDYc", "5fk0k6di", "CI1xmrEm"], "type": "MAcxLBvd", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '52hO0pXF' \
    --contentId 'F7s7SfnA' \
    --namespace $AB_NAMESPACE \
    --userId '5dLzyGZo' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'ufCBiQVI' \
    --limit '48' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'wRnR0Iv1' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'hnHdeTNM' \
    --namespace $AB_NAMESPACE \
    --userId 'qRP4VrAo' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '3X1tt9fx' \
    --limit '46' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'IzbcRMGQ' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '2Yl6uhOd' \
    --namespace $AB_NAMESPACE \
    --userId 'BZgSoxLz' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ZnnmoehQ' \
    --namespace $AB_NAMESPACE \
    --userId '3NCPzaLd' \
    --body '{"contents": ["4QjvjmKd", "fUwByLYB", "1UF5LHky"], "name": "v0Yd8z9e"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'tp6VEd28' \
    --namespace $AB_NAMESPACE \
    --userId '6nChjJKP' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'MVL0eodt' \
    --namespace $AB_NAMESPACE \
    --userId '02Ck8b8X' \
    --limit '11' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'BjcIFphI' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'fixdf61J' \
    --namespace $AB_NAMESPACE \
    --creator 'i83uYrHL' \
    --isofficial 'QQ6o7eKQ' \
    --limit '10' \
    --name 'dIti3l0Q' \
    --offset '34' \
    --orderby 'AOWfTSmX' \
    --sortby 'Rd6aOclH' \
    --subtype 'WNr0AnTf' \
    --tags '["MVJHZIb1", "WnJA1BjH", "mg2YA5O0"]' \
    --type 'T0troFMZ' \
    --userId 'Jk3ZmyV6' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Qk1534e4' \
    --isofficial 'PuBxX3rk' \
    --limit '73' \
    --name 'f9HUOWDJ' \
    --offset '34' \
    --orderby 'nFIw76Gj' \
    --sortby 'wcqQedui' \
    --subtype 'faWTDWBX' \
    --tags '["LnRfBTdf", "HVG02cJX", "ru1jmMOp"]' \
    --type 'lEe5LuQ2' \
    --userId 'DZclnWt9' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Iiz78BYN", "kgNtyRIV", "OZlxFLgv"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '3' \
    --name '0W54qvEQ' \
    --offset '54' \
    --orderby 'F0QucFlq' \
    --sortby 'BKpeFCKj' \
    --subtype 'yd61dzP2' \
    --tags '["0ykDYqUz", "wiVfwQwm", "dQC0RCuh"]' \
    --type 'VroP61R5' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'hkGoebKq' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'TmfM6AFX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '40cEnp4R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '7akxrkSf' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'G0pfsVGl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '87' \
    --orderby 'ujYELvgO' \
    --sortby 'FYTV1Mu6' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'rzkpf7dV' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'BFzIB917' \
    --limit '70' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId 'rv2n678w' \
    --body '{"name": "RvT1YT4E"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'MjyCf1fC' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'vBGY50PN' \
    --namespace $AB_NAMESPACE \
    --userId 'GthF4iZv' \
    --body '{"name": "ymBX0UvJ"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'ORzWXBQS' \
    --namespace $AB_NAMESPACE \
    --userId 'E9DFW5mR' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'HQHVkweI' \
    --namespace $AB_NAMESPACE \
    --userId 'zC4oeu0z' \
    --body '{"contentType": "jQK1mhbU", "customAttributes": {"9qEMh090": {}, "h44NG04d": {}, "G4O33kIV": {}}, "fileExtension": "t41ReO59", "name": "t5hGVERA", "preview": "jMC9Bf1N", "previewMetadata": {"previewContentType": "9XgZynTZ", "previewFileExtension": "7xLwwBko"}, "subType": "oiz40inz", "tags": ["h1M5snUR", "JeqTGhsZ", "4pwiQiJC"], "type": "CAd04UNt"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'ohvfAtAz' \
    --contentId '7eT6rJy6' \
    --namespace $AB_NAMESPACE \
    --userId 'ViYjM4MK' \
    --body '{"contentType": "YUxCXK77", "customAttributes": {"JmW51MOn": {}, "dCTgKikT": {}, "LA7DnDAW": {}}, "fileExtension": "LavC3LSt", "name": "HWP4Npi3", "payload": "9kTrMmyZ", "preview": "96gk5kKF", "previewMetadata": {"previewContentType": "mxQBEm3H", "previewFileExtension": "cvjEcLk8"}, "subType": "BOQae7qs", "tags": ["Ts2BDv2l", "3d5ClcTg", "5hVfppE2"], "type": "bU5yJpRT", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'MHM4iXVD' \
    --contentId 'blEbpRdw' \
    --namespace $AB_NAMESPACE \
    --userId 'M4RRBSvs' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'T1WvZ1DX' \
    --limit '28' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'i0eVF4kb' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'OVcaNdO8' \
    --namespace $AB_NAMESPACE \
    --userId 'TDiIdExZ' \
    --body '{"screenshots": [{"description": "3TGEhy71", "screenshotId": "IhE4txII"}, {"description": "GHagUOIw", "screenshotId": "ZutC035U"}, {"description": "3OGu4HRt", "screenshotId": "nQ7Yegst"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'GKGPSp4K' \
    --namespace $AB_NAMESPACE \
    --userId 'YSeu7cD8' \
    --body '{"screenshots": [{"contentType": "pu0kNiXk", "description": "Z6JzYuM6", "fileExtension": "jpg"}, {"contentType": "RgxFe2gS", "description": "XPXxPKZX", "fileExtension": "png"}, {"contentType": "O97mgr34", "description": "PeHmZtdp", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'qVYuIMz0' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'k9DvZvNE' \
    --userId 'n2v5H8XS' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'x2lyoiv8' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'pMoQaIs7' \
    --limit '67' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'pdQP1iaK' \
    --limit '23' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Xb0a86Rn' \
    --limit '36' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'U30Ooj7O' \
    --body '{"contents": ["UtBUNATO", "oYVjOHVX", "MZjmbMXY"], "name": "83AP6vFF"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'yvMyc1Xg' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'LcqXn1cb' \
    --namespace $AB_NAMESPACE \
    --userId '3RbUErCK' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'uHL1Rgbp' \
    --namespace $AB_NAMESPACE \
    --userId 'bYNjrXgk' \
    --body '{"contents": ["pfupdpQq", "u5cIHNRl", "7SpZCLb9"], "name": "vpbjBCiM"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'rXD5UmWd' \
    --namespace $AB_NAMESPACE \
    --userId 'oMw4AjFz' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '6IemPhJj' \
    --namespace $AB_NAMESPACE \
    --userId '9IsTb8r1' \
    --limit '67' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'tDCPsCKi' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE