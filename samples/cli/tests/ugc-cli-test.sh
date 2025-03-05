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
    --limit '50' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "mSIgFRLurcnWQjLf", "name": "Kfz4Ng6T3S6lRx2h"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'KdiQMyIGLppcD0VH' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KWYKJayjrIgZgzaM"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'SH0lYcoe0FBWpbnT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'X3V8Cb6ZTismieWS' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "kLzdPiRcps0fnjsf", "customAttributes": {"pBBoz9pTd4qxze5E": {}, "MfMEEm5duqYQkkvI": {}, "yxdoNMDuR6lUPUIa": {}}, "fileExtension": "hhBlYFJcieXArVZp", "name": "5DoJkkblf8ss22IO", "preview": "5SMrOnNZ5Lrippeq", "previewMetadata": {"previewContentType": "DtwTGUTzTTu4Lq2n", "previewFileExtension": "Pki3wkoq5uXZBHvh"}, "shareCode": "lzKmTEKR2TCzcmfE", "subType": "vD5UtOyxe7lm4XkW", "tags": ["fl3DAmJeAmzhl3cj", "KbRl55eWYEdD7nmX", "NYeNEtsSlaqLU9V0"], "type": "Y5WESNB4mNQLHaN2"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'Wn7ld8DMn3mRdOU7' \
    --contentId 'DI9UIM43qTYWNRi1' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "aExznAfjywQ82c66", "customAttributes": {"QLlt5lO5OV1WOIFQ": {}, "oeYrqOpqnmCy6FZ4": {}, "vrPYjiLH6Mv4IwQa": {}}, "fileExtension": "YzfS6BOHLpN6f0F0", "name": "yY5g0U9KHVsk3IDh", "payload": "jzgfYoF1Qwtwf2ni", "preview": "jcgcm4IXMp6Xtqyk", "previewMetadata": {"previewContentType": "7Kybym4p8m16MZ8K", "previewFileExtension": "FDtqmoUO93AEQ5tB"}, "shareCode": "xlSguuBhiFtv4NYF", "subType": "3idCFA7zYlTeii3o", "tags": ["0AWJ7NaOBwBTRh3l", "6aD6LHUO8dTo8NTw", "ASoz99paxLUo4Bqc"], "type": "JTxqVduw2ehjXdYG", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'HmVtwle6z1WDYgqW' \
    --namespace $AB_NAMESPACE \
    --creator 'ITTiGMjuNz2GuwNM' \
    --ishidden 'pPwACBrMlHyiXCQl' \
    --isofficial 't0PxEoCstbERoFoy' \
    --limit '95' \
    --name 'sSGvgHrbuWhDV8GH' \
    --offset '28' \
    --orderby 'KJ0oCv8vrKgxZdu2' \
    --sortby 'FvLGEMf491SYLqzw' \
    --subtype 'kazXCanKjcEerN3h' \
    --tags '["pmSaupqatbprIpzy", "7MjasTo0PdcP8MDV", "O5ktXW0TuB8yb5Qt"]' \
    --type '1EMZtzq4trPmG3Xo' \
    --userId 'jekkEJWccFyVPp7u' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'EV2jFSbSw3Yt1hhL' \
    --contentId 'PBAcyFHdbcdGXu1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UdPMICn39tPgE0sa", "E9MFKTKH2fdIMOJ6", "ISL1h4pRV45MXczl"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'UKFKpBXZNofwDKvA' \
    --ishidden 'GstAt6W4nG1vu1Y8' \
    --isofficial 'Q1lRTQFAwX2rz19o' \
    --limit '35' \
    --name 'x1Euc7MMUdtA14Hv' \
    --offset '42' \
    --orderby 'jZv9PX7jpiyY56qc' \
    --sortby 'gUiaQQDhGR387u66' \
    --subtype 'xp6LW3y7NDItsOXa' \
    --tags '["vWw8yj9rZ3oNUYKY", "WjodcIm0ZiPx546U", "B17CdomaWOA5plVb"]' \
    --type 'zi2Fp6w7RlE0aPV3' \
    --userId '09SSORSxAAt285cy' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["8XDWGaxYREGGyLvF", "OC5thUTSfrss0sT2", "A4oDvJNchXF99bOO"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '6eacQllOd88jkF9m' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'vIQPmUHRjtUGBhVz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'Xz6Bvc22lsr3VGpW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'rIemV8jJSbcQp1Bi' \
    --namespace $AB_NAMESPACE \
    --versionId 'zgyhr5QoxtxkjcmZ' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'Ak2HKgQK8TFh30KW' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "zRQuIvQ99f4xNfHH", "screenshotId": "BxCRt4QUikx1oiMq"}, {"description": "ULiw7llWcqYgz7wM", "screenshotId": "Dfc3lw3EJcHdho2b"}, {"description": "CmH5VJJaFNSNIksz", "screenshotId": "bknuOWBHgwCzQ86Y"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'zLmXnjwgThROwbJg' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "j7NyOEvqN9t1mXjN", "description": "E8Jz1mMFsF9tMRJL", "fileExtension": "pjp"}, {"contentType": "rQ2qhNVBLH8pH4Uf", "description": "eMNB3BUt2mBXJrgh", "fileExtension": "png"}, {"contentType": "bXIXPBGtwjcbi2bq", "description": "1qaOXRcVKRnn2nGS", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'YAg1KRc7xIlZD9mB' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'PBhmx9OBEBycjiiR' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'WYZjY3J6DQdbh5AV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["MMTehfu0cogbC47S", "bFG0rOgZtYRmauXO", "AU6DPIjvWh00o6Xx"], "name": "atZ0YDfMI0B43n89"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'wh2TZs4QOm9bnBsD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'VornrWObxux7ZuXn' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["viqs7X34IGnPEWUl", "6S0pWfKRc88GVisc", "hPVck0uPf9dYaHEm"], "name": "43UCMrdai9ML8gGb"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'JDwXCzN2FF18O9TC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'aXHL5azBgEU37ePK' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "clloBwcjbEDRbJ9P"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'bwKYILfH8UBfVfK5' \
    --body '{"tag": "ebTg8KUxL0IEHpbA"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ex3VUHD6yr1GvHBd' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["7f9LVfdFoctiIkOC", "4NXZinOElS2kRiHW", "NznmAukRhiqyGyLD"], "type": "hemRm6xMkzbnXkW7"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'piLLuevtwuoyImwX' \
    --body '{"subtype": ["cpZRUJ88fzOup1fR", "KGnNrH35qxvUKlNV", "Rowg9qN4zOo6fMBY"], "type": "SdK2A0wxrtWrVZXm"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'aQGZBkGwUfKanAlk' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'qnXJdkS5OTxvSPy7' \
    --limit '21' \
    --name 'erlZ2BwuR0lC0CbF' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'xgKtXNLOnNVngCjN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '6kdsn7UgiIFxgcEm' \
    --namespace $AB_NAMESPACE \
    --userId 'h8V4a3Vee5pnJLKc' \
    --body '{"name": "veB18M70YwIkFY2j"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'v5Le1b22T1lytih3' \
    --namespace $AB_NAMESPACE \
    --userId 'Bled87dWJcPUwcKY' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'gvpQV5NHrazdDi4d' \
    --namespace $AB_NAMESPACE \
    --shareCode 'w3Es2okyaxffemSZ' \
    --userId 'N6N1zsKBavQk0IDx' \
    --body '{"contentType": "QjiDh9fvNBYF7CK8", "customAttributes": {"L4kmO51AfBDjgZNa": {}, "diswOJ1UdMOMjrXH": {}, "PApEpVwmsxoDMfkq": {}}, "fileExtension": "Aazq5l9VQwuKaA5s", "name": "hfb759ZKBMhaGZBz", "payload": "pV4BWCHsJTcIbrGQ", "preview": "aqKoDzNvr3xmN8a0", "previewMetadata": {"previewContentType": "9zpx4XVSWnUrQeZx", "previewFileExtension": "SwtbCcB075PhYwpI"}, "shareCode": "X5awkmTQF4t5Rnxn", "subType": "5uXpFbffdETA3mql", "tags": ["iE4apa3J88JaJ6hb", "Pkt5kgwltyCyJlup", "DVdUF045nk6PCUpD"], "type": "pDqX7AW6M4BxGU6R", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'LOLZyNzSJpGqFvxM' \
    --contentId 'fhrrm1pC0nr5cicJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Xw0jBcCjdwPWHvHf' \
    --body '{"contentType": "LXsSdBZpXlKWZfBJ", "customAttributes": {"ZxPafZ39cqds3m7N": {}, "Qo9dV5aZsNAGIKk5": {}, "UyEDWYd687J5dUxw": {}}, "fileExtension": "gI72zo2CIfDKEOHy", "name": "9DqZZjQFCJhskpPM", "payload": "ULWndM70CJm4CtiJ", "preview": "vwlLMNPT48seRzrI", "previewMetadata": {"previewContentType": "85xU26iFhyfYRACl", "previewFileExtension": "f5NT2NlVokmlO0sm"}, "shareCode": "DCBVIKcUd1PSiqh6", "subType": "cu9KmOS3ScoF5i4J", "tags": ["yz0ZofY5DZZK34Bk", "x04LE3QfcwiwcV0Q", "wQzCDoi9UGviSKoS"], "type": "T3T7MZEqfnNWRgJ0", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'Dm5lh9CwaTRuQfMF' \
    --namespace $AB_NAMESPACE \
    --shareCode 'J8cuW5GTDkDQ3zwT' \
    --userId 's666YcmbIalR40AI' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'CrsxV0yakSA7C290' \
    --contentId '3Y51sEDglLPLhRVb' \
    --namespace $AB_NAMESPACE \
    --userId 'EUKFJ3nxdd1d3O7f' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'BXNFXBpuOv7VmWox' \
    --limit '45' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'vnfMkpudEDtAVYkH' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'jBpXakMr0YuZyXQ0' \
    --namespace $AB_NAMESPACE \
    --userId '4yt4EyoHmzLNbk4O' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '6qemjLlk2NZeseVw' \
    --limit '32' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'hQqQCuUWQsNeCinr' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'c6APWEAyR34GvZba' \
    --namespace $AB_NAMESPACE \
    --userId 'bGW5t8ZWxn9qqikG' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'aGvKjFas4YCTGKNx' \
    --namespace $AB_NAMESPACE \
    --userId 'TYzVemo4rK99KG7F' \
    --body '{"contents": ["98i5IkHK3jZ2tIkw", "lWzyWzlMcJfAjSHK", "13OQzqwuWBa8udwy"], "name": "i4PwlASu5iLhrChH"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'mhNFJuVQdH07q4GA' \
    --namespace $AB_NAMESPACE \
    --userId 'HXpjPtV3bRl1n7yA' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'WRyBgfbk6W46GJit' \
    --namespace $AB_NAMESPACE \
    --userId '2lR4bZ0Swn7bxGpJ' \
    --limit '40' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'r3q7VcqObYLxSbXM' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Zno3JoSIXppwmI0a' \
    --namespace $AB_NAMESPACE \
    --creator 'awBP9OkRFkx7Hrlb' \
    --ishidden 'VOLiVlZmJxWfb3QK' \
    --isofficial '57hb4fWR6RW5WCkX' \
    --limit '1' \
    --name '2QafbiQFYo5W0n3P' \
    --offset '33' \
    --orderby 'LCNyoSn3w8DDJ5oV' \
    --sortby 'zkzY1wd34ynwHzbp' \
    --subtype 'TeaCJusULJF1Zp41' \
    --tags '["Qv3jTPMkA9laJIuY", "I9XMNXhkNKEbQeL1", "25mAP1pZ4KuqAwFf"]' \
    --type 'KbckC0LTsc1emXoM' \
    --userId 'CfTOwqfz3xz6vC6d' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '5uRZtFZ1qz2g8SLp' \
    --ishidden 'OoPEtmMdtFRbwyhb' \
    --isofficial 'PekB433gJby3WtGY' \
    --limit '67' \
    --name 'TugXSAgQboFG5JBp' \
    --offset '18' \
    --orderby '5izMWIPZmiRfoLte' \
    --sortby 'NXnkdR4BdHWVg06s' \
    --subtype 'bLNEHy5Gya5VK3Cm' \
    --tags '["gDG9tyB4ec7tZG4P", "DvoKeSVd2YKAgWwZ", "S5eXURReIjKmuTyv"]' \
    --type 'gkNmH0hIa6QtxCVV' \
    --userId 'TsiADfYjti55Hoed' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Y9iqfOY9cK0XuZG5", "QmTXhm0flulJvpsi", "sUmGp0jBoxAWyNhN"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '77' \
    --name 'NMOIGEK8P5A2sC8Y' \
    --offset '41' \
    --orderby 'vphLRmjm1BWtO9iu' \
    --sortby 'BIyS4DtMuIGRlUsy' \
    --subtype 'yo3wAYZ28zstQTxb' \
    --tags '["SwJo9GCq4cbBTxj2", "vK71sU3baQWJAyLM", "URn0RyJSE7yrvSFa"]' \
    --type 'j7Wx6W4LbGFOKh98' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["TKJUb4eJ7otXAlkw", "1mTSFMAyVCLFEnpx", "9dUKQFMJcDKRzVEG"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'mhhFDr3lb3iouHWR' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'GWrbie11d5H2m9kG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'QxYJ7uK7ANrAn00T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'NCpBP3hbB15DDVSH' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'R0zObP43o1Y2keq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '72' \
    --orderby 'HKa5fwxfwRrOWMUO' \
    --sortby 'FDgUYNfbwLSTjWSb' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'VIRO2gRJvWnTCpxc' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'LrPeac4bsiimRLhu' \
    --limit '18' \
    --name '6da9n0gqoJeRzwTF' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ocGlCY5aoqjqLlQq' \
    --body '{"name": "7Gih54My12jBewOv"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vvYGbRNXqcM7qvio' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'LGQp8KOy28vzPB1W' \
    --namespace $AB_NAMESPACE \
    --userId 'nzPrayPvftoVlsjK' \
    --body '{"name": "8cV5M2Jl1XKSaX5u"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'kLAUkFXDQiTD5Fki' \
    --namespace $AB_NAMESPACE \
    --userId 'quobFf5VeGxN8mXF' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'jIE1klQZv51nFbBh' \
    --namespace $AB_NAMESPACE \
    --userId 'WkVgxfykXKjxSgon' \
    --body '{"contentType": "njSIVnsSR1nGTMqy", "customAttributes": {"zNb4d4ql8WR71fyY": {}, "TCJ8yVHsej08L8Yi": {}, "y5niqms9jWaj1h0x": {}}, "fileExtension": "8YlswteNCOaQeTOs", "name": "qfvhpvLfTCk1ORim", "preview": "R07oUzqHUaDM24pA", "previewMetadata": {"previewContentType": "taiTGjwmUQziiIJc", "previewFileExtension": "DDXjAQiJfSbdHTrw"}, "subType": "oIysQMVx5BIevjl0", "tags": ["xngdOAgZtBrRaqgN", "tvS0CCJJlsHH6nzi", "m24GJH9nts4Jg6Ga"], "type": "UpdflerK02NnIf14"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'rd9PyQL4AXjw54Qu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'NHBo9MAR4c391iWF' \
    --userId 'NJDNFdPahxtX1DDF' \
    --body '{"contentType": "wzb07Y2ZIhAfri0K", "customAttributes": {"eOBMIeF9jUCXOUWH": {}, "LW1NaBHw2bbH2kCZ": {}, "cCBjnoBGTdI1LYB2": {}}, "fileExtension": "H1kRnpicrrySKH0J", "name": "GHsedvL8zH8zwTHW", "payload": "eqQ5g1KHgWoURJs9", "preview": "gLd7nB3wgMDFBKs2", "previewMetadata": {"previewContentType": "y31usL3laDgJ7UEw", "previewFileExtension": "dhPwD0zuTgn3t31k"}, "subType": "STxvjFKdmBBjRhzT", "tags": ["JthGwEHDEstN4Xzs", "4dJxmn6VLNkxogTl", "0GrJkE2sVT5L7KIk"], "type": "1QnYJAxvdN6DIwP1", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'vZxOcHUPoXo6Kvnu' \
    --contentId 'Y2ZqLlogQocwBbp1' \
    --namespace $AB_NAMESPACE \
    --userId 'WIs0kNexa7isVtMG' \
    --body '{"contentType": "YP9CfNpVSV7rQ6tn", "customAttributes": {"jM3CwbFgfJQY658s": {}, "pCk6AwzTDrXvzRs4": {}, "lU8FGuJF1JsmICjs": {}}, "fileExtension": "mB9DJvgrlegXPGqC", "name": "xI2mRDq64RBbKinf", "payload": "31SiMX6mownW4xT6", "preview": "tBS8hDoySY3Eb2mx", "previewMetadata": {"previewContentType": "dpmg5Ap1tKCV1C5P", "previewFileExtension": "uMOw2Kj2RXSuMPlN"}, "subType": "830Hrxv7tZWdqI7h", "tags": ["u9o95BAMaSUnI71H", "OWaLlEaKYVvbMyWA", "TtpPw5ZuGJ3pG20W"], "type": "tumg9v8qSASnFxfQ", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'FjXxTSBEgIECGlwd' \
    --namespace $AB_NAMESPACE \
    --shareCode 'QbMuQMOQ8lD144oS' \
    --userId 'MIbfcC96zzsV5tsX' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'TAh3Xw4TTY9YAxyN' \
    --contentId 'rhSSuYQjBEmDkGIK' \
    --namespace $AB_NAMESPACE \
    --userId 'NMn9kDYbOpzn9ILT' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'gdEJoxKREsUME4Qp' \
    --contentId 'jH9QVOct0E3Qb8TI' \
    --namespace $AB_NAMESPACE \
    --userId '02ENXxssWnR6sLE8' \
    --body '{"shareCode": "QFpFUwMLYraVXY6C"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'RKgSMBK0L0zBH92B' \
    --limit '38' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'JhuEj7z84W9Gi3rO' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Jg81ptqKrx2iIE6W' \
    --namespace $AB_NAMESPACE \
    --userId 'ldSeXGNr9ynwscnp' \
    --body '{"screenshots": [{"description": "S2bElEYX3RaXVjo9", "screenshotId": "UsOoiO7SCSLL5fcm"}, {"description": "5dHb2lgj9aoXpAEW", "screenshotId": "LreIb599sLoUCBFo"}, {"description": "3m44qM7krtZsekiR", "screenshotId": "TAeYbaODKx1tyfnX"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'GuiSKuMtZQOJDl8u' \
    --namespace $AB_NAMESPACE \
    --userId 'rpNWQ0ToFhe7Bp5i' \
    --body '{"screenshots": [{"contentType": "ZeB1ITRgBKIYUQtp", "description": "VdQcqBCRiBOPqLmO", "fileExtension": "jfif"}, {"contentType": "cH14Dotg3NYS1LSd", "description": "JFrSdsx4IuARoc8Y", "fileExtension": "jfif"}, {"contentType": "KaRUNvgY3Rm5OXaU", "description": "PNcXh28Sh4olshFr", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'iyz3qvsQ9m8Wjqdn' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Tv4jfD1QEHOPCJEc' \
    --userId 'bl7sNpPtlk4vnPBz' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'h0hmYkHjLt5nqlrX' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'upFuuSQzYySq4fWy' \
    --limit '67' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'arRmHuuozb3sFGk2' \
    --limit '77' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'uV0zZOXBwQ2CoUdv' \
    --limit '91' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'fSEO0SYrPVx3to74' \
    --body '{"contents": ["8n8r8P9oCcJgpCW1", "zN4ZvkSSnCwo8zgI", "ddUZcLTLPefN41jf"], "name": "tXe9lomGei8xEfN8"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'eHVUEVo7QaeqPk33' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '8hLPOrg8f0Icv2FQ' \
    --namespace $AB_NAMESPACE \
    --userId 'D1yMl6YHIUsQ3D50' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '1lBNw0nQn9SHELrM' \
    --namespace $AB_NAMESPACE \
    --userId 'rjw7EqfdwKuf75Va' \
    --body '{"contents": ["4kkBDwzsoLvjsSJF", "TR55xS3oZTj15fAp", "XGuwHrSuIWzAKibB"], "name": "iM5C59V9yja7J1N0"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'y3Vq9aSmJLUbtSc2' \
    --namespace $AB_NAMESPACE \
    --userId 'Q5cNWV0jsjPTpH9m' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'BYRpmTuzXjBJWBFD' \
    --namespace $AB_NAMESPACE \
    --userId 'V1EZceW0zGK7Cc1s' \
    --limit '41' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '8HXiuOtmlBA4df9f' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'pVKcTRcWuKWH1tit' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'TKiDX0qZySaMUED3' \
    --offset '19' \
    --sortBy 'hKsLkcXg2xC4qVh5' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'NsYnXW7a1Ycdu5Rn' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "wkhWJlGnkseZHaWn", "customAttributes": {"fpOtI8tN5UtqSSoT": {}, "g8Ym74sn7C24wk0y": {}, "AqE04rqlO3tdxTAD": {}}, "fileExtension": "qtf5kxBmmbtUpc9m", "name": "cwjCuTJtYqVuKScM", "shareCode": "5ar2MsnRvcgE60Wq", "subType": "vRCAMMORQadTgPqI", "tags": ["IvpBRHi10V602zCw", "aijgrd4GlI6xIxlk", "JNPDWVKRzVWkip8O"], "type": "1lq8HXAXN4qTEzo7"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '9U754s34z7VXIZhF' \
    --contentId 'MOja3WR4tAUowrfH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'lmGD3JvkIqhUKycA' \
    --contentId 'gdrnXXPuhM0e9uiU' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"m5WRygrwL3GknmGI": {}, "QaSmW65Jztn8Fmnt": {}, "2U008sUHjssJexy8": {}}, "name": "VZC1NHHfAeVpIPYs", "shareCode": "wW9ch3jz9qpXoi84", "subType": "9DVdoWVFig6dB4iK", "tags": ["K4QjrRPI62RCO13D", "aZG9qge0R8qBMbBu", "GYT4kmy49JeuQAku"], "type": "466P9e2zR5yVCxS9"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId '4tNMqlD59fi8kgZS' \
    --contentId 'cxdZO4lYgA9uvVMI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9ElpoBoc0UR9IIV6": {}, "1NHljWekFf258LG9": {}, "LEhvmccwmAsxltSS": {}}, "name": "e7pitbTFnvZ5lByy", "subType": "5T3T79vOMGi6L5Pw", "tags": ["q5JqFUK3wOIKGd7M", "Uw4uk9jSrrLWLANh", "9UUyJyusm0fa6Qid"], "targetChannelId": "1XhU18KYXGGlzzRH", "type": "LQXkLDgJhfApC2MS"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'porPcHOcEXKVxPhf' \
    --contentId 'edTGYefMWOP4h1Qg' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "ejpGT94U3Hf23vs3", "fileLocation": "jpyOqjQ3vOpdn7R8"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'z5w04D9rjORuZLJQ' \
    --contentId 'dNydZnOeA138U8yc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZIS2ysQ8sobxjnHA", "fileExtension": "8wCBaSR8o0uwoDLz"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'w144hVtz1P08OMGF' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Bv4kmqhdfAc4uJWF"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '29' \
    --name 'l0Tll8jkSUis4bs2' \
    --offset '15' \
    --sortBy 'PiSECHsFX38QApZ1' \
    --subType 'UWeDFEsRsaSq9X4G' \
    --tags '["ltj9h55ksYXzqDc1", "ODz92IzYJ2ef1ZE2", "yg0gI7BTMIPEZYEb"]' \
    --type 'YJ9W2PLZyJSzgg66' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["eWFhtJ25BHwLPEuv", "7pP6JYnDh7FXSGLW", "4OVMrq24fA3Iq90S"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["i1JcbW2PGw3tVXVG", "YBChAAWTzFz6ZWyQ", "I5Aq0Ae9j3E5DBr1"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'qAsAGX79XLEJSc93' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'aYXH7l3uuoNl2gBO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'mN34a6fA7BcHMler' \
    --namespace $AB_NAMESPACE \
    --versionId 'XuhGJ4XHqfYQOgin' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'dst1K14d8ZYCVUXQ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "fWu9UUH7z4Ekynpv", "screenshotId": "fp31mVrBNQotj2gq"}, {"description": "ZP7DMQGmoQuGZFtd", "screenshotId": "kCieuj7aIRLTRhee"}, {"description": "W4DTzqC0sD7C5PGE", "screenshotId": "0YkVHWEQhSKsyizc"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '5FbKTeMDaGUQyU6w' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "wMqwYpalU8JuwNlC", "description": "969zol1poFp9ooJr", "fileExtension": "jpeg"}, {"contentType": "CLdTX4GTDp0g462r", "description": "WduLY5etuNDUMbyR", "fileExtension": "jfif"}, {"contentType": "7TjQxAXzpb6CVvQd", "description": "lnfH2QYWz7dal6CT", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'RnwArm536unYDxJw' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'FOPuTFkbLl2E1IJd' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '9re6R5fpIWNqTsgE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'bpXFWPEJk35Utgsp' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '74' \
    --sortBy 'RZkkEBVD9CISwRVx' \
    --status '2q3RNglkpCG8qWTK' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'K1oqADW2eltIQ0eZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '1cCjCxldD7AYFSxp' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "nJI4UTkSfds4r7QI"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '1Mmj02Wsqx8CaXfi' \
    --namespace $AB_NAMESPACE \
    --shareCode 'TavjoYk3REPEXPfv' \
    --userId 'fyfRVwmtWwj9nDij' \
    --body '{"customAttributes": {"exo6yzHDmdD3eKNA": {}, "zqS6OvSVcMnVJMGo": {}, "JgboMWO4zGnFwG1U": {}}, "name": "oLbxr6jLZDZBjjT1", "shareCode": "4i6NicRtBEOxiMZW", "subType": "BbAx3D4NbGeNdmvb", "tags": ["cYWQOB3ju8G7u7qa", "Fkg6R21FqdgQFMVI", "XyycEBfqvrUoIPzk"], "type": "Yertxq0t0d9jXDRJ"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '2l7eJrsIjuRTiFA4' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CvVq1zpDLDFrbST5' \
    --userId 'C7LsF5LFQMX6RNAr' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'MtkKtwNQ3ouUFtah' \
    --contentId '4zadXLUqEwXiWiUg' \
    --namespace $AB_NAMESPACE \
    --userId 'ioHa9J6Fu6fW4PkS' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'xdJ6XVZkAEUSmwT7' \
    --contentId 'EEm2wqr9NZeIun36' \
    --namespace $AB_NAMESPACE \
    --userId 'fHbBmY95InxPjaD0' \
    --body '{"customAttributes": {"GvrW2BqSKwXLaUF2": {}, "kO2ZxESmi9XWx21F": {}, "D9PyyYJZUOqJFGjK": {}}, "name": "6e8Kz7sGtTFpLD5e", "shareCode": "sGAZGcLKuJ7X9Lo0", "subType": "w4uN6iRQaBpDcai4", "tags": ["byNRVc34v55ryEEc", "a0o6MwVQPtFKev3w", "F9PAuAWM70qIWEPJ"], "type": "WF3TOz1trHe52Nux"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'hjpegkLSdQ1dBOuQ' \
    --contentId 'eyglvRdO0E0fSXeP' \
    --namespace $AB_NAMESPACE \
    --userId 'WhAlAzZLgRNvQZXg' \
    --body '{"fileExtension": "cRoTmELQ3gUwENHA", "fileLocation": "IPzkLFufXiGG1rW6"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId '6RdrgXRlAuq7szGx' \
    --contentId 'eAH2vKjIq7GsXAuc' \
    --namespace $AB_NAMESPACE \
    --userId 'pceoNCD5oG6RM1Hn' \
    --body '{"contentType": "LCU2mJakRX7HmXYm", "fileExtension": "IfZeaEeXDQWrPxSj"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '7yt9YUgpiKpVV9Lq' \
    --limit '78' \
    --offset '16' \
    --sortBy 'CVkdxSsc2MaKJG8g' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '4MEKxdrZZP1aH7sT' \
    --namespace $AB_NAMESPACE \
    --userId 'UE8rST6eEAdKdMoA' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'Wj5Wc9ptIOPc5Oip' \
    --namespace $AB_NAMESPACE \
    --userId 'mjTdFoFU04iWelyH' \
    --limit '20' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'nZK7XNAb8cFL0vKe' \
    --limit '24' \
    --offset '22' \
    --sortBy 'qjturnrA9xJB2DvJ' \
    --status 'SXPzlHprA4g9gPR4' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'BFKcGvIFYow02yjc' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name '0V2GZTXAL3j5SmwT' \
    --offset '56' \
    --sortBy 'aj86K7ls7nAhvKe8' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '41' \
    --name 'ZFQ5yba6OWAO1lEv' \
    --offset '89' \
    --sortBy '2kHOzedbX4m4m6o4' \
    --subType 'C3ezSF66GYkDnzES' \
    --tags '["e8tg93eXT36jbRde", "w1SxbXB0C3kuKVKJ", "UVYx2gelH4YHqSSX"]' \
    --type 'crWDUmO6oDdU172S' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hZl4zrZNKL6lIe7z", "HLQjkpPeOUvuHY9T", "bsPJSNLQ75nMA7nN"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["br1ZaaPlGN9qKkG0", "8zs6TGyk5vUnaeDg", "qEv8UlRaklvjRLMD"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'fRL2AtEBYcFS84aC' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'pOAEuP8krDEjZtt6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'Oo9FckF2yrMnzZf4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'T1myBjATfJdgA16c' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '70' \
    --sortBy '40cv8INbmVM9gLue' \
    --userId 'KoQ8bnyNlR3Cyn78' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'KdkXDzMyTiiHEugP' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '16' \
    --sortBy 'Va0lOJ5mf2VkRN1Y' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '4hTJ4klhM2epBXzV' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'AlJRnHvDaq9eiM8i' \
    --namespace $AB_NAMESPACE \
    --userId 'JKjrr57uDfVvZ860' \
    --body '{"contentType": "vvf4gQ0hrYHRTXMB", "customAttributes": {"z2lK8UHz45i8wD4R": {}, "NRkxld9YdsHwkMMZ": {}, "vJbBgyT8SDZJyChX": {}}, "fileExtension": "DndfiCKaa25PMPxT", "name": "qAYGukB6Y4O3evkF", "subType": "8ZLs27xQImXcjxlm", "tags": ["qkXs3Q8Wk3FI1Xql", "fWjLRGG2XhEPbBid", "OegSlVGljWOvtZqx"], "type": "ZbL8wjcvXE5uQp1Q"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'LCz1kHFlrVsbxyhw' \
    --namespace $AB_NAMESPACE \
    --shareCode '17ihCA2uvInWZbUJ' \
    --userId 'B252TAIBh6PqQqr0' \
    --body '{"customAttributes": {"E6eix8EBwgzYTuZz": {}, "snm9JFhUvPIT6Sje": {}, "RGZFe5oZ0NMguNEQ": {}}, "name": "q66pGhJUzo7Oz88a", "subType": "bolUh0DX7ezbD6vL", "tags": ["YPd1I5UkcxjFRn5C", "XP07rQ9ps2mRuyNR", "aFQNPkrNBmNWhgWr"], "type": "QLr0X0tzBRtGz02X"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'htc9IFknf1vk2s6L' \
    --namespace $AB_NAMESPACE \
    --shareCode '1qboQzYEXFxeOque' \
    --userId 'qlOdJHJPtZ6SrjGP' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'VThSO1OiJoD7Hop1' \
    --contentId '4ufVUXChuNdnTlsq' \
    --namespace $AB_NAMESPACE \
    --userId 'Nk2f3XodwsqByN5s' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'zpT4Hl3c6zHQjqd9' \
    --contentId '0kr5h5Py8AFKr7kM' \
    --namespace $AB_NAMESPACE \
    --userId 'CmPtuTv2AnAIg85J' \
    --body '{"customAttributes": {"HlRvXBdGEoQhtpnf": {}, "qO2BeaXANY0tY0Y3": {}, "sdlef5vTZDFeY8qa": {}}, "name": "Wbb9FLQnBH3ZntyD", "subType": "jvyTLJAwflHHVcg5", "tags": ["eCn3m7hcCnMf9idn", "A6FE5H9IJKP4OIzY", "y3lAhpCua5dYVPoO"], "type": "JrRjAz9Zk7YaxJz9"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'gLUMO6gBZ4PLHB1f' \
    --contentId 'ZmDxGyjqhIoLQDcb' \
    --namespace $AB_NAMESPACE \
    --userId 'bOzQI6xJ8NGhFwQ2' \
    --body '{"fileExtension": "Up6ga7JI15t3x1Rb", "fileLocation": "0wrBrsphUZq0EWE3"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'DtzfBJwRjwZ0Gmjg' \
    --contentId 'uHRuK8eYZpeD9ErV' \
    --namespace $AB_NAMESPACE \
    --userId 'eAOUprNl5iilwkLc' \
    --body '{"shareCode": "TJagrnwABPgBxHj6"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'jj3tQQG0QtBGqV4J' \
    --contentId '4YPOpvx7ltIutWtD' \
    --namespace $AB_NAMESPACE \
    --userId 'zpdsZLb1Nn2FFhyj' \
    --body '{"contentType": "nUoUNjw9VEQduPRH", "fileExtension": "1aQcEZVss2hFE6Tf"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BietvgE44bTfc03D' \
    --limit '92' \
    --offset '57' \
    --sortBy 'CjyitcKJpT8r195H' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '8aiXcAjI3rk6Zm63' \
    --namespace $AB_NAMESPACE \
    --userId '88X8galhaOetCTaj' \
    --body '{"screenshots": [{"description": "rEHco8JterZrQ6K0", "screenshotId": "qagzSv0oYimfZBol"}, {"description": "i10LA9aqKtdjcf4u", "screenshotId": "ge2WoPIbmsDMcaya"}, {"description": "XxXORUYGlR7TG3Ke", "screenshotId": "SZ2VGBzdxoFotNfO"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'WJKK83JFBs4h1mrQ' \
    --namespace $AB_NAMESPACE \
    --userId 'hWHN5tytqAG2RTD6' \
    --body '{"screenshots": [{"contentType": "yzOvDuSC5MplQyMM", "description": "mySP1nS9pR5TRtDT", "fileExtension": "bmp"}, {"contentType": "Mqq5STFLI1h1myYy", "description": "JzuPdcj88ElVI1tC", "fileExtension": "jpg"}, {"contentType": "pJwQ5JE3rWqaTpGc", "description": "aQ65t8NO0FSoX5Ge", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'k0oAQztP4znmU79l' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Fq1Uv5ig0gJjZ6Pw' \
    --userId '0yZgymzzbXJzssls' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Cpa4esOoZUtQRVcg' \
    --namespace $AB_NAMESPACE \
    --userId 'LbmEsFgVGpuImtCm' \
    --limit '84' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Fux4zCjRlMHoLxUr' \
    --limit '9' \
    --offset '43' \
    --sortBy 'VbG9dtMqx3xgB1SP' \
    --status 'bBRD2mSSumoJGnPS' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'iJDJZpExibH7g3ap' \
    --namespace $AB_NAMESPACE \
    --userId 'DV9dqji82eU2RgCq' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'imgHoOypXH4XaeRY' \
    --namespace $AB_NAMESPACE \
    --userId '7togvRbfNaDO1v0i' \
    --body '{"fileExtension": "uOulLEhGKyc3Sntx", "fileLocation": "XhxLgY185za90J0K"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'Cq6vXmNQuMQH1Lgo' \
    --namespace $AB_NAMESPACE \
    --userId 'xJ7UutIgDPR7emXK' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE