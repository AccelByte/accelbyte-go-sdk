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
    --limit '55' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "JWlBo8HdIMkBOC0d", "name": "wRpwOQtHDIQmroeY"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'h5PDc8tGm1d43UVp' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PQErnwrir4DaJzvF"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'QImSp3mwpFTqQvGp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'V3wKUSKITfPVzhvT' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bsoOyTeSy6Ue6eow", "customAttributes": {"ITMmXR6mNIuQnh2Z": {}, "TCSq2gcYcLi9NQxi": {}, "99l32Ur2Oub7XYuh": {}}, "fileExtension": "A5Xh0oX5SmotVwNd", "name": "PyyQ3jXVwXRjx5f7", "preview": "lrNoStaGCbWeMRDK", "previewMetadata": {"previewContentType": "C0JZcKz4eDqXshBw", "previewFileExtension": "xTtDrMNTpmeQkRDu"}, "shareCode": "poKWYlDnhUFvLh44", "subType": "r2kD0LyFq7UoNKTw", "tags": ["uKwbrXldqAQp8Vtu", "kbLkdycp8VxVGA6l", "bhzEjDEQYdYKHzq3"], "type": "n6l2eM2lo8GNYZSJ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'vAtvuEQlAdUOxjlf' \
    --contentId 'xzI0ibTEc6XNGYSU' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "TxFOHpVslrT8qpzu", "customAttributes": {"lDA636loyTzgjmoA": {}, "vFCb8hjj2yItio6Q": {}, "nIFIyuzTd77oEQN1": {}}, "fileExtension": "bKU5VTktLgAg6B68", "name": "Mslcz4SqEZ5Byr4M", "payload": "zTDEK1T4SNlV8oQt", "preview": "NBa05LgT3MjdCRrx", "previewMetadata": {"previewContentType": "MeoJGr7uT8EnnACZ", "previewFileExtension": "SzsfPqLMd81QtPVH"}, "shareCode": "YOAP67fvONw9h6CC", "subType": "m7INg48QoCWTMYPa", "tags": ["SrolJiWIsZ5O30SH", "eMkhTvW1aoHBcvyR", "J2vtAvozXskyBSbP"], "type": "BroAly35L6sc4J6V", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'aLAqOWJsrl19rtPx' \
    --namespace $AB_NAMESPACE \
    --creator '0sPPbnldQwmGl5Ok' \
    --isofficial 'PHGDVVkJ4iI9N2zD' \
    --limit '81' \
    --name 'uN4rH0uqdNsKVA4F' \
    --offset '47' \
    --orderby '2f6lvkgmrGIzFCEm' \
    --sortby '5E2Qb7f8n1i71xEE' \
    --subtype 'QKi2WH0j2xgyYfFP' \
    --tags '["SmREHFDPHvZiDrKX", "NQu8mqz4DU7i9GXr", "vhk1rujR1GnWf4Te"]' \
    --type 'KT7my3Zqli93bg2p' \
    --userId '8D0t98YsDaOlbnag' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'JzKbI0xYvV3EXslC' \
    --contentId 'gyIrcU0OCUwXAvL5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Ww57ooOsecQGg4tV", "Gs8hQT5pzEWruNR7", "nLJQ3VJzcFD3THLX"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'GLStcKixaPqsH6Yp' \
    --isofficial '77ddiqcPlUzrDcFn' \
    --limit '33' \
    --name 'oMR5OUqjM1GlhgUM' \
    --offset '87' \
    --orderby 'WjnYJqro9GtfVq1F' \
    --sortby 'gHSwmNHPxVioaMAP' \
    --subtype 'FOEgvT125Nrwutxf' \
    --tags '["yS9C9JcCCQr9ymuP", "CI3vQhRD0y3OBM2N", "S4movnCzlyVFAkuJ"]' \
    --type 'SooCazuz8HIcyOab' \
    --userId '5QZ71NSaVVZa6fFM' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'hhNONB3ICyPfZOJu' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'DbmoaQd4ZtSnKkJY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'qD2BcWHP4HzW4yvs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'zZIYnX1LnGvcfVPR' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "WCASFtfL4rmAJsSs", "screenshotId": "7TfZNUrqQiJ9yTtU"}, {"description": "MguCsnv56QTsCOP4", "screenshotId": "mOTK4xuDYsBoQRxe"}, {"description": "SIPBMRyX26bZ6DCm", "screenshotId": "taoIPiJxJPiYMviE"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'H012D4sgoe8UnXyE' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ctaWRrhbtg3rVhQZ", "description": "5vCM6yiLMAIITzfc", "fileExtension": "jpg"}, {"contentType": "mxgcP0M6KFlV4xIs", "description": "P3vCQbXFKfKYLT7s", "fileExtension": "png"}, {"contentType": "iG5FjtYY9ejGTp81", "description": "3BxxxSmJcl1WcaIC", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '5Xzv5zdc9lsZ86wi' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'YBTKfNBlA4hKmNew' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["TtZHPGptHApGlOpo", "WbRT6pFdd4bo5P3E", "TZYP5jnpJ93XE0H2"], "name": "S8MphKqAx4mWKZt2"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '44uyCnjxhhva4wJX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'PSWwRoUpnokPzDDz' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["rViWQks4p90DpLgY", "upnhrRw1tnGi81jl", "KhFw4lcBdfgAb5oI"], "name": "IkTNBqg6Tg0N361d"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '8UMm5gywQZitqhSF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'GQ40sW2Wp373CrLJ' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "do3BgJdsVgLm8uM8"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'MAsJFzEqsJvKnWWA' \
    --body '{"tag": "bjcHabDxmczPDRMC"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'dTpOVWcVllIQwuv3' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["Wf40YyWWH8wSmXSv", "D35nhWKUX4npXTgR", "SeGlCMz7YBdeOBAF"], "type": "8D8RQ2I6lUghGPR3"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'p3zNt5MRZwG097uZ' \
    --body '{"subtype": ["C5kO3boivqNFEW8L", "xHWLzFakig1PFWdO", "QcHY44poAQxRJbfm"], "type": "VgpvGbEv7orhja7u"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'KiF50KfNO1bs88f8' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'cG6hoPdliZ0uUxPo' \
    --limit '38' \
    --name 'atwnIm0FereADFKq' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'nX31kU9siJHnClXY' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'gh4DHk1JeC09GH7Z' \
    --namespace $AB_NAMESPACE \
    --userId 'AvA19gYioub3x16G' \
    --body '{"name": "joVOrrCiM1JNfIdp"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'u6g0peQd0qmyei0z' \
    --namespace $AB_NAMESPACE \
    --userId 'VnxzH1eMZFb5DgCu' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'qv6ato807KihcXXu' \
    --contentId 'ilNt4eBm4KiwGv7N' \
    --namespace $AB_NAMESPACE \
    --userId 'n7qWbHjEyMHSfH9T' \
    --body '{"contentType": "EITjlg1GwhQrUQCL", "customAttributes": {"vJjFcDItn17YYbji": {}, "2LGS5kGdym3HsVrE": {}, "U0M05FFcJRxshe8k": {}}, "fileExtension": "TEvvhgQTtydigOh6", "name": "4rFt1kSIvVLdxniY", "payload": "rBL5TyoVqSewQ7sB", "preview": "oz64U6yinSve3XRC", "previewMetadata": {"previewContentType": "W30Q1lfGNhsfJ1Bq", "previewFileExtension": "zBv0tIkAnWYqBFo5"}, "shareCode": "Ywor1ykvYbj1qIba", "subType": "BRmbq8DhaoiBeiHj", "tags": ["l1BkKhOowlD8rjfk", "XZUxW93jobkDAhcb", "IqAqYNSHmzNbSltt"], "type": "phy4edbnhAoKsLzd", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'DJngMvhJBqZXvWHs' \
    --contentId 'jWB75qpccBD6y8Ft' \
    --namespace $AB_NAMESPACE \
    --userId '3FgUy0Jmo6MyrfzI' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'iAev5NO4he9oYywS' \
    --limit '89' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'F1iZ8TP0XqpFVYqE' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Jj5TiJkcV7iRNpVr' \
    --namespace $AB_NAMESPACE \
    --userId 'hwA4ie7GR1pqaC7o' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'eZWr3bvXifuEwn8l' \
    --limit '71' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'mlzLmOVD2bLPsTDa' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'LYUHPpBiWfgdWst6' \
    --namespace $AB_NAMESPACE \
    --userId 'E75KAWM887lYP6XM' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'guJhT0F5ZGITurbt' \
    --namespace $AB_NAMESPACE \
    --userId 'Hf1JFyXek7kmv2sZ' \
    --body '{"contents": ["TEIeXnzFbwcKMBCa", "W195LCBeITUlpMwb", "gOjcqUnOI32XtX8z"], "name": "TD5HXMxy8EMoU8sl"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'mT9f6t0rTGVmJd0W' \
    --namespace $AB_NAMESPACE \
    --userId 'ULEcWOGLWv2Ofsyu' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'WxZO3cq5crXcztnD' \
    --namespace $AB_NAMESPACE \
    --userId 'cmu3pNaqu6naLLEy' \
    --limit '44' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'OKD5MgYenDQ9HmPy' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'W9ZbgjGtlRdYFbS8' \
    --namespace $AB_NAMESPACE \
    --creator 'cRyGaUZFXWuLr7K7' \
    --isofficial 'uiGMOsGmeDMDwtE1' \
    --limit '45' \
    --name 'yNSfF0zDhVgBnkBR' \
    --offset '28' \
    --orderby '6eNmstBohdANam4R' \
    --sortby 'r7RxxxaB9YVfvwfO' \
    --subtype 'VOJyfXbve2ACzs3r' \
    --tags '["9dB07d2k2jAVzlCf", "yRbRQwhqJeshkEkj", "XtoesET3YM6hMYwc"]' \
    --type 'WBEkh5xEFm76oTnQ' \
    --userId '4RmwYVnEzswbdc0m' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'QqSpHy8PCycLwQqn' \
    --isofficial 'CLusDain1jnohCJY' \
    --limit '39' \
    --name 'weP2S564O43ZPXob' \
    --offset '20' \
    --orderby '0yMYbplt19uU6blp' \
    --sortby 'vgUgSXdgKP1yHnwh' \
    --subtype 'NJScqbu8K85gXzTj' \
    --tags '["UXIOAVU5IsNaF2Yu", "whFuQgxpsjq1Z0Rt", "MTnAG2xhpPQPc3B5"]' \
    --type '0WVmaoGtcgY80oVh' \
    --userId 'Yyh8OVCZTresoFET' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["WJkj6YHDKCSPs9tY", "j2ISPFD0ifms87dX", "ZpzBk3r8JUyiwjlC"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '54' \
    --name 'G3iPNtXHdAbHzYAU' \
    --offset '59' \
    --orderby '7gpPgx2VJ2WQSuhM' \
    --sortby 'osV4rD9UViEAUhCh' \
    --subtype 'DkiSGkkwOAiBMuM5' \
    --tags '["bxPYlWOD2CyzPy6p", "qeE5yduimKY950ES", "0C7NQqMe5q3eIQyp"]' \
    --type 'K7v6Xv691a3jz20W' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'WF6Ozk3CLmXzBELL' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '1BiTD4LuNA4WNQ7A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'dWiuwpiHIKJSjDVi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'cXxSfvif4E34YoUE' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'A84LHRRQVZQ1MWBJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '93' \
    --orderby 'oZsmKSeTT54iIysU' \
    --sortby '2jcAyjMg5ge65pmo' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '9qcqf3IIELMaqeu9' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '6eXZBNV2nZBYgnBT' \
    --limit '92' \
    --name '5Ws7mChpTS6i87qF' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'fOUME1kuVeR5CSHS' \
    --body '{"name": "5gqTybgNwhxbJKoY"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'kfOtFFOtMoEmiJy0' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'or7y21AfyKjXG65T' \
    --namespace $AB_NAMESPACE \
    --userId 'pKr70oUsUl4Qftly' \
    --body '{"name": "S08Dee19wgdgaLiv"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'svN2bJsC6M1zMTFE' \
    --namespace $AB_NAMESPACE \
    --userId 'cuLtnYNVuMck6OC3' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'kh0rjNa5yNsy31Z2' \
    --namespace $AB_NAMESPACE \
    --userId 'MAoy4AnwwO4P2hK4' \
    --body '{"contentType": "vRXe1ra5SowZmInb", "customAttributes": {"SLVymICTmF3G9GB4": {}, "6AjjMnMMUakNwS9S": {}, "wgRBcFIiVNfgCvaj": {}}, "fileExtension": "pvmtUE8revNVXQME", "name": "VmmXjDZDQekoAKbN", "preview": "tqgUbOrkgCFwR4W8", "previewMetadata": {"previewContentType": "t1QhmfQ8Y9rMpYTc", "previewFileExtension": "P3QROBwxO3CuEKg1"}, "subType": "GUXfWkdTQBoC1iSu", "tags": ["yeg2QZpPi276pUfk", "s7UcEYKijv6Pl3Mt", "GuEnbZvB4LVrPoGB"], "type": "COwKavTfJ6Nlaj3S"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'EhV1UyJQQwAZL3Fe' \
    --contentId 'PlrwrXxBOk0xqa0Y' \
    --namespace $AB_NAMESPACE \
    --userId '7rLNASxyPXLGNeRq' \
    --body '{"contentType": "WJ2DBimzpzIkLVBb", "customAttributes": {"wurQmVoQM1nixHo6": {}, "wKLlbJWzy6OoyAGW": {}, "i1KaUbZEOqkzxJdO": {}}, "fileExtension": "qCFXdHzGlmHqPjpL", "name": "wORUeNZ8SD03tCcL", "payload": "4hwsRi91Ye1vv334", "preview": "U4T3FW8oWdps5bxe", "previewMetadata": {"previewContentType": "N1K6SZpzLNGBPVGO", "previewFileExtension": "2QejUKyOsykCtQwp"}, "subType": "O4RePODSqVU4Uu2X", "tags": ["X1Ac0tNRt696kJXD", "4ZN7KkBm9BiQZb3M", "8MaJN9Z2DMFIRYOC"], "type": "VVvfoSCptaeg0NhS", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'z2xfbPzKs60o2lbJ' \
    --contentId 'vEj9krmamGBwowdO' \
    --namespace $AB_NAMESPACE \
    --userId 'CFDvQ6V0EmYReTAC' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'NqTDC6Iyu1zKA4jt' \
    --limit '50' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'VQQv0f7dKt3FTXxF' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '4PzNQniW8U0hmB8V' \
    --namespace $AB_NAMESPACE \
    --userId 'YpRVesY0zevrk9Aw' \
    --body '{"screenshots": [{"description": "osNLy2IeX4DG768h", "screenshotId": "zDMJvgH0C0qNgGhE"}, {"description": "cT9k2T361GOrXETt", "screenshotId": "5TiPDvBto4M8QCHN"}, {"description": "a5NeACZrGAf2xHbV", "screenshotId": "4HK4whjQrsQnZyjC"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'U4GakpwMfqz0roUG' \
    --namespace $AB_NAMESPACE \
    --userId 'e6jjzYONOhwzXB2K' \
    --body '{"screenshots": [{"contentType": "I1r38LwLn240Q0jJ", "description": "4ghoUxd4ihAfJWeE", "fileExtension": "jpeg"}, {"contentType": "gmni4XkNJ9uaPTTl", "description": "BL3BNzrqsy4RwnV4", "fileExtension": "png"}, {"contentType": "iP2SCT7ISaB5P2uS", "description": "PMdGU3IXZfdV9ulP", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 't6U53eEcAdk4rSAn' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3MML7qiCkQaFvQID' \
    --userId 'djvXpX3uxgSZO1iv' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rnS2vyjqzM1RhcMj' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'zVweXehCRTNs92Eh' \
    --limit '76' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'dxxTrMWeJRcXJUt6' \
    --limit '56' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'X9PtT5hT8xyU8Npd' \
    --limit '18' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'tT3rIdl5OzsotmW1' \
    --body '{"contents": ["KRFg2dT6oRx3D1HV", "RPkaiRcsC0f1CemT", "wh11DPKGIBzBUy5V"], "name": "tUT4oZO1qQZJYTNZ"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'XlBI2GFOr6iVGTi4' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'Vtp7ClwUNpRoIxaE' \
    --namespace $AB_NAMESPACE \
    --userId 'WTEEsaoJyOh2Ay0K' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'NTA5PQZrMlgd0T7K' \
    --namespace $AB_NAMESPACE \
    --userId 'zz4xEU9SX0qa4GYA' \
    --body '{"contents": ["EzSh7zlz9ooWKy2p", "cmmoqFNz5tqXEz60", "3BwSXIKCMibcEBrX"], "name": "06dhzWQtiwNntNRs"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'yIJxSi6IukVcsD1R' \
    --namespace $AB_NAMESPACE \
    --userId 'zszS4oADaUa61dVX' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'u6H4qfVRyfqzg6lT' \
    --namespace $AB_NAMESPACE \
    --userId 'AQuiv5XY3gfALNhw' \
    --limit '91' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '0c4pmSihDhWE0tP1' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE