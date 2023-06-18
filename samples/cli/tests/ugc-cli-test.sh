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
    --limit '74' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "mInUJB54ndaV0Sft", "name": "FHRwlhT3HGQNGlsa"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'pYWIj1JKod9JRi0M' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "YFCW1dJ9DUa1JkMI"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'qdmd56qmgt32OG63' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'uB9ZOIowxmZ75xns' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "G9bE0kRk73BW1Q8H", "customAttributes": {"aDTdIm5R48XS9oiY": {}, "RRxUAKjqzcFZbDdF": {}, "fTvcYuWkVv7YFK6K": {}}, "fileExtension": "rsqsofTMW73Lhl3F", "name": "pA3ilC1JgWHexlT3", "preview": "qf9DnsM1bGq3SR10", "previewMetadata": {"previewContentType": "EZwxEXJNQot0M9lO", "previewFileExtension": "PXud4Z1mbiYqbyG0"}, "shareCode": "UwUZuCrZtaf0gj4y", "subType": "zAN19Ob0LrwrV47O", "tags": ["r2C5okm3X5PP9wq5", "eaaBBj2SzEQiV9f2", "jQDvslPXE5Qk6Xnu"], "type": "4CugpLGtsJzacX1o"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'LDtrxjfF4QBcmUnL' \
    --contentId 'Yvqbyw0g8yfm0ps6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "LGx8TA029WQzIbOi", "customAttributes": {"oy0hHgD9FGQXMGee": {}, "jS45VrqRPZOrsx1p": {}, "57x8xYSOzuTvxqfi": {}}, "fileExtension": "phxYwbWyzNlEUY20", "name": "sAgDK4sBy0FGd9gp", "payload": "O3V7IEWWVyLOwgTz", "preview": "PlHRG9XGe2uIBs1e", "previewMetadata": {"previewContentType": "ILcbhvGkQGqOy2KX", "previewFileExtension": "WJGxZB1AEay3rSNS"}, "shareCode": "oBhV9tBJhtg6CJ5Y", "subType": "270Wz1PY5d9Guxqs", "tags": ["TZUIDE1gAQ1WcUbb", "lML9AXIIN9hTShpP", "b83jBCimT2Ke6gkt"], "type": "SX68iypMoz4RbBl5", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '2uL2EJmAOyLyNKwR' \
    --namespace $AB_NAMESPACE \
    --creator 'r4Rc5Cnx60I6UPbR' \
    --isofficial 'B5DEClEzVoHebQT2' \
    --limit '28' \
    --name 'LpBEwf4BA37w2wlR' \
    --offset '4' \
    --orderby 'Twi4ulUpdQqeDDnD' \
    --sortby 'q2Zy7rCgNwBOmDt9' \
    --subtype 'jT4qLVOfQMOEMqbK' \
    --tags '["CcdqB4t4AZa8Dmck", "uqIETMYeVJkRSpk6", "hC7XBIUaP7oiA7Vs"]' \
    --type 'znslb2pjnoqTQq6H' \
    --userId 'vCjnRLrwQWk3W2qY' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '117xDRke4lOovBfb' \
    --contentId 'vnWvGv6jW9M2tYho' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["rCkz6Qqjezv1ScJM", "SoFadQ0vg7AcB3G2", "0f5PgzroAVKj9NcV"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'nc1eM9cj1RknCY4h' \
    --isofficial 'gsPTK097sLlvVbNt' \
    --limit '20' \
    --name 'rqrjdr65fjeN5ckY' \
    --offset '20' \
    --orderby 'iSrSFkVZsU7ImVBH' \
    --sortby 'hZAmQNS3HHCCYQMI' \
    --subtype 'mPsiitI9SSO8xxCY' \
    --tags '["YcPARqc1xTNoDhPW", "uvuaTskRKxNCfJk0", "p0tAB0lZYQOOrXRn"]' \
    --type 'jQanAauHkpzuJSWz' \
    --userId 'lWK2t50S72qWr5Mx' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'rl0mOYdggPkS7JDn' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'SDkDURM6GpYC87SE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '8F83l4FvirZiuPvU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'aUc26zXJnR0dL5HL' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "eprynZxqHWgw1ClO", "screenshotId": "jIZ9vU07C6FVlY9Z"}, {"description": "vcQWuJW3cqbnme5s", "screenshotId": "DhUKa2fNnFwbhxP4"}, {"description": "Jcy56vfMqMuSELJU", "screenshotId": "ssYL4BRwkQX59SiD"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'TK6eygJ7McHYGToA' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "2AJorpcBhgH6gviq", "description": "2B6Gzvz6JTIZnbSJ", "fileExtension": "bmp"}, {"contentType": "Iv9vVzBg5MaD9Hv6", "description": "0ceOYK0Gfs5Ln0SC", "fileExtension": "pjp"}, {"contentType": "g5hVmG9poWmHTGhQ", "description": "4ynaH1xGWt8M2ix6", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '0blFwI5rHy1nj8O6' \
    --namespace $AB_NAMESPACE \
    --screenshotId '2ExNKfrXevEH3PeB' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["xPTqzT3LoWuld6ix", "hFIj8zr6vg5mJpu9", "MDHaBQV6KB47Tf81"], "name": "1rWMAAeOKr9AmTux"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'w9vcs4ppwJx6tqLH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '7J6fai4VU5sl3Cbs' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["dk2qnw14sC3RG2SI", "OWwZWOupB3NGNTrs", "1veue8Jhk2XcYG2P"], "name": "uFDrMIxotRPIyzFX"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'D0C3ECtQVE6szAwS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'rO40dsp4KsYFhk9z' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "OG61vgaR1THk7pMF"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ns6sNzhSJZZRVdEW' \
    --body '{"tag": "4oXMG2Zce7Kiu6So"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'DnD9mEzDY14jITOr' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["2vjLl1rAyZdL4b5s", "i0HrjybesW3LcMfN", "vZwePX7cE6FtXSJ6"], "type": "tZVKmNhwigaTHPux"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'Igza8rWcyNDOCzPY' \
    --body '{"subtype": ["jP6CH1jl4Uwntw9j", "BcwFEFPg5TTOBJhT", "FjMfvksGulO2uTFj"], "type": "FMPZ5foZW8gfHcuW"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'ViJZ4eWbGaUeQfN5' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'RWBMxud0FcoZMpkC' \
    --limit '44' \
    --name 'zjcijr46wGVmcbaW' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '9LLSaKevwxA6mYUO' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'j6JBoYhGFoaUzyOM' \
    --namespace $AB_NAMESPACE \
    --userId 'JfxyKsRSU7SiwyhH' \
    --body '{"name": "GFndXn2v9r5Ed6GT"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'qOvlYGVUhazP9IIO' \
    --namespace $AB_NAMESPACE \
    --userId 'zw16BhTHunFbxx60' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'GSLWsAVL72YAsM8U' \
    --contentId 'DOZhm4lDfkuG9DfQ' \
    --namespace $AB_NAMESPACE \
    --userId 'f55wOyoJazWAcUul' \
    --body '{"contentType": "kAQAjd4sVAZhWqBn", "customAttributes": {"G1X3mkXlNmyGeTHu": {}, "PuN0DN1uYbVC0tKT": {}, "DAkAqcxQ4okJLn9V": {}}, "fileExtension": "wp7KmIwuZJfcXNQq", "name": "rzQcMznMGQubkhYW", "payload": "jch4FOmYXvVXVhK8", "preview": "jZPn5sY29JxMAWQp", "previewMetadata": {"previewContentType": "pQWIKd49ZpvPmjps", "previewFileExtension": "XKy8x061dPL4BynM"}, "shareCode": "KyStXXIvwLBmUD1Z", "subType": "i5FF9yeafR1yApgi", "tags": ["ocy7zAeA1hqyeIlr", "mlqdlKGlxsP7oYYk", "sGgM6uZjThZvfgu5"], "type": "JTnu5a8TL6p9IkFS", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '82dsKWDFbmQaBUEX' \
    --contentId 'w1IeDTTp6taHBs5H' \
    --namespace $AB_NAMESPACE \
    --userId 'I7wl9EFq3m4Ok57z' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'ATJRRP2S1sDvpWLs' \
    --limit '80' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '2fJz2f2D7Rp9L5U8' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'xAM9bs0aAyJWrGG6' \
    --namespace $AB_NAMESPACE \
    --userId 'rwemilyPfjL6XLyt' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Y0vk1mFuN6W1Ko3u' \
    --limit '27' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '2L0jnUUZ2ouR90xV' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'pi5WR5aMNxqkrWxA' \
    --namespace $AB_NAMESPACE \
    --userId 'b5ovJ9HL4MG7ewGC' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'IwXOkZ0iyv4BOmWQ' \
    --namespace $AB_NAMESPACE \
    --userId 'BFN7XuhLkA2TW3oR' \
    --body '{"contents": ["rHkxf7CcPVQqldHr", "GlQpC72FmdKZPes3", "EpVTXNkSU1qYkEaH"], "name": "aieAsKOPK4OGfJ5s"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'lFP8b0SrHnv0vYGA' \
    --namespace $AB_NAMESPACE \
    --userId '0tENda1hTmM9hHoJ' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'ksnGxmJO96GbxkhU' \
    --namespace $AB_NAMESPACE \
    --userId 'bmI4DG2bKOYfQbAt' \
    --limit '99' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'INfrj5PrrVJneITD' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '4BNpCzCX6KxskmzQ' \
    --namespace $AB_NAMESPACE \
    --creator 'wBUbI1SOp4dNVO6J' \
    --isofficial 'w6OskCHAenYyOuLC' \
    --limit '99' \
    --name 'fglBdy7xOZ7FKVnr' \
    --offset '53' \
    --orderby '8LaqzfTKXvRcCQpH' \
    --sortby '6tygg22nBf5eEMvO' \
    --subtype '5ZTeiuvEndedycoj' \
    --tags '["EV6hLED9dMdnpZAJ", "tbz3X8Aiqs2VL7DI", "EVVOZM2ntlpG9fzZ"]' \
    --type 'rMWL5fzIlLFFgEvH' \
    --userId 'dSZaBTIRoKfi21DG' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'KtAexREASlqivw3L' \
    --isofficial 'qZTRFEoTo0xl4Rv1' \
    --limit '29' \
    --name 'eCf3ztImWStvv0ng' \
    --offset '24' \
    --orderby 'ev5m8d37SijqFQPc' \
    --sortby 'AjPUpQ101UG9mGvi' \
    --subtype 'KH2CUFUbUgfyE5dH' \
    --tags '["Ul7k3pOkzERlNJKE", "c30rkdlMkLavkm8D", "mfSC508RKi0m2RA6"]' \
    --type 'nxTOPob9FEFVbmLl' \
    --userId 'ei6cOnkg6EpIY1We' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["tlZpJBA2J5JFn8Ke", "5sCPyTstIuCAy5MR", "nVtPYlqfQjCChkG2"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '87' \
    --name '31euf5xYjgXKqbrF' \
    --offset '77' \
    --orderby 'XiymjylARunuVbdM' \
    --sortby 'bIr2rH8cHsOI6kvY' \
    --subtype 'bVzEnz3gE45eLtYX' \
    --tags '["ne5bDEYNCYFyyWEG", "64Foq2a6AYCza4Oo", "xj7RDLAXYTrqmcDs"]' \
    --type 'LTSXC2s4cxnhTt4q' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'jHsaCv3Eyhqt5vX0' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '09NKVmtggFX6AvMF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'fbC4tLWeFbOtBavP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'yzx08DRvnmMmRn6g' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'ZwXALLjowTRDkuB9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '63' \
    --orderby 'RkBHYgZPYBm88p9B' \
    --sortby '5bXcklL33vUjQ0kT' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '4I0fCKr0RgwyhytS' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '2dGDwCCQJT4IC6nG' \
    --limit '67' \
    --name 'loj8tCUHrn2fY5jb' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '3NHSFbpHfhI1geAc' \
    --body '{"name": "66QiERBh5Xylam8d"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'NGNu7BilaEMNAzyX' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'vAVml2i2WHko6x0o' \
    --namespace $AB_NAMESPACE \
    --userId 'K1B2UScVPUd6CE3V' \
    --body '{"name": "7K8e0D8uo0OnLjwi"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'kWeDfaaqXHUpJoL6' \
    --namespace $AB_NAMESPACE \
    --userId '2X7NJ5Y6Qo0kNSSv' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'ssS3S5RU1SR3gHrv' \
    --namespace $AB_NAMESPACE \
    --userId 'eQij8oAl1hoxwvQh' \
    --body '{"contentType": "UWh1ask5RlogoTRM", "customAttributes": {"3LGpa2SONEyYshr2": {}, "oGe1ny6KUwm835rS": {}, "1klAUo69hRkpEmoX": {}}, "fileExtension": "HsgR6S4JENQmmJ7I", "name": "nvYByLK6hwgRAm98", "preview": "rtWO8ZZ4V8FfCSVQ", "previewMetadata": {"previewContentType": "SoUsjFMSMHn6nTUW", "previewFileExtension": "gObqwVh0HYkc699R"}, "subType": "MUTOGcTUJEbNl0jm", "tags": ["aY0ZLoCVCZHwQZVI", "lu55O45UhiGctmhj", "6zg7oXM55FKkZRrX"], "type": "znNzRUgjuujf097A"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'kBRibalrUG1uDE0e' \
    --contentId '1sKY9pmhPdqNro36' \
    --namespace $AB_NAMESPACE \
    --userId 'aONz6FtdcP86mhYJ' \
    --body '{"contentType": "rxlvZnRPoHjTL1Fs", "customAttributes": {"7lS11NxoCa4BprBO": {}, "LdImFLGH3oztVXhX": {}, "MvObiKtqVBvhDnIo": {}}, "fileExtension": "XPrd1v2YAtEnuhM5", "name": "aIa4bGXyxQsIKjTs", "payload": "4Kr6sa8ld7mA0fuy", "preview": "p2tPsDKyPjw21e8v", "previewMetadata": {"previewContentType": "WGadE2VBPjfeKY7T", "previewFileExtension": "nFtOPpgLMpgQXP0K"}, "subType": "KMA0TWUuOBV2Px3y", "tags": ["4W7jfEnzpaeTRwRr", "Z2vqAx5hBnQDkWPk", "jtxMje3QCPyUVBKe"], "type": "pjbhNhuRK3MxqGFg", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '9AXPX6jOmlTP1xtz' \
    --contentId 'OTpOPxz40vioVweE' \
    --namespace $AB_NAMESPACE \
    --userId 'fHVj7R4yz7RpTe49' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'xgB0HgLlIYqQHQMh' \
    --limit '19' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '3EzJVNBUe4zieBd0' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'YKtcaaQRiZzPQ8qV' \
    --namespace $AB_NAMESPACE \
    --userId 'J2VYmlIJ2e7PzxAf' \
    --body '{"screenshots": [{"description": "g8FfVd3c3uDZCIAu", "screenshotId": "OuB66DC2R79bN1Zz"}, {"description": "sRHbMd1nBw92hZe0", "screenshotId": "pvBZSH2x1PIeaGZO"}, {"description": "jv8bJWFdgZPxl6aw", "screenshotId": "4nKUZWCQFBiBDYmB"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'TEWh1KmQpxSBE4xi' \
    --namespace $AB_NAMESPACE \
    --userId 'X6ECoXS3Sv2B8APa' \
    --body '{"screenshots": [{"contentType": "myl1ugPHUeU44kP3", "description": "jD6dH4mcNk6wxuEn", "fileExtension": "pjp"}, {"contentType": "wnGNnRDMOUU3xwNb", "description": "p3ln52tk12JDXDTB", "fileExtension": "pjp"}, {"contentType": "JcccPkI70jNeJtH0", "description": "BVhP8WdqK0Lbo1nF", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'vhAKvrv1o6kHNYaQ' \
    --namespace $AB_NAMESPACE \
    --screenshotId '62sGmMbrls583pbd' \
    --userId 'wT3UqutdGwvw0NAQ' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'SFAskbKk76LHK6FK' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'n6JT1dHrXPRxkKUg' \
    --limit '43' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'm0npkLM9RPjrXJ0Y' \
    --limit '83' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '4rdn3dNvmrJ6rH9I' \
    --limit '49' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'AJVfywbo4WrCSt7Z' \
    --body '{"contents": ["LnU3MUVrhjN2gvPJ", "KYROQUHYYdsTXK7x", "maUIleekvZeBPdsT"], "name": "75C15XbInYaAjjnO"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'X0s9wwqRuLH7erVj' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'tsc3psJh3ts7gvLa' \
    --namespace $AB_NAMESPACE \
    --userId 'jGSIJ7XF26rf10FM' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'aU2vz3q0CTj9XMee' \
    --namespace $AB_NAMESPACE \
    --userId 'XiyrKlUphfqnvzmW' \
    --body '{"contents": ["gKCM4QOZyWMLXSpK", "OqBJUbwZVOVGRK7I", "GCWrLkKfWCjIDbcz"], "name": "F8cB6042pGD1dsSu"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'ohWSQglw2l7NtDEf' \
    --namespace $AB_NAMESPACE \
    --userId 'nOea15eTbQ4kOf9s' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '67cI4d1Lz5TKEv7C' \
    --namespace $AB_NAMESPACE \
    --userId '0XfdJFGfPuJAjZfV' \
    --limit '78' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '12Lg3Ty13Wx7p4x3' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE