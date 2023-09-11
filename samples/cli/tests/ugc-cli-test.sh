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
echo "1..93"

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
    --limit '21' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "6r1SVQi6K5qVGL7X", "name": "FOSlndYKpZovnaoi"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '2WynUoh8hHQumRa2' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bUTyoPH043EiTXqq"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'd8tAirBaKSNdubEL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'qocnX5yytuu7o4SW' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bvqs16L9ZVJqZ0TH", "customAttributes": {"xO3HgiZyFUhp8F3l": {}, "2zbeSLkVSv7Xj1kz": {}, "uEDPZvwGiBvjONGu": {}}, "fileExtension": "YjOIuwIWW12V0Hlr", "name": "1D8O06dwe8KE3WZE", "preview": "Vy1OkDRG1WDAIxAm", "previewMetadata": {"previewContentType": "T6UXXoYh6evUvsmx", "previewFileExtension": "AFWvHFXce8ZC5SWb"}, "shareCode": "lv5vEMULvPiQ0S5j", "subType": "u9mQEcoXnQ1WNS5V", "tags": ["Fzc8deq6KQ3MaNde", "1xGnGxKEyjcgqcWN", "SIN7jy0ZgVbGabXF"], "type": "GjD7FpJQt9JEaYZX"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'OcnmQObTYwZCaUBI' \
    --contentId 'ayzgxFGwT5vDuL6n' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "OWyFgrmgq34jMW8t", "customAttributes": {"m1KEdWYAUYUAbOp3": {}, "Ieq6B74aLx23Cyig": {}, "mV3iVeBZEiZZRCqU": {}}, "fileExtension": "8A5JFN8gPi8IeYr0", "name": "BjIzCkidHWvhMrMq", "payload": "Ib3euYqVntzVeGlc", "preview": "ulUXokaAJzZEmjpE", "previewMetadata": {"previewContentType": "kpAKnbMuCNuNxqwN", "previewFileExtension": "mHR6sbNHtVs8TQjs"}, "shareCode": "XAwX30oLwZ29G6tu", "subType": "bAsbZ7epzEWZb05G", "tags": ["CydlLw8zYYrPZA20", "exGkxxoSy4Gad8yu", "FRNtejtNImjRnSsg"], "type": "c0LGvXBIGREGHmli", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '0cYfBfKIDiLt2gGk' \
    --namespace $AB_NAMESPACE \
    --creator 'T9HR3rHymDY0Socz' \
    --isofficial 'Mx3mKJ1bPOui6xPI' \
    --limit '35' \
    --name '794EybNJFNTmH7w2' \
    --offset '77' \
    --orderby 'f55Q1XCQCHyILVg1' \
    --sortby '1MsUCsFuG7gssmf1' \
    --subtype 'UlOmzM99XtxOO8m1' \
    --tags '["RoSekOK9T9qG0BOs", "CkVZ0EHgC2qZw52t", "haokrNHcePlFtfj1"]' \
    --type 's5Z4RYBcJrRtmI21' \
    --userId '6XUB4oZJEAbL52Xt' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'mX9NhMHaxtRRC2Mh' \
    --contentId 'jL7yIayTCFGi66Q6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hcZOlGpu2BBV68lJ", "eioVBQu8coPvRPXh", "eYiY15QRNsGMuFGU"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'idMnc6pV9JlK8dlJ' \
    --isofficial '57EFTSuJYOGnqMH2' \
    --limit '52' \
    --name 'Lfy8BKiA1zRd6wtF' \
    --offset '76' \
    --orderby '5bO0aFWW4fTPLu8F' \
    --sortby 'qR54iSTUishHq5lx' \
    --subtype 'Ak6ZSiVS9ATR6Q6r' \
    --tags '["f4YSwjmuiJ4uM3xD", "RodtXFiUkLdD0PRu", "ugFSrvMexQXp5GTs"]' \
    --type 'KtsXOhBjMHRIjhmM' \
    --userId 'Hy9HEmYtS9csDign' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["av1ITzWmgJw8PqN4", "oS5SdXuQf8h3RrUX", "Pt8yNdRhlCawc3Wd"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 't4VvgZ5SXQ4TeqM1' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '4o6U1vOiKzsjsQEQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'dBQN0IS6MS5VIygB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'VyTbfNrsgxaejFmf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "PCCvnVb6fbuEsYIQ", "screenshotId": "mSdZqoPzAPM3bbwb"}, {"description": "etbkhPPuW0rQMwvt", "screenshotId": "Oc1zGgvd9OupUt4Q"}, {"description": "20CYYA5kIodhLpOQ", "screenshotId": "QNPI9r60k31bmu2m"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateScreenshots' test.out

#- 20 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'DfP5hsZHHn8kQThV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "JR4VcPsFzbf7UU4n", "description": "D41hCC7cRB1oqGLV", "fileExtension": "bmp"}, {"contentType": "Rpp7o1XBVPbh1qCO", "description": "jpjBRLa3RrZTVN7b", "fileExtension": "jpeg"}, {"contentType": "EaaGYKCZAgao0qsm", "description": "QZEZ1ZMukMNU2jGX", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUploadContentScreenshot' test.out

#- 21 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '2ZdMcchb7itLjPob' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ff7Lm18TaiXZbPpv' \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteContentScreenshot' test.out

#- 22 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetAllGroups' test.out

#- 23 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["EIjMO1WYslT0Hgar", "ZBVwTemBdBy9SQ3l", "6YaZBnA02VUs1XVH"], "name": "ypvzkSCgKHU44Mae"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateGroup' test.out

#- 24 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '8pkHK2j9WcODjpgr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroup' test.out

#- 25 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '2pXs5xmJ0E0aGNX6' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["m78vpBbl9GCxfeNh", "7YAMYAzVkMpFZirG", "h1iR5Nl7Rwtjru1N"], "name": "nKG1WBrr7Mxufu6g"}' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminUpdateGroup' test.out

#- 26 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '4blUERrXVFiWanHI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminDeleteGroup' test.out

#- 27 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'RPS7FbKG8dBXRdOb' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminGetGroupContents' test.out

#- 28 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetTag' test.out

#- 29 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "qTKYyNTgjmbiuRRY"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminCreateTag' test.out

#- 30 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '5AYUQjiFGtPQwwQ6' \
    --body '{"tag": "poXcfKS7cF8gL7xY"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateTag' test.out

#- 31 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '1J4sQI7OocVNyLEj' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTag' test.out

#- 32 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetType' test.out

#- 33 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["bR9Leq5MlgL0XwsE", "I6LCQANjklE7V50a", "tbP9iXYFr9HWZGzJ"], "type": "qZaMX6S89omTTr61"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminCreateType' test.out

#- 34 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'w6rWmN7Q4XIsGP7b' \
    --body '{"subtype": ["6sIJzaoDSitEDsJP", "Q7Fp1BwamO159zhc", "nLa6cJ9DFOfcV6VJ"], "type": "VewD4Dn9GQ00NHX5"}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateType' test.out

#- 35 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'C7EUVHShJCXr95xh' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteType' test.out

#- 36 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '1f81tC20hA5pEcrP' \
    --limit '29' \
    --name '8U5TJndbfAgoRBpk' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetChannel' test.out

#- 37 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Y5wHNU2X96OEg9sk' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteAllUserChannels' test.out

#- 38 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '0pTYKQkCde1TXI5c' \
    --namespace $AB_NAMESPACE \
    --userId 'wERMbNSyiBJpkIaJ' \
    --body '{"name": "aznWxSjtYuZNChhN"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateChannel' test.out

#- 39 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'TQW5BZWMiHY2NA2H' \
    --namespace $AB_NAMESPACE \
    --userId 'oxDzV7DqfKaKsXDQ' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteChannel' test.out

#- 40 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'nbBH7znzz2zmW4bd' \
    --contentId 'zSWCm2UQVeOOzsis' \
    --namespace $AB_NAMESPACE \
    --userId 'Raj0lZUL8rlx1Ja5' \
    --body '{"contentType": "DwQtlxrBRgT30Jgi", "customAttributes": {"twwSLsWutI4sWsSM": {}, "Nm9vTA2DBzNzwOdP": {}, "x7Z4sf2Gg9Eo8A2m": {}}, "fileExtension": "VcmdBUhIcb7omQDa", "name": "14JKxdyntHsWVaFz", "payload": "UPNmMFTSQhK9tSfK", "preview": "mNlpe02esTOFVkZc", "previewMetadata": {"previewContentType": "N815eSJAJmfwEco2", "previewFileExtension": "oNqgAL87KRjmFCig"}, "shareCode": "qZup2b5rGBKCNChc", "subType": "dhexJpA114pLOL20", "tags": ["xDcn5pw2oxZjAd91", "1wFcjN4YWk7Trair", "43gUNRBU4gSgclUK"], "type": "JVib3MDJv2SCGfKj", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateContentS3' test.out

#- 41 AdminUpdateContentDirect
eval_tap 0 41 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 42 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'sFC0dbiOfSOtrOJO' \
    --contentId 'KfmBcJDh9I25Absi' \
    --namespace $AB_NAMESPACE \
    --userId 'EMrVuRtPPQO8vD78' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteContent' test.out

#- 43 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'pNKur16ilGzMaelQ' \
    --limit '81' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetContent' test.out

#- 44 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '5aYqS34aaePCnL0F' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserContents' test.out

#- 45 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'ZJIhKlrJWnTszMe9' \
    --namespace $AB_NAMESPACE \
    --userId 'EnQ86kJbTmYUZGUu' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 45 'AdminHideUserContent' test.out

#- 46 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'FbUeBApFNw5m5B1x' \
    --limit '56' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetAllGroups' test.out

#- 47 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zIiIBMxDrfjgTxTQ' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteAllUserGroup' test.out

#- 48 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '9Nht8thEigMJ7KLp' \
    --namespace $AB_NAMESPACE \
    --userId 'vP2R4PbrqrK8k0Og' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroup' test.out

#- 49 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'mH7MhR44dGS0bjX2' \
    --namespace $AB_NAMESPACE \
    --userId 'Dle8IpvIs84mTdWN' \
    --body '{"contents": ["CvAkn22BK61jY6qq", "JmiFRZCJYQd3b6qF", "11Vmeao8FGaMnuYJ"], "name": "vjPxFqcykHrxsasq"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateGroup' test.out

#- 50 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'S70OlfNpwM9tF3vW' \
    --namespace $AB_NAMESPACE \
    --userId 'vkidpwRAATcVrS1l' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteGroup' test.out

#- 51 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '4jM03ZIJryL9nA5I' \
    --namespace $AB_NAMESPACE \
    --userId '0a104GR404GTv4x0' \
    --limit '39' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetGroupContents' test.out

#- 52 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '55WsLWtXvwzhUmBE' \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteAllUserStates' test.out

#- 53 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'cT28Zbpaiakdq9PZ' \
    --namespace $AB_NAMESPACE \
    --creator '5h4jm4zjzxI3qDKC' \
    --isofficial 'JsVmxD90ji4jL59v' \
    --limit '34' \
    --name 'c44SM879lYsF23Rd' \
    --offset '58' \
    --orderby 't6NXL8wjr5fbHs3c' \
    --sortby '3XsB7yMDLrZX5XUc' \
    --subtype 'tyjGZdemBCWkiwKS' \
    --tags '["gahIvIICEeCu7d44", "C3wTG5xeAjRxSKJy", "u4KJdgrP8z69H6v2"]' \
    --type '7Gq7YRMKGRgvn0ec' \
    --userId 'T23W7Mc4coGYedhc' \
    > test.out 2>&1
eval_tap $? 53 'SearchChannelSpecificContent' test.out

#- 54 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'lyC6vpTV654pa9hs' \
    --isofficial 'FD4JzqtHtqRNRgL7' \
    --limit '41' \
    --name 'WqKtnvNfjYC0sGgP' \
    --offset '89' \
    --orderby 'z6MmwnyWQUl1zuaM' \
    --sortby 'JcbCfHQK4tjN22wK' \
    --subtype 'KJwkCBkr8zayeWLY' \
    --tags '["SDzwHs9PnhOesIrj", "w0ebh3U1sbzBMJNR", "zYLBHYVkrVJF6Tn4"]' \
    --type 'RfzeCXfmWRnd0vZQ' \
    --userId '0eDElVjJfg3K2JEv' \
    > test.out 2>&1
eval_tap $? 54 'PublicSearchContent' test.out

#- 55 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["MDJzkAboQx78HYZl", "WwLmyRd0TO5rEodk", "oSSMw6YhMrLVYM8K"]}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetContentBulk' test.out

#- 56 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 56 'GetFollowedContent' test.out

#- 57 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '21' \
    --name 'Q6DOTeRV7ZxTh93f' \
    --offset '89' \
    --orderby 'VLXWTIX5eKT9iaMo' \
    --sortby 'fxrr2tMHwsO86WGz' \
    --subtype 'l7ENLj1aBlMFJOIA' \
    --tags '["g81qg3Hpob2AkhJ3", "5ylkCzCjrbXZ1mDW", "bGUHJU4iOlR6SpYZ"]' \
    --type 'XCZcvhuVl1CiFQfL' \
    > test.out 2>&1
eval_tap $? 57 'GetLikedContent' test.out

#- 58 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'uioSbCi5VMxKOV8h' \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByShareCode' test.out

#- 59 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'TpVgtPuUIEOHzyge' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentByContentID' test.out

#- 60 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'QA17h0sIEeEpc3SU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'AddDownloadCount' test.out

#- 61 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'hLY9zsfBq4GyktmR' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateContentLikeStatus' test.out

#- 62 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'fAy7xQLEUaOIIAAn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentPreview' test.out

#- 63 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 63 'GetTag' test.out

#- 64 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 64 'GetType' test.out

#- 65 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '59' \
    --orderby 'X2et2MsOt0gjdFY3' \
    --sortby 'LrIxxbZTdWdp54PN' \
    > test.out 2>&1
eval_tap $? 65 'PublicSearchCreator' test.out

#- 66 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 66 'GetFollowedUsers' test.out

#- 67 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'jneFdUFwwHMq8Vhg' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCreator' test.out

#- 68 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'wbj93lFowYwO4l9d' \
    --limit '42' \
    --name 'Fufp5dg0mEtcv577' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 68 'GetChannels' test.out

#- 69 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Zs3MajQiK3wkgYys' \
    --body '{"name": "cVBTU6TeRwSr77Kf"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateChannel' test.out

#- 70 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'u874pJMOQovKd3SD' \
    > test.out 2>&1
eval_tap $? 70 'DeleteAllUserChannel' test.out

#- 71 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'RH6VUH2s2aaj8DCk' \
    --namespace $AB_NAMESPACE \
    --userId 'TemF12M7S7uWPzrh' \
    --body '{"name": "oDLv4jJGZLJoN9lr"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateChannel' test.out

#- 72 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'E6uAcNhfO2uP18uI' \
    --namespace $AB_NAMESPACE \
    --userId 'kmt1dX57051DBoKn' \
    > test.out 2>&1
eval_tap $? 72 'DeleteChannel' test.out

#- 73 CreateContentDirect
eval_tap 0 73 'CreateContentDirect # SKIP deprecated' test.out

#- 74 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'TLF9GlGMD3iPdY4k' \
    --namespace $AB_NAMESPACE \
    --userId '82W1q95CoLl79yI8' \
    --body '{"contentType": "9bXBYEv6pdWMV2q5", "customAttributes": {"M5mx0SQRIqyV2BnX": {}, "RokQLCObdIUcIPMU": {}, "Xi7aXcdUHAorAHdc": {}}, "fileExtension": "6JOmEmplfhkoK2VY", "name": "8sxWiTXvg0BPylHC", "preview": "hmj3tOzSIB8xuMs1", "previewMetadata": {"previewContentType": "P9dCxp91nonPKHnA", "previewFileExtension": "1AdVMiE2ybBs2oId"}, "subType": "lnULCH9XuPNfD6DV", "tags": ["NT6rqJWK0AXhRpcU", "4wEJPaCXo0Mr7Hjp", "tj2zR9tttFktiwT9"], "type": "HzTblxtyihvDFrpw"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateContentS3' test.out

#- 75 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'dC5049CzFcbEZLwM' \
    --contentId 'j3uLDuMtEtqcMiZX' \
    --namespace $AB_NAMESPACE \
    --userId 'PGMVibOA713IrS0P' \
    --body '{"contentType": "qzFqgXGzosNxxq1D", "customAttributes": {"Kc20XKPbkPGSRGPH": {}, "Y2CxmIL1IMf5oY25": {}, "PCwEcelLPkx1kcb6": {}}, "fileExtension": "E89v92NcKwJCmcvd", "name": "Py60Vj27s4rki7I0", "payload": "x9hPWfUN3CfaJ6UA", "preview": "dc9seLwAbBQFWer9", "previewMetadata": {"previewContentType": "yqie6cYwzjmFOpA4", "previewFileExtension": "0aoTtfaLH0we6X7X"}, "subType": "IlLJlrxRMoWCHkq5", "tags": ["uWlLK2uBekpbIJ8z", "24o9EJy4G91Ft7rL", "bkbX3RdM904uLFvl"], "type": "UfyWCIx5M8dO9Pmr", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateContentS3' test.out

#- 76 UpdateContentDirect
eval_tap 0 76 'UpdateContentDirect # SKIP deprecated' test.out

#- 77 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'rdKHtDPLEtGdnLsy' \
    --contentId 'aeZnVqNqhsQ8NOfr' \
    --namespace $AB_NAMESPACE \
    --userId 'S8TBJE0nmAfNUTkj' \
    > test.out 2>&1
eval_tap $? 77 'DeleteContent' test.out

#- 78 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '2gsQRA2BNhpopE8x' \
    --limit '60' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetUserContent' test.out

#- 79 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'hM8zlNRWCNG7dOhr' \
    > test.out 2>&1
eval_tap $? 79 'DeleteAllUserContents' test.out

#- 80 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ldNBFwI33caMkRZ1' \
    --namespace $AB_NAMESPACE \
    --userId 'm1g91YkCFrtzbsTv' \
    --body '{"screenshots": [{"description": "H4QGlvAqDJOU467p", "screenshotId": "KtDDRaoXtQypednv"}, {"description": "cpvQ42JyvqmHvUId", "screenshotId": "fTh9LAKYq9hrNOEF"}, {"description": "lcfqPgRJlGHbBn2G", "screenshotId": "p8vhgefQoVZ8A5VP"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateScreenshots' test.out

#- 81 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '1jpYF4XOkgnA6Isd' \
    --namespace $AB_NAMESPACE \
    --userId 'M1YB0QyimDdVR9Nt' \
    --body '{"screenshots": [{"contentType": "8zsipUhyh8D7zs7G", "description": "1uaWFNezKLYygNUI", "fileExtension": "pjp"}, {"contentType": "qde7y6MyqS2uz1mF", "description": "ZaRzp4OXWyQfEqax", "fileExtension": "jpeg"}, {"contentType": "JCksYBqgtRNjbgEs", "description": "fy0kaMJwC3Xy5gfp", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 81 'UploadContentScreenshot' test.out

#- 82 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'xXZQKu7sPC7dc1XB' \
    --namespace $AB_NAMESPACE \
    --screenshotId '11iM1CH1hZljaXGH' \
    --userId 'WWKTls3lkrPo5qUD' \
    > test.out 2>&1
eval_tap $? 82 'DeleteContentScreenshot' test.out

#- 83 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'BdoomsLNzkujPUcp' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateUserFollowStatus' test.out

#- 84 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'OcYuKhknk4UFtKE5' \
    --limit '49' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowers' test.out

#- 85 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'ZBnnfO6NL5xQlDH8' \
    --limit '69' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 85 'GetPublicFollowing' test.out

#- 86 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'EfDmcGOfrbO7yqTN' \
    --limit '16' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 86 'GetGroups' test.out

#- 87 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'WmWgYXnjnuoYs4hx' \
    --body '{"contents": ["SR25Zzrswm3Es3iX", "hva4OOLYmtscT1oZ", "BaOpGfVsIOOX05eo"], "name": "p8GzClQ89alOLKjh"}' \
    > test.out 2>&1
eval_tap $? 87 'CreateGroup' test.out

#- 88 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'tcSzeBiMT5SuyRb1' \
    > test.out 2>&1
eval_tap $? 88 'DeleteAllUserGroup' test.out

#- 89 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'Uz6lpMrG5jXoZEJZ' \
    --namespace $AB_NAMESPACE \
    --userId 'xJpkRzrVXctWHoVd' \
    > test.out 2>&1
eval_tap $? 89 'GetGroup' test.out

#- 90 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'FqWpSsd9xyZyF0v0' \
    --namespace $AB_NAMESPACE \
    --userId 'DCQfQsxYUxQCog8E' \
    --body '{"contents": ["yqAlAHHr7rvuKgl6", "PCCTlwemciBIwtwR", "qYQW6Ml6HktnJwKL"], "name": "ybukNrHvn3dJvBM7"}' \
    > test.out 2>&1
eval_tap $? 90 'UpdateGroup' test.out

#- 91 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'gUBMsk9Lfhn1PGRH' \
    --namespace $AB_NAMESPACE \
    --userId '5v5OmvYEhgqIgFpN' \
    > test.out 2>&1
eval_tap $? 91 'DeleteGroup' test.out

#- 92 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '7uAJSpXIPc4mWCjD' \
    --namespace $AB_NAMESPACE \
    --userId '16feeZpFNzvWcYLH' \
    --limit '69' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 92 'GetGroupContent' test.out

#- 93 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'sqdAYxZQjtw6L1fC' \
    > test.out 2>&1
eval_tap $? 93 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE