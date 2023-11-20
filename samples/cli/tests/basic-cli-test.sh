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
echo "1..68"

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

#- 2 GetNamespaces
samples/cli/sample-apps Basic getNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "r2Ew7o7MOAbo9JzV", "namespace": "kPyMlvQSA24JvnEw"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 4 'GetNamespace' test.out

#- 5 DeleteNamespace
samples/cli/sample-apps Basic deleteNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'DeleteNamespace' test.out

#- 6 GetActions
samples/cli/sample-apps Basic getActions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetActions' test.out

#- 7 BanUsers
samples/cli/sample-apps Basic banUsers \
    --namespace $AB_NAMESPACE \
    --body '{"actionId": 55, "comment": "KJEc4cxdsXTO6yb0", "userIds": ["i52WVco9gI21I5DD", "lv30IzvyNQ5G3zDi", "Csa5B7IeJohkq923"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["Zhei9ic2VLLi68x5", "hGMFvrC3cMEG5kxt", "ovEW50FJiUzngxZl"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "XXhtwW4Cc4l1K2jJ", "description": "mD7yrHx7cEDK4lRp", "gameSessionId": "OQnZcGCwUG6wmrgw", "subcategory": "ppH5iRQDgVl8OqPZ", "userId": "gAbcaEN8Q54NDUdF"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'fsFMpuwfWmnAHHR2' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "a4be2n9zw0WWU3ky", "userIds": ["FE6mG2wCL3UQRLL9", "t2gqxyZT8QpW3sfK", "QFkqQFenKlidtvnI"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "IISKLbzkZMwHIpvN"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "2q1Ps6bm1aTYatmK", "value": "KdbV3UmFTfpiOVEP"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'rmliZXgbWssKNayq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'gPv9xqoFLGCeX4V6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'JekPDOWrp6tYHnZn' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "5xu64lwfCoQBcSKR"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateConfig1' test.out

#- 17 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetConfig' test.out

#- 18 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'DeleteConfig' test.out

#- 19 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "wAH2LmX7G7XofQqb"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'p0rvotUUXx4mRCmu' \
    --namespace $AB_NAMESPACE \
    --fileType 'BKSdRmnsRLXip3EH' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
eval_tap 0 22 'GetCountries # SKIP deprecated' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '33XMkczBoWoNaFVA' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "vuAdhxeCKJ5HlJvP", "name": "T2ShfntJTk9hAw3M"}, {"code": "WfLK66YjGFVkWKAz", "name": "iYu1NUveO9QTNfjZ"}, {"code": "LW7jDWFBxgXakb3l", "name": "zA2maUF6XMsAFvaE"}], "countryGroupCode": "2SUUeGgFkJgpo30r", "countryGroupName": "t2MfjC7m9BKveaNx"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'j4HPPzM9YTB2ussL' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "cSXA4fV36ZlCXzrD", "name": "sk5hZP1JfBaUOdzC"}, {"code": "m0F4nu3IV4pk39LF", "name": "aLLEcarz44jFPWH1"}, {"code": "BH2doBwhaMdyjDh6", "name": "OTRvdUfB2dfPPSzz"}], "countryGroupName": "32cH3YnzGcpIDvJf"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'zFqLauGlfQhugLnd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteCountryGroup' test.out

#- 27 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetLanguages' test.out

#- 28 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetTimeZones' test.out

#- 29 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'kTr0GIULuXWc1hcw' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RSqxlcydRBMbR0xk", "E5wrP00slVytiZkV", "Z3Ejg6HgkRcUQLJ0"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'BVDRmuW07nMiuSWQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'A0O2z5JuFYXxGtVJ' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '44RimvZSzwGSdecw' \
    --category 'akGhr7CcSLxiwVcw' \
    --fileType 'ARbz2m0ocY6YfwG8' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'So1QmXTf29rqbDEt' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'a7COiPmEIgnuPoGy' \
    --body '{"avatarLargeUrl": "kI75j9s5PPxQe3Tw", "avatarSmallUrl": "q43k9Ps50WAhB2cd", "avatarUrl": "3ZBYEtTlibFlSDUW", "customAttributes": {"Vq9GBDV5uzExdR9V": {}, "NXSPJipkXCXagFtf": {}, "u4DyWIyH17R3rOjK": {}}, "dateOfBirth": "1990-06-13", "firstName": "nwJWz9FWO8lU0TMu", "language": "wJC-iXbD", "lastName": "N4He9qaK7ro9E79Q", "privateCustomAttributes": {"ArwuAo32pXCWkyzg": {}, "0Zn4yz5S9QOZyhFY": {}, "jjrv8eCKA37MDKVy": {}}, "status": "ACTIVE", "timeZone": "C8RyLyhPIZ0Xw86s", "zipCode": "wALzeL1BniB3yHnJ"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'EWDxIGzNa7Uy3QSr' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'WCLfqKADiveZx8MF' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'FuLKbgnZbTU6B5W6' \
    --body '{"dS7ODYaogT2DRsxg": {}, "IqsCGTQKFfXuJTdh": {}, "r5hmynBCwjHhg4Ao": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '4023nQFxexdbdQqP' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'GGNVZzXKj2FJ5fBR' \
    --body '{"aviI7DGgTSFrWXvh": {}, "DtbMY236krdewtwe": {}, "NKJUdY3LYMlaSUM3": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'oQee2EYhMbl8xBH7' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder '8j6tBcC9NH5L0P62' \
    --namespace $AB_NAMESPACE \
    --fileType 'CWHjRVzBeX5KLqMD' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
eval_tap 0 47 'PublicGetCountries # SKIP deprecated' test.out

#- 48 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'PublicGetLanguages' test.out

#- 49 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'PublicGetTimeZones' test.out

#- 50 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'MUQkW4Vnyt1wb5nC' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'C4tzKjEFZX7aQG2w' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetUserProfileInfoByPublicId' test.out

#- 52 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetNamespacePublisher' test.out

#- 53 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetMyProfileInfo' test.out

#- 54 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "NzuH3Ha5myryfyRv", "avatarSmallUrl": "eDGEa7dh77yBaiOM", "avatarUrl": "ghAOuTlVws1Jg0OS", "customAttributes": {"1JzTe58htXT5kOgi": {}, "Rt3Jfq8ydQzqhZOn": {}, "WH0b5Wv0RJc6Lq35": {}}, "dateOfBirth": "1981-05-15", "firstName": "PoQMMJ1nj6PmOVsJ", "language": "Fg_236", "lastName": "qZCyfaeQjFafoMNz", "privateCustomAttributes": {"WNEQH1hYfdbPbjUn": {}, "B5RXtXoDt7QEVrVL": {}, "nWpZ8HrqGJgHc7Lc": {}}, "timeZone": "n207DNXD64965ekl", "zipCode": "XZCJwDzhjIHQzWaZ"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "NoTiq9F58hqdRAV4", "avatarSmallUrl": "f3hiWKh6FcHel5ag", "avatarUrl": "rCHg7iYb38iXDXws", "customAttributes": {"hC9IyDK4y1RygnSJ": {}, "wzbLxYGf7ZiS0OF4": {}, "QDnKzWuSXEd1shFR": {}}, "dateOfBirth": "1975-04-08", "firstName": "zH4ATFIczUL6kTRt", "language": "bEw-RUsM-304", "lastName": "AjY6fn97Q1K8aOhd", "privateCustomAttributes": {"gXgFqVH7c8pLFg6k": {}, "qdDyRZrYS5m11rB7": {}, "DZYOo9GLYz8MBqh5": {}}, "timeZone": "Nu7Gi2ls0SNc5c0Z"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateMyProfile' test.out

#- 56 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetMyPrivateCustomAttributesInfo' test.out

#- 57 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"rkhsT3hgvg3lwGxh": {}, "xKHVOPUe9qCLiXoZ": {}, "1N3MjTxDKTZTzPdl": {}}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 58 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetMyZipCode' test.out

#- 59 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "51oK1ijSESg3wFip"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'DcUytJMkypoeWabT' \
    --body '{"category": "nmuCDFlO6WzupnZg", "description": "TcdAh0SYCq7mV8bB", "gameSessionId": "m3BAZhrgtMmdQChb", "subcategory": "LVao0WZHjtNCo15X", "userId": "jR0BzSF6WCoP6nNm"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'F7KN5XyGHqlMuLL9' \
    --category 'fhVxt9j40m6XD17r' \
    --fileType '3eKleQazblXJqke7' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'qBkfmQL3TqWBEKxA' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'M2bdGRew7lGlPO06' \
    --body '{"avatarLargeUrl": "wjKCIC8QHHAgdiZH", "avatarSmallUrl": "2hXLq93FrxiiWPAS", "avatarUrl": "KgjuOQZp5DE7K7FK", "customAttributes": {"1IxAwXuRMKwOo7XN": {}, "ASvpHFr96hdORdzF": {}, "NxMGzZF4LJZ8pmqZ": {}}, "dateOfBirth": "1988-10-21", "firstName": "mKrFAe5S54wN5OIq", "language": "Qy-hpeh", "lastName": "11lcDWgYpPjJb3ib", "privateCustomAttributes": {"an6CELkWks3lSZ6k": {}, "W8oKuGDaSYK1P0Sc": {}, "h6lTYXDRpYZdqBnM": {}}, "timeZone": "Uk67jwOdgPR2Cq38", "zipCode": "Cyqrkjy66l57ZnUV"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '1WHub7hGchkrCkFV' \
    --body '{"avatarLargeUrl": "qoImf77nF9bEJqNO", "avatarSmallUrl": "HgQI8l9EzKHVXuOT", "avatarUrl": "05QsMpxLPX1nfOAm", "customAttributes": {"EE8SJAaI8KHeHT4h": {}, "dFFT9YFf7zpqGloA": {}, "Ot8TmpMqJI22cTYJ": {}}, "dateOfBirth": "1996-11-21", "firstName": "Lq73YmbGXRS2IZsM", "language": "cSE_QSja-gw", "lastName": "kOvyzthFNfNEm6SE", "timeZone": "tZ0gioGiE7euUUdv"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sdcsHArt3faxUcIL' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'ubsdc7O972rd4tXo' \
    --body '{"a7sxvZ0BS8NgBj7X": {}, "JQ8qkKxpqijK1D9O": {}, "Jsb1h57uypbveNgD": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ic8sthniirwvZE7I' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '5dXAIy9qExMMRqQf' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE