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
    --body '{"displayName": "Eshh4MqDwmqdKjBv", "namespace": "pO8mlJnAWuRikQFk"}' \
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

#- 6 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "ovy5BFOXJYdAnV4A"}' \
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
    --body '{"key": "oZCHw8kbqQMqDk6m", "value": "L7eDsN8PCEqCpfTp"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'n4XvcqG0kG1in0cz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'v7Gz8pQu9nqrc3Bf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'riMJVFigY3Ch0NjN' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "ZlibxCE9xu7c3hvf"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    --refreshOnCacheMiss 'true' \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'tVKRYN08Ld5OYg9h' \
    --namespace $AB_NAMESPACE \
    --fileType 'Adr3fxdqeH6tGDiI' \
    > test.out 2>&1
eval_tap $? 13 'GeneratedUploadUrl' test.out

#- 14 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 14 'GetGameNamespaces' test.out

#- 15 GetCountries
eval_tap 0 15 'GetCountries # SKIP deprecated' test.out

#- 16 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'V7YpSYIGZ6WgERbm' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Yc3PHlJVVmUH6hAm", "name": "d2sfFF7eSdezRODi"}, {"code": "9LE6KPsVtlI8I0fQ", "name": "XNJVB3hZsj0D6ZU1"}, {"code": "tOg6iazLiF8H5iF6", "name": "VClacMMw5vmpk6aq"}], "countryGroupCode": "3kYYbEL4FASDyGWl", "countryGroupName": "kID65CeLh4BC9QFS"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'IX0RZL5LtrXuK6tb' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "YbUkCX3eJAax0rb3", "name": "DziDUI22bSgCxpvp"}, {"code": "YfIDzKFHNdejTOD1", "name": "KTL9nZIq6ui3mSEN"}, {"code": "lY7TKB6ID8su0OSm", "name": "DBSFdtO6fnptfyJu"}], "countryGroupName": "3iyYXFjMb8xwJi0C"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'QLAo9hH0ZWKqLC36' \
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
    --publicId 'AHHvS0e2D0mYuEOC' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["limR1YJ9bKJBt5Dx", "2Jfc9vvdQe5aO8JB", "WCUJVpQFd2eFivTa"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'DTDPP3AwCAAhoRbN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '69tALWEPaRcyduqL' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'MqWto8KzlAiRC0s8' \
    --category 'm3zBn3Ykd7TE6AbI' \
    --fileType '6dgzKIp1UPYIKIVN' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vVWhwEFBBIErR1SZ' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '4eNsRZRnWFXirkDE' \
    --body '{"avatarLargeUrl": "2hMqRI3VEgbgkQo7", "avatarSmallUrl": "KEC9iq1d4xNPW1aL", "avatarUrl": "W0tkTgLAs53kpaNR", "customAttributes": {"q97InZUuy83gzE98": {}, "ngnAbFMk8oTepfmn": {}, "6FXdBKmVfd19mV1Z": {}}, "dateOfBirth": "1975-02-08", "firstName": "eWZqOMSp9TiteYdm", "language": "DC_mjFK_263", "lastName": "Hx7PqBb3oI6bsK0r", "privateCustomAttributes": {"ol2jYxND7sbNgUJ3": {}, "rTQAwBuFUuadx1Ie": {}, "Ud8ZUP96t4Ie4rJ1": {}}, "status": "ACTIVE", "timeZone": "x8UUlO577ap8VODs", "zipCode": "C0NpBWXJ3HTSZ7VF"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'HxAJ9N1bYvwpS6gw' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MHvmly5iN35Z70QW' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'vnITPG1KI2wh24Ex' \
    --body '{"XyB3dB6jFFXJlHeS": {}, "sMZ9jyJ7duvsg7b4": {}, "oOOxK6lOkpWiWcTp": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ULyiBZ0y4As7y4in' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'CYQhR5uaQ8Xf7N6w' \
    --body '{"ac1zckiGZOiyhEy4": {}, "rJ5W8oHjVGEnmNlj": {}, "9HFblsYcJbUQTwp6": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Jt8wTEQaoRdcjknb' \
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
    --folder '2WH6lwWHX6FTkslZ' \
    --namespace $AB_NAMESPACE \
    --fileType 'F4DaMZ7y7j8G0AhD' \
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
    --userIds 'N1ItLfdCT7PeiYmm' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jYFVihXOhixw7oEN", "k4M4twyJpEaAdyXd", "T0Tx744tjRwsEauQ"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'CSNzrdAn6ud1tlED' \
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
    --body '{"avatarLargeUrl": "TLNZWsZnGqXOY3FQ", "avatarSmallUrl": "VZI0FC5YPgfcoDdp", "avatarUrl": "ttG1Naka4wiOBe7A", "customAttributes": {"EJdmCs3WgVrwoniv": {}, "xbA25Y1czMzuFagL": {}, "3q1UJ1MOMvQh2pJS": {}}, "dateOfBirth": "1992-05-27", "firstName": "e84TmL6oxucV76Dv", "language": "ijl_wZiG", "lastName": "88lq4Ij3bO2AW1zv", "privateCustomAttributes": {"S1i1dCtufAr07sw6": {}, "GES2ATis6e6jxl97": {}, "HhJFK6uiZH9KQzxd": {}}, "timeZone": "rFx3Ic8XHzbZnlnY", "zipCode": "57ytjr4E4qFeQjYc"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "OEmpGlbjFU7WCEvB", "avatarSmallUrl": "wxY4ol4tTIqZE1Kt", "avatarUrl": "wv7nfY13md0SNbap", "customAttributes": {"Rzu9aNujoUMSjGWK": {}, "nfbWoM5ZvHR4IUvC": {}, "3JvKmCwJkonQAaPB": {}}, "dateOfBirth": "1995-03-25", "firstName": "7pDMfgEw67cBNdrn", "language": "DPH", "lastName": "RJfUYdUMQfrZcxMk", "privateCustomAttributes": {"4pXVQOUL1Z34pnDU": {}, "iWLkGGOGEI96DKHD": {}, "F8vM5qeNXXj0RkKH": {}}, "timeZone": "Vmvf1TL6ExUKEGkk"}' \
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
    --body '{"1bUEBR87Mv9kjNl8": {}, "bh2PIzIcEoJCi0He": {}, "rRzST6KwEo8u29AD": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "Fu4MGMWJiGZ65EoY"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'rqCRLEo26asutduj' \
    --category 'nOPgahRdE1Nfhhnl' \
    --fileType 'UrWBMC4B6X1kWYgI' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'idnw3DNvlUGhbryo' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'izK11M52dUR8U3IK' \
    --body '{"avatarLargeUrl": "MwjIvOVB0qJJIG4Y", "avatarSmallUrl": "9t9QISTRLxXzH0JI", "avatarUrl": "TzPUAorHNEC6K8Ot", "customAttributes": {"wrUwO32U9tLyC9pW": {}, "bqKTvPUK8FIDS9Od": {}, "WeSe5h7Jm1JTxioG": {}}, "dateOfBirth": "1999-09-29", "firstName": "jPk3XV6e88ZxeA0Q", "language": "ymY_Dgdt-Rr", "lastName": "scqr9O1e5uWEtq6p", "privateCustomAttributes": {"cUJUXtfzwTWMyJ5J": {}, "LTC4GuQJfQanf6r1": {}, "g5eWHJPFPknk1Pmi": {}}, "timeZone": "g8sKYgNmndd1aUcJ", "zipCode": "eOm6RhspSbSvhAVy"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ImJ7C9KjLH1Kxtef' \
    --body '{"avatarLargeUrl": "ssV1ojMFmvcNmYah", "avatarSmallUrl": "ojxnuIADfjqCVgYv", "avatarUrl": "faFGDAxdb7jYM7ev", "customAttributes": {"AhEhH52ILv8L2R9x": {}, "LHuUO5mDPQhuVnB6": {}, "ZQ2XmGXsuYjYDPls": {}}, "dateOfBirth": "1977-02-21", "firstName": "xYLKUWaNELbEZaa7", "language": "mS-hdAD_543", "lastName": "oDQ8dzRi0mJHGWE4", "timeZone": "Lr5kT3zw1EfARB4d"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ntt64NjVauFnhop8' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'T3VPc4fxSNQ0k4wP' \
    --body '{"ptRG2L5GUjxkhcMo": {}, "NmJcwG3gfZ6mXe77": {}, "URvDxlMbsxItBblF": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId '8c2JXIeHoPdiLUJ9' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'yzJF4ZV3IgE8viyC' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE