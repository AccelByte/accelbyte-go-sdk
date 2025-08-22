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
echo "1..62"

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
    --body '{"displayName": "YGsUgiycZOiu3U5K", "namespace": "SSiEEFOHoQrjSlFE"}' \
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

#- 6 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "S5AloYUhWRyZCjDE"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "IBGrlgEsErWjaa7D", "value": "gKAEMxUWEixvF56L"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'ZSuGHpaXvdsf3ALO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'nwgHOJCowjgRPxeg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey '1BRnyjkCPT8ljYss' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "cEiT0ISA4JkG2PjD"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    --refreshOnCacheMiss 'false' \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'EGnQf2D4rI5zQd3U' \
    --namespace $AB_NAMESPACE \
    --fileType '17wXxjlTdtM6uKj7' \
    > test.out 2>&1
eval_tap $? 13 'GeneratedUploadUrl' test.out

#- 14 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 14 'GetGameNamespaces' test.out

#- 15 GetCountries
eval_tap 0 15 'GetCountries # SKIP deprecated' test.out

#- 16 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'j9z83lyqw62w2D9U' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "FbhgAY8uDdSe4UbL", "name": "LJAaRS6baKsApaQ9"}, {"code": "Q7AxDkSbFPkbpUwi", "name": "WavXtd6Cyif9biNP"}, {"code": "U3BmkSZAlfC3DSe2", "name": "xs48CmaIE30AIAH4"}], "countryGroupCode": "RAJBpzufwhRBPaPN", "countryGroupName": "1zcVLjlTj7n0I1Y2"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'ianFDZSUF6fi1Vxy' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "UvU9RaRTbCOrAI9l", "name": "RoQfhubL5ia4VlFH"}, {"code": "OGxxfpNH5XSRQByW", "name": "rCBOfAH8B12BsKO5"}, {"code": "lz1MXLIV8aHAuPCH", "name": "kEuGhsc1AToLIhgY"}], "countryGroupName": "3jAaVtqD7BMl59Eg"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'XvoTqkQC56BmMdGa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteCountryGroup' test.out

#- 20 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetLanguages' test.out

#- 21 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetTimeZones' test.out

#- 22 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'wWISzcdlRbNiHJFZ' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4uEwahX9GVzvImg5", "MsTKQM0vLbCjfGTT", "cSoVBZKDl5PP9NGw"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'MSE85wwOjXKFRsxG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'oJLatNrVrBdKfS6X' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'OygoOX2w4RUBK324' \
    --category 'UZNwDPEAfF1FJgvS' \
    --fileType 'oyWheo1bEzbLm98X' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'aZitHKuf2esq74d5' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'SEqKaFQkfjdmnnkd' \
    --body '{"avatarLargeUrl": "IORBjFGNDFAY4PNY", "avatarSmallUrl": "bPv4CKEniKppkxnB", "avatarUrl": "HYzipffzTCRYKAHE", "customAttributes": {"lr6OuhduCoTakJsO": {}, "7FbCBajF8nXYgf9O": {}, "JMCRdEmBrI9Ui1TV": {}}, "dateOfBirth": "1977-11-04", "firstName": "QS77G5s9qS7iF9IK", "language": "pT-MvZm", "lastName": "GIdWeDMs6dGUKXZn", "privateCustomAttributes": {"4F7YD3JPCHao6h4y": {}, "vwfJdK4hicmmb8qZ": {}, "d19uQKAYPZnMuu1Q": {}}, "status": "ACTIVE", "timeZone": "4PnsltYrsS7sALWJ", "zipCode": "pkSRyrle24XGDaWA"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '3Qfog8MixA3Xs8xZ' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'eXZ7TEKvzgwC8U7u' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'YbcqDtAsebvV9ho6' \
    --body '{"peGa15N0cTToSy6w": {}, "QXkcK5ojUzvQy1mL": {}, "D1L6BAFp8VITvpp3": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hVNpIrKr0oC6v93B' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '3DiqdnMSWRA4xiDY' \
    --body '{"0CkDEI71Q6VU8rWj": {}, "02RkjPgnIhgiKrOq": {}, "I4kjXhHQgAKoGayP": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'U3g183XKWaVhNRz2' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'IYaW2Hj7wHEUUFZ0' \
    --namespace $AB_NAMESPACE \
    --fileType 'qeZgiXyX74QQAWhQ' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
eval_tap 0 41 'PublicGetCountries # SKIP deprecated' test.out

#- 42 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'aACYHJhoaZ2yHa65' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e0ASyKBmDQYdoYPj", "H2p8tPKG8Q3cCTvL", "87d9qM7zCYhT3kfh"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'GntWCbq11x6SExiw' \
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
    --body '{"avatarLargeUrl": "M81cTIdisFo9XY9w", "avatarSmallUrl": "L7NQ9Oi1LIonu7uI", "avatarUrl": "w7jjJSmPj0CstXnA", "customAttributes": {"3h914Odqutx0rbK2": {}, "hQalaufxWtvQkH8I": {}, "JgtFIJc1SMMj8ZSh": {}}, "dateOfBirth": "1984-03-08", "firstName": "6JwLtnMFS2rYAHeL", "language": "MCG_EM", "lastName": "ngv7PMYNdi4FtvOr", "privateCustomAttributes": {"7JnFkiClJSbxiKP9": {}, "Ty5HegezBkHXJfwI": {}, "tXCtGLYxMnBSXcrK": {}}, "timeZone": "qZi4PUecFU1Bqa44", "zipCode": "4vv4ihQ017CPVrTF"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "TaVWa2KVf9iH19PW", "avatarSmallUrl": "KFK3cXczgUY5OuZZ", "avatarUrl": "d4fq8MLdTjaCBanQ", "customAttributes": {"OlFyu5VRoRf2XPQJ": {}, "7Em2kopaf4Mvkd0B": {}, "y1CnPDkhr7nxuKlt": {}}, "dateOfBirth": "1988-10-26", "firstName": "UfKzk5EX4xWAOQU5", "language": "ScUF-KEIj-NT", "lastName": "9vnm1eGlbL7DyKjj", "privateCustomAttributes": {"K2Pj7FMq9BWbR6M5": {}, "a7unEddW2PraObEL": {}, "NmZdNmXuthDqcNtv": {}}, "timeZone": "sqZsLt9eKigtyeq4"}' \
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
    --body '{"1yiuj8pGhceTVWMK": {}, "iXSbchC8NCC25FJH": {}, "vGC1EGrmFxr4lee9": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "0mMB7ldzZi24aQma"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'O74PqIB4V3EFhfPp' \
    --category '9pM54pX6quwaLgEh' \
    --fileType '3K5bBVhtYtna8DOu' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'nOD7kJZDmacwI7rT' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Nkw0elUnszC30uI0' \
    --body '{"avatarLargeUrl": "19e3N3U87HhZLzA2", "avatarSmallUrl": "P1L429wf82R84B2Q", "avatarUrl": "z1np3UWmmuTwdlWT", "customAttributes": {"re43wxQKagjh8oIs": {}, "dqVdkNwVVl2K5AY8": {}, "9zrFdfDsi6wEpkVB": {}}, "dateOfBirth": "1976-05-14", "firstName": "6xKhCyqyJ1rCNuk3", "language": "nbTS-za", "lastName": "EnDhtLEk4sqTL5t8", "privateCustomAttributes": {"Lo7OjzFZPHDZJn0p": {}, "xn9il9tjfBGNxxAK": {}, "kBVU0832XX6o89Dk": {}}, "timeZone": "Mjngk82zjn5fWFO2", "zipCode": "613He7t14fWt9R6H"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'dbGvZ0RU44bVuCTX' \
    --body '{"avatarLargeUrl": "HbRZsVgWDUOvk0Mh", "avatarSmallUrl": "4dMTHLO9DvWBbvV2", "avatarUrl": "MquA1S87PscwK0Rm", "customAttributes": {"ZhtwIeNug72kMtdL": {}, "cNdwmaAG9oMXWKxG": {}, "lrSvrXI5HMFdVDBy": {}}, "dateOfBirth": "1978-04-06", "firstName": "EQRy8cFVOErP9Pzz", "language": "PzUP", "lastName": "FrefQ1VO7sRUbezQ", "timeZone": "HzvsXSX8eN2o8lAZ"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'TZ703gGnQgHGCSi0' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '0x0bFAkUq5BWSVje' \
    --body '{"jQv3X5DWKRhf4ETY": {}, "2jBbE6dvDv807z2j": {}, "LpoKnPIRxSCZ7EWZ": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'FmIubn2aBPxOFJ0Q' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'VKV31UT1tpKDOx6k' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE