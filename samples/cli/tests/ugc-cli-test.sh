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
    --limit '83' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "k0w8C4M3SZdygThn", "name": "6oHYr0fdlbKzfDpX"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '0NCNTG2ItVp7qqcA' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "3xn7V6MAGaVShLeF"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'n8eovLSn9w4tgSYJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'J59F9kNJBnCIV3M3' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "4B1GY2MXiuX4PFea", "customAttributes": {"KwL3X1AgNZrqYjRa": {}, "JdLQ0eD0YO5Umvge": {}, "G1XlZC8iEyMw3Vki": {}}, "fileExtension": "Eyz1dMBtEy1rNIYC", "name": "rA9J4kFNtbAvdN8w", "preview": "mXna7kiXnF3tDVLJ", "previewMetadata": {"previewContentType": "NbFQVfxNM2QKsyQr", "previewFileExtension": "qBx2LclYqd4wvavT"}, "shareCode": "SrilrCcRNijuOJMT", "subType": "4631Dcxy0LRXAZZY", "tags": ["StdYK8GBLJOlaT9m", "ubjz06LBSNnsKYMn", "DLbFBuBqLeY2DMu5"], "type": "Oxainq65VNRzBnIh"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '3pUqYMGcYxmKUw4B' \
    --contentId 'qVdhMbLlX6afzNso' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "yKP9HhcfpCOcGp9E", "customAttributes": {"HWD3vJNcSnDBzaVo": {}, "PS3MgRxGri0iFzFT": {}, "YIowtmF2yuLYwP3w": {}}, "fileExtension": "XSVGDCNwmN54Cv9G", "name": "LMGnpTG6SlhHvVRf", "payload": "UfVRF6wO0uuxTvfH", "preview": "kzBjjuKxzUo3PAWq", "previewMetadata": {"previewContentType": "XFhRr7nbkc3BlvSO", "previewFileExtension": "1Yga6kRXF43gcJmx"}, "shareCode": "V74rn6QeMoxFXawq", "subType": "DEA0k8oB11PttIBV", "tags": ["ZNTwhmfpNgP7WARb", "HPJC71oJUrCiAOCs", "yIqnZ9dLu0U7zJQv"], "type": "NEth6rqSZlnDcUwx", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'R6DAE4E7uhuc1iGZ' \
    --namespace $AB_NAMESPACE \
    --creator 'bhINOuhW0Wh0IXpL' \
    --ishidden '1hGXLm8MrQOgcsgN' \
    --isofficial 'iz1I0F8d8JcD1Dt1' \
    --limit '50' \
    --name 'pGYSS18JKLKclNmo' \
    --offset '0' \
    --orderby '9fORFPFmVVnqd4IW' \
    --sortby 'oyMZsgCF4y1OXwoW' \
    --subtype 'mybblZ2SuDo7Cfqm' \
    --tags '["VQ9ihCrGkb6Ou3vK", "TWp1pM859HsbFX5a", "vux3dkkn7NoTxq27"]' \
    --type 'NvHj1zYKPvUfy1va' \
    --userId 'QZjwiKOr1Sfmw4md' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'h4hG3JcFxt0d8Ddt' \
    --contentId 'pyNYxgb4JcAfRZOL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["HkhPVX2dzyx9NsTu", "yI8gETwGiYVs4aIA", "lfqQy5RHBmxjg1YE"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'VX5HpIJl7exXpd3G' \
    --ishidden 'FkGzYsQBKOaWboV0' \
    --isofficial '7JALUhJxzlDtKddH' \
    --limit '92' \
    --name 'z2SRaXgOfT4RW7Tj' \
    --offset '61' \
    --orderby 'Ptq1JKU6ICLXEQaC' \
    --sortby '0l4MZ8c1oCq06xUg' \
    --subtype '4dhRwcwHHjvB54EB' \
    --tags '["D6QY2B4byxoaVSca", "ALPSI9JmDwnIRYNk", "82ZBECSSS7ur8EeZ"]' \
    --type '5drDrx76ctM0gzyP' \
    --userId 'lu5Eoo377w8ynA2d' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LOAdkSYTdHGRL8XA", "kg5CJRbHvsRqsaAf", "ZGfagFBV5fPBDVD5"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'rXCTEt82XIfUyvIi' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'FvJK5FAHe14qtnEY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '9wbelzkbyy1EdPRB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '8AfKe4Bk7Mq88wFP' \
    --namespace $AB_NAMESPACE \
    --versionId 'tMlIwPdeAWeDKyOj' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'ZqCqT86EyZivtXrV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "CHzrAUqGAT82bihL", "screenshotId": "1N1N1I60dmAAbQrM"}, {"description": "9ToB4p3y17l3KWNl", "screenshotId": "nI80ybd5v4kynkb6"}, {"description": "W7sopFLVLfr3c7am", "screenshotId": "eDpiZCrS80dyr1KX"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'TZG4agF8VPacSlnO' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "3t4nrAt26xcZ18UH", "description": "KTB6AwFPjLdzgNlX", "fileExtension": "jpeg"}, {"contentType": "JUBrBtwyqqfPvmxi", "description": "qI5MCd6l6nF9mhwb", "fileExtension": "png"}, {"contentType": "3PsNMkjsUFkrDPGs", "description": "rPaLOh1DkeWyxQyk", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'lxRe3HDPHXdx0HEr' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TCnv7urixUPjxnkr' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'WngwWUVF6AUacuQ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["75wJphXGmue6p9eR", "6elTluxhWPGSZzuE", "fEmzELEI0yIsIFig"], "name": "Xq6g1DnU1kODb7FG"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'JgMxAncTXGaXMsuh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'cBplyd2BnLj4Q5X2' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["YLPbbygu982qkFFN", "IpYSio1I7B4ZtUH2", "YfNLIWuBPj2bEQb4"], "name": "NZ9PUFvXBXumL2Mi"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'qAce3GDtJpPzuEhS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'rtD4QQmvnS6Vg1Ui' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "XLgEd1ULsA1wX9b5"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'C8OQmNu8TrcWh5k7' \
    --body '{"tag": "TKnXYtZcPde4SxUg"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ZoPiilwg0DRDDkzk' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["bY4l7tmIC5GKuenC", "W09PhJU6PnNp5lxL", "kRjk98HzQzbVMrOp"], "type": "M32jmjwm7tuKTOH5"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'fvo8CqpHMK78M777' \
    --body '{"subtype": ["zjR8Fl7qfSQ49weD", "POtf15Mv2xb0fgwL", "4XMW959hBU1J7xs9"], "type": "OBvSpwemfKts6ZJd"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'VTCpT0OaGZoD4u1o' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ZCd5aw44TsqkZfok' \
    --limit '32' \
    --name 'fSaYnau9WKl4aqUi' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Dv69YcdttCmoGbYl' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'a8hIpBKW6tM9k21l' \
    --namespace $AB_NAMESPACE \
    --userId 'w7XxZVnL00X1qYvw' \
    --body '{"name": "gagLa66F1ZdHGk5c"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'cvGJ0t4KL5dcnpgm' \
    --namespace $AB_NAMESPACE \
    --userId 'DYoAO8DMURnc7M8j' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '5I3R0aRyhteIVYIX' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ub9bgdeYwYHNZC1a' \
    --userId 'cQ3uTH1EKhf1nqax' \
    --body '{"contentType": "DuYNmBrDoNdLaMT5", "customAttributes": {"kl9WwgdM4ylMyuSM": {}, "XZPT066YgSiVZons": {}, "hNH5vIji5ZrZ0vnZ": {}}, "fileExtension": "dOq54qcLYj70L2ve", "name": "sBsdFbesPkU453zy", "payload": "SwncE9ibWjr8DPG8", "preview": "dZfLjp7HLObJ4yFQ", "previewMetadata": {"previewContentType": "ZfYJ3CaUxldfCyz8", "previewFileExtension": "kZBrdCI5WigNkznT"}, "shareCode": "3EOfvUIvVaVJ3KPW", "subType": "6q61Es8vjZjNU5aK", "tags": ["SAMiptkyMcGZZpI9", "Vh6wGbG5yXPLs0c1", "8Zf8J3skhO1Udjta"], "type": "T89AI1sEIknkUZPp", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'KAVuJYx5CRNo9BDY' \
    --contentId 'c6Hb7uSRw62zbaB3' \
    --namespace $AB_NAMESPACE \
    --userId 'n7t11et9ZJzaC2ZR' \
    --body '{"contentType": "C3ijybHgz2cn2Qod", "customAttributes": {"ifGdtsqmZ6wLqf7d": {}, "NsTYRzbOAdyb0gfM": {}, "lqao2n4M4RgQwFxQ": {}}, "fileExtension": "uow79krd9F3wlzxE", "name": "DMN5epzgMg6i6U7L", "payload": "1dlKU7U7CTYDaQD9", "preview": "1K5AWHTekXRrtwAj", "previewMetadata": {"previewContentType": "vSEApIFJ80EVhaHC", "previewFileExtension": "zUwEskb5r0djieJQ"}, "shareCode": "sO2KfK0TpsTD2wAm", "subType": "20xFoWNY5dBxAy9O", "tags": ["GqmXCaDTEJr1n4hF", "SqDUklWS39IkLdeP", "wbC2wE0vXeDD16CA"], "type": "zWqP8Fc6XAJi5zrY", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'firR78YNUtG8oTxH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'R4da4fT3ZpHIHjOS' \
    --userId '4TjrQp2HUDvl0LZr' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'se5qAXSFrzFnJPD5' \
    --contentId 'R9cvrg838ztfnFyw' \
    --namespace $AB_NAMESPACE \
    --userId 'UTkBpXeZlXPcYR6W' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'vxFOE1IZpacW1tHS' \
    --limit '31' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'iCREnBlp22VDyI9t' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Pk0OqDUjZbnOuuqx' \
    --namespace $AB_NAMESPACE \
    --userId '3pPCTvxxaZEOGzf5' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'iuRfDeDh9m33svdr' \
    --limit '8' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Hnw86Mi0dK7UA2e4' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'CI8faJhebqBueRlu' \
    --namespace $AB_NAMESPACE \
    --userId '27Aua56hjs6A46uJ' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '9nS3mI9Iyjl7IPaS' \
    --namespace $AB_NAMESPACE \
    --userId 'kwImK9uZdzxRHfEY' \
    --body '{"contents": ["NSIeKSMPsROBsbzp", "n3xiMqIwBvtSBJfC", "mnojJf76C3QRglv8"], "name": "OFO95tWtRSdqVvib"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'PK39BYR0XKI7LL2j' \
    --namespace $AB_NAMESPACE \
    --userId 'DMd9XYXzERJPU3c1' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '8Dzju3JVnbhZEuss' \
    --namespace $AB_NAMESPACE \
    --userId 'P1afWHVg7pA2t8Fj' \
    --limit '13' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'HwMoOouJiVtTyCNA' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'EILXavpT6f10OVzt' \
    --namespace $AB_NAMESPACE \
    --creator 'PSMw3z10JUTrw8Lj' \
    --ishidden 'pzzCz3J7Z8wAOHf9' \
    --isofficial 'draoTfihsxU8NbQG' \
    --limit '96' \
    --name 'YMAT0ZLwG2jEsobV' \
    --offset '32' \
    --orderby '3P9nuLrkVJpS9WnQ' \
    --sortby '5HOQri4SWUgNOQJX' \
    --subtype 'Eu8G4eXNY6kC3THZ' \
    --tags '["rOxJajnU7VBsKT76", "8siZa4DLlWeE8Fz7", "sIHO8NpwEBzggyqF"]' \
    --type 'LkdGbL6UHq6rrbwW' \
    --userId 'bG7T1PcccntTu2P1' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'RudIf24PraWimfl1' \
    --ishidden '6SwPJ0HecNhpyqzi' \
    --isofficial 'DyP5WmulzpHhl0pc' \
    --limit '96' \
    --name 'okqH9tm6k4cMSicc' \
    --offset '81' \
    --orderby 'KVeiY65qwUcHRSm2' \
    --sortby 'YGBJyd8HWSfhnWVn' \
    --subtype 'OeMiMb4l4R3TvHMk' \
    --tags '["JJLV7azXSFchtILC", "T1WQguzQTXJaGszj", "fIJTEMXjmjHmOUrz"]' \
    --type '6x1C1L8pNlvEjOmJ' \
    --userId 'FwncX6XuwVInavtf' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["IkSyhCakDwoXUvKR", "26bymY7QUCyO30p4", "oNusP4j0fUGxhK35"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '85' \
    --name 'bWL6kJ3Or0KLSMsf' \
    --offset '98' \
    --orderby 'BukFAlsfmeGC7YGs' \
    --sortby 'MrHNT2qFBEjYBLhW' \
    --subtype 'QFE0XZaeSc96IA8k' \
    --tags '["WIVHoPnzndy8MXao", "8goggLwDg4PJEKQV", "KHL8BOctW0UMgEzv"]' \
    --type 'b6QhPvjbKTMGIDvn' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["iqOjLfZ2lZEMPJ9b", "TJejBjJZ4lYFEEQM", "RiiEwZ5g91zxXJ5B"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Bla40vc3AXz2ubqI' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'JiQOqCkxGRdu0Wo3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'xhIygeennMroec2q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'jPcSamMAQeiVX9rS' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'YHhg4fAFlWEI3yjs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '64' \
    --orderby 'GeAP8Nqrg71uvTL0' \
    --sortby 'uWHuHXtVauErv5xH' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '6GhNaK2kA26AZS26' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Jg5COJIalsANNuUt' \
    --limit '18' \
    --name 'z6e6lPl1Y3aPEUGw' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'H463q1JxzLyw5oIN' \
    --body '{"name": "WTNN6CoUChSmbPhl"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'la3DfEnPvEJUYkRu' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'bHPHm8qsEhC2T0Bn' \
    --namespace $AB_NAMESPACE \
    --userId 'PFZ6N4YorYZYCSGU' \
    --body '{"name": "2oE3QZr1UaM4KgaY"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'LzMBJvzaeRaw1md7' \
    --namespace $AB_NAMESPACE \
    --userId '17IX8qj4B9RFayeK' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'WKzPF93zu8BKTvg8' \
    --namespace $AB_NAMESPACE \
    --userId 'cNwxUeLnaaDXhqTK' \
    --body '{"contentType": "JMj9ZkUZZwYZtcUe", "customAttributes": {"Xx1PwFyXQvHTa8C7": {}, "uhj8aXZprHnGXCBK": {}, "JlSx7ZxzBGCGXPkf": {}}, "fileExtension": "0KsmeVB6VwFhXRQY", "name": "yTI2kfJBc97GVyNq", "preview": "YhdmlYLxz1QzPSvq", "previewMetadata": {"previewContentType": "CyJmyzC15VMoeiSY", "previewFileExtension": "rIHAgxd9Hs6igniP"}, "subType": "O1Pb2MqbUX3guPfZ", "tags": ["63kjQKosbE52ORBH", "4BBxz38QSOQ2oA3S", "zCKDYy3vsfJFONXP"], "type": "xcKd39MFbrHITok6"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '15v2JI27qmHEYFNO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'N6tQMwFoVDlXPgGI' \
    --userId 'cwWtq8OFII0mG33x' \
    --body '{"contentType": "tj8pm7uUiwWerDgz", "customAttributes": {"zfzfYHn4aDS8ssbO": {}, "FEgmcTzGlFyR6pg4": {}, "MKNCIm4s5oNVBQ4q": {}}, "fileExtension": "qsNkBOo10WxP1Xw1", "name": "zjZiKie2cFVcF2oK", "payload": "BaBmFeu7oWuBSYO7", "preview": "aKKibaH7nfPExF5G", "previewMetadata": {"previewContentType": "T93NVcOCnnlYlZHY", "previewFileExtension": "quszdNCXEyQ4pWMG"}, "subType": "J4faZMRkoIyjwTWF", "tags": ["8fQLpn2BnMg6hAdF", "6Nrkw3NSmDqjCiLG", "6MWAn7LLOXrmA2z3"], "type": "xeM2yuVkNeG8AHgW", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'drcpwuAg7LH0NlOU' \
    --contentId '7Y89JpfK1wc2jXV8' \
    --namespace $AB_NAMESPACE \
    --userId 'lRACOKaVN1FbJxWN' \
    --body '{"contentType": "I1CKCsRPz2UDcsW3", "customAttributes": {"4Z4upzNmXOKJrTUm": {}, "JbZxA5JLHaakFkLT": {}, "nC9QtGFuQoksifmR": {}}, "fileExtension": "K8GOIkyLi6IVjnPn", "name": "patp22Hwh14kTyO9", "payload": "xrmNERBurBg3gKTc", "preview": "3iLBPEuEDlHcaiPL", "previewMetadata": {"previewContentType": "Gfz47cPQmqAaz0nU", "previewFileExtension": "EwZxOklUEgHUL7o7"}, "subType": "DmMNOn7umQXX16E6", "tags": ["cMy0fULVyhFg1tEn", "9EohZnYYJ7nn5Fo7", "G7rgN1FLQHodgdMJ"], "type": "ylXkzf2gISSeKjUI", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'DySmRuapyInwG6bU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BpN1RoPYEibXEZFU' \
    --userId 'FMYfG6aOtrBztoIx' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Llm8EV1sPKm3V34f' \
    --contentId 'a8ZqT9nDYUr8Pc3F' \
    --namespace $AB_NAMESPACE \
    --userId '1abuJsI2RfqqTT0d' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'lX4O9aOTi5W16xdV' \
    --contentId 'UFQKRo2yJTRjzaAd' \
    --namespace $AB_NAMESPACE \
    --userId 'sXUYbq1MqhWLJCp6' \
    --body '{"shareCode": "Mega4Vw4x2yAXLCE"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'tsEtgcOS9sxohlob' \
    --limit '25' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'WP5lUCQAqnNK7JZI' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'XriKEjhYIA3Ucx5e' \
    --namespace $AB_NAMESPACE \
    --userId 'LW1vOmkLiXbc6OGl' \
    --body '{"screenshots": [{"description": "nS2vWh5qS82C6A7c", "screenshotId": "GtoYYdlhB2thn3yU"}, {"description": "w0N9dWBiWpTsqddS", "screenshotId": "2ZrIApJSZ94t6KCw"}, {"description": "3NyUzc59juUG3ftZ", "screenshotId": "obM7JspSBxOXFTv1"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'YPtr56MD4Sn5gtnX' \
    --namespace $AB_NAMESPACE \
    --userId 'WLTQbo1GVOuGXS0Y' \
    --body '{"screenshots": [{"contentType": "tH6F7GQJQMguEpv0", "description": "3ONnieh6SQrCFsIm", "fileExtension": "png"}, {"contentType": "bn2fGJ4gMgZMnysw", "description": "BU9AeepMtGMAGcPs", "fileExtension": "jpeg"}, {"contentType": "z0HOPHVj5VeKrVL4", "description": "iHoOK49zBIUFgfu1", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'RUZmP8skGnut6vG5' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'EeXeF5u2DasjuRbv' \
    --userId 'JrOQlMRmQK2LOsf3' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'lhAUxcE5ETCwFRGs' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'RAb9rFi9UNRFkmrb' \
    --limit '47' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'GKK5NKnXLpbBHN7O' \
    --limit '96' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'fpdfj2dK8S6Hqv4g' \
    --limit '13' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'xJW39L8WRS8e27dm' \
    --body '{"contents": ["3kXoXo19aTwDWGJU", "cjozqtn23BxpEADd", "x1AbJmTWsqHIq1Jm"], "name": "NS5lTVCWkpM9EIxl"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Q5mlV1uSyLS9vKJE' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'xvBnxNhEFrcjZnqw' \
    --namespace $AB_NAMESPACE \
    --userId 'AC7BDfwB8YhSsVDt' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'CHOFlcb9A7eB4eZo' \
    --namespace $AB_NAMESPACE \
    --userId 'aGECR8GIDtqRXACd' \
    --body '{"contents": ["j3rVzPlTgDO0lGOa", "NnyoDVzHt602ciIc", "uqwUpQ3IO5OyhmmM"], "name": "Njp471xChMpIIjAz"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'dYlkzGinnAiEelzf' \
    --namespace $AB_NAMESPACE \
    --userId 'VNybUq1OI1pRpclS' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'yWhy0NSzW2TDVzvG' \
    --namespace $AB_NAMESPACE \
    --userId 'ItRVf8WRUHo3Uoss' \
    --limit '21' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'xm1OcAWvEJ5RqGM1' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'ydYUqGBuzHDblCzS' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --name 'iuco3FkasuEcEIzm' \
    --offset '45' \
    --sortBy 'c6fV6pXSGLhelyj4' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId '3HLS5Lh5waFe309v' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "eJQmg4azOWrdwKHu", "customAttributes": {"zpYIjNVflOLFL7mI": {}, "UEprgg8k2twFRkyp": {}, "D7sjgbQXnIkR6m7T": {}}, "fileExtension": "TNDeqdpuNxvriPx7", "name": "FglYHJ808H8SdGKG", "shareCode": "v939OVwSwHqCmGUk", "subType": "R2U19jfmwDu3lsWg", "tags": ["ckLn8V8QNCXJAb49", "TY38GA7GWLPzrMHQ", "EhmWvvnL2Hud961j"], "type": "hWE4eK7rneXKpBEJ"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'tlgzypWG6Jicww1U' \
    --contentId 'd8QHDh3ln7mw5V5r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'gGigowuxriPgbKcw' \
    --contentId 'CVSWC9nuSRV0l3Qo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"wFWfKtrI63kdHfTF": {}, "45yEtPcu8QDSjb0K": {}, "zvA6lGD1FUfUtcX4": {}}, "name": "z3dAgkfWccsiRktb", "shareCode": "fJ9ydVEsWgxw8AUo", "subType": "vjitmF2ekfQLVwru", "tags": ["BApGQVgdj7HTigkH", "ZGeV8JRFp9HwJybN", "8Otm9PZncGJjbU6e"], "type": "dVTrdSxIMjHBjhTC"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'fUum9GRW9dtfaw1r' \
    --contentId 'xmIiicDiw8nStb1o' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "JgVu0jcsQKELVAOL", "fileLocation": "eF9oRWTfqXryLrvg"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'kO7MhG9Iakdk9I29' \
    --contentId 'oRJVUQQYFlt91LP3' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SaqU0hQWSgcdi4aU", "fileExtension": "ZWn4F17K3Qz3Fyp9"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'QPxaxyQbndMO67ar' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "KLuzLkrUrrrMOWav"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '75' \
    --name '18jkKVrlWcfo5xa9' \
    --offset '30' \
    --sortBy 'Y66rmQudfpA8v83u' \
    --subType 'sAL8EQ9CGjCPVo3r' \
    --tags '["b39UfefPHkAKf70f", "UiPCCJX8rau95RWb", "JxVjH7DRAsvsIQld"]' \
    --type 'cM3ZeH5vAmk7k0iN' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["6H9aGK2MqJmns2ds", "6vj4PT3hREfZpDcv", "mPRzeBhRI7IsowNI"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["b9D7T7jBatkyEau8", "8cb6rQjZRwUavSD4", "FQEXrjPLMPvnvNRJ"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '3wh0fgqFSsgbnxsw' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'NoAyp7cSz2q7C2j3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'JrVMtIepcITxs4yy' \
    --namespace $AB_NAMESPACE \
    --versionId 'etjVF73kkiN0mnkn' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'nYnomxVE8xQw9xl9' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "mv31qHTsvadgW5QZ", "screenshotId": "8JXMubvDrfAHfuwB"}, {"description": "yTdCL6e7O79zuDtN", "screenshotId": "WB1oYPhwq43gmksK"}, {"description": "H28ne5GmIiVtxhOx", "screenshotId": "iDzGpMIQW7COybQz"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'oG59pTm1H4DGsUIC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "iw4DxNQ0Fr4rZztl", "description": "XLxmnMc94o0Asekk", "fileExtension": "png"}, {"contentType": "tTZi9hemh1ktcW9V", "description": "dIP31c8mktB0UlT7", "fileExtension": "jpg"}, {"contentType": "PwK0MxiPFN13BCLy", "description": "xjDokhVbVDPFQ6Qw", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'xnlwK9eogydzVWGa' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TUBIWUeHkrYjSydN' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'X5X95h155pku9kRA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'mQrMM5Rtdft4qVxs' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '50' \
    --sortBy 'kV3CwnhuKWyHSwiX' \
    --status 'TwQQceLkYnlbeCNP' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'GbVTvZoj5m7ChqfT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'zOfVplAnVTRDDPu6' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "Re2ix4KbS24X5kxz"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'FF4KKxgCzefxLfrN' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JYYtnRQG59s1tv8Z' \
    --userId '35ydJhV6zjwkoZZx' \
    --body '{"customAttributes": {"qsCqaCKPownHaln4": {}, "CeZS7DM8kfLwvmnN": {}, "HKVyMEODhPtwEwYk": {}}, "name": "ssYBysioi6dDOq0k", "shareCode": "AvAIHuAXP0wCq0CO", "subType": "8TN2xf1M3YVL6jVj", "tags": ["gYdmnYjSocnKKU4X", "vOr91SyrzMZCIVEW", "e2KC1XlX6SU4D6jD"], "type": "5XfJjGvmqdbXx3Gs"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Xf4pBZXiqZMIJFST' \
    --namespace $AB_NAMESPACE \
    --shareCode '64ZY1HUtOFawKeKu' \
    --userId '83QBmUmns0lCXLGS' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '0VWe3pbfK3eaH2Se' \
    --contentId 'Tw3866kS4ubNNOS1' \
    --namespace $AB_NAMESPACE \
    --userId 'zE7cP8RA8sH7ewR1' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'cOFcna22LjFTJtHl' \
    --contentId 'TneerDogVXaB8ho2' \
    --namespace $AB_NAMESPACE \
    --userId 'jznL32UAaCMqWXQO' \
    --body '{"customAttributes": {"dFkYeNwXWSzzLlEF": {}, "LD1ELbA0O3iQmmZe": {}, "ewJRPRoLnOrZGmUc": {}}, "name": "eRrtmluEawWCIdsF", "shareCode": "IKHBKUBTKFL7oOAN", "subType": "gzbgONjNZjpJzm3y", "tags": ["fOEtoWStdO6TwDIO", "tJoUJLVvrn6bO5BE", "dVDTHjAkO3jBKXcU"], "type": "wYBEbBICQ6BYVdLy"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'ZESsxZuFN7czr9Qm' \
    --contentId 'blOPXRHZxsYgHQI3' \
    --namespace $AB_NAMESPACE \
    --userId 'l41NWl18mXJ330Mr' \
    --body '{"fileExtension": "lxVbcrXStVPO21pQ", "fileLocation": "zElAeC63uOPgkijA"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'hv4O1vCZBbcX7Viy' \
    --contentId '2vu7Mkq8V9OTY4ps' \
    --namespace $AB_NAMESPACE \
    --userId 'M5BV13lsPWcOpvmR' \
    --body '{"contentType": "FyxaHsxLLYLsySFM", "fileExtension": "zlMRn7VSpwFnaYka"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'YptXCogOenD3glSu' \
    --limit '15' \
    --offset '87' \
    --sortBy 'WsSSq8Gsdtz1JmVX' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'PXArvZ6tpsz3oIoV' \
    --namespace $AB_NAMESPACE \
    --userId 'XPcTgTkzp18CL8FF' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'rRSUaBGHdB2xnIOS' \
    --namespace $AB_NAMESPACE \
    --userId 'K458QFc3OOXzKAnW' \
    --limit '99' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'qUhPyRnO23FUNRAE' \
    --limit '88' \
    --offset '40' \
    --sortBy 'ElIzSUGllNv4W7c0' \
    --status '0RyU6jhxWh0pbC4n' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'OOXfx9p5XzZO9ESq' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name 'juQkbjQiEtynJjov' \
    --offset '64' \
    --sortBy 'bQIRT6imYo55dG43' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '64' \
    --name 'Y5FMF6a3ceN7MQZM' \
    --offset '15' \
    --sortBy 'LfzJIqZ3lpp4s87H' \
    --subType 'rwXz6SfFx2fCX4KL' \
    --tags '["TblD17bL8ZQwjKcp", "xjj1GTfH0gJ1fZGM", "4uQJJ0eAToKaMzMY"]' \
    --type 'rg2fZWxHhpmdcuzm' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["uTKsr6PdPrDSk30M", "323pvbfJXG9mhztb", "PgZZfulkFBs7tbRa"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["X0kJJR1Qkb5z24kX", "AOpNrnLcqNzfvicq", "8PQ9FZnKsPhBvrkE"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'AzrPBOs1WhZobDqS' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'uxyblrwfkRZMe3JN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'o9svowAHxzHXh0ZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'tDqdZ4xvqLLjKFj0' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '53' \
    --sortBy '0qdSGRVt8hpHzwiH' \
    --userId 'eyjETIPtfmiSQYHT' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'X6Ye9wuu1OmQXPxO' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '98' \
    --sortBy 'cScK5oJJOjFmWEAK' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'akcPEcQTws0l6Om1' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'U2PUrpEmWz9RYdMZ' \
    --namespace $AB_NAMESPACE \
    --userId 'EIItIaHfq0NWWDv4' \
    --body '{"contentType": "L3wZxJZdwDFnS5xv", "customAttributes": {"N6f6B0xWcu8dRfF9": {}, "HuEEUSZfuZGuWXWR": {}, "MZEVoKMPNDxVgbGs": {}}, "fileExtension": "4BuiozNcvqhifCk8", "name": "DHmo7yLcWVEN0uDZ", "subType": "IDlovhoS1SKYUWvq", "tags": ["Yr7R2Dle9VokJwm9", "29B3qL2Ab7fYdX5s", "JUTeALGbfsfvz7IL"], "type": "BdX1AaOqHoHta5yz"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'yLPD92Mc6sJhcu9d' \
    --namespace $AB_NAMESPACE \
    --shareCode '9lhSwOvg2z2GAlyb' \
    --userId 'p7kqRw64skmsOD46' \
    --body '{"customAttributes": {"SHwdHxE9rhrlbfwt": {}, "vq6WeOgYtoYPcZ5G": {}, "MqQ3AcvVGaTdArzx": {}}, "name": "963F20iLAVVp5lJ2", "subType": "VAtiFzTY3yeJDWYY", "tags": ["W2dbv7He5DS9oShH", "cGIjjYFduHdWN5Mv", "RI50JPwgfB3vA3Cm"], "type": "7llq8jAiGbGXUc9L"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '3wJXaydGahKu4qeX' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GJozBEX5EfvmXoBa' \
    --userId 'xCqnRTzr6Up06zdc' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'WUccVJxHQAR5JYiq' \
    --contentId 'PuFLX9UbkfMuZn29' \
    --namespace $AB_NAMESPACE \
    --userId '9JaaAPtH0xIZKYMZ' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'fBmsgj3IHGocHCSy' \
    --contentId 'N0MYvxOOHrasMesb' \
    --namespace $AB_NAMESPACE \
    --userId 'jro3Y80deKHlx9N5' \
    --body '{"customAttributes": {"S6JWftD1HD152Mns": {}, "K9cfs4TxRblp0c9x": {}, "0moErIpTFFjhHYdN": {}}, "name": "G8Xwe2A5ZpPiT1XQ", "subType": "OE0jsxLFdJrPrOAK", "tags": ["bzQIfEyqm4bPhTqV", "rOCf2Vio0XGr2F83", "tzLZ0gec6CG2R1aw"], "type": "cqpRM8xNKx3rCgrA"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'F8rGkqpdXUt1m8Xw' \
    --contentId 'n8GhlzEMHgUn1dF2' \
    --namespace $AB_NAMESPACE \
    --userId 'DepxC5aHkAyZKz4m' \
    --body '{"fileExtension": "CyUThBmNvaq26CKC", "fileLocation": "DCmbAVKhytCDLxqE"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'ot36Yoz8OqWYGeB6' \
    --contentId 'nZZJCkY4htk2byFv' \
    --namespace $AB_NAMESPACE \
    --userId 'MPCh5XUH3lXXJv1Z' \
    --body '{"shareCode": "iY20CeGeJYCWmLFL"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'b84hKiQKHwNdWeFv' \
    --contentId 'qTEYm26SLPvopcu9' \
    --namespace $AB_NAMESPACE \
    --userId 'vcdS6CzqMgFhTPTv' \
    --body '{"contentType": "aP04MiD0qTcsij4B", "fileExtension": "2r9RlldAlit8tLo8"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NbO6gNEm6Lfe7UPb' \
    --limit '23' \
    --offset '98' \
    --sortBy 'KdgDnxAORzECgyrF' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'cpbOLbWfEfO5e5K0' \
    --namespace $AB_NAMESPACE \
    --userId 'R23ldaG0HCpZ80iE' \
    --body '{"screenshots": [{"description": "Vc43lJ6vy5Znqbrj", "screenshotId": "eGsZysk1hx5R1OKu"}, {"description": "xX2EA0USw55KscAC", "screenshotId": "cHNoH90kKAZEe2Qf"}, {"description": "NPUQOU26AMN5syMr", "screenshotId": "h0fXOWYlwitpO0nC"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'YtCFSBnXnfxYdZFi' \
    --namespace $AB_NAMESPACE \
    --userId 'a1zReIlLNF0mLTM0' \
    --body '{"screenshots": [{"contentType": "sRqSD9QClHkoIBDK", "description": "ZvZ4iHWZA2JIwfl6", "fileExtension": "pjp"}, {"contentType": "qQOo6P7T4j2PAT2n", "description": "lyDR6i9mzdQ291aL", "fileExtension": "jpg"}, {"contentType": "Nr4Iqz67BvQNGfRb", "description": "cMZOVoMak0uMTMwY", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'SaSAp4xHPG48uN6e' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'SsULiZG7zyNAkqaB' \
    --userId 'OfdEPzsSuKtyadOB' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'DR3YzCebBeSYNNhL' \
    --namespace $AB_NAMESPACE \
    --userId 'EGu4JwpIsSLjO7jU' \
    --limit '87' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '0AnZAm8wpRCpiXYT' \
    --limit '59' \
    --offset '72' \
    --sortBy 'FHVyd0V8zcWBfdnU' \
    --status '734YPLko6LCAVxO8' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'HAQ8upxS1qHff2WV' \
    --namespace $AB_NAMESPACE \
    --userId 'jGLNSnsT73toRaVp' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'eOKR8iBJc5nGUjdv' \
    --namespace $AB_NAMESPACE \
    --userId '17L7SIaAF903xmp1' \
    --body '{"fileExtension": "W11Qd87T4Rr7pPp2", "fileLocation": "y3I6nfDXYbcURNfG"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'tvPDtZ6lmgrwJhjV' \
    --namespace $AB_NAMESPACE \
    --userId 'r5b8m5tFsVL8GFzp' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE