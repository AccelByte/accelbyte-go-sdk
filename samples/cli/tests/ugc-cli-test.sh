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
    --limit '33' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "MgTWueGSjxcCl83R", "name": "z4smdwMN0vS4UCQT"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'oORhKQqVDXkGchhv' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "jJaNpc8uedr8QtQW"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Sv5APmcZskWmUovd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '7y8FslOaXMTDkCnd' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "x1ZDEFrzjNvgujE0", "customAttributes": {"l8tYfpgoZ3ZEwaDy": {}, "gGeDAd9cEOGPtLEF": {}, "UcynxsCDMboy7VEY": {}}, "fileExtension": "FAzhalHf4TIzYikM", "name": "vBjtcA3XQeo5RnAt", "preview": "iouwLDGrrt8OYoTZ", "previewMetadata": {"previewContentType": "GopseElkVz8paJht", "previewFileExtension": "MIla6j4zSi71KfM3"}, "shareCode": "SuUT7CQ8HKgKmT46", "subType": "FD6sZrHcHIsVs8q4", "tags": ["YLbI7pnUEXZNDkFn", "hZGoPKNqKSifQ0h2", "FbB5wsKpZZxZTWtn"], "type": "bIZUMqRNry0aSEG7"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'tbtzaA08yCrudWmB' \
    --contentId 'WDzq2poOsDBhr4A0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "wY36lyxGMxvVEMM3", "customAttributes": {"lRQG2Kr5HIutQf3G": {}, "cgJRMiQkzMhOoOBP": {}, "SaNpIw1K4d0GuH5l": {}}, "fileExtension": "LVboLWSXF7ChfmuF", "name": "LSJw6z427od1uSj7", "payload": "FlPc4d5JKpQcOE0D", "preview": "jQ3E1uHn3QKnKZn4", "previewMetadata": {"previewContentType": "Q5LkBqqsBbQ8npb3", "previewFileExtension": "weiUYwrmrSP4af8t"}, "shareCode": "L2KmRrQ33HO4yKl2", "subType": "eDIZ76iA5mA6XmN8", "tags": ["tUx1unqzLXZ9XQaf", "WCWLfvEV4zQXCUUJ", "Zi5dFK8jcRLO1lQB"], "type": "zpCzaIGr3Ofq8EAo", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'xGUmfsSNRC6eiQPF' \
    --namespace $AB_NAMESPACE \
    --creator 'Ec5xA1bYCOBaAiI8' \
    --ishidden '3W33NKCWEfpzUhMp' \
    --isofficial 'Ib3QaZ93lqRZ94P8' \
    --limit '15' \
    --name 'OXyELZrhfT1dUm8p' \
    --offset '29' \
    --orderby 'Dss2d333CvIzntEi' \
    --sortby 'Pex4m7ASzQ2oIQHR' \
    --subtype 'lq8bf0Ki3GVUHR9M' \
    --tags '["2232YPlHlRpUQAlO", "H5XTp8unS6P6pNee", "AwjGogdRPxP7mFNx"]' \
    --type 'BZ9WcnrkFp1rxWRc' \
    --userId 'gt7T0pyi94BuSrlV' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'I1G0QpUCwJl58bQV' \
    --contentId 'CO3I3LZLCWJl09BB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Og8YcwYVRJRWyIVV", "OmtM23gmHC9UBHKQ", "3YAlieo7BbR4FoTB"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '8ujQExCay7JZlgPb' \
    --ishidden 'xvPtnnG2IFhXPWOm' \
    --isofficial 'MwVnDFoJQslA0Vp1' \
    --limit '34' \
    --name '01aHY7v9E8f3WvhM' \
    --offset '43' \
    --orderby 'QbpEnsrQRadDxMUt' \
    --sortby 'MnVCk2eQHSZze1pm' \
    --subtype 'QEHFYRHZFXyJ4e2J' \
    --tags '["80K244zJBpBLDT6a", "2raifyRlRMA5wMN9", "TZFkvLDBk1Qccwv4"]' \
    --type '1dIkiTUk4fDTxq6C' \
    --userId 'zOAtJ201pAZyYMW1' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["FcfTQU3lfZjksqEV", "MmHl8jQ8jecoQx0G", "LTV3iRk3TqM3U4dV"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ng83WlkoqqMbrNQH' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '30ajpvBVFH6BPRB9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'DqUWMmnusZTeSiWK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'KoJCczrRUNaO4am5' \
    --namespace $AB_NAMESPACE \
    --versionId 'Ed5m456W2esTjuGf' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '95Bg61DpGEEajpd5' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "5rGsAJNTmtu5vP7z", "screenshotId": "Ejd15FusnvI5P9M3"}, {"description": "b9lAL4vtO1X8a0Pj", "screenshotId": "GknmY9W0kvA7xoGg"}, {"description": "KVJDcWq4ftFMLBAm", "screenshotId": "mlzaTu7tFpnTeUou"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '5tr7k6IeXHGDNQVL' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "6mIZnu4kc63O1UJX", "description": "FuoumJDqOfFsr4kB", "fileExtension": "png"}, {"contentType": "GG8JF1eG4BOjjTSp", "description": "cQzP25gNRG7Oqv4y", "fileExtension": "jpeg"}, {"contentType": "8UG61pr1aDlzPVvd", "description": "WsDlNPSRiWZcANfB", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'c5NIMNl1dSWIUfPO' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'oadwFuJVQPRyrhDD' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'WTM2SLRZs8XhjIj2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["jgIaZZN4hwQu8p24", "ER3VcKdMMjotCKHM", "2y59kIt4LT6aDYBG"], "name": "ywqebb7XmMeFU1ra"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'X0VVmDeU3nAB6V46' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'e3aOrRoMuRQ91D3L' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["hpDWq7CwMNPrc2Qf", "pupFjeV2xh8S2c7d", "FFjZQ5WnUlFYeAg4"], "name": "1kFTfemsHMjFWMYU"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'S4RxyGjhgAEiDKEn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'FDhOe9x7oT34JE5n' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "yCuHLd8ignzWh6xk"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '5vpWZuRco2QCAeol' \
    --body '{"tag": "vrQ2b1cy6EGnQllt"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '3bAK4UgfLb0iWOsG' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["RlwtAL07ZNNOkh1z", "DkVRjcABDXLrmMKT", "vdmLYCUMS1AAcZnJ"], "type": "wotqKLBI0bvDsqPF"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'pe9gaiMPgmBDwayf' \
    --body '{"subtype": ["u68gPBB6sQzUZzK6", "QqFmIaEVqgfLhYkO", "SvFLUix8gcjI2rIc"], "type": "y7OgUu11EoTfZG9D"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '0sGDRokHM977Jo9e' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'OHJ9cB7KzXFUl7d6' \
    --limit '5' \
    --name 'P528OANgWJF49j27' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'wmTjGrIZ3YTqb61z' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'NWwoUoCfZJZbMcR2' \
    --namespace $AB_NAMESPACE \
    --userId '5n4a1tDK2qG3j2c1' \
    --body '{"name": "fF9x2gwFvbyryf5z"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'B2nJvtIOgV50b3Jb' \
    --namespace $AB_NAMESPACE \
    --userId 'FP43nrZWHd3OEtgd' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '3j2vyp8g3eGUQvPI' \
    --namespace $AB_NAMESPACE \
    --shareCode '5rgi0K0DqbAgIALz' \
    --userId 'nvVN6MVHxZBgLR99' \
    --body '{"contentType": "lbY3MBIYOIv1xhIR", "customAttributes": {"01rb11aQ0T29pwLy": {}, "yhdQcmsPdSMfkLUe": {}, "IS3YtKdbxRi3x5Jg": {}}, "fileExtension": "8nmih498yd8CrBi1", "name": "62uZgcghguxj4Av9", "payload": "pgXu2JA4khvhKXT3", "preview": "C2qmkJmb9HHuO7wo", "previewMetadata": {"previewContentType": "k9q5nBBHPy0nXTtB", "previewFileExtension": "ol389mRJkn1C3wj7"}, "shareCode": "p1IcTs6moiB1fXlr", "subType": "11iDilzLrWir2Kme", "tags": ["Fs2VyoYxXpCKUlIl", "baw730hc2DuRBPDh", "RwGvpeAB8rTMQc7R"], "type": "w7eUo5uHNzLiytFT", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'DpZKUikKYRJJBNq5' \
    --contentId 'lZpxys5Dis1JNG8o' \
    --namespace $AB_NAMESPACE \
    --userId '3q4OZfTwZyUxXwph' \
    --body '{"contentType": "31hZwsIKwoLgbeMz", "customAttributes": {"ndZlLLIDOzuJRAPQ": {}, "bjwgr63Z8Hp7ggfV": {}, "IPlVKvOaBM7KKxlP": {}}, "fileExtension": "lir47Kr5C6kIbYNf", "name": "4w3ox5kGlWtkqu0L", "payload": "nDsGLBIZMEVCO1sS", "preview": "tY0KmgWzfn82Ix6k", "previewMetadata": {"previewContentType": "wEwOZ57kEYiimOs5", "previewFileExtension": "k5Cc3UhtCBW1taxp"}, "shareCode": "vy6Gl1dYRDVDGZnI", "subType": "kcN34C8kguEwdTam", "tags": ["FfUWuxcJ132gSWBM", "7iLZsEESII27NVjm", "TLGKYlTlVQsTjNsr"], "type": "4lLTBdRpgtV5admg", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'r54IELPU9MHy2Qcc' \
    --namespace $AB_NAMESPACE \
    --shareCode 'cGsL6cscpoLPS7yx' \
    --userId '92odIN7cJeL3rtmw' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'uKVY38EHOpyDyIii' \
    --contentId 'moDtQBaR0hSv7ahA' \
    --namespace $AB_NAMESPACE \
    --userId '8LMr1m9EUnbWiVyA' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'no7R2xTAWRaCdoJl' \
    --limit '16' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'cEFsDej9ZHhO7WpZ' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'IUGiE2ISKWcPldeQ' \
    --namespace $AB_NAMESPACE \
    --userId 'XnJDQgIllLjUrZwM' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'V4cLJSBfD9YKNrKX' \
    --limit '95' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'vwzHUjbZ5FhEGjeZ' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'pmIbKXZDBOggqGwF' \
    --namespace $AB_NAMESPACE \
    --userId 'kzTz0MjvbhP9V4rh' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'qos2p3RPTkU6LeDE' \
    --namespace $AB_NAMESPACE \
    --userId 'v6LghUIL7LJBB5e9' \
    --body '{"contents": ["tyVQNtpfcdhbF28B", "0mH6UyL84Jf0Agft", "24RNHVDwi659Hbgt"], "name": "twaNkApsbN6iBRXL"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '5FsslhtkgeiuwY3q' \
    --namespace $AB_NAMESPACE \
    --userId 'Sk1oV25yUo9sqXjD' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'UhyBka9Cl6hww92N' \
    --namespace $AB_NAMESPACE \
    --userId 'ASkiFysIVKlxEZ4Z' \
    --limit '70' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'xgDxNIrYcLSh8s3m' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'kWxk7v50tWGSFkwu' \
    --namespace $AB_NAMESPACE \
    --creator 'rTTisFzupg6exax9' \
    --ishidden 'r2aQ89rUm2MQ0Ldb' \
    --isofficial 'vBZfEoNcjtRHsBfG' \
    --limit '81' \
    --name 'Ig92laAVasxA20qc' \
    --offset '5' \
    --orderby 'c9tPqqw5Lsyazh5Y' \
    --sortby 'pcuLKd2kd0AeIqSN' \
    --subtype 'Lh82h6hJ6roPoaG6' \
    --tags '["oSniQIy62hn60enZ", "GguMw6JtkWVsUB6b", "Sxl1XF12Vt6WRmwf"]' \
    --type '4KO3DPDOqkLcNZnJ' \
    --userId 'rsNJVFcypGsAwwih' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'VAfnhJNBoNvOG7oj' \
    --ishidden 'xqpjZ4MthCdZotXg' \
    --isofficial 'AcTFiznz2VNwL95O' \
    --limit '56' \
    --name 'Jrtfp2OtDXgJtVhb' \
    --offset '40' \
    --orderby 'zPR7Xt3NS6wq68RQ' \
    --sortby 'sdGbhRWeRCwpkTER' \
    --subtype 'AqCZAawKNlPHwx0I' \
    --tags '["yL3Jzq5CafWOZzu3", "CgQgrE0lfaHzvlIC", "uDBO3dftnlkI99Pi"]' \
    --type 'wwDXp7WmzovujZoq' \
    --userId 'PYC0ftcNfnq53nZA' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["EL2Muim6kJu547aV", "bqnGdjFkvClXZ4SR", "wmXx4WPZPEqM72g0"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '71' \
    --name 'HUwc8PLEkdVQYNOw' \
    --offset '9' \
    --orderby 'MDfJPx4hYpTOkjcV' \
    --sortby 'GsqyzvlDbahx6TK4' \
    --subtype 'icOa4oOX0492eE6T' \
    --tags '["21y41V3mtJPMvbix", "yZOYPCt1J2bXw6f8", "cSizPIjw0UKaQFVA"]' \
    --type 'K2jmJWv3UlEmbRsm' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["y2TIW5reasgB364h", "dzgIqM48lJnls7gb", "ty8xJmWf6XcOZdaG"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '93IMgg9AKfKfbkX9' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'Aczv7Y1EWOgcUMCj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'u1stZNhnv3zM8XUB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '45b9WklLKy32MsiY' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'G6m2AttUzCSd4loZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '48' \
    --orderby 'HQWsd2j7jFdLSmRy' \
    --sortby 'uyVZf8NvW5ImH3Ho' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'zks1ffe8TBorOMae' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'efCITdKVTBFBpPwG' \
    --limit '57' \
    --name 'mgScZIvXKcLDbncj' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'T3z0EgrzoBK87kH3' \
    --body '{"name": "go5JqVDZ6sBGXTee"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'gwIuY9GX6Nn9GzLL' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'BuX6kF4bHXcmX3up' \
    --namespace $AB_NAMESPACE \
    --userId 'mnFUJ7wzx5U9kaUR' \
    --body '{"name": "sDLblr63cDQH61HU"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'gt0CxvjFYdRfaR41' \
    --namespace $AB_NAMESPACE \
    --userId 'jEXsktSRJ5NuKaLC' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'K3EeBz2h7yuYAiGp' \
    --namespace $AB_NAMESPACE \
    --userId 'bvq2Tkv6dsGXbHSP' \
    --body '{"contentType": "gWQRf6psSgiTUsFl", "customAttributes": {"rX4FA7A2iosK47zt": {}, "Kde7OcskjXnPURoi": {}, "ek2tFsWKhmjz0XuG": {}}, "fileExtension": "36sgQ5bEeCtVPJVQ", "name": "eCIcoFkBWKgqtAWM", "preview": "e7lWY0KD7AEw0GDK", "previewMetadata": {"previewContentType": "aYtu35xot325EZjo", "previewFileExtension": "nSFcxFt3fz2iojqS"}, "subType": "gdXC5h8j41JB83dE", "tags": ["cWbR7MACpqzODZSO", "kiNrjq5ZjtXB2Jrl", "EujQIG0xWKQGMyqv"], "type": "cYlQjK4Jw3SX5dJ5"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'a5RBWdgDL3sy8ftL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mnl1za8fnl1NTlGr' \
    --userId 'yiJzFAhdPUHgzXYG' \
    --body '{"contentType": "yU46NpOO2j0rNQMn", "customAttributes": {"1o6iuOt90xaSc6wV": {}, "oU0FGYS1V1x4ZMxz": {}, "g6k6Kd2HBNRXac23": {}}, "fileExtension": "hZzWdrGI9ft5kiIK", "name": "igtQDW5x6BJlPyFO", "payload": "nOFIp5g82je6WCno", "preview": "M22m7ej2YE3eXNw8", "previewMetadata": {"previewContentType": "KjevXod1oE4vFCIB", "previewFileExtension": "qCAuO92V87U151Vi"}, "subType": "aDAE7R8wEytTV89r", "tags": ["PEFhZF1GhJJRz1jS", "8hX6TebRaghLmlHp", "S27AEvEjNDOHb9uH"], "type": "oZPrr09UZYyczLPT", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '1w7jrxf2UtaB4CGG' \
    --contentId 'hMpkkqXfJWigLtui' \
    --namespace $AB_NAMESPACE \
    --userId 'z0P86sNaKjAMWiKi' \
    --body '{"contentType": "tMiHMzVek7yjT87K", "customAttributes": {"B2W6RnKbe6wGevZ9": {}, "l8Du3LwilIch3hR8": {}, "RVjrM6WAqk1jFPNV": {}}, "fileExtension": "uCDXlxrvh2L6ggn9", "name": "8zfJh2OWR0vp5lxc", "payload": "V7IQoEFuyx4O3cPV", "preview": "RrBttaOV9HRyPosd", "previewMetadata": {"previewContentType": "2AYDK29Py8IMCMe4", "previewFileExtension": "trSuzx0R5mwaH1JN"}, "subType": "rS5kbPYPhsm85ug3", "tags": ["3xltef00h97agZwO", "QTSNFdA0GDOgFakV", "rKoOEUhjuhQ5wZd3"], "type": "ECJGrAMkUPWGmjpJ", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '1efoxof5Omyug5tX' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Avj762UTcyP8JWoe' \
    --userId '7eFF61ItL72qNRRR' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'QtwIhcYUueOFnnGH' \
    --contentId 'OGx65yf7L1X0FJpQ' \
    --namespace $AB_NAMESPACE \
    --userId 'X4GQdTA0c7FPUdEP' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'PHeU7ndA410vbCGs' \
    --contentId 'qnOsmIs7dSZEX7N6' \
    --namespace $AB_NAMESPACE \
    --userId 'k1rQp7ZIHkZrSqYK' \
    --body '{"shareCode": "eg6v2ckK4hrqGB8u"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'b1lQSG3TG8sVuo4e' \
    --limit '40' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'sbNci3upPZySY160' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'Ruf3QvsyN5eEZGls' \
    --namespace $AB_NAMESPACE \
    --userId 'sgNuLETfOpmlnsVH' \
    --body '{"screenshots": [{"description": "t3Hi2Ww4KvvcIjzL", "screenshotId": "L8XbKxY6oyNFa7FT"}, {"description": "XhnN6jy7nyquOKKG", "screenshotId": "GRSilJzt1YTdbbSw"}, {"description": "exEzf9GyiI33wVHD", "screenshotId": "fSLX1Etpf27xxsuw"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'NoPhON9ZDPufrMV9' \
    --namespace $AB_NAMESPACE \
    --userId 'lTl7NzTwUTYv303e' \
    --body '{"screenshots": [{"contentType": "x4pA9EyKdAcdc7q7", "description": "4esZnzvnu13Ju601", "fileExtension": "bmp"}, {"contentType": "XznQ3DlKnA7m290l", "description": "MvJER8tO7ygBKBv0", "fileExtension": "png"}, {"contentType": "JbzbLOvtTrpkx16x", "description": "Nf1vY02UG9hmmzwR", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Y3m5cjuZB9dqnxV7' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'USoDfGStPPl5XVGp' \
    --userId 'sGRg44IOIbrmNaBK' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'XEapglRHIzOJflOY' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'GZ1lQYWL2CBnabIp' \
    --limit '76' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'KzzCiZrH3A6bTUmv' \
    --limit '4' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'tbzijE4S7yqlUXUK' \
    --limit '42' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Q6MoM02auIqqNSv3' \
    --body '{"contents": ["Lc9X6MGXTN2CAWDX", "qKJlA6Y8mgljhWYo", "H4Z0om6BhGfZnsdv"], "name": "o23qLo4bSKPH2x7p"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'WWkg8vMs1I4K8AIZ' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '4NrLC2uipvwN2MKE' \
    --namespace $AB_NAMESPACE \
    --userId 'Fa8aqJNy0W5PQAUT' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'h4rhLi8UNNJrvqXP' \
    --namespace $AB_NAMESPACE \
    --userId 'Y2cebp0J350IEiE5' \
    --body '{"contents": ["MUBOijpO6Oyo9dNw", "NGYyj2p3qJXQ3Pqa", "qryXFSXuoVoeVlTd"], "name": "cuGf8Y1IPcdCxQSZ"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'DBSHY8jLJsU6MxNM' \
    --namespace $AB_NAMESPACE \
    --userId 'GwG4JuSVQFOspQze' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'ip2TmCFHuqAjcAJS' \
    --namespace $AB_NAMESPACE \
    --userId '8DYTfHhNo32EmTKz' \
    --limit '54' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '8JmWq4A5HtDmAFC0' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'PBv6riVV9l4vZqi0' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --name 'gPjwiBD3YTCzEP78' \
    --offset '82' \
    --sortBy '0DmL4uAwSy8zUO1e' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'yv9aBd33IvEoAAcR' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "4Xr1aLUoMD6KCn3q", "customAttributes": {"c3puEjnDhkzOiVQS": {}, "vbSIfeGW1BNqTOP0": {}, "nIut3bP0iCIzJnIP": {}}, "fileExtension": "VtefcqMncoyLPQRa", "name": "QCpTvUlWt1X9AYU5", "shareCode": "lzzwml4PUzf4OILF", "subType": "YuYLKCGdDSwJ7AzG", "tags": ["EbjRaFudQT9GNAlo", "8KhD1oJKm6ND9e2V", "Vz1gXkkY4qieKeQa"], "type": "flPinltvol6OQWNU"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'VM7z0zex6VFnoPIv' \
    --contentId 'tZwPIBuQMWQoqhpN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'Zx6fy2Q7EhUqWEkX' \
    --contentId 'SZwpgR7vHkwd3les' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"OrcLJHg1Vru4znRg": {}, "okzawRtr51JhyfCZ": {}, "GVUX48Th6gQrhMuw": {}}, "name": "cdFsi1pYs17MqC2W", "shareCode": "ZIxTBFhPChMHpaQf", "subType": "v45JnMSuekNJjl33", "tags": ["cRo79GcBhCRd4xDB", "aMS3eAEJ051ZkdXf", "BaOfh4BYgZfgsbvM"], "type": "HIk7jlvirYTdGIWF"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'QldU0FWh2RfK7PPA' \
    --contentId 'MtCnTbma11u03Aa5' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "C6KbhYntKXIxw8xU", "fileLocation": "q03lX5QgeYSFvm3G"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'OsPdbhm7xLELs6sw' \
    --contentId 'XNdIn8VCrs7ofJR6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IDyeZnrguAOftXfo", "fileExtension": "AvxYUBoDbeyO8xtO"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '9cJO4Bf4cLYQ5Z7I' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "mV9kGOR3nKOAhwQr"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '34' \
    --name 'gYdJMI8drgH7eLk9' \
    --offset '93' \
    --sortBy 'RM5Cg8gFh6LUHube' \
    --subType 'Htr7H7mGPrO7khSH' \
    --tags '["qE0pe2T7RvySR4YO", "wgxpymkWeL8HQl8H", "sQa2IVDG6JxbtTPm"]' \
    --type 'vFPOQZGTMyfXagn5' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UU927w0XYqjt8t1Y", "yUg02LbfkR8Ibh4g", "yZn4gUGYFHC9wDSF"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["CXigJT0q5yJvVXIN", "hSoOFZawdgRQqS01", "27N7chc0rOd8m4hl"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'cuSxm8TndZx6cKAJ' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'y7bF8vru5vYKR5J7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'Kegdg289eriRouop' \
    --namespace $AB_NAMESPACE \
    --versionId 'oG6CM7y7NwN0uRsc' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'GcRp8tB8NN9ee5Uz' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Gyp2w0aCbsKKU5pm", "screenshotId": "r4F5ZRGMJtsnyylW"}, {"description": "OVGvLqC9jgC13kdH", "screenshotId": "KDWS6333CFJ034rQ"}, {"description": "f72JCqoLykEdwwr4", "screenshotId": "v3zIVMwmbmX7X9Na"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'YRwsENKfYNewRDHz' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "4anibfAGOG6CNuLK", "description": "4LASHpvKnnRPr97u", "fileExtension": "png"}, {"contentType": "jpV6t3dSu5P37TwB", "description": "AyOuMKaqYQq7JWIY", "fileExtension": "bmp"}, {"contentType": "YA9SveonV6oW77zw", "description": "pxRaZ7m5jxV3CzFH", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'owMJyI8Fne5pejAq' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'LgnhpVPEN9xEhP4n' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '3a8XgVxs7OIS6cz0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'FtqlBJmgWxjRhGAc' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '62' \
    --sortBy '9MyuDVO9NID9Qqz3' \
    --status 'utj5ZTgtSbkGRjWw' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'lgTfNqfNNzZ9lgyD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '6dUxUynFQ5qPM8L4' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "VqIHKZIYP8XgDu4T"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'WImhkOlwEVuAjuvT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'O1XuALVkJWbOICqt' \
    --userId 'OrSxT1m0Q8zQtboL' \
    --body '{"customAttributes": {"NLwdXDsRp5AEF4WW": {}, "wlIBLb14wCF3lWy3": {}, "aW52SxU3wdFX44GB": {}}, "name": "K0TvZ0ssbLUmIvbe", "shareCode": "Q76frWL2r0WjxsDm", "subType": "0hAZfiuWjHgPZbRJ", "tags": ["mOAWaOQI1H9mteFM", "ZDtiJDSwJQetkv4W", "zrHydSuh02zjkgvw"], "type": "FjnBrXrM6JZHxrYI"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'ju8qM4B8Tli5zntk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ECaj3eLv74lNkqMM' \
    --userId 'Yd5pdjhsgkQf4Vos' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'M9yRW8TIaHfwmKJC' \
    --contentId '22qBqRSJgDw3FCbU' \
    --namespace $AB_NAMESPACE \
    --userId 'D4bYoWueQZJIqwkv' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '5jjk3UpBO7hOXKP2' \
    --contentId 'jkNWq8SVIUUY9Rqu' \
    --namespace $AB_NAMESPACE \
    --userId 'SgzIfIswyX2sphQ3' \
    --body '{"customAttributes": {"uY1DM0KI1FADUNFL": {}, "WyXMSX6eOztVsCpD": {}, "jNqNv5CpkyeiornD": {}}, "name": "WBJbcy54Y327b2Qy", "shareCode": "52XbsH3sxKa6mbt1", "subType": "joQFifWR8f52IdsG", "tags": ["KXA20lbrob6ojlnw", "JBURxwoeXqgEgyob", "S9Z2EWR1nUZeAFke"], "type": "oNHlNa3kLN1741bF"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'IV49OuEILGIPqjoM' \
    --contentId '9GgJJ4YKbG0nwpv6' \
    --namespace $AB_NAMESPACE \
    --userId 'PDO58XdCtIf8kVLT' \
    --body '{"fileExtension": "YrL7WNXlisn90xAR", "fileLocation": "XFwAUnwS3zB3KbPl"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId '3gOaziAKmJzkm9qZ' \
    --contentId '2tMTxa5BSwJ0GpAU' \
    --namespace $AB_NAMESPACE \
    --userId 'i2bT6mDLwULajQlr' \
    --body '{"contentType": "v9De95fEXqxQpm97", "fileExtension": "UFhNEJEg4qEaUdCp"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'JTkJqFqskak9BshY' \
    --limit '75' \
    --offset '71' \
    --sortBy 'j0CBnumprAbIPJBq' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'Amu3wiiDVxsxd8YX' \
    --namespace $AB_NAMESPACE \
    --userId 'cC2AsQdPMmF3pIOZ' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'AGr03glyKmYdDjC8' \
    --namespace $AB_NAMESPACE \
    --userId '3xnDQ19UpHAV1eCF' \
    --limit '89' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '90H5K3Qni94h9oEz' \
    --limit '33' \
    --offset '24' \
    --sortBy 's0n8kljNLE88uW61' \
    --status 'MBlkHvLCQAjQZ98z' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'pIWZsa8szpGEUjc0' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'he11TKMGhjTj4DjK' \
    --offset '76' \
    --sortBy '29jCVt0LaeO5C0DM' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '52' \
    --name 'CcxNyBeWD6JleeXU' \
    --offset '30' \
    --sortBy 'nGpGFPkHiur3QVFP' \
    --subType 'BXTcnPqG1TDIhucL' \
    --tags '["qHHnupkkTENB4lqT", "RDMG1Ssr2r6fh298", "7MUJ0JAJ0OoEao7z"]' \
    --type 'rlfvJJ8LtyY8UPMP' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["nBdDKrs5F4Sd3pgE", "l3R7uKrIQB8rUmUx", "IVBsjfVOlltH5wMu"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["4e0FFNSv77mmvRJ4", "FJM3cYXe4K0oHtP7", "X9OvX9CUepV7Mqtx"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'lulL7fj8FBG9ztZz' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '85WH693g7UMMloQY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'wepSBOUPltlFVqrA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'btXjOtViukpKB2wU' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '93' \
    --sortBy '8jW8Skdmc0V0hb60' \
    --userId 'O6jGgcN1a9a9pWSm' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'okAnBNkl6d1Iaxmw' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '28' \
    --sortBy 'O2jqMNJym01iexNh' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'ClEGEv9dNU7GvH9o' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'PdKER9NyW7ANs4wO' \
    --namespace $AB_NAMESPACE \
    --userId 'wT47VMayefPHNE08' \
    --body '{"contentType": "M7ROUy2Cgq9J4xbd", "customAttributes": {"7jdJ7k34ZQrOZD7h": {}, "Vdi2Y3mHe3Vh4atq": {}, "DN8LtNMfIQxyKuAw": {}}, "fileExtension": "QirkRXwENItfPHHI", "name": "qL94zLegSqP24iK6", "subType": "zPQdicbB7pOSiZ6z", "tags": ["UWo9THQUoiPEYGOL", "f3G5nzGLt1icc9FC", "QtFbHCdUD5jkqTeD"], "type": "QhZJEFnEU1KN6pOY"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'XEDF4WLjQBaDLQrr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ne319HHt0QAjMk0h' \
    --userId 'pIuSWGJCB4bLfGAE' \
    --body '{"customAttributes": {"pHgNrUeGbteg0D3M": {}, "c5vvoQhEO4KGhxF2": {}, "bwSjYMMp3OKdBkKm": {}}, "name": "g9MXs9tlaxAkUuf1", "subType": "eqVeTIeDhXKWtHav", "tags": ["rVfn1k7pAW58jX4D", "iv5qpufDmPyygrO3", "W6DbmXwU9sSjfjgn"], "type": "Spl6EeRDnXtOfE12"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '0hkQi6mLrP0pxZT2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vFVPAtGp2QaUAyro' \
    --userId 'xZum5RreAPeplCuS' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'iC0ubLZ1B6EqP9q8' \
    --contentId '3deubRt8pMLWKw0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'qPzLJFpF8tfCLFaJ' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'uVeFj4AIA64l5noH' \
    --contentId 'EWtMZzPyrULiBuzW' \
    --namespace $AB_NAMESPACE \
    --userId 'QPCqU1U49TSLojxg' \
    --body '{"customAttributes": {"RFqISmB1BczwYCcP": {}, "vXqKXHpFk3505l9P": {}, "gK46UKAUqJpFjg1F": {}}, "name": "4NQvhKJPiTMUiD4O", "subType": "xDbCVZMZPr5A0jHo", "tags": ["dc9g9bS2cBgVeKvx", "UNurYqvL471nRFXE", "qybaROmnJ82lwB5M"], "type": "UdLGUbwHFYJFru4R"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'ayp3BFM0KRbnxtD1' \
    --contentId '1vaJi7aRics94Rm4' \
    --namespace $AB_NAMESPACE \
    --userId 'mIn5WxlZ3NJprY6V' \
    --body '{"fileExtension": "fYbaS8WB18zv9nEW", "fileLocation": "DZc3C05jFgajxpTT"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'jy9hWQAgaXzHXqDX' \
    --contentId 'bMDXx9KalJ5GrOi4' \
    --namespace $AB_NAMESPACE \
    --userId 'HW3xdotTHZVYIEsg' \
    --body '{"shareCode": "7y4Ca0lZBNG1K775"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId '3XCy78nPYuticOho' \
    --contentId 'AEkUCiFFf285yarO' \
    --namespace $AB_NAMESPACE \
    --userId 'OSqTBeBPz2jo5vo1' \
    --body '{"contentType": "759GFmzttESiVyKm", "fileExtension": "gX5tsFdY9vMQnPMz"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mtr5RIGgQw7GpCGj' \
    --limit '7' \
    --offset '86' \
    --sortBy 'oKq65Gz2L4ymDi8h' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'd8pXhYOGO09YLMEY' \
    --namespace $AB_NAMESPACE \
    --userId 'nt1BOm8obKF4T0ae' \
    --body '{"screenshots": [{"description": "6HNA5Fzo50QmZqlb", "screenshotId": "9c4SumvhPCO9VL6A"}, {"description": "Ljt48S32b3tC5mbx", "screenshotId": "Vis9xdjxR06qTgGq"}, {"description": "6OUZrg8W413Kbyvi", "screenshotId": "7qUR7MmAnmM294o0"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'oT3wvVr5YVRjJhAV' \
    --namespace $AB_NAMESPACE \
    --userId 'kMxoBIaXti49MWdz' \
    --body '{"screenshots": [{"contentType": "qu05Jn3qfS69AEq2", "description": "rlBkvpoO8Zcs3FpF", "fileExtension": "jfif"}, {"contentType": "kEOUpY6JXJQZFK7N", "description": "gRDIm8kOM2yhLuZp", "fileExtension": "jfif"}, {"contentType": "84RPdmokpKZIGxOx", "description": "7v2b7nxNpPZpI1jU", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'ubZjcdmLlzSWupTY' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'WV6pj1afrjun5lUr' \
    --userId 'JeQ9E3fqFllMWfpb' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'GOa5QZt1Wfcgi3Db' \
    --namespace $AB_NAMESPACE \
    --userId 'TPAbnKWRqhjorfz7' \
    --limit '100' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'hfX7FTjnHWNtiDAf' \
    --limit '78' \
    --offset '30' \
    --sortBy 'NP4mgCPbogJQdjrf' \
    --status 'HswPu2CFWVSW7wM1' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 't96FRw2iBOlFZ8Af' \
    --namespace $AB_NAMESPACE \
    --userId 'palXAoJq1hlCrlfp' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'zsVhIiFzvnKxWOYJ' \
    --namespace $AB_NAMESPACE \
    --userId 'V5AMnkEXVosYOTZv' \
    --body '{"fileExtension": "QECZZ7oaPDzPSxs8", "fileLocation": "wOM37XgaP0YgHrJP"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'Pm04arCn1doFJdUF' \
    --namespace $AB_NAMESPACE \
    --userId 'afSIpHVuUvPkMccf' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE