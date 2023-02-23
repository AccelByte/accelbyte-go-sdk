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
echo "1..63"

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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "phMEen0p", "namespace": "WLoXNxfR"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
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
    --body '{"actionId": 56, "comment": "pqeUhRiB", "userIds": ["GaThhCAr", "x3VSnAZQ", "GnOx4CSx"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["8ar5dk8M", "MUq6rsEl", "ghvWywS1"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "3wD3Va8m", "description": "ikWqmZWm", "gameSessionId": "PmQvJjTW", "subcategory": "1TmkfEwM", "userId": "mRMzk66Q"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'QfLNX3I3' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "ZJw2VZNo", "userIds": ["EUegMCG8", "dqGmChRp", "7afAUjoJ"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "SBfaFSkm"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetConfig' test.out

#- 14 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteConfig' test.out

#- 15 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "iZzARTnz"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'RWaICZcR' \
    --namespace $AB_NAMESPACE \
    --fileType 'AUgATnMv' \
    > test.out 2>&1
eval_tap $? 16 'GeneratedUploadUrl' test.out

#- 17 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 17 'GetGameNamespaces' test.out

#- 18 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 'VqoDlBOA' \
    > test.out 2>&1
eval_tap $? 18 'GetCountries' test.out

#- 19 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '05o6a7Ro' \
    > test.out 2>&1
eval_tap $? 19 'GetCountryGroups' test.out

#- 20 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "9iSewz8Y", "name": "fZNROa7L"}, {"code": "rW8TYNqR", "name": "PY3CEWKM"}, {"code": "mVojQETE", "name": "Lr7DYTQh"}], "countryGroupCode": "tQDPPUJ1", "countryGroupName": "dSoHWRGA"}' \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '1m4AppBp' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "CkvLCnKP", "name": "Iw8XNHsg"}, {"code": "CLn8t7Zf", "name": "Db2vRYMy"}, {"code": "J6NhY3vU", "name": "UP5y1xpW"}], "countryGroupName": "6t3pE2if"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'K4BXpzce' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteCountryGroup' test.out

#- 23 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetLanguages' test.out

#- 24 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetTimeZones' test.out

#- 25 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'EiTKiurz' \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dPOxp6mp", "nQXMsh3H", "iRhiOT0R"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProfilePublicInfoByIds' test.out

#- 27 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetNamespacePublisher' test.out

#- 28 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 28 'ChangeNamespaceStatus' test.out

#- 29 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '6IZgGnnt' \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '5zmFatll' \
    --category '8hXhrY7X' \
    --fileType 'ACGaSc9E' \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sGoF2Y7F' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ifvBskOL' \
    --body '{"avatarLargeUrl": "4GNi7JlZ", "avatarSmallUrl": "4pnaCG6Y", "avatarUrl": "sQ37zHXg", "customAttributes": {"rlWmoOir": {}, "0bFoqy70": {}, "8evQaM7f": {}}, "dateOfBirth": "1998-08-27", "firstName": "iCI27XZ0", "language": "ixY-LDbf-829", "lastName": "teqiFpSl", "status": "INACTIVE", "timeZone": "dXJzBf0l", "zipCode": "Ih0yLKlN"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '0UqdywMB' \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vohDvWuy' \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'OPHuhtAf' \
    --body '{"0O7K7YUj": {}, "mvo57qRk": {}, "GDgfHh74": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vODtMdyj' \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'FjiBOLxl' \
    --body '{"CXtege30": {}, "rTroW4lf": {}, "5NOz4viw": {}}' \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'y8cWM6EU' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateUserProfileStatus' test.out

#- 39 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 39 'PublicGetTime' test.out

#- 40 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetNamespaces' test.out

#- 41 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'rXTQnYyE' \
    --namespace $AB_NAMESPACE \
    --fileType 'jmYDsjUJ' \
    > test.out 2>&1
eval_tap $? 41 'PublicGeneratedUploadUrl' test.out

#- 42 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'O7yuPkAr' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCountries' test.out

#- 43 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetLanguages' test.out

#- 44 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTimeZones' test.out

#- 45 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'Hxkp7b4r' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'r6Nkrb7C' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserProfileInfoByPublicId' test.out

#- 47 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespacePublisher' test.out

#- 48 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetMyProfileInfo' test.out

#- 49 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "BQ9MvMQa", "avatarSmallUrl": "6Mfesfsn", "avatarUrl": "BCTk2G59", "customAttributes": {"xK9Ko337": {}, "79TUkjBn": {}, "BCWkQdBA": {}}, "dateOfBirth": "1993-03-04", "firstName": "6J3N8TGE", "language": "hKKf-FfYR", "lastName": "xzKPurKa", "privateCustomAttributes": {"5BmlNmGk": {}, "2HF6PJpo": {}, "U3NTxLCK": {}}, "timeZone": "f7fH6sD5", "zipCode": "Enhmqly0"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "3v7ZfWk1", "avatarSmallUrl": "zWcTfLvV", "avatarUrl": "MM0jDwKM", "customAttributes": {"KHfpN8L0": {}, "H88fyFM5": {}, "yULZj98Z": {}}, "dateOfBirth": "1995-04-02", "firstName": "UYGkqcLN", "language": "fbR-vFBk_755", "lastName": "fRR0eYyU", "privateCustomAttributes": {"HDEEPOHO": {}, "IaKJfEb9": {}, "vPy2huh9": {}}, "timeZone": "Vqmapt0l"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateMyProfile' test.out

#- 51 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetMyPrivateCustomAttributesInfo' test.out

#- 52 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"jQbvRT8v": {}, "giDLsjDN": {}, "WVvwkBoY": {}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 53 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetMyZipCode' test.out

#- 54 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "qg9dSruw"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'RNQjUyXX' \
    --body '{"category": "zjvgUWHq", "description": "swh6bDnZ", "gameSessionId": "Ip1Ncu2O", "subcategory": "I3Jxgfs9", "userId": "UDBfF3Y1"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'TJFAAbtA' \
    --category 'pEu082MX' \
    --fileType 'I3VMcDEV' \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Ze9E42KQ' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'EnU5QhLw' \
    --body '{"avatarLargeUrl": "eydE0qBn", "avatarSmallUrl": "xqzbMtzF", "avatarUrl": "HHoLFtR4", "customAttributes": {"g46CqCAo": {}, "ChHhL92s": {}, "OuVDTyxV": {}}, "dateOfBirth": "1991-01-14", "firstName": "cPaesYvZ", "language": "jDkg_yv", "lastName": "sGrV2592", "timeZone": "h6irmGcT", "zipCode": "ADJuBmqL"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'iCeMF3zq' \
    --body '{"avatarLargeUrl": "qAaQuR2D", "avatarSmallUrl": "eIi2hmv4", "avatarUrl": "CAFlnWcy", "customAttributes": {"tqPdULLV": {}, "bMFmVCLK": {}, "a0toxGRu": {}}, "dateOfBirth": "1975-06-20", "firstName": "DZupRh0V", "language": "YV_NmGz_nh", "lastName": "2mFcFywT", "timeZone": "bUuM0qLb"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'IKaTuKQg' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'SjvCLYp5' \
    --body '{"tmnTTGux": {}, "7seinG0M": {}, "ztMwwtOU": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'rA53tcjx' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'QdHVPiIb' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE