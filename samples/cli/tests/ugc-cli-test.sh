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
    --limit '94' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "dPnZBxMbPydu4W9I", "name": "wC0Ah9Rq9JBUauYC"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'zd339aBE2ceVoCIW' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "x7cpihBnrf9AoaId"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'yZ45oiSogRrHgXER' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'PQ7k1or5dWY9Yb8e' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "hIPUZY2U4geA7dHq", "customAttributes": {"obLaXmepCUueqZHC": {}, "M0R0wNiRG6NGZ50G": {}, "VWROXudwKIagVQQJ": {}}, "fileExtension": "S8dxNU1UHhWBRpcD", "name": "HqsrIZG4K53RbcDO", "preview": "HoDqQIe94Tuu4q14", "previewMetadata": {"previewContentType": "ELkd6xrT7hR5NVIb", "previewFileExtension": "BQvwO0dCZIaaULVh"}, "shareCode": "7CnVQhTwFwTaLu6e", "subType": "k0vhImgcGtLnzGXX", "tags": ["xlNR9ZKzLd8a1ObU", "Iuabo39TIWUR8A2M", "vwFwBzGd3jPEmMvM"], "type": "7ObBiXmk1zXovBpT"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'AmymqrpkZi3KHy5V' \
    --contentId 'FL6LkM4lFdSkpTfH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "6DhSJ7Nc7PtumJVc", "customAttributes": {"8LtrlXnRFHTR7Cq1": {}, "03K10yP9AbNiYzbj": {}, "BDHhNK7Jzk4tQWsp": {}}, "fileExtension": "O0syChgpWZnDaJHW", "name": "yeWtEQSfrHx6IPqz", "payload": "THCnS8ve1nClBZWS", "preview": "BoZwqncY1HswFIBq", "previewMetadata": {"previewContentType": "KkuM0uqiSwg8Vrn5", "previewFileExtension": "EiaaWfOyLYcJNCyA"}, "shareCode": "cw9y1qlig6gIophr", "subType": "EgnDfDeIMXjXADAu", "tags": ["L5PbozqslYpB1ICz", "QBETbTPLqhohVfiz", "YFPmxKP9TvuERsJi"], "type": "KIAiJZf8udb83dHU", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ybh87SkkcLgERCnQ' \
    --namespace $AB_NAMESPACE \
    --creator 'emD2kf4wRvD6grTs' \
    --ishidden '3AcGfMhhcFOHQwvs' \
    --isofficial 'd95kXptAQUETtbB6' \
    --limit '73' \
    --name 'UfqRplqEsP0mNM68' \
    --offset '85' \
    --orderby 'rWrIwTKvP9P74s0n' \
    --sortby 'riECdX1JKvzNMXyc' \
    --subtype 'hIBz2LAzH8MPOhJd' \
    --tags '["1my7fEgTf8VjpduA", "C0mo00awGGquqky7", "gfUqSEBJbJfZtlkt"]' \
    --type '36gq0zRC7ok3XG54' \
    --userId 'irLZK8XJLcglG8x7' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'rUOGsjTgKSoZWqF2' \
    --contentId '4xa0dmqChYfujfch' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["LhEljQG1lAtmoMaF", "5NeJ6S5xGbnsrJSk", "wTkyADE8HY9XcCvj"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ogKWkW0eBYTaGYAV' \
    --ishidden 'URKqrOxP1ulT10n6' \
    --isofficial 'pRK6Z3Ta6P9NGSYC' \
    --limit '71' \
    --name 'Ujf3wdkFyrhjqR4j' \
    --offset '12' \
    --orderby 'RKiiuraeNVuef5rW' \
    --sortby 'XP5psogt4lFL9X85' \
    --subtype 'bnpMkxfOK5JEilGG' \
    --tags '["fJJ9lHjc8SHVt4dE", "AUKtxB51p45CweWh", "T2LeCX62gJi0lfv2"]' \
    --type 'rVCVEa5pZ6lEtesd' \
    --userId 'ZP2pRhucxDm2kb1q' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["A5OLyjBTJ1TVhXG5", "RVKYjTbQT3HiHM1E", "TtO4UnQsZUop3Ka3"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'PQcDXNu75nw7CABh' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'bn51ZCyZwuFIfGpf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'QmGq5Z31YxdtqUEz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '9UdIlynsXfhbHHdu' \
    --namespace $AB_NAMESPACE \
    --versionId 'NgGtGW24ZxEJjeMe' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '89lWSxbKmo8vshC3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "70MKzYFDymnRycqc", "screenshotId": "eG3TU5n0CDKRPTly"}, {"description": "ziesQV8Kef8RJfRK", "screenshotId": "jMpz2vODrOuvz1Sw"}, {"description": "KAgpxGsCprZBMSFG", "screenshotId": "zRj9LrYgDcEIQ0Gq"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'BowBF36sHMVIbBQU' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "WpucSqGjRwfRGNcH", "description": "PTZHENJ6uRw83kfa", "fileExtension": "jpeg"}, {"contentType": "PStiUAQaGs8TABBX", "description": "nkiFUdPeRsNYXDIZ", "fileExtension": "bmp"}, {"contentType": "0YG7uoNZ11SEmi4N", "description": "pov43tdxJ4XNh5iN", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '7RQYSxBjKUcmSrIQ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'HTuzrEkxhIdAJ0NM' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'trLeWXEzNBFog7V3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["F4H502duoFdWrGwh", "JzxYLK6m7yST6uXr", "JntchOk4mjKIrT96"], "name": "EicMKvfxdFuSxMEE"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '9V3CIUhTbbF0KncH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'WzQHUZ4Yd1nt9RN3' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["0irPmA1KBGxP6Y0g", "jCcZnD9E9kxeBQsk", "E9uq3yfYbU8oRzsE"], "name": "QUNyKApP7VaJtmBl"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'UrunIpKCUtGmk47l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'hHf70xIFn7F1Z7sE' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "XMC2IVOAa6xFTtcp"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'KTzNMTaiAu8LXiHc' \
    --body '{"tag": "fR8xCMxYj66UxbZY"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'IFqbK9DyEmOK01ZV' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["AyOyBJvNl83eSBLB", "QSk95m3ccQuzCYUl", "FEeRHOIrunB20gx1"], "type": "feDjeAifKJVaOTVx"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'pzEsSpd3zorf17hh' \
    --body '{"subtype": ["CbAZIUXWeya1MNV0", "vBnlJTvfozRNhzpx", "l5cL2xi7YaupF3oJ"], "type": "Kw1RSgSAgAlxWDnT"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'ujXavwIfoDsUJBPq' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BuKVH9iiuNkF5QTF' \
    --limit '32' \
    --name 'dX74ULnYt6q4XRHb' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'uyi1q1zZU22C3n2C' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'HzQ6zTU1NJuk0kfj' \
    --namespace $AB_NAMESPACE \
    --userId 'IUxVNIDGVKEwKyRR' \
    --body '{"name": "NXqq9S2gU9X8C1tH"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'SRVx6kbVcoLQoNRH' \
    --namespace $AB_NAMESPACE \
    --userId 'D4l99k16W3Opx79I' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'Z54K19xvW4dBM9PC' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PRT52YvlwNhdFdK1' \
    --userId 'gaGSVxk11ULO9d0W' \
    --body '{"contentType": "tsgclNMxddGbJMtg", "customAttributes": {"LBbPqsuCDTpv0Fet": {}, "xxv768YzI8dM62ui": {}, "dh6owRg0EMyZd6Ib": {}}, "fileExtension": "HJOTLpaXuQBHoAbZ", "name": "xwSjOWApxGqBXWXm", "payload": "GQt8eUHviRiY4ICd", "preview": "Mp6IVSXrprJYCQdj", "previewMetadata": {"previewContentType": "BmRN9utlaqBGJvRO", "previewFileExtension": "uI7mLrsqyUEzmxzV"}, "shareCode": "peTag9E3W73CQdED", "subType": "mt1az7s2qigWZKKK", "tags": ["49MJPf8ZcokxiGde", "SVbgNMHX0LkJQi5h", "GpbPTQLYfgkz2sNF"], "type": "iqMc5ckBuIUmnA5g", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'h148KwMtjkEaJb3S' \
    --contentId 'hzTQL86xgx3kVZgA' \
    --namespace $AB_NAMESPACE \
    --userId 'nY1Z2MPCgwCT8fhD' \
    --body '{"contentType": "RBsBqETCYcTcqs9R", "customAttributes": {"2alsQNq6GBfNRpgm": {}, "Lm5hKc5Ae6zBIIhW": {}, "VmfThuGtHWfLgfwt": {}}, "fileExtension": "8o2BjFf7YXTS0tCn", "name": "iNimMNvzHReShyZB", "payload": "AKcDuvftjoBccyaT", "preview": "mV6eH5SAdLspsBBc", "previewMetadata": {"previewContentType": "EqZfj6Vgf5WR1nrA", "previewFileExtension": "ZQRSF991BtDSPa3t"}, "shareCode": "xAyPhRKNZkcdZgcy", "subType": "wooRx33drT8G5fov", "tags": ["RYUzE7OvEEy7uhkP", "tpaPvrlP5UXR9qKs", "ZWd9EnpwtJcbzwaA"], "type": "sXmaAQIV1eOF4r3K", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'smwGLISG2NvwLUSu' \
    --namespace $AB_NAMESPACE \
    --shareCode '2c5h8gY3IiupNYDk' \
    --userId '83qBXz0sDC4ZaGov' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'tv6NxzWSsZyleiod' \
    --contentId 'DShidHDe6vCTtnh9' \
    --namespace $AB_NAMESPACE \
    --userId 'ly86wAFDdcSZ1dxT' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'yJX2JuJ7Y3itNRKR' \
    --limit '83' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Xu1gP5hqENqeb4t3' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'YpWDDPRNbXkgny1Z' \
    --namespace $AB_NAMESPACE \
    --userId '7ecLVCqnL7If1XfB' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'oBQpLipXffaoN0ys' \
    --limit '26' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CwtswmxaaBwlIa7W' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'ofF2lmSaIxtULiPL' \
    --namespace $AB_NAMESPACE \
    --userId 'd2VDbCV0ISfehx7r' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'SJRdclHU5dMJyAY6' \
    --namespace $AB_NAMESPACE \
    --userId 'Kwn7hFuc8ykqxALa' \
    --body '{"contents": ["Jqxj4QCLk9NseeSY", "6GYYNdKXzPeX1lKM", "99F3ImygGdaPUtwp"], "name": "RrAqW8XeaDCIuLR9"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'hbWbaJFjuOfEQefN' \
    --namespace $AB_NAMESPACE \
    --userId 'LZvamH6MenK6lecV' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'xEGLIgm4B7g0Y4f2' \
    --namespace $AB_NAMESPACE \
    --userId '3BK6zhBm9XBgQj1o' \
    --limit '100' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'QY2M7rvyYz5Uvm1E' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'VE4Y4641ceOv7OKs' \
    --namespace $AB_NAMESPACE \
    --creator 'HVZn3FQMgpxPMWMq' \
    --ishidden '9P5nZ9dkXX09tsHs' \
    --isofficial '6awm7pLOdurLiOoi' \
    --limit '78' \
    --name 'Ano9LV87F8bKBjaN' \
    --offset '81' \
    --orderby 'zvrU9nmoRFd1hQMW' \
    --sortby 'zLqbS9DnX5QTFGa6' \
    --subtype 'ea7czZySKli1IsYg' \
    --tags '["Pn9wemViexPfeTo8", "yUf8SW0OVGvW8uue", "57LkP0ZjUWOju4ew"]' \
    --type 'BRdifCdCbB1RZCfB' \
    --userId 'GIXLawrukhD61usP' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'IKyCcMnLhdO0p7ub' \
    --ishidden 'LUYXyRvOGfrnKLGc' \
    --isofficial 'MYIZnsGct57ilmpk' \
    --limit '43' \
    --name 'I29w1KgZvfs3fU3q' \
    --offset '78' \
    --orderby 'xRWpAp772yJr96hn' \
    --sortby 'DFtDyqTmIFwr8PfY' \
    --subtype 'aJDXrm71XWEs0CxQ' \
    --tags '["IwqGRjclOlraChGe", "31IVEvajI4gBD1Vt", "IORWqtu6K1NETa77"]' \
    --type 'BY2aRbGGlazCzJIJ' \
    --userId 'bVWFCnAYRTJYTv4w' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["6agfQ1lPIFC1dHVX", "zJnpaFo0x0C7iBh4", "hL1oO4BQbSRbFVct"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '69' \
    --name '8dkJ4WehL8kqoA7G' \
    --offset '16' \
    --orderby '2fwcHsNqJYzjHgxh' \
    --sortby 'Yon4o6QxK1R6TdY0' \
    --subtype '4U7qjESMaKhndyr0' \
    --tags '["o32YzLghjgU2gjUC", "cVHGaqVsY91OxLrM", "aRjzkMXfo8MkCpWa"]' \
    --type 'hDpwCs8wz3Qdrt88' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Bct8jI9A7CXzxPZF", "frD5sg6xYfj5Eo5M", "P4f5eXnzkiUHfuY4"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '9eWQPMUUMKOcS8yX' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '9TwmUuxaFbCSOV6b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'qZ9wIxVIh4mxHpc5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'a7WC0k52mJU3A4FH' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '8EwPKTJpjzMQVvqV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '42' \
    --orderby 't5YjPGQr98gCD0e9' \
    --sortby 'K8N3ysv1DnxMBhWp' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'VdYwHKa3ePNjgM3J' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'nsAV1FcXui2POBsQ' \
    --limit '54' \
    --name 'kmyVHEtjvYVfuZAR' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'wRRMOSQypQ48eokZ' \
    --body '{"name": "5gr8mFz4JX1Mn0AM"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'QnmeBYpNzLQy56st' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '8Hfo7Tlf9YDXZ86V' \
    --namespace $AB_NAMESPACE \
    --userId '3yrWekJ54NqeOur0' \
    --body '{"name": "7ikI3GnFgUZ2EDlE"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'OGvH6aPSqX0k5qVc' \
    --namespace $AB_NAMESPACE \
    --userId 'MBgxLU4LUzw7HT7f' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'Q1wxkOuvWu2jG85t' \
    --namespace $AB_NAMESPACE \
    --userId 'YYPvJKLbsNDLsSLF' \
    --body '{"contentType": "dWbVwNNkBBpjU8NB", "customAttributes": {"K9PwacvQZMu8OT0t": {}, "Fpd1muowl3MfPOMK": {}, "9zQdUmtUYTEBFU4m": {}}, "fileExtension": "5I8keXD8OvxyO41z", "name": "BCblQh5366hi9dGU", "preview": "MoSbMyrqImutXZpu", "previewMetadata": {"previewContentType": "ibpH0UGvKNvFV8Yl", "previewFileExtension": "FQxkxeqlRzg5KoB8"}, "subType": "CqqR8wc5W7titSpB", "tags": ["P3GwnmqGD1enOQRE", "ZWCumFptLwS5qaOS", "ccOMSNlvYMdmKXvx"], "type": "sKzLjuw2FCyyxkJV"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'l0bDnb93psDTxvTr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'aEUekuvFWuOl9MKx' \
    --userId 'giIguLWlnvbWoZ4S' \
    --body '{"contentType": "UqJhHkxIXSJg2l1H", "customAttributes": {"1GtfPKlI2RarTBEB": {}, "1PjtC4LsYElxLYFt": {}, "KS6cGAYgM6WsjLUy": {}}, "fileExtension": "dqwUTe1vOO3BbPpw", "name": "6tcVEe4Zbq7nrn0V", "payload": "cMtwn36CHAoM6hBM", "preview": "MoRhQpVk7JXEPLjx", "previewMetadata": {"previewContentType": "I00K53jcIDIw5QBI", "previewFileExtension": "2kbKcX8SLwlcvUVl"}, "subType": "7rI5SHQD0ynGh58r", "tags": ["ECmDVuXgulFJNTyh", "V598pINe3Gyq64e9", "WvsGBF4Q307YNMGn"], "type": "VL0dhIraFo1edFjD", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'NJWKRtrhKsA9oJAr' \
    --contentId 'rsNA9YR9szl27UO9' \
    --namespace $AB_NAMESPACE \
    --userId 'yt3WoCCw2SA1lwPM' \
    --body '{"contentType": "MJNrjSN8VByJtPac", "customAttributes": {"63Mhb8csKl8D3kKx": {}, "IOuNPminQ9xWP1Qd": {}, "1gHoF3onQyYIqOu9": {}}, "fileExtension": "pIRDTPjGitNAlnRd", "name": "Mj5XgMFYm1GGnxLF", "payload": "yKrRrtrsztW6JTo1", "preview": "iF8fMmOGGyQIUQGa", "previewMetadata": {"previewContentType": "0wKsiq0giyQR3p8x", "previewFileExtension": "qvWZdMZgcQ3x9Omq"}, "subType": "uxml7e4U8QMr0n1G", "tags": ["wgCHP3zGe1YPLdKn", "RM0aIjBqSxfI7xUr", "SIUkqRnxMC3JEPld"], "type": "u7d9deSW7I7uboB1", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '5SUqCcBiZtMnZU9m' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zQj3tJdgvwdTZ5MR' \
    --userId 'l4ZDrBJ7LnvSC9qK' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Jktye3hPlqFK4tM5' \
    --contentId '9JBylj3M6zJsJDWa' \
    --namespace $AB_NAMESPACE \
    --userId 'CRp2ssqsOmwJhvY7' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'jcts6M5u6sKXdZGX' \
    --contentId 'mNq1rdLDXPpqHTRj' \
    --namespace $AB_NAMESPACE \
    --userId 'DCKr1rIQ9zFtGGGm' \
    --body '{"shareCode": "lfiU14G6PWJrubGV"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'Tdgex9K0RqjD3Dmz' \
    --limit '2' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'my1h8YTRG4pz5MqL' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'DA4OW6gwynD8c7kh' \
    --namespace $AB_NAMESPACE \
    --userId '9Fp3JEaBLWalWBCi' \
    --body '{"screenshots": [{"description": "5HySRbOmmZUiAizc", "screenshotId": "iRir69ytVSHBPR4B"}, {"description": "PmzXZWlm9ptsP0Xq", "screenshotId": "E6WSg9MUFI0DWqSz"}, {"description": "SAiiiEMtbhJT7FCU", "screenshotId": "jzMtZLVJImZzrmPx"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'bGAlAByo1MfLDaAb' \
    --namespace $AB_NAMESPACE \
    --userId 'KJOhArhzDlS8iH20' \
    --body '{"screenshots": [{"contentType": "FiJDECGweHPw7Bbi", "description": "87Kntr9I5wbUqnSZ", "fileExtension": "jpg"}, {"contentType": "xFa0lMRdLNJ5y3KG", "description": "IfigZinWOlG0uzCG", "fileExtension": "pjp"}, {"contentType": "Baz8Fo1zVNpZRiyY", "description": "lXP7UCU7ju3CgGd8", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Q2SezaB2BzmSs7pn' \
    --namespace $AB_NAMESPACE \
    --screenshotId '2W4jfrgy7hou2ZVc' \
    --userId 'BcgmKu5bQgsuzMMs' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'lONYwmpIPgfznnOS' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '3wxDBtNMhyki6nrP' \
    --limit '60' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'WdhRqvk9xl1D4Hho' \
    --limit '88' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'EXLWenKI6eciE1Fa' \
    --limit '24' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'XlihQw15SRSKy0ER' \
    --body '{"contents": ["UZrdJJhqO0ZM6jO8", "HPw9kwsh3ywI1DrQ", "9RsbmWkFCVJlNuob"], "name": "xda5C4IxZz52x6c3"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zoWNikeo6Lm7OtdX' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '2TarcYHRewtt6bi1' \
    --namespace $AB_NAMESPACE \
    --userId 'I7nJrWflx2l7bVBY' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'ucZiWtJVycEdCpax' \
    --namespace $AB_NAMESPACE \
    --userId 'GuYG99sLRDluagMH' \
    --body '{"contents": ["y8X2FCvkiduUfF72", "u0IHFfQL1vCQUzT5", "1nRFCxYDi8oCqi2X"], "name": "XRtmUw1WE7cgoxY1"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'UzEZhJmRfFdusPf3' \
    --namespace $AB_NAMESPACE \
    --userId 'gbUXIwGGmO2PxVId' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'RE3IVq8tVuxYdLok' \
    --namespace $AB_NAMESPACE \
    --userId 'WryrIMtckOphE2tc' \
    --limit '10' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'bQPM5bToUfUYeUAX' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '2QrVks9G1L98aDt9' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --name 'HABD9Su11PLMZq0b' \
    --offset '78' \
    --sortBy 'xzGsCRfGPFxM6KPM' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'lMQrAxf5Nag95BEv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "13e6NaCXuKap1NAz", "customAttributes": {"M4tJVpzg1DmTAoUg": {}, "cHzUy3NNUabqLpYi": {}, "rfK3zz1WFrv79q34": {}}, "fileExtension": "FfkXzUvm8rKaMdGc", "name": "8PKidcWGi00PoF8G", "shareCode": "7oOmokIjwNd04y8X", "subType": "joIDGWRznzlUHiLy", "tags": ["r8fVDQtDW2YpWbn0", "gvkVERtpToMpacVY", "oZu7Ju9JA69WFRYl"], "type": "V33YKo47MdvdPti4"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'N1rg8LMXxtvOx8H8' \
    --contentId 'dJjP24oJ3TpfytYA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '8DJm0ZFvIBxp4NGN' \
    --contentId 'y9aJHu9YSPEDLCo9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zR4pgRWlGWP4uPUU": {}, "6qysvrb3Crw8btTv": {}, "e6ouw5Y4exzHB4F5": {}}, "name": "YHh4TmcuthOqt4ou", "shareCode": "Wx9u8N2Ygn9Dzemg", "subType": "wxJxR9GfwCpaXpyG", "tags": ["lNY90QdjjpyASw7Y", "CnXsZT0vVt6PbFTg", "RycglD2feRN7b0s1"], "type": "yg8JS5VYV1xdR12r"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'eGe1GPzvwpZ04boB' \
    --contentId 'NuyklHXv0hhxgcPy' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ghYZBODT6ZmPSPUR": {}, "Y5NwFU6R8DRadGLn": {}, "yDqCchdSgOyVQ7va": {}}, "name": "k10yH5LCPYUxeDY7", "subType": "pke91pFYwgswyw7G", "tags": ["sEQWypSaGz6jEg0F", "iXMgWoDJ4eLmCzpo", "JKPCHIUAhQ9HOeoE"], "targetChannelId": "xkBUSD0mw27Bnx0x", "type": "Wn2yByPYrM75UskT"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '5c1DMIj3RfynHbuV' \
    --contentId 'f40nT2Zwa6BWNLV3' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "mHJGV965y8yn0rjy", "fileLocation": "a2um7rbgkAtc2zVr"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'Mewbx6lOcFzmuDdg' \
    --contentId 'dfcdwiJ4b4Y6oYN6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "gsQNH1hcnMAtF4Vx", "fileExtension": "WcEKwxEWtkCvlvV9"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'jfdJ5ibVSRhwJm3j' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "0Riuk2S5pcsIn5RT"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '62' \
    --name 'QyPE8I6o2CWvYmM4' \
    --offset '35' \
    --sortBy 'XqbuJyqL9wPC4sJF' \
    --subType 'gKToK8uF8RS4759X' \
    --tags '["xCfO8IsntTbHshuF", "VZpKZYEmT4qR5Alq", "MUCC6rxuArbx3ZPL"]' \
    --type 'wBzrrdA0rM9UaGCY' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["prYYdT6C7BBNzEJv", "sBBMjag2SlrRQg1f", "lwUQDqoz9Vzm9cwi"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["eIEJW0VTWOHOoyg9", "S8da5AD5p2E6tTpS", "cXUnHHVUZvw7Ax5E"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '2Zoi1sD4RshwIjeG' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '1kT79DahRf8yswAa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'UveQp0uwxFty0N0c' \
    --namespace $AB_NAMESPACE \
    --versionId 'R7ejDQr25hTAOmT3' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'sj2IyHiTlBZg9ikZ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "nSYbVRyFtSlhgW9g", "screenshotId": "EkYXBC7Q25GHpmJP"}, {"description": "HMIjAOSeVERcR9gZ", "screenshotId": "b39y5e2wf9X9b9IX"}, {"description": "J72yek4plaF7VUIo", "screenshotId": "0LnmMOaiP8Cz6bra"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'ARA4Btdp4ieBE3j5' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "3oH9fINVygP8C7pn", "description": "DlJYyA0EEfHMnOcK", "fileExtension": "jpeg"}, {"contentType": "qkIAmR0qRuzIzcSO", "description": "zNgmA2PutZBfPDHF", "fileExtension": "pjp"}, {"contentType": "p2BnyLqpxVlViiuT", "description": "bqqMkH1NIAIgSRBt", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'J4H89wyPQDPbF9dN' \
    --namespace $AB_NAMESPACE \
    --screenshotId '0E0dYfErbPRSZ1EZ' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '0fu2XfxINqdqiASr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '79UBTn5DrNvKM3XB' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '25' \
    --sortBy 'gvIqYJ3az0rAIJBw' \
    --status 'tob8ViuDco3X5dS4' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'Yt2SGFRshXwp6Bmj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '8mHddtdkHJEZ8U06' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "0ZjVne7RjTHmTdJr"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'xtP47vp6uFsuo25X' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xQe58Sa38eSREwe4' \
    --userId 'yNaq1EsBuDwXOtXP' \
    --body '{"customAttributes": {"CJSBQp799PcKiWGA": {}, "StSx6Bjol6W6Lmhs": {}, "cEzu8St8ZLO0ztLX": {}}, "name": "CMvDWg33lfIDRlKq", "shareCode": "tkoZySc3tkyaVCqj", "subType": "TIXibop70qU5hzgm", "tags": ["mwAkjMAUuPgdglZO", "4tZ29nzzsr8p2DYS", "9hfiCbZ9GBDxsJdQ"], "type": "FIbCWQp6cxTCG6aL"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'dIPZ6gENKkQGQkx5' \
    --namespace $AB_NAMESPACE \
    --shareCode 'roIfE3tdavSiQaYS' \
    --userId 'YLFcAz1vvXbQrvIQ' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'WboMiWf8fNYszRDs' \
    --contentId 'xBgrL6yvD2LGeRbp' \
    --namespace $AB_NAMESPACE \
    --userId 'M97iwipOX6c5xfJE' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'GCn9MkjzNdpD5xCU' \
    --contentId 'L3VTR9XV61P0NxCi' \
    --namespace $AB_NAMESPACE \
    --userId 'wSBIER75kzOZOgNJ' \
    --body '{"customAttributes": {"xdpBevDtHunZviJP": {}, "TAt0zuRGLRiALcgN": {}, "MdovVs1tVJPladBd": {}}, "name": "DZKKStqe6GihC8Ge", "shareCode": "dZOiGpQTnDdVlDUU", "subType": "DBbX244QghTCU5R1", "tags": ["gJg0B71Ylbjzdhot", "CuDD2dFBJ669k4BG", "xwWhbke8TdzjobH2"], "type": "2uV3KH9Wv0zK9YmV"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'yE3P64z0vpVHRdqe' \
    --contentId 'vZglQjLfVpBNlgjW' \
    --namespace $AB_NAMESPACE \
    --userId '6Cnyc7mVr6JrfcJq' \
    --body '{"fileExtension": "3NccugvmPjyCipjf", "fileLocation": "WWBBkDsCLl80xeGh"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'IlvRFmi1Ay0gdBEZ' \
    --contentId 'uqIkSDRcZHAHkRdS' \
    --namespace $AB_NAMESPACE \
    --userId 'L7d9A43U6V8yjNIg' \
    --body '{"contentType": "JpkWkPT4kMxCXSav", "fileExtension": "O73YsXBDB8JgdMQ6"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jHGv4tLfXaFEiokw' \
    --limit '66' \
    --offset '53' \
    --sortBy 'pa9upHkDJEbvf2YC' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'K1Zq2xhIlt442XIy' \
    --namespace $AB_NAMESPACE \
    --userId 'v8qE31nQ47L3OF1e' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'vVQc3e17nOFPF0UJ' \
    --namespace $AB_NAMESPACE \
    --userId '1k48f1JG6POPdpyq' \
    --limit '4' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'zJuW2r24rP5GySbl' \
    --limit '5' \
    --offset '51' \
    --sortBy 'Lr2vI00q6VvpTyER' \
    --status 'dQlndSpfzISozHZn' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'K9EKZAid9Q4bxPEf' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'tMLqkWw0QkQ6oi3S' \
    --offset '43' \
    --sortBy 'BjsVtjeFS87wht3M' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '58' \
    --name 'zBtZDAEEm70ZAqr7' \
    --offset '81' \
    --sortBy 'WWSDVaMvKboJGegn' \
    --subType 'qaRgmmvkuh7alDa6' \
    --tags '["F9LkJ5SyWULImGQv", "N6Xbf1hTGNdz1iq9", "XjcCt272NA0OWVWm"]' \
    --type 'YWNzdlxe1vGTApn5' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["wAx8iCI0fjpTYN1x", "7ym41efvTkGmAfYy", "xae9NOksWIqrgGr9"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["bqJNHnP9MNeVcSov", "ZxG9XcptCZ4QnCXH", "rszFSNcGyBNKMwX0"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '7KdNe86Ic93D2IN2' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'HcgMaBw25TxcCt1j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'y6RXMXuvkeNfaSNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'TgRA7aZzNZ7bLdcT' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '27' \
    --sortBy 'oZSPt3kokZj0KVJI' \
    --userId 'KSfgcFXhEt3WRXaL' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '7rhm8M4StS6HNPo2' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '53' \
    --sortBy '1RQF6jx0lIUmMZqr' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'jiII1w7VxYVrd1FS' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'bsaoKjEauXawlEJj' \
    --namespace $AB_NAMESPACE \
    --userId 'sMZ9ZVkCMUSN9nk4' \
    --body '{"contentType": "FUfhpUGhN5GkKMru", "customAttributes": {"L4ZOuJhen0CoIQNF": {}, "e1AP03mPPxOt8NtE": {}, "O7nb9Qk1gzxAiv2O": {}}, "fileExtension": "RrfIYUSf72MlAkOv", "name": "sfC6zCSldwiqzq6h", "subType": "RLlF2uzmvLqjekhn", "tags": ["hsvEIUxBvVZiBzbN", "0Ro0yJ8zJ1PxYljX", "a3veDWtRXa2Q2dk0"], "type": "4eoN8wxw8wKbWFek"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'vl8tLSg7Qbfr7OIR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'X8fPaDYl2OUiBekS' \
    --userId 'XnYPHQn7AfpGaRzl' \
    --body '{"customAttributes": {"uKTh0K4KiPT02n8n": {}, "2tNqxmMq2WxKE5lq": {}, "NCIXb2t95kvTMYRE": {}}, "name": "eXjVGLAULHkZr0sk", "subType": "OgI97mxBaOEJ0lcJ", "tags": ["5O1srlc0YkljinYG", "Vv7HVKtMxtNyXukk", "GVo7DzBEzSwsnW21"], "type": "10aa1oar57HiG2GQ"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'EGuyJztR2qawQpdk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'N34HaVr9DNKJLp1C' \
    --userId 'UBbyTDei0QpbiVnO' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'fdlBdbDPiAfIJcZe' \
    --contentId 'bedPvIn7Iafr44Hq' \
    --namespace $AB_NAMESPACE \
    --userId 'Cp3jnUgnn0EvTEEQ' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'Jtg2tbSHp902UYeB' \
    --contentId 'GlhX6OUoZ808wVd9' \
    --namespace $AB_NAMESPACE \
    --userId '2jX97Fl3cVYNpYNA' \
    --body '{"customAttributes": {"CiRgE9WYNmOqEakj": {}, "8GiHq7OaD9Ui9UQw": {}, "dQDzY6cfoY0ACiNB": {}}, "name": "OsYobYC2Vhzhbx6U", "subType": "w9mH0bTZZcYSV2Zq", "tags": ["GeGmL13vjrC7xZQn", "FP78yL2EoSxrv2u8", "TwdNgwFc7O9KDdrR"], "type": "1HaWrUXQKDnNemK6"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'bVeJj35zckZ8Ew4A' \
    --contentId 'UlEFZv4TOyFFqR36' \
    --namespace $AB_NAMESPACE \
    --userId '4lZNrveYDKukaqum' \
    --body '{"fileExtension": "DdmbSnpE27Egyoqh", "fileLocation": "9bbi9lKAU7UsjlMy"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'aBKLwO3DmYF0M1Op' \
    --contentId 'flguQtRCBzQ14d0I' \
    --namespace $AB_NAMESPACE \
    --userId 'QvkyPyjFvrs1aWac' \
    --body '{"shareCode": "9uIPXqNOv2vIq6wJ"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'ZEPzYLNMJKFDI7sV' \
    --contentId 'Z3UsGXbE6XPkqShY' \
    --namespace $AB_NAMESPACE \
    --userId 'kTe6xFxgZTUHXvUd' \
    --body '{"contentType": "T2QvsZquga20RnfM", "fileExtension": "y1HTq2Hs2LrpXy2J"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'iSy9m16NdIp10q0P' \
    --limit '61' \
    --offset '85' \
    --sortBy 'YWAgcAXaw6yDR4aJ' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'aThyyeE7pGM4Xwqm' \
    --namespace $AB_NAMESPACE \
    --userId 'Shnh3OJ6Rkt8rYWX' \
    --body '{"screenshots": [{"description": "p19zBMHeuogc7E7H", "screenshotId": "4jNk2kXmmnnBtrJR"}, {"description": "WTfgBBQHoh91zuTc", "screenshotId": "XF6wI3uvjMISCp0S"}, {"description": "COZ1JxgFFmUOZTrs", "screenshotId": "Dp6TUXZpm0Y25Bau"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'boGpZPP0MT8o6yxo' \
    --namespace $AB_NAMESPACE \
    --userId 'jmozQyGbbeo3oYvP' \
    --body '{"screenshots": [{"contentType": "jbVST3nuHAMmn9Xb", "description": "RPhXB4WtBT5WZTZd", "fileExtension": "jpg"}, {"contentType": "bX7kD5zCIee6SJOf", "description": "ZuRy0NxZGMoz6VcP", "fileExtension": "jpeg"}, {"contentType": "njoXmYnQDdJZ86hP", "description": "xTCqXiWOZb6YyUx4", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'J1VArV7gwBv9QKiL' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'DHIHCpKmKkMWfqq7' \
    --userId '1Q4taWTXOAHSELkA' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'j9XKtZAcD0pwpBTE' \
    --namespace $AB_NAMESPACE \
    --userId 'KYwQ6HBx3wqwHmue' \
    --limit '64' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'OWdMsutCW1fUXfp2' \
    --limit '61' \
    --offset '11' \
    --sortBy 'qQ0jpFK7G6RsbCOd' \
    --status '5mV3Az3oNQg2bJVe' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'HZEZUxMhbGnjyR7q' \
    --namespace $AB_NAMESPACE \
    --userId 'P0EHFPSatT1zt4Ly' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'HDMVzjhqTjEoZCX1' \
    --namespace $AB_NAMESPACE \
    --userId 'whInX1hDZJoeHDpr' \
    --body '{"fileExtension": "lUA6uZTOgzo23Y2m", "fileLocation": "CJ2Uv2kPDwUCWh3m"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId '7oTB3IRoZ0WGxKK0' \
    --namespace $AB_NAMESPACE \
    --userId 'lQR0Ownug6gs02XE' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE