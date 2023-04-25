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
    --limit '22' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "NnVgs373f581vul3", "name": "ohKxNVjGl7Tmccgc"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'JRvKPc5yr09gWIkG' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1J2HihS6IuCax4od"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'AfHrRzf08lGt4uIV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'NtWktZvgnAwWmwwN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "8rhh29Ty0XWsybDg", "customAttributes": {"KE0sOgkFRrfssmAG": {}, "8McupazCjzwi3yMe": {}, "a46FNgnpdfm4PWDK": {}}, "fileExtension": "oGCIdMyY14idc4GP", "name": "VtKv1OKnXZv0wlKh", "preview": "mfSsmO3913rUsQTR", "previewMetadata": {"previewContentType": "14vgO0Pe2g4dEGio", "previewFileExtension": "FQulJMugjx3QXJgK"}, "shareCode": "g865Pw985CWSMiWK", "subType": "c2wFxsq5wOYm605c", "tags": ["R2vZrVa4ILhTfx6l", "mcIM6h9BzibUJ6xR", "OHdTSQdC7p3eckYV"], "type": "Iiy1iwTbbXcH3mvZ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '6AeQKqpik9Von1ct' \
    --contentId 'WEr7giitoP8dJOW0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "PENb4DkV75bKNJrS", "customAttributes": {"NBIiZQcwgFa3Nld4": {}, "l0my1f3kXPykbjIl": {}, "nJiKqkYzpie3ABmE": {}}, "fileExtension": "uupwQuN4qpJ9Q17W", "name": "D2JgKO32RFphu0AI", "payload": "baZ1ibzQGGNWZxaU", "preview": "zblYr1slr20boF6e", "previewMetadata": {"previewContentType": "WiDAb3ZUUbZ5Dn5H", "previewFileExtension": "QUrNlc8H7JwYlM4T"}, "shareCode": "tM9wEFK4ky9Mv6VU", "subType": "JOVkMIbpIIT8580A", "tags": ["GFb8WtaDexm8slSq", "tCR45Hs7SWXPaESD", "iuo1HNc7F1wG2I36"], "type": "l5TDloLUFX1mVXiq", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'wEzzffx4h4vrEd3I' \
    --namespace $AB_NAMESPACE \
    --creator 'BAocwqCRz4cbRSaZ' \
    --isofficial '2tJH56NCh8u0GJ18' \
    --limit '85' \
    --name 'KKEgKfWFeYBglW0V' \
    --offset '81' \
    --orderby '4gbzTuwfeTOPVyMu' \
    --sortby 'acoCA46GETGQyXYm' \
    --subtype 'faP4GpPV3BAGjhrN' \
    --tags '["LtUwPG9EpGh6OsJL", "wJq4O8rb39lHw82s", "CNsoX8OiGqYgZvZN"]' \
    --type 'GlXgY91aSYUqxIsM' \
    --userId 'XxzZD8JMSUXzlJoa' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'BkxVGuw5VdbUqD7S' \
    --contentId 'COM0UepecWrbq2L1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["kkTS2Lp193PXnwKQ", "GdSZhQoRoqy6uj2B", "L2IUDE5r4UQu62Mx"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'rIkPPTjekAYUFsH3' \
    --isofficial 'FYqTXbyLIVkb8hoT' \
    --limit '84' \
    --name 'r1E7uuCD0XcxXeok' \
    --offset '81' \
    --orderby 'ZhtnBtZmccx01Aks' \
    --sortby 'fVvKgKV4QEjFZzsI' \
    --subtype 'cjieKhu7Bs3hYv1o' \
    --tags '["y0A1mQtNnR3bUzet", "FCuBI0C5aPCp7dGw", "zPgHIuL66b5dZDot"]' \
    --type 'FlPV3gzCmhhiUGte' \
    --userId 'lqGbZAU859qEAzAe' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Y0hEIG1mt1b2ZwOT' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'bypWdSIQN03hMSbO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'WpwLyizAjrvk7YwQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'okNjofrjafpT3PpE' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "9IxUKLW892hXfGHI", "screenshotId": "O0cHNuvuT0e291HU"}, {"description": "rFxUgnErZVZSRGBA", "screenshotId": "W4mZQlvMlAbntBz6"}, {"description": "N8D9ML6Bda0qESHJ", "screenshotId": "4VXeMk6w0jWNvPHq"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'MxrBTdLjmTVfP2Qf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "4y7dhXxNbtsgCzZ6", "description": "k2yeanoy99tLJQAZ", "fileExtension": "jpeg"}, {"contentType": "fmvJ4jBy8Wl0v60s", "description": "RrOpqjTVuj9Q44dI", "fileExtension": "jpeg"}, {"contentType": "U3NMXfcqBxk8Xb33", "description": "L8IwQ5pkZnVI5evR", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '1mSqwnavvqaOux3Z' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'z28O9WRqJNn4szcE' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["nmAJaZC5zdI5ldrA", "MUTgMSmHXbKWiBGL", "jwVREcNa9nfVKtYT"], "name": "zMXSZbVwaXJvwfN3"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'SlMra82aoXbRWSwM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'SbDfKDjzaeuKtuS7' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["tKqrME11gNLkT2J5", "YShDmWGLiB39BlZH", "ZPYvbej0gcNeefN2"], "name": "49fVc5mGt5n0g45O"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'bddVU3LGgAfWpdFx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '6Xk6yC5qzyzW7uzZ' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "UpfBAY6Eh1ymUZKL"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '0uX5tmCyUg2s7dPQ' \
    --body '{"tag": "hdP6MsV7lS2g1RGD"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'pvHyWmN5iOFMt7PX' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["Wo8V2x0GPIA5oT08", "KdhjDRmSM0df1cfB", "CZQL1vWpVkuH8Nwo"], "type": "bTbPiPHKzL1IzzS7"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'cKmwK6Zph44F1niz' \
    --body '{"subtype": ["1z6fSOTT1shYdZ4C", "IzMwSPuxPUoTGN68", "meDdyifKOHbzNPAh"], "type": "87s7OxUoND05unyh"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'RJReIahhHQFXKX3B' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '1BWrhLVIg0fpx0iW' \
    --limit '10' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'p1PSV6JlB7yPOhDW' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'iH5QSZDEQgHOZZwf' \
    --namespace $AB_NAMESPACE \
    --userId 'zEkDIzfq6QnwyHzC' \
    --body '{"name": "Xvbct5y8TmCi58QI"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '51c7v2w3dTipchxp' \
    --namespace $AB_NAMESPACE \
    --userId 'ExmdtZC2qzWFewwv' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '1D3igzd7LlNW2tLK' \
    --contentId 'Eb84tJfmZi4QZlcH' \
    --namespace $AB_NAMESPACE \
    --userId 'JqBjnk4xuIgbhtgE' \
    --body '{"contentType": "8FgPhLlZ6ckw3SlL", "customAttributes": {"E9jSJgcZTPT0XEp3": {}, "Efw2uWsytR7FXBdN": {}, "0TfBgrUkUO9uFDGS": {}}, "fileExtension": "brL29fjqipwaePej", "name": "UZsRSPaZrCInuq8B", "payload": "Kb2i3XTtKAOYFsZn", "preview": "DKDiFuHWSFThZNdK", "previewMetadata": {"previewContentType": "a6rrHSPmjZqyqL8D", "previewFileExtension": "vvl7Euuj1npUydzi"}, "shareCode": "Znf8nIKlPGLIkYUB", "subType": "5RBmuvEAe83KL2TF", "tags": ["3zevEjt6VydAvZH3", "j7PnczqgVr7rx4Qk", "XMrElBCSi1OnqzLC"], "type": "qzIsPtNFLsM8Mjrr", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'lzj9m8IvxZLO9r2b' \
    --contentId 'HFMkzTiO1uGjZKyz' \
    --namespace $AB_NAMESPACE \
    --userId 'uGkYd2uoDgo8L9Ii' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'WmcZAJroWYeRTzKq' \
    --limit '57' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'QxbJtRsYseh0FtwS' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'brhGsqjinpUDyWLh' \
    --namespace $AB_NAMESPACE \
    --userId 'pp2Ergt45TKnyKMB' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'QCMXwAnfCz1172U8' \
    --limit '87' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '8PuDsbAqs1vTzbpb' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'JAwyv5LmVWUcZLJt' \
    --namespace $AB_NAMESPACE \
    --userId 'QIz3LXrbRP5OU7wz' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ZcAtzIrxK5WfJcPe' \
    --namespace $AB_NAMESPACE \
    --userId 'c94bbEgzaMHziQup' \
    --body '{"contents": ["laPo9ElTq9kp84oM", "zTi9eph0C3ybyhVu", "w8O7tYvSagrL0h7P"], "name": "AB2Rlf6ePZMt4ZxH"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'LO9gTgXWt76uCnhZ' \
    --namespace $AB_NAMESPACE \
    --userId 'HtvX6ljHakjbaZIp' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'RugDTXYxDn8pm8aV' \
    --namespace $AB_NAMESPACE \
    --userId 'TBuPb81Z9R1qYEnp' \
    --limit '35' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '5T17J4Ajj0zFkdsT' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'vO3YiyHo4wA7KKzC' \
    --namespace $AB_NAMESPACE \
    --creator 'G92IIWh1rFfYjN4W' \
    --isofficial 'I6v3wMJRfVkwPMJm' \
    --limit '74' \
    --name 'A8SoKt4QKxHUGGln' \
    --offset '73' \
    --orderby 'iWGOpucv8gaXOp6p' \
    --sortby 'oonFUgz9mZNNEY5T' \
    --subtype 'WdZR1NuYWR8vPiY5' \
    --tags '["KvfPjAMmQv5xBbAv", "vHA9ihebXYT6gJN4", "W0haxBaNEZQHYI2m"]' \
    --type 'FikViz1kdLQbx7Eu' \
    --userId 'exGyyNeOTijckzvK' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Rpq4oXZx1R5whfiU' \
    --isofficial 'FlxbGk5rBA4V11mK' \
    --limit '49' \
    --name '1qtve9t6EOnxc0CK' \
    --offset '83' \
    --orderby 's5Ax3iILCiCByv9c' \
    --sortby '271oMR7vpMdAE06X' \
    --subtype 'etmaDPsnEXJppCRL' \
    --tags '["tYeVljcINRujXGGO", "R5AZvLzG4xlrIU63", "JcgAchlaLX417LbZ"]' \
    --type '2TCHClZtRLRrAkwn' \
    --userId 'RJfdD6JCogFT5DYQ' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["iX08ywLjy8ckEpGV", "3JwV6n3t4hd33GcS", "0fsJtk8AxUaB0QZA"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '100' \
    --name 'pNGEv4bEnRm5PIgO' \
    --offset '28' \
    --orderby 'sFGdtYmMPjKkuI8c' \
    --sortby '5tJbzGernXdorYyj' \
    --subtype '5iWd7UfXsNuAl755' \
    --tags '["bnm3Z4s1GMZWxnPU", "yil3VoQuuBfKSzfM", "OnsdLTfDsvFmiZ2E"]' \
    --type 'HG109E40HJ1cZtiG' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'NfKegFtFpdLTESIg' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'vwnlxGHzrHW1eQmQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'WdfQU7wi2kwteAxO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'zEpQ62cm96t6cT0h' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'MiaZnA0PAtqUWA3T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '71' \
    --orderby 'FrgASE4INVfIZsvl' \
    --sortby 'dAlYGDb5RuDVdwHz' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'UfHFPU8vlRvpShjZ' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'aIJcQsTcYtTbHRNV' \
    --limit '71' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ZpLOTbp786UCLvko' \
    --body '{"name": "H7CFYLAoLoMsLCwV"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'GCfGZFSPbfTX2AjN' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '5g8c39wFrxH6cy9L' \
    --namespace $AB_NAMESPACE \
    --userId 'KQ3BVC7DCpRyMKpy' \
    --body '{"name": "H3VdtSmuDZMGRY4p"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '4oZdyiD7NA363v2a' \
    --namespace $AB_NAMESPACE \
    --userId '5sTKSoFEOvDRcN7O' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'l1Agc3txE87kAY2l' \
    --namespace $AB_NAMESPACE \
    --userId 'n8Xz3i5aK2YxsKNX' \
    --body '{"contentType": "L5ObJpT2vQvSxCAW", "customAttributes": {"McUqjoj51ZOSPhfS": {}, "p3LUZg6kTavHuP9c": {}, "QVkqiVowVtc9pRBl": {}}, "fileExtension": "T75T2O3HY1JbV8GB", "name": "UFoboSZ9Ky9QjXGs", "preview": "OzdYecQncAn4dFZ7", "previewMetadata": {"previewContentType": "z57q2lQleKD5D0sC", "previewFileExtension": "IvsDoc9LLkT2xIhb"}, "subType": "yUSMZiLURfYDIt8c", "tags": ["6AOSFJ7oBomrevaT", "CghUNoqikQXoVkRd", "MFPEqhKCzbeKn2Uj"], "type": "sTMOrnQ8uAOaqq0H"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'qeYwXubpMJqZ1ZqJ' \
    --contentId 'a4zMDVDyot9twzwz' \
    --namespace $AB_NAMESPACE \
    --userId 'D3tFrqrFCh1jBRr6' \
    --body '{"contentType": "rGqhFVy1zZocnXvS", "customAttributes": {"pK3VPozDPRlUn4IF": {}, "8XItzi810hjCNeJ8": {}, "xINVJ7GyKvtA3Vth": {}}, "fileExtension": "2ZRD7uvtU3Tf50av", "name": "Bni06APrqY9apzYG", "payload": "diRxoBRpJyYxfGzO", "preview": "8Lq04zzFpQ1cWg8F", "previewMetadata": {"previewContentType": "CyMT1iXySOxQei7J", "previewFileExtension": "YFZUV9knaZiMh4dt"}, "subType": "DrKKnoKy9sUyZsGr", "tags": ["aKlwTNrkDDFTmnrC", "pjufFjmLxAQWSA71", "ICVyOsePZYrD5VaI"], "type": "Pi2ESyAPbZLkPtrD", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Zsx9PcZyUhQZagx2' \
    --contentId 'Yp8P69nuskuSr8Uo' \
    --namespace $AB_NAMESPACE \
    --userId 'ml7G2sMg6byiwtCi' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '9iHRJF6p3YBlvESy' \
    --limit '65' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Vcff57xRvEcXv2Wo' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '8Ky4CFM4LrguoAM0' \
    --namespace $AB_NAMESPACE \
    --userId '3f4ujhLTFYexTygK' \
    --body '{"screenshots": [{"description": "ZHFHQLmuML8hM0OB", "screenshotId": "mxUkpmAjaR81wNZX"}, {"description": "5F4KhckNiAwLvDCh", "screenshotId": "k2ZT02mZxypMwfZW"}, {"description": "vqCvC4MsAQJX5UIz", "screenshotId": "rdDwRNnPwpO75vid"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'l53rBr8A0otGRy10' \
    --namespace $AB_NAMESPACE \
    --userId 'x9dhJ7EtTkQbVXyc' \
    --body '{"screenshots": [{"contentType": "sJOXX7dhYSkRK99J", "description": "JU4QQ1x87lXhLlEc", "fileExtension": "jpg"}, {"contentType": "amdu1p15IHhxzxny", "description": "oqWXcPYZ5vEcxbLQ", "fileExtension": "png"}, {"contentType": "FRksR7XBOieaOlyp", "description": "QWKRAk3csDGN3CnN", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'GMrSYwnL3PI6IX61' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3CjfLaOqh8QZD5Kq' \
    --userId 'vh0t5mEtxexRhJvH' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'sZfzE7pCAYQi3iQJ' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'JudeNBbWzGnRd1yD' \
    --limit '13' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'HbXQxoqdelw1ho4x' \
    --limit '1' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'hFxkfxHYr7qvPDE2' \
    --limit '71' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'AXrLAEnas1RUpZke' \
    --body '{"contents": ["95PIoVvfwV8xkEwn", "VlCUH3OhMMpP11je", "piLeXv02E4KX14jR"], "name": "oZTyVXWsnyARGGgi"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zQyB8LxDpWApMrRq' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'Iz4gtqiXgI7SK8Bl' \
    --namespace $AB_NAMESPACE \
    --userId 'QL1nNolHhvbfLcIr' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'sHWzNTIvPGWMVsLH' \
    --namespace $AB_NAMESPACE \
    --userId 'IDqSTU8e4nZHAMfU' \
    --body '{"contents": ["PlPpYxUgPXe3LELs", "wC3RAWls1KR6HVyO", "x3g7rU3RPV6flKD1"], "name": "dHCzaPltSRj76XLE"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'rZXwo9yvQLjJrdOU' \
    --namespace $AB_NAMESPACE \
    --userId '4H84RxBgXPAvqXee' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '7J41xAJEdX6kyRWX' \
    --namespace $AB_NAMESPACE \
    --userId 'MxfrkPUyIJVNHxkd' \
    --limit '25' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '6Wd5bkBqTrTy1Cd1' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE