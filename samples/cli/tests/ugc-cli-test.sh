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
    --limit '95' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "xBiIotPhNVmeQ3qf", "name": "Y7yet2IxPwfA2VcN"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'j6JsO2IOyAzEcQpE' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "nX5WVGwKKjH4hYsw"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'SgaBVCvu2Ts5VOhu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'xqA7uddpEwlq2UqN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EgVIT9kE7ZDPna30", "customAttributes": {"M0r4wh4QvPXt8YUb": {}, "A0avPYTTJeDuWosb": {}, "QIIhztf60o65lNCG": {}}, "fileExtension": "ccQoFs72DvbWvw85", "name": "KbXV35ZZj7gUalbh", "preview": "JhECBIYsLmDcuWhu", "previewMetadata": {"previewContentType": "WojnP65dwxtyAzps", "previewFileExtension": "BLxZT06Y50Qonynk"}, "shareCode": "nLD8t2wDclG9aVve", "subType": "x19Lrf1TuWXf5QNf", "tags": ["12iR4ZXb8TAZWr8i", "dIyd3lIQYOEGR3PS", "6gnkQvI5EX5kyexS"], "type": "7zLV7TjvoBuDCmX6"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '8CEaxIMqDG6RAoWZ' \
    --contentId 'guaA8ePL9cscbZV5' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "GX5V8EWoPrdiqgqD", "customAttributes": {"vokJtMy0yaBINYOv": {}, "klm7Yk39n9aD2Qz4": {}, "776bEvvaD1Dgx4hX": {}}, "fileExtension": "C3asuR3XKxOMJlIw", "name": "5m6emGM2pJ6Jhi0I", "payload": "E2QznE3xS7onx17V", "preview": "6wjByVKTX4kwZwhn", "previewMetadata": {"previewContentType": "K0gD36LqBSiE02ii", "previewFileExtension": "0FNs0h0Ngnc6wK7U"}, "shareCode": "il6KRrRXGGJL2W5D", "subType": "JQ2kczAY8GF6r4PG", "tags": ["eNmYaiAukm8hNxcU", "uUgEuMSO1PoQa3Zp", "LsZ89YdeOEtlEWJx"], "type": "olb61wLjcaLC97xl", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'w0Vzd9Ahsco3DmBl' \
    --namespace $AB_NAMESPACE \
    --creator 'Tm0zuBUrM4ESSPYt' \
    --isofficial 'zk3G9rdAqAb2YDCh' \
    --limit '95' \
    --name 'fxlZPUGn5MwZythy' \
    --offset '83' \
    --orderby '2N98AiTAcmrBEeS7' \
    --sortby 'Qym0hAqMHcMEWMD8' \
    --subtype 'M88F5OMuv4MiLyvh' \
    --tags '["gykUTtxHHJh7h0ZY", "9zFZo9KpIXerCz01", "pdHQ2zKDnCLo7TkX"]' \
    --type '5u3PGeKLpIgFb1RT' \
    --userId 'J3oFwBVjIa1jI6LD' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'QEAukxFX8uCyaB2R' \
    --contentId 'MARWSIv1IIIDzGSB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["yuvsemnmKNnmB75Y", "axCFIBw4gkRp0sil", "GMEc7z3REoRsc0HA"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'r0Y6UaCWbOmSNLWt' \
    --isofficial 'zyjDCokBGMLTPAbB' \
    --limit '20' \
    --name 'nwquPaafqGsBm2ba' \
    --offset '52' \
    --orderby 'uMbqlIJEq4q8ToZq' \
    --sortby 'J8pZ5w3m8on4CmgM' \
    --subtype 'hmjMB3ZnfVBE4X9O' \
    --tags '["dVdXvEoZtOEMPPHX", "j3zmYBm7GiUdgHCb", "tUCe03jtoaucxqhH"]' \
    --type 'rADvhRpqxNKxZocC' \
    --userId 'JLqB9UKvMwWFxx9M' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'XdRhRfrFSaxDMO6q' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '9PXeoWHmKDVKVpF5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'YEZR8Kw3sarax9lt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'euJghcZ4yz2iOw2g' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "tSRSLeX2CQGNXEFV", "screenshotId": "7FLARvmysCgXTpit"}, {"description": "NMIUsamtxnn3HZVP", "screenshotId": "ZL44VTFRwVyuNfVB"}, {"description": "kZkkhHgHB01gqp1I", "screenshotId": "VBW6hX548tW4NEp1"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'HYDJBYM0C0nRtSYa' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "bO1Lkolfs4lZfaWL", "description": "xCWzX6Yaz4e7aaHW", "fileExtension": "png"}, {"contentType": "TTXYSiV4YX0brHkY", "description": "aK3VZ6mjhHLNiogB", "fileExtension": "png"}, {"contentType": "6h7JPgEQD4nUR8QJ", "description": "7mrmC1Fswigpp9sE", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'wohtzigiUJaCMo3b' \
    --namespace $AB_NAMESPACE \
    --screenshotId '8KnBsbd70xnXhtpf' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["m8q45JSYcpzxpXVp", "hQTqSaXyLqAei1ar", "Ge0TF5LdB3euYrap"], "name": "e0JJw2txuLYuYzf3"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'jGTpfKN0Rq1ECeuD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'xHuCQwWmqB9H3sQQ' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Xm2srInLFJGhj0ps", "OphwsH6udasfJmFZ", "CJBR8lmUZspC0d5n"], "name": "OWWWct51YLetw4vj"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '0N1FPaZ2oWh1YlPU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Nv0nrvt4lzwK9HCr' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "ZCHZ3rcSdhubydHF"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'P12lGc99w86zk3os' \
    --body '{"tag": "7s8fgfwBSFq2Kge2"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '6EZqZzoy1B0i21II' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["cumTXpLLc7tUCRov", "3l7BQp7Ipxt65EEg", "jIEnbVIxbzE5ByCf"], "type": "Rh6ud1kx3grGH08U"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'XdnYd9Ac2Dx2XStT' \
    --body '{"subtype": ["pAfCLNid09yW1o7y", "rjqmgJcx6NrMG7jp", "AcURcvUCjp33dqaF"], "type": "g19jF1su875jQ8dC"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'Ca6Ny3nWLQPVaPWJ' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'bPfVvuZsNm8Gn4Fr' \
    --limit '84' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '3uFFtrpx74ANZkrU' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '2O5OQTf4F3j6TNv2' \
    --namespace $AB_NAMESPACE \
    --userId 'SFYeTuFtA61iWjTj' \
    --body '{"name": "G8pk9l9XypJP1D3J"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'urQKM4vD1Rdh48Of' \
    --namespace $AB_NAMESPACE \
    --userId 'xJNDkxQQHBOmkPui' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'A88nvHM6hyUDXSOr' \
    --contentId 'aTYDWMwTEwLYLMPn' \
    --namespace $AB_NAMESPACE \
    --userId 'NswMPZX0PO7pB5YT' \
    --body '{"contentType": "CUvkoVKoG9E4eMOy", "customAttributes": {"yOf3OXLmiIICOlui": {}, "j2nDpeKeTz6Eztkx": {}, "t00yjz8iP1ofOlEa": {}}, "fileExtension": "c5umAUs6GwPfB9ve", "name": "LhJ6fhJ156GCw4Vh", "payload": "zHqZBo1covI7bJBU", "preview": "SNMZXSab1IszFsAc", "previewMetadata": {"previewContentType": "1tfzD9J5Svs76OfW", "previewFileExtension": "YayYUR32EaLWcdEX"}, "shareCode": "gVTA6XcEj2Ian1fb", "subType": "Ifh2X3iDPka3q3pc", "tags": ["Nhq6RsZzg9hdqceq", "uq1HH1nrOBeLLUGl", "iolyM4OG4KVGZOw6"], "type": "pbgK65N0Et1DCpz4", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '1GmoIs91aXRFXOLy' \
    --contentId 'RtFYxfnAJRbUGhVE' \
    --namespace $AB_NAMESPACE \
    --userId 'm9GjVNEMnPTd0siT' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'BbddE6gSRbjECbyI' \
    --limit '17' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ZbMZP9HFHJ6UNv38' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'n40LE5WeQcsILKmx' \
    --namespace $AB_NAMESPACE \
    --userId 'AytILfN3mB3VoVpH' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'eWleEwBn2gsOw20d' \
    --limit '24' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'OuIwiafyKrJ2RIS7' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'NhyLVzj9O63LlXrZ' \
    --namespace $AB_NAMESPACE \
    --userId 'vLQt9uoLiLL1nU70' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'voshFkGhr0J6rmsc' \
    --namespace $AB_NAMESPACE \
    --userId '7ZUjjRGHCZHMFxk2' \
    --body '{"contents": ["2dciooIB2qYTQQeZ", "7Q2BRrrsdrKUReIw", "aOBgMZSgcy7VI0Zp"], "name": "mAsylrSlU183T3cf"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'M7xR0bvBsJFEoQaL' \
    --namespace $AB_NAMESPACE \
    --userId '7L7v4AqnowJR7Tmd' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'd7UMHu1Anpx7zbXa' \
    --namespace $AB_NAMESPACE \
    --userId 'sIXnBl13rclmTgx9' \
    --limit '59' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'llNeSxfz7wECrK5H' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'g91FH0aM0xRj8NYS' \
    --namespace $AB_NAMESPACE \
    --creator 'ZsdXxw5GHm70kNEy' \
    --isofficial 'enjXa6P6B792y1qU' \
    --limit '58' \
    --name 'mf2FYwCJSzB12Aox' \
    --offset '0' \
    --orderby 'YBbv7054q4HvQfYa' \
    --sortby 'DNwgXMQPp9tassM3' \
    --subtype 'dF6a1Gslg9fBT8aC' \
    --tags '["FPgZnYajxF6cR5UX", "MIkKT4etdkuurK1M", "OcwS1EX22IGjV57f"]' \
    --type 'rZZ4kwca6XR9i75o' \
    --userId 'KERL3vhZ2g8HU4oH' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'h2T3pO46UhqZqwqk' \
    --isofficial 'z2B0Rw5Dodo8IO8Z' \
    --limit '32' \
    --name 'RZwCWRLVUrwYs5D0' \
    --offset '10' \
    --orderby 'GJdxuiruRntLa5ns' \
    --sortby '2pMFBH1KKHnZ2ZqE' \
    --subtype 'Vo5HCqyHXBqZDc8G' \
    --tags '["36gmyO8aEUDwW6JV", "ff53P2xFdNBzHsMZ", "vmRU1W17uBQfINbW"]' \
    --type 'rkLN0pfgfkzeF0RH' \
    --userId '6LaF6UNxWDjl7Chi' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["138Gnry5yvVfVjrv", "1bA0uINC2sTcKyiD", "k218wd3MsHhKHuQ8"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '83' \
    --name 'BXAZgjwk62cyAhbU' \
    --offset '50' \
    --orderby 'BqSSQfG2xFPtHac6' \
    --sortby '6VYlmAckUKOrL16B' \
    --subtype '1h28Zpxf9x53nMEJ' \
    --tags '["toKjumgmmGPucfFV", "fVsg45vzutsppkI3", "XgsM5MgIzgxxfWMF"]' \
    --type 'Q2oSdiLBzZs3DLrw' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '89XFPqnAkJQPV88u' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'NifZJNU9MiMcEXyR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'O6BWjLKSxWk0GL1m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'MgHNahtC5DzC8u0w' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Za7KdgPMUjozTmrr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '41' \
    --orderby 'tBiqTUDClZXd1uKM' \
    --sortby 'gvd0ES7XtZAdhGxZ' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'lEmYZepJX3v46CkO' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'ilP1ySOxP8fqtL5Y' \
    --limit '74' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'dTwvGKRzPfX2cprP' \
    --body '{"name": "WBKs0kuRRniUvnRo"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '8apJv6HSHe5YXYAB' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'FPyQxELWaqlooQWR' \
    --namespace $AB_NAMESPACE \
    --userId 'TzYGBgpgTNasppRD' \
    --body '{"name": "3hBt5tNXEnPKcydX"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'CzNFX0XiFYvihwuy' \
    --namespace $AB_NAMESPACE \
    --userId 'urEstTZKzZoiof5j' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '89dmqcEUZJ26GENB' \
    --namespace $AB_NAMESPACE \
    --userId 'uJi62ztDs4ApcjHR' \
    --body '{"contentType": "4UAyzO36msEwSdKx", "customAttributes": {"N0JCORm0k5MLB5D9": {}, "VB6GdkDndZ7n4B47": {}, "mmO8fI320yMHD9uy": {}}, "fileExtension": "Z5hbKIinX7lijmW3", "name": "hVYymPmzMleaTX2f", "preview": "X2Z972p4oAT0Qhtu", "previewMetadata": {"previewContentType": "TSC6qvr92FIhOpW1", "previewFileExtension": "zyWtTRPUx05ZJO6R"}, "subType": "nZxB3T8dHY3pHhiK", "tags": ["mMAMyMH4avvQl0yy", "7J6niH9QVZzwk9kq", "k1JOdTckYsvHB0I1"], "type": "FsdPx6fmPzqr4dVE"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '5Y1cd7aWBsyaMzMU' \
    --contentId 'J0hkgq1AUoGLAAPb' \
    --namespace $AB_NAMESPACE \
    --userId 'o27E54fes1GzDf2U' \
    --body '{"contentType": "InV9RtNDwlZrI6Yx", "customAttributes": {"R0hJewnCmXvexFk4": {}, "oPNaaiAMrN8rVDbd": {}, "au8U92CWt7BVkk24": {}}, "fileExtension": "RLneoXdTWymjwvQz", "name": "rRfFeP9kZXZo17Ee", "payload": "pGCHM6HBquCTTYs8", "preview": "Na1OVarmFSQL8IxT", "previewMetadata": {"previewContentType": "vSZiuN2rWlGdQayn", "previewFileExtension": "V3S3WMpQ2stvkjqa"}, "subType": "CxOHu3JS3XCsWGDw", "tags": ["4gncdSaKJpqCsMzq", "Bgcu48ZPHTPNPHR2", "fsu1pk5OqbcgxiXr"], "type": "kJ4dqQMiy8dk9ZnJ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'DxuF0urnAoGDEIKI' \
    --contentId 'V9x8mro3oNtqg9aO' \
    --namespace $AB_NAMESPACE \
    --userId 'Gs6NFeTZaapXHrFw' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '3qHkaJ12cN0q31Pr' \
    --limit '99' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ngLfpaFKRYd5zz1l' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '5PLjVaFgREsDB7pp' \
    --namespace $AB_NAMESPACE \
    --userId 'URAkqTyD9oSurIJX' \
    --body '{"screenshots": [{"description": "7zM6q3ONzrqOblGF", "screenshotId": "szGtjzQQOsH2b3mU"}, {"description": "3DvxqzjnZ5f9B6is", "screenshotId": "u0zC17uxcYGNzpL3"}, {"description": "EOcphNfriXmALzBa", "screenshotId": "Dr5GCfJE1pq752HF"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'gIDN1xSi7xBNl6WI' \
    --namespace $AB_NAMESPACE \
    --userId 'R3j7pzGj0jP7Yf6o' \
    --body '{"screenshots": [{"contentType": "vB5khUWdtr2B4cCz", "description": "gfHZPiAdKfiVJ739", "fileExtension": "bmp"}, {"contentType": "pEhIYJsxCF9ZTQfM", "description": "ZLcYmMhdnKIP1Bgv", "fileExtension": "jpeg"}, {"contentType": "AOLu2T6hKWZK7aqq", "description": "fx6wbcYG2hI0VrpZ", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'rhaCCdj5rEtXsgMz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ciKFTnzi9HBAiExo' \
    --userId 'a9R6LDrsmxKIyrvT' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 't1WqRv5zFthLJjmQ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'QYZ5IKakLowgFK6e' \
    --limit '26' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'buyU3c8FDJsMzNlv' \
    --limit '57' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'prTQrrJZaA6c38KF' \
    --limit '17' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BaQf7SpNkbPlBSIa' \
    --body '{"contents": ["hk3nH1W1Qbhsekwa", "MTRrZzho4kK1nqXo", "peh0gvQMX1rNiH75"], "name": "R9hZ7EeohjwKbGV1"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'dQIj4BARfh8ueJvW' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'gPxHPZu9I4oQ3Jbi' \
    --namespace $AB_NAMESPACE \
    --userId 'gZTIfo6DrsO6fHVu' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'MSPgxXyJnzbkAq6T' \
    --namespace $AB_NAMESPACE \
    --userId 'cZ9R6ktgg6nYbSDt' \
    --body '{"contents": ["sWvnOQKaDehLt72f", "VEZ98kObxsIub8E9", "snY3cxjA4p7vysiR"], "name": "7j8QfvFWkV7GmnKH"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'rTwxu0tZBTobrAw3' \
    --namespace $AB_NAMESPACE \
    --userId 'OaXLpuy0eY80HAMo' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'zGAcvO2WHejxwCsQ' \
    --namespace $AB_NAMESPACE \
    --userId 'C8E9pOScadN3AjXy' \
    --limit '5' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '2w9C6V0o6mo500jO' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE