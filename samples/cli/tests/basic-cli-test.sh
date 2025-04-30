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
    --body '{"displayName": "1AkIqcvWuY0XZZWw", "namespace": "mGtHCgoKm2Qb6cjJ"}' \
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
    --body '{"displayName": "BunQZyOcWJrwDDqq"}' \
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
    --body '{"key": "n8GLsn6h8U3N2Bd3", "value": "D462hFeBbpJjY8D3"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'AC7ShaZYR4iJH8Wz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey '8mH1OVzKcXSVJs4m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'fVbP1tUY9yEFBOCh' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "71pUxTodh50O342t"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'MzTxOJRYfPzxCHn3' \
    --namespace $AB_NAMESPACE \
    --fileType 'PkXQLMVySAHvzpaj' \
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
    --groupCode 'gsk8SJSaiU7fFvlh' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "d8i2iV48FycuYUJl", "name": "qJCWFkKwu8CkbFJT"}, {"code": "w0KniZD3cXMiYwBa", "name": "1yCFhaH33RPUluqK"}, {"code": "wprFjbotw4z1apFt", "name": "KjnVAXNwh5a4ZspK"}], "countryGroupCode": "1jMynDiR7KrUM1vH", "countryGroupName": "zh59NM8MhLcwL4Di"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'f1jjBmSVvVh6eOmr' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Sy8qQh3wdBt9EQFr", "name": "KaI3ZJud2318y1Cg"}, {"code": "Ucak8A4gWWfkYtki", "name": "tVDlZpeIF3kjBzZn"}, {"code": "Wu67dzP5keG7PvCF", "name": "CTaoasCkMKDUvj08"}], "countryGroupName": "XA5UdD3OstRVWGfK"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'ZL6WV6w6IzfVs6QA' \
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
    --publicId 'cbzJBiEyI8PuWo5d' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["L2zjJ3Ng5Uzj0ENB", "h89srUIYWJO56vZ7", "U8AWKAQ3kcHs9ZWB"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'KH9Flm8hMyVdqCB2' \
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
    --userId 'J59B0HP60nsRRHzU' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'OLDtnPM5hNLFKZya' \
    --category 'FMu2nQeS1QX4s3CZ' \
    --fileType 'fReryZC4tOHIJHrg' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Q08JCeXCsCODb1wP' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '23MVPxcWBxogr0iD' \
    --body '{"avatarLargeUrl": "iZDG6lLJDoXVGnUZ", "avatarSmallUrl": "Z6PY4cKCgYuWH1RS", "avatarUrl": "uYVXdycyBTLUCi6t", "customAttributes": {"ROzRq8He9xyvBXg3": {}, "r4anxRNnvB6qaGTZ": {}, "DboE6y9h35jCBJ9C": {}}, "dateOfBirth": "1987-03-29", "firstName": "abtMe1nWox5BlQTH", "language": "cM-TGvp", "lastName": "jJJ3fPA5bHhoydax", "privateCustomAttributes": {"45kCgBE2XCj8jwe4": {}, "p3yCqON9AtfDhhWu": {}, "HmJ4xxRMuYocmq3B": {}}, "status": "ACTIVE", "timeZone": "scyE83alqfCoFTeQ", "zipCode": "sOhigsEV7YRqLrbg"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'atkrVixoDFbKlPec' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'UwSthwDVnbFgPgA2' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'WzCnnHjw6L4Gxh8T' \
    --body '{"zoTE45KdtoH9ITtv": {}, "IL8UwxRlB5amtCT1": {}, "JLuqXKznOIz2iFME": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'CtzCEv2KJgy0BJiJ' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '3HTrxJx6fYQ0zw0h' \
    --body '{"IhiXaNTsUFInSjuA": {}, "Ivv5ZOGF9KFNfevH": {}, "a3kEIOOsiGSQ6f5z": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'C3myjMUGsBJHCL1Q' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
samples/cli/sample-apps Basic getNamespace1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'vDhqdbeiufpVbGo4' \
    --namespace $AB_NAMESPACE \
    --fileType 'dzQBDKwPT4j8vP3Q' \
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
    --userIds 'jcDfmMQjniXau5ge' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["uadPopao6P9ps7Ak", "U1AOwWmw3eCvUzAo", "1005s0nnlE2hFGIn"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'vqEwGtxYAz7HMY62' \
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
    --body '{"avatarLargeUrl": "t6uoo9FPko4AvdJi", "avatarSmallUrl": "J0EivSu3CFSULsNT", "avatarUrl": "mrHJxjomydGq6iEd", "customAttributes": {"LfsSg5d4Y9bSsUK2": {}, "6FE3b7K13TaFT6ux": {}, "XKKKnHcaXPWs52CI": {}}, "dateOfBirth": "1983-10-11", "firstName": "HQQINYo41gN1lXKT", "language": "nDJ-dJjq", "lastName": "RmqSQGMpW5ftx8i6", "privateCustomAttributes": {"W5Aix0ClsVHZrGx7": {}, "RLttSx5IZeOtH3Bf": {}, "m7U49C5iMuTeUteM": {}}, "timeZone": "hHUA9FJuet5rQrjx", "zipCode": "zgqMCfHbnxnZaMBT"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "VLtfqLlgXuhQaNHj", "avatarSmallUrl": "y9Cs0W6MLgUvcJ5H", "avatarUrl": "2RKhIpAnUVAxZdlw", "customAttributes": {"g9y2JnUYLitk3WhD": {}, "HV4VKODFxcQlUZqa": {}, "ldy0mx6Y2GbdddBw": {}}, "dateOfBirth": "1992-01-28", "firstName": "JjETawFMBgqmAwTd", "language": "eiQe-HGoF", "lastName": "to4r6oqpJnxP3tnO", "privateCustomAttributes": {"Qte391BQsvLsBHs1": {}, "CyWkHHk8snZN0fSP": {}, "kvgZeJGBTz3UodYA": {}}, "timeZone": "2phU95R0ZbBurxgA"}' \
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
    --body '{"3QcrKh7MF8f7ZQPn": {}, "tX5Wbj2isHNZ6plT": {}, "hkQiFM10eSZoVUtf": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "Haep8VSmWJZTuZOW"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'OtastcdkSeQbwFzn' \
    --category 'N6wu1HT2E5axCsy2' \
    --fileType 'FRZNm8Iy141VV68T' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '31QO6Cr1nu0VirnU' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'XPzpOd9YbVC7UueJ' \
    --body '{"avatarLargeUrl": "boLErdgm5zV65uxC", "avatarSmallUrl": "vb57HPVmSISqgLaX", "avatarUrl": "fCvWH8e8fhwz5akS", "customAttributes": {"wYLXvNEOs36FyWqo": {}, "LiUP3O8bY2GfMNXo": {}, "51MIoWAkouYvdP8I": {}}, "dateOfBirth": "1975-02-04", "firstName": "Z21qZrRlOmDeirgX", "language": "wSi-fA", "lastName": "8IkkNl3VpL8RF0u8", "privateCustomAttributes": {"tZDTCeE25iFBiruu": {}, "PqabCCYSECZxyxTR": {}, "UrMJIUp34DfTZiXw": {}}, "timeZone": "CvoS4OCGQFHaoLkW", "zipCode": "PoFzP76xHQn43VWp"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'mJlOzWH2b18w0uYI' \
    --body '{"avatarLargeUrl": "1CgOFA4wCbbHLL33", "avatarSmallUrl": "INnlCoofIYhY44Xi", "avatarUrl": "SQgjCZ8eFDZTdPuR", "customAttributes": {"ONbMdBf7oPVp1J5L": {}, "RLvi1ojl5ufa2VwI": {}, "nojak2EY0cFq8yMR": {}}, "dateOfBirth": "1974-12-11", "firstName": "70PQCrHEviKaTqCU", "language": "JO", "lastName": "rWmqLcaWV9OyMh4O", "timeZone": "30d74y10ySZWPh96"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kQE8pYmo7vDZbLA5' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'jJKgGNa8z4s5kooV' \
    --body '{"5PBY2K3gbp5kIQZu": {}, "NgZyf7elLLiFPRfi": {}, "8a58nEnWAxAcAwwX": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'bZ5zwqs7G5NAOGB1' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'u5SKDGls2FiEEl9g' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE