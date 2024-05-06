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
echo "1..61"

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
    --body '{"displayName": "QlUwDNs5Au5FqNt0", "namespace": "fniqHtP0rAPqpmZn"}' \
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
    --body '{"displayName": "Q59ucsRXMVIAyHlJ"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "dus4W6Qp08LyMJF0", "value": "jQDwXT0bTF62py0t"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'bF2ohtvI0savsoXv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'ZYUKD8vcMM9fDSHE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'UfJRylG7X7cnfwzw' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "LDfibXHknKShRhPR"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'jrhVFVIfcgDS83Fi' \
    --namespace $AB_NAMESPACE \
    --fileType 'Fq97wFurRs0B9BfU' \
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
    --groupCode 'OdFZSN0Acs78osTZ' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "kw59SF4XuYb74s98", "name": "jKQVta3638Zn3718"}, {"code": "JpYd305kRow9avTw", "name": "3t2mxV1QHTdvooGl"}, {"code": "NCHYHeAc7njqzPTv", "name": "T20wbLYudCbz5UxA"}], "countryGroupCode": "NSiAVftM0pQxv0y3", "countryGroupName": "9NhD2oIi7BuS73D0"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'Gv5loWkMSG9gXA2H' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3Y7s1ajprzisqDId", "name": "pltvjauGQStDwppo"}, {"code": "cLT7BxXydubfQ05W", "name": "YIKYEQA8OAwBumzl"}, {"code": "pCaYQ6cFZHoSlM20", "name": "G7FvYUUTt0c7dh8B"}], "countryGroupName": "1AM7YDIikx0AF366"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'MLzJrEAivTWRzWHD' \
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
    --publicId 'WOCAv1DICFzbMAdH' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XsCtr31zOdLL1mYq", "1HzYESJ7pZrSOZkF", "paaxr0jhvgi7k4Rz"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'idCTYm5qQfYQiOuY' \
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
    --userId 'B0MyOd6kmDIlKc8g' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'yaQGlkcGhpFqJVb7' \
    --category 'L7Eiw71Ih1BdGSOn' \
    --fileType 'H9YTtyuISEqV6TQ7' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'sGBzlzsGqUTsrRSZ' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'kb0w7jjkyo6YsVWe' \
    --body '{"avatarLargeUrl": "pkJC5csWdwO9E3mJ", "avatarSmallUrl": "mwM6BTYZyi3I6LXj", "avatarUrl": "JzINhPwamvdVnerB", "customAttributes": {"dxjEUJRPatEH8UZI": {}, "BCouvZn52eR1FgtM": {}, "j7iZzyM3670sDPnT": {}}, "dateOfBirth": "1992-10-06", "firstName": "YMNSyIlEbrO4x2vz", "language": "KckK_kocP_tX", "lastName": "3zzgKzEMVFdohEJE", "privateCustomAttributes": {"r2JrsyBGPsjsznC6": {}, "tJc9hHScTrk3VmI7": {}, "Z5xesFlAPgf1VJ8a": {}}, "status": "ACTIVE", "timeZone": "KbovzsE91Bzdf3ZC", "zipCode": "s6E4PC8jr5VfWQCu"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'H5NIhfG5K4kTX0Iw' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'FTLA2vKSuQbZ99LN' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'SVv5GKVihrksZn1I' \
    --body '{"opSITtmHJEalOj3q": {}, "qCo6AgRVEiKyw0Lc": {}, "TzzY6OMefMNmrv2q": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'vxtSv1pB4rvbut5Y' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Mn6NlADtH7C6GuFa' \
    --body '{"2EeOD9nJjkYMUhbd": {}, "sktfmmmWO92M54a1": {}, "5gTCjD16OZGx6aNa": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rGp7zFYcASi8uG42' \
    --body '{"status": "INACTIVE"}' \
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
    --folder 'Yklefyv5MBANfFLG' \
    --namespace $AB_NAMESPACE \
    --fileType '1e8hK15UWTNy9riI' \
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
    --userIds 'oWCRuQTQnIf7xNxc' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '6PRzBXp2cCUmPcTU' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "a9Q2LWYEpA9oee1r", "avatarSmallUrl": "CeQR5whjc693YT8x", "avatarUrl": "mjf0UHFUg4xoFVXl", "customAttributes": {"Ygo0enCfQGTX9rUi": {}, "zEk9NIhYtST9l7Kl": {}, "3SA6PjzSY2yIxdRi": {}}, "dateOfBirth": "1992-07-29", "firstName": "bR9SPUQ8fjgSIAZM", "language": "fK", "lastName": "7fivqFQHTsGgOZpx", "privateCustomAttributes": {"TXxxGdkC4XwMBoU3": {}, "CRtQou02LTJGA6Ep": {}, "bC4KXrnis04aBmVd": {}}, "timeZone": "Kpn57AiVDUgQL51d", "zipCode": "Fdx0av9wUinGz94W"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "7uAuUASSg9jAR9Xh", "avatarSmallUrl": "4msjkeIrgpXapN84", "avatarUrl": "qelJZpvowKtQ6pKb", "customAttributes": {"O68o4QijtGz7NNoE": {}, "Ccu7cmpZKjAonAMb": {}, "WZLPzTSO9484uga0": {}}, "dateOfBirth": "1977-02-21", "firstName": "V1UiytnakZx7cwj6", "language": "ADJ_EnLK", "lastName": "142e3CAqyJ90p2zz", "privateCustomAttributes": {"z7grIt8HGKw6PUvd": {}, "tTw1PgXmdI5Zqvqc": {}, "ilt63ZAuzLRf6ZP6": {}}, "timeZone": "FdPVU2oT8Lnk1ZgD"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetMyPrivateCustomAttributesInfo' test.out

#- 51 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"dwK8tMn2HlbwoUGp": {}, "a1aQzX9Be87hYHkC": {}, "RTy59m5WchM36guM": {}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 52 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetMyZipCode' test.out

#- 53 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "yOhlw2MlyYZKfEx6"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'qHH4RJGSVwO4ocLp' \
    --category 'bUF4BMqAcBJt6r5L' \
    --fileType 'qWjmqoowsWIXWzM9' \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratedUserUploadContentUrl' test.out

#- 55 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'i7fBI35AxSOqXfxa' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetUserProfileInfo' test.out

#- 56 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'BwPGcj7zyAO51ftt' \
    --body '{"avatarLargeUrl": "fPDIfcIqredB9Dqu", "avatarSmallUrl": "5Cjo7ucfqBL5YCQK", "avatarUrl": "Sq86Vscyw53pvlhl", "customAttributes": {"RxCWi72yX4CUEQpY": {}, "GLfb6jWy4l0JkIpz": {}, "UD5k9GnwYKbw9EHr": {}}, "dateOfBirth": "1974-05-29", "firstName": "9R216dRDZh61g0oT", "language": "qvX-Pwjh", "lastName": "9tMRrbCe26oTorwH", "privateCustomAttributes": {"4mzUriAnEuSp98yq": {}, "UEABjEKKNj6ht8gy": {}, "uUFpQkDWrAmdwV5j": {}}, "timeZone": "L4UoGLbthpyNMxVr", "zipCode": "fvQUtLZOfiG0vrxM"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateUserProfile' test.out

#- 57 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '8BuNL0T6iiVxbTx5' \
    --body '{"avatarLargeUrl": "0MafGgdGuvkobcI0", "avatarSmallUrl": "6Y5geurSKZtxbtk3", "avatarUrl": "0SegCUTUf8EW4mlv", "customAttributes": {"wPGAvreg9HbsoZOH": {}, "YS08WV6er0d7I88V": {}, "HBJXfOUiggb0gsbH": {}}, "dateOfBirth": "1988-03-17", "firstName": "65r0b16vlRqTevOW", "language": "NVt_YqUK_Ia", "lastName": "KSpPao5snogHr3K0", "timeZone": "IE4vy9okrjxArYKx"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicCreateUserProfile' test.out

#- 58 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'xC7TXuitqXxDOsXX' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetCustomAttributesInfo' test.out

#- 59 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'cBu1YTqpjH8uU8XQ' \
    --body '{"hwBWOTIgCQMJOrc3": {}, "BnWJ6jj8wrKfLpG4": {}, "x5ZXQc1FCHjilRQy": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateCustomAttributesPartially' test.out

#- 60 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'cwCRf8loUz4B8Nib' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetUserProfilePublicInfo' test.out

#- 61 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '07gK1J9RBCBZrZKa' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE