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
echo "1..70"

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
    --body '{"displayName": "OzKLuQQgvRjHjwFG", "namespace": "m176uuhU0l7BzaOs"}' \
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
    --body '{"actionId": 11, "comment": "vAZTtNEAF7r2A3QX", "userIds": ["4VkXFRjR9df2aleB", "WjltU7wIzqIkih5N", "XSlX8qjublPbEoau"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["YV9GgqUUe4vftWpH", "VOtPFLbOchIUvCwp", "tNtjbdhu8kwjUCNZ"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "vVHxjsPFgDe7BFvf", "description": "wJoRxg4T38QEn9Oz", "gameSessionId": "QucUaBStR7wppcdJ", "subcategory": "mC7ZwiOHorz0sIrP", "userId": "5ii1dMBZiOFzydMs"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '6qSi63BJOuOBgV1p' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "ERdSXbSzK22cf8oU", "userIds": ["REtzXH4QAwa5G3eo", "WcGbJVS4SaKX1dIh", "FwdzzDskHIYBbCJO"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "sVChLwj5vJj5Cjzt"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 13 'GetChildNamespaces' test.out

#- 14 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "oQmYJgtmmOuTL5aF", "value": "t57URfTDDMvh6ndB"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'BP2EDv7g0fVYtxKS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'KWQej1kbf7lx1EJc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'oP3XkUkHdRCcdNef' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "YXSRgJ3HJNVrA1im"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateConfig1' test.out

#- 18 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetNamespaceContext' test.out

#- 19 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetConfig' test.out

#- 20 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteConfig' test.out

#- 21 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "AmUfPAIKWONFBQ5N"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'idk49urVQryduLze' \
    --namespace $AB_NAMESPACE \
    --fileType '8amkbnO41Qut7GGA' \
    > test.out 2>&1
eval_tap $? 22 'GeneratedUploadUrl' test.out

#- 23 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 23 'GetGameNamespaces' test.out

#- 24 GetCountries
eval_tap 0 24 'GetCountries # SKIP deprecated' test.out

#- 25 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'cXgAsWbdY1sGPihB' \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "xf7VqnjS4SIIl4Qk", "name": "GCf6PwII1CzX5XXm"}, {"code": "Wy6JEOxM1Xs1ngjC", "name": "7XMSZjzo6f5nMq4d"}, {"code": "lupOGBsWXHCMxvm4", "name": "ACIh0n810RHAeQ13"}], "countryGroupCode": "UaQsDIhnmMwfVAgH", "countryGroupName": "C7J9gZloGBgqnTLV"}' \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'oImIh7jqKuFuS4wD' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "18oSqLr0uvR1pujn", "name": "2cAqHjPwoAbPwtNO"}, {"code": "a6lCLidlWutpUe2B", "name": "DjIYuxbbnnF3TCzy"}, {"code": "3nKPUqXwoYReBLLt", "name": "ptUwoQ5Q2srivsx1"}], "countryGroupName": "DNWrIenTW9MpgAMm"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'NZj6kgeQk39dgJY7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteCountryGroup' test.out

#- 29 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetLanguages' test.out

#- 30 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetTimeZones' test.out

#- 31 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'S64bHSb2ThIBucHp' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["pdNO9QOCL2lUYueO", "5b1L7r8Dw6hYxeSj", "ocNI9xyBYXITEtan"]}' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'JCC19YN2qLC12SyU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetPublisherConfig' test.out

#- 35 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 35 'ChangeNamespaceStatus' test.out

#- 36 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'dDltS20KndECSsOG' \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'S4cj8ipvC0FcXD3G' \
    --category 'Y5F45zisx7nmyxXK' \
    --fileType 'nLZW1K9tvMarpMzX' \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'U62OdEmwiy1zYSFd' \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '9sRHAtSe1i8Q3g4F' \
    --body '{"avatarLargeUrl": "fWWq2qMNhgG3jVjn", "avatarSmallUrl": "TbBm9396hTz5A2EH", "avatarUrl": "sxS6VBKbrgG2kSpe", "customAttributes": {"o9PI5FC9Pap1svJu": {}, "3uRakWzb3cMvz916": {}, "6xom1QPgLJVlo4Ma": {}}, "dateOfBirth": "1998-03-23", "firstName": "6nqOpJ4vI5OxAlKh", "language": "AwL", "lastName": "wuzJ22wggHO5kvEt", "privateCustomAttributes": {"Azv7pNd55XbQJtdw": {}, "kpmRbJseQDEkDQpU": {}, "VdzA58K2RGkZFrdZ": {}}, "status": "ACTIVE", "timeZone": "ylFXHAV7zBVOJL7M", "zipCode": "szqQb32W8HNNp53f"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'tE6UU9BzUb8bvBmc' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'I74lDC3quQMGQ24D' \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'nozaXRUGWGiPDSGt' \
    --body '{"eVsl2NtkDd8nc0q7": {}, "TOc6krBG1IDf7Ppe": {}, "X5BH1LRSxyzHZYmg": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'dDtYE51GsUihIyVF' \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'LmOkpVZgvnvoYdIB' \
    --body '{"A4Zb3J5oJfDcewts": {}, "xecdonXTmg9lyXMt": {}, "UqehU14thurtE7fT": {}}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'b6kLesS8EMXyur1q' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateUserProfileStatus' test.out

#- 46 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 46 'PublicGetTime' test.out

#- 47 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespaces' test.out

#- 48 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'cFv3RGmhlHPkAgMa' \
    --namespace $AB_NAMESPACE \
    --fileType 'rQKleXQa1t63VSlI' \
    > test.out 2>&1
eval_tap $? 48 'PublicGeneratedUploadUrl' test.out

#- 49 PublicGetCountries
eval_tap 0 49 'PublicGetCountries # SKIP deprecated' test.out

#- 50 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'PublicGetLanguages' test.out

#- 51 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'PublicGetTimeZones' test.out

#- 52 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'BtmUHMlgk6TfgGKn' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'SzQ1NhpLLnlJZUM5' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetUserProfileInfoByPublicId' test.out

#- 54 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicGetNamespacePublisher' test.out

#- 55 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetMyProfileInfo' test.out

#- 56 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "mjygJpZuV6KNIgi3", "avatarSmallUrl": "yXWNFzbvdSYzXosn", "avatarUrl": "oA8fxEpg7zalEwVi", "customAttributes": {"OwAbMCmoKHj9t8jM": {}, "Gz2DWVpsWs1XyP0g": {}, "xtlil10fPIYfFhez": {}}, "dateOfBirth": "1986-08-24", "firstName": "QPukcMv5uK4yFqr2", "language": "Bl-sxWV", "lastName": "zzcsstevGVQ0ojQt", "privateCustomAttributes": {"1t3s8fl6nEIKUFwQ": {}, "mNxtdTB56HWfv3Tf": {}, "MmccYIQo0Hx7qjUe": {}}, "timeZone": "IuPVy27QHJK0meah", "zipCode": "1Zjy4qqNjnA8rgcZ"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "QXJgc5twTm7K75qs", "avatarSmallUrl": "4ZMGfIgWFgIryD3S", "avatarUrl": "wbO0YryTtGjisqMh", "customAttributes": {"P8C38y7gdri1wXIr": {}, "nOVWJqYPPw7kdhq8": {}, "IqBPdOhbuvEpth8z": {}}, "dateOfBirth": "1984-02-02", "firstName": "mgnnJ37rTxdXtYwe", "language": "UO-Afcy", "lastName": "v3d6nAhGHZ3LFVnP", "privateCustomAttributes": {"ifMvjsPdsfm62cZn": {}, "fQH86ztsf246by4J": {}, "ZXqVwuch70qPf2ji": {}}, "timeZone": "pY2e9LHFjy91UJyy"}' \
    > test.out 2>&1
eval_tap $? 57 'CreateMyProfile' test.out

#- 58 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetMyPrivateCustomAttributesInfo' test.out

#- 59 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"yxPiEj5JbW8bIYfb": {}, "iMlwIMTdS2tv1gV7": {}, "101BVFPv5to9wSpk": {}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 60 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetMyZipCode' test.out

#- 61 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "8sstrC5GJBAa45QT"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'xcHpSs2XeVtbdLx7' \
    --body '{"category": "2zS8yAU6dfrM0rxt", "description": "zJmlwW9VfSKsGF8A", "gameSessionId": "GdwotCluijPvofFP", "subcategory": "RqeZ2TdDh883ugyc", "userId": "Ym2DKmx49hHMJb8p"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'XHCBQ6y1jeJPx39q' \
    --category 's9128yiHxQ38ySWM' \
    --fileType 'wD9ETjrm4YhP0bzR' \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sRctkcpqUBPp4aU6' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'aZOXlOzjDvBnJIXT' \
    --body '{"avatarLargeUrl": "Zm49FlyZz6REyxVj", "avatarSmallUrl": "9W5549yG9U1tzDNK", "avatarUrl": "oj2ipbeRffKHwNRL", "customAttributes": {"gKcLtYHJPHjOJkBI": {}, "kh7rzHAbQibb5yVm": {}, "l0dKPNa7C86mLJaf": {}}, "dateOfBirth": "1981-10-21", "firstName": "1Lh2Dkf5LQzzOGo4", "language": "da", "lastName": "t3dAMENQjJuH86FM", "privateCustomAttributes": {"smrGKljnfAfcTfrG": {}, "nmSKaJGAfMfKJmZw": {}, "ONXk9KpXVUQwsmGZ": {}}, "timeZone": "GRoBo3YO8z4xociO", "zipCode": "SJQPCwhhoWXcGQks"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'FoesDCvA5grztoiH' \
    --body '{"avatarLargeUrl": "DyXgZJponhFwn9v4", "avatarSmallUrl": "qw3BhpXzfGf6GNk2", "avatarUrl": "uCvQpGQ232jeggMD", "customAttributes": {"MZUmVftjRrfqFI5F": {}, "cjCRLyyQQIxgoGU6": {}, "Mi0mxaSfETgVwl5X": {}}, "dateOfBirth": "1974-07-27", "firstName": "T27zJmpOi63GrAi6", "language": "qBQS_pRiX", "lastName": "Lqp4IP2DxwAV9ECg", "timeZone": "Bhz0yralR6dzyVxy"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'T449tullkNUOQFrA' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '3ZA0doNuyKACmNYs' \
    --body '{"aY1NB77WJCbJwt7K": {}, "38VLLte6aHmSGi6b": {}, "cdJT2tDSsz398s8h": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'wV6JNqft8WI1d4be' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '0VFdXaQJKnzlxwae' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE