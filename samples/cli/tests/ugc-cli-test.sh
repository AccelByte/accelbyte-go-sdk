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
    --limit '39' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "XRmpOc1BwtJso5pS", "name": "w0SUBP77wtpFT2PB"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'CGajllHel8ODiyor' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "W5mjWGWlT973MGN1"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'UbqSSu6s4gLsxnZ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '6myQzMR7HIhYLoVK' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "HHLtjEWWjg5CoSxK", "customAttributes": {"R1NgeH5kS4IBCdEp": {}, "yxRUWUsaBzMItJp5": {}, "MQ1NghTK89rRpAos": {}}, "fileExtension": "it2PCQTvvWMXEh7X", "name": "AuS4W199SmIjnykx", "preview": "iJbrXQtVAKpgv1VI", "previewMetadata": {"previewContentType": "UKNS2UAlNzuAmyKz", "previewFileExtension": "eDMnOeubmIAZsIP6"}, "shareCode": "tfhRmHlTnT6Jy762", "subType": "URGpNYsevW7roxdr", "tags": ["k9XiabU01zaYVaDr", "0sW0HQzkfYuIo2nS", "XnLBSneRUzJAxuBQ"], "type": "lXYEjycqBpTVX75H"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'cnDmQYkOJrbe426l' \
    --contentId 'Kbi1hs8SpUXNaaR0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Oz8b38W4531k7LYy", "customAttributes": {"FzRUJL8Y7x1W0FZu": {}, "UOLT1DyOrKbxl3yC": {}, "0NU0M1DBhmq5UFwm": {}}, "fileExtension": "wbpSbSS2w1SqnGSg", "name": "R931KuI5SW5os64p", "payload": "OXKLSnh5FzRekHae", "preview": "3UlSzhS76DFbNujn", "previewMetadata": {"previewContentType": "5hlpCWQLz3vE7eBe", "previewFileExtension": "jHeLFxd7LMBThprc"}, "shareCode": "b6zaYfB5wIf121iV", "subType": "GI4C2GF6Lg1oPrNo", "tags": ["VtRCgtR24CEuKm2e", "ArsYWDwSjiH6k9nN", "H4AAsu4qwTZ8pDIi"], "type": "OvLXHnS22M4izffa", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'RsFFPpZYLRvPYHSt' \
    --namespace $AB_NAMESPACE \
    --creator 'n5UsLMjx4Mx8BFGS' \
    --isofficial 'Ufk7qnVFILwRYLNh' \
    --limit '70' \
    --name 'TDCGGYAMgpjRl5XJ' \
    --offset '18' \
    --orderby '9eEyFtrPJ1xz8kEO' \
    --sortby 'OyFlTKP1CACRjV7f' \
    --subtype 'OG3WeUe2B22YM6Zu' \
    --tags '["nIMkLrIrh7vYg43e", "k4M3n8hiyGOuA1Sj", "j0a0GLXuaV08Et8b"]' \
    --type 'QTnIJ6xCyfxXG3CF' \
    --userId '1uyVHd7XnojeBe8O' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'SXG8E7v7Dl8wSu92' \
    --contentId 'QwtkyoK5M0A5ltcz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["PHbYInnOxA1MQcRw", "CKsSL7VUBTnS3WXc", "1Jg2rS7dHhPAO5hn"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '1PEEfeqy01Ep8HRW' \
    --isofficial 'CNCsFgL1zKTqIffX' \
    --limit '88' \
    --name 'mZbhePfDD0XBhvZq' \
    --offset '55' \
    --orderby 'Etd2u9fAkFrt7Jx0' \
    --sortby 'VrAvz7fblOwf0LN7' \
    --subtype 'BCiPzDrnAh7mntOK' \
    --tags '["dl9lMN6TWQ1J8YpV", "l5RJ3aGAaPlO8Wvu", "F6FKhjomixS5nW6d"]' \
    --type 'd8fiRhNFe8cptz30' \
    --userId 'kAc1qgaOdyEe7nGi' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'HI3F4i4vd4EIgkHA' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '7RBk6GqSv4j4KWff' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'tysop0tjmjAkuT5g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'z89HLvM1Mr6pjHvi' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ngu6rGWX3oMNlKTc", "screenshotId": "tzsWaewTKRCXBBsQ"}, {"description": "zhg51zYzj9JZH6bX", "screenshotId": "5xnuOaHlIzqNfBjR"}, {"description": "Yj1rlwbQbKJJhcMH", "screenshotId": "gZKE3wPEA3Wmn0Tp"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'QkdzIVatjUuySIAh' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "cT3Yc1OJ0wUabHMw", "description": "QzJ5PCOzTfljLEwG", "fileExtension": "jpeg"}, {"contentType": "6fGZa5WPJrfGmtOj", "description": "7N289xO64Gx8GyD9", "fileExtension": "bmp"}, {"contentType": "hQSLQz7sDu3OdW4u", "description": "hMfXESowkXZU1ajs", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'OVaYYDVZ9nmBygtR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'SkUYa4ZOn1yL4BXV' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["S4UdYGM27NIC0t8V", "ACr6TUaljFICZMdW", "oVm2XkmoYfpqlGMk"], "name": "7PtrZyQfSFP6lbfY"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'xV80it6TgzllALYn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'qLIhPxmsT1RMNiOA' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["2PwifeJEMXwWJtRw", "uTZhRZwwGxycpn0j", "scCqWHa7CVsRR5T6"], "name": "79OwqUU9gTfHlPDI"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 're5LlEih6zB6hLD8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'r9u3btFyRI1UiBGn' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "QqTmu5078sHZ3ULf"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '4YtqEPlH0bnVvMQm' \
    --body '{"tag": "kP1BoppDzH6dk8bj"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'lsnQoUUxqPyN9eMS' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["nuY87FTLzKoK1M3I", "Vnpoz42fyOPDwyjJ", "3btcIA7VmgtGM09z"], "type": "C0Q1NOKftuU1HlxJ"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'P1Nw65LCET8X01Ua' \
    --body '{"subtype": ["gBJMritYpI0J9rfc", "0nmHUsY38iXK6QO1", "eJhCKmMfrmulYiKa"], "type": "5pHEcXf0CcPCGDS3"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '3q6KBzhrZezXGlbg' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '7DiwekgaUemxNdxr' \
    --limit '64' \
    --name 'nU8VByjPu9U6iRZs' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'qOSoIZS6TvZaC56j' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'HFOoR3n90hfJBfjO' \
    --namespace $AB_NAMESPACE \
    --userId 'GSPwCF4jIiuX7btA' \
    --body '{"name": "AFMsaFegtCxP5UzP"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'NzBxvZhCCuPxLjJF' \
    --namespace $AB_NAMESPACE \
    --userId '5LckD8xC3bT0e90A' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'xO3He6Luk8zoc7iO' \
    --contentId 'LR0szCdOFvJqZQ4b' \
    --namespace $AB_NAMESPACE \
    --userId 'JZ9TNpBDnQ0GlpYt' \
    --body '{"contentType": "7jfbUhyWu87sbxnq", "customAttributes": {"Q9pS10C37iAxfVTL": {}, "cFTEkWqkq60AA2yO": {}, "wr1YjngEYiLXfJPR": {}}, "fileExtension": "uA7JhSlgjpiphePO", "name": "vqowOx0du8z10TRu", "payload": "1R4jODn5ESZHRP4p", "preview": "5iA59uJRVACvHEdf", "previewMetadata": {"previewContentType": "yTajJEitNCJgJEmX", "previewFileExtension": "qHjHpdh48D7AYpyV"}, "shareCode": "yBAlMqEG5T81NBzn", "subType": "6cpzbDkKrxjlXEsP", "tags": ["NLePC030Th7wNece", "XZXoJuGqqalkx7MN", "lYsL3owN0Xo2NNaT"], "type": "GwJqGTCacLaJApCl", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'KW5z8tqUWnrjjzx6' \
    --contentId 'FiBhpWMZrTU3gcTo' \
    --namespace $AB_NAMESPACE \
    --userId 'Q4aRyEAgru7kDDLW' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'kHc7DtizjK5dthed' \
    --limit '9' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '8Gi7DD67PDPEiXVl' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'e3DeIu6q8hWHlatJ' \
    --namespace $AB_NAMESPACE \
    --userId 'noaHDPLbT3uqwxtP' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'u2qzBP3fnha9z1tP' \
    --limit '23' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'C3SLEkCSVg4k0mld' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'aHr8JzgPr1uBweXC' \
    --namespace $AB_NAMESPACE \
    --userId 'ZHuwlmWDyyZXqSS4' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'XrHURDnQbphPGEwZ' \
    --namespace $AB_NAMESPACE \
    --userId 'c3P9cEggYuubb9q9' \
    --body '{"contents": ["AZahAXCa2CeDaRCD", "ITZo02gqiAejIcu4", "tajbctmiFVXACMjF"], "name": "lEyuHHUS58w95UQD"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'bUVfY0AqsQ5w4Xg6' \
    --namespace $AB_NAMESPACE \
    --userId 'zwXT7DY8gjfkVZef' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'gDvbPLdehhj636pQ' \
    --namespace $AB_NAMESPACE \
    --userId 'YqbWv6Gq9MBgY8Vo' \
    --limit '23' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'LYKQDZsmAaqeEVIw' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'SvdzyOpKGvE9ZDjj' \
    --namespace $AB_NAMESPACE \
    --creator 'qJBdFxBvUZavLEOO' \
    --isofficial 'uHolfYGCTaWRCB9u' \
    --limit '44' \
    --name 'W9wSxjKNoWFWZGyj' \
    --offset '19' \
    --orderby 'JYmUWBBxbl95hwt8' \
    --sortby 'vnxXAR5G8QZQEA4W' \
    --subtype 'C54pCwCUw0rRdWTx' \
    --tags '["bSAucXinj4TUrSIO", "cIzMGHbwEoVLYIxQ", "RE3jmwOQ5mBWkkFS"]' \
    --type 'YsiY0rlhzqGTCHdJ' \
    --userId 'yQ4iwuyRoUDiyLlP' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'oR5hWY0BaBzJhVZd' \
    --isofficial 'vhANSIutwXeCInsj' \
    --limit '29' \
    --name '8Z7cFqru0J8Zygku' \
    --offset '26' \
    --orderby 'uY1YiCT5XwsfULaW' \
    --sortby 'snMlteiZOg6rCmdi' \
    --subtype 'CdZX3FDLe54hQd4n' \
    --tags '["JXWW4PfLh0IxXCfw", "tdfSuWzDlJXEPnQU", "Jk4fo0lJ6hZjxUuD"]' \
    --type '3tTnNGsAbVskbezm' \
    --userId 'IQ7z1SJ8MUEuaxlr' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["S1JYovW467DHT0Gl", "3CYbBLqSJgq9eAeA", "6jCNNReho3advdAN"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '71' \
    --name 'Q6l53BtMTWbZc2mc' \
    --offset '48' \
    --orderby 'uXaJ7pJDyViROlG4' \
    --sortby 'Lo74kHmwwcxBK0wg' \
    --subtype 'CUQ1uXdqTG9pOV7n' \
    --tags '["GGuIg5ccyzBspgAD", "7YdZ66TNuVAicBW2", "F1PdcRvzfLt6B7PZ"]' \
    --type 'hrJDoUhSinutmYBK' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'vPHgXlRWxfFP6SRM' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '7nzDQDE2zoCicR1t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'IyGfOT9N5cNuSEmE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '0xmye7akEZVGDDEt' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'm2nbEA5DhI3Mn6PF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '93' \
    --orderby 'my85v6MuKztAnjm5' \
    --sortby 'Gyy4A27epwaaCvOP' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'uvDgVmFK9wBnFRq1' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jEihZ5iNBRikjLdY' \
    --limit '33' \
    --name 'f8is9MBsax0yLonH' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '1MYmfNQdwfJmZomS' \
    --body '{"name": "BPteDgPjHDINhPcu"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '8c0RykimVk7iujML' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'AfJpoeY9VfnhtYy4' \
    --namespace $AB_NAMESPACE \
    --userId '5YFLkfxj2OJuhNdB' \
    --body '{"name": "u9sBSlPoK5m8N9yg"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'qyPyxqLlCH3ZRD4j' \
    --namespace $AB_NAMESPACE \
    --userId 'HJnL04FyF13mpZ39' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '2cFwslogBWX04b0u' \
    --namespace $AB_NAMESPACE \
    --userId 'IY8JOUupnf8NJWpp' \
    --body '{"contentType": "9UwZlsf3r3zX2B7z", "customAttributes": {"uo8Zm5JYlreyuK5O": {}, "fKdtQYbxNSGyjrLd": {}, "uPlmqfR9dlgXVGNC": {}}, "fileExtension": "STaFa4T6xxIsHIrZ", "name": "gxoUDNyIaHql1jqU", "preview": "QkOIf8ucCAuXX7SU", "previewMetadata": {"previewContentType": "qeNMcd5FbkDrQgrd", "previewFileExtension": "St1hb7TH6GoAuPk3"}, "subType": "N0GBoWH7iSNpcfgk", "tags": ["Q2vdBxbrAUChAQ6v", "EnEaeKTGdl5lptHY", "NYzIou3wxaXIiD1R"], "type": "dOHB5Ak0ud4aYieg"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'mvTucXXXo9mwTq7w' \
    --contentId 'ukbK7JqoJy5tJb9G' \
    --namespace $AB_NAMESPACE \
    --userId '414TBGEMfb1MqUH0' \
    --body '{"contentType": "ezBrWYk68nmozC8t", "customAttributes": {"PzF4gJL33DSbls64": {}, "uWrnnWLGxsGB77aT": {}, "Kh6wK90S2y7QwJLv": {}}, "fileExtension": "uIE1kcIqXch51crf", "name": "XNwLmmNfuQIntqMl", "payload": "Xtf0kvZogblEL4tg", "preview": "zd9pxhAcVllvMSeY", "previewMetadata": {"previewContentType": "auHVvrj4l7cqylx3", "previewFileExtension": "6e1z5KTwOYutyKig"}, "subType": "uZfF0CRkILMbbU08", "tags": ["UrQIQfdgw1qIybAd", "CWZhTcXDn0wPuGXV", "peJLyhNSRVWcXEwG"], "type": "K3u81NPD9Gpte8dV", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'LAYso8lf8kQndZ9n' \
    --contentId 'gzDG1rkhXSKTGlEb' \
    --namespace $AB_NAMESPACE \
    --userId '1UWUHEf6o2d1byh3' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'uzVenZILx44cmOsv' \
    --limit '23' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '3Jn7N6Ph7lDknki9' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ljuSpNLqtKipKiHE' \
    --namespace $AB_NAMESPACE \
    --userId 'n7yUjyzoN5lR502m' \
    --body '{"screenshots": [{"description": "z2USEm8VsmfFhCpr", "screenshotId": "2IQThhfKAZl5cv4j"}, {"description": "jOcym8ldP0by6zWi", "screenshotId": "NDwqvf60OPXmyg6z"}, {"description": "AXiIRZ6KHuokCoIK", "screenshotId": "ctNRm7ktkldasn4U"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'c1E3b4ACMBBDxDJh' \
    --namespace $AB_NAMESPACE \
    --userId 'zxL5N2sIhGLk16br' \
    --body '{"screenshots": [{"contentType": "CXw2aZCWaBjrxdVM", "description": "epWlLPgVg4PxmErt", "fileExtension": "jpeg"}, {"contentType": "xiD1wJVZ2oArRx9l", "description": "cjAFYpmpfOujAEmt", "fileExtension": "jpeg"}, {"contentType": "yY1AtPyTVKM5YnhY", "description": "EszZDqo9sLeZWx2U", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'ySFlEzvs5gZdMybi' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'sGorfrDUWhY959oN' \
    --userId 'VlfiWalqK5UbxjoA' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rFevRJXg7FaHHrcH' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'M6QUfxXdatFPvRRz' \
    --limit '27' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'YGaJTsHdQ8k1tu4V' \
    --limit '27' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'pUWEJiwdOtPAJPWZ' \
    --limit '81' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'FMLB7QpOStFD6AfA' \
    --body '{"contents": ["HeTEvCnoMbw56Obo", "fb4W8W2HIi0JSL9o", "6OQUhLbI4RlXhi3p"], "name": "UxHVd5RVSxozMO8y"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'D8EEPpw3xRUCYpQ4' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'f80tJignfrPcWAWm' \
    --namespace $AB_NAMESPACE \
    --userId 'LE2ZEhiSd7Rk5HF8' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '0CddISicdOe2z7a7' \
    --namespace $AB_NAMESPACE \
    --userId 'DhVz2garl18C0ufC' \
    --body '{"contents": ["1B6xGTu7FLErKv8d", "glZpF6WjW48YxaZg", "smKX7iSn0dcOF88X"], "name": "TS43UM4j505UGdKA"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'nRkkoBXppxxcf2oW' \
    --namespace $AB_NAMESPACE \
    --userId 'BDHdZJ1FBMa5GX16' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '5wKGNqmVmIbmjnem' \
    --namespace $AB_NAMESPACE \
    --userId 'hWb7VVcBj9wbXD1H' \
    --limit '13' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'GdGnCd68rNTCmM6c' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE