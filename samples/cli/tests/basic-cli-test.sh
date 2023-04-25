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
    --body '{"displayName": "ZKmXM9PsTIr3zwVV", "namespace": "Pm17PveS8cy8Ma7G"}' \
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
    --body '{"actionId": 43, "comment": "x0tBqkaCSt6CeuEj", "userIds": ["6ai2iyi0mNYbRzpg", "POZUcDfEImY33MJI", "ZT57sjhqa4EDlP1t"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["hozr1UbW5sTjcqGy", "eyuHUzS5LsELmdGK", "8nrjVn3yDDPXIU9K"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "2WdE6ORWBd4Hcd6T", "description": "TYlUBN1xjuxih7zc", "gameSessionId": "MdErS8WcUy2gEQ34", "subcategory": "lbevdrgKncYP3HmZ", "userId": "xGPwEiwv6r2UXc1d"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'sxnV2OZKTgS9fX0q' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "0zYXGIpUhFTcysOg", "userIds": ["xvnDQPjtz7rN6jgN", "5XyQGKLOf8eyMjkZ", "Nw8IBbwo0G9dMP4F"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "byq0uRU4ohxuUAlT"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "loWPNqk16Wu0sXDC", "value": "TBwZ5HvZEPx6X2ny"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'PgdSrDJk07eDuseA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey '2Za4MMTHMOrUJ49A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'VzmMpxBoMpQrFtgE' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "1gr9Qbd1AFuO9CE6"}' \
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
    --body '{"apiKey": "jpoCNY5Z3gWFaMBC"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'wxV8WPWL699ta1AH' \
    --namespace $AB_NAMESPACE \
    --fileType 'cEejQNNz5tZLgfO5' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang '1pjmWIIPcpqVHUIG' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'bHvOa8YJt9HYqLFU' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "miGrqI8UlH6oaSFV", "name": "tTYRLQsNae4b2l0R"}, {"code": "B9bqizzZouef24xX", "name": "HCk5tZtIThz3qV3I"}, {"code": "nJgif6a1FzOQQlY5", "name": "OWWtmlkJhFjK7607"}], "countryGroupCode": "7NqSxvyYXFfJsa3u", "countryGroupName": "aJEjrToRYMFgNa8C"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 't3di5QmV991BwtgG' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "sBuT74KlnUgymrl9", "name": "CVenz7riygMv6rxM"}, {"code": "9yfRZC2A0XxfHI7s", "name": "qItnJsSXPM3A6Yy9"}, {"code": "BbptLNXyznAiDXqD", "name": "khGaUZtQYSGOxFBD"}], "countryGroupName": "FcwUNDOjxy347qtS"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '7dnsZ4VXMrqwIkoS' \
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
    --publicId 'ffM8nrhWE85aWheo' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GmZAuGH8wZ0epLuY", "UGeSBgmxOaz8PC1z", "pozfHE8j3RGRR6aU"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'FP8nYZW5tGEMkJY8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ngE8XH3QK4UK9nff' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '6nSWpzhlC1WOVpoR' \
    --category 'xiF2R0sPAgwKo2jX' \
    --fileType 'BqVf8PQbA826lX9p' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '63azMZAqkA1xbllE' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'QFxzt8gXBqCUidV2' \
    --body '{"avatarLargeUrl": "u1yPjm5YQLbBAthz", "avatarSmallUrl": "IAsEEWc3Ls4TeE8h", "avatarUrl": "r649MrfVV0xGbacC", "customAttributes": {"UyQ7stJsJIed8dG5": {}, "iJNXq2i97fraOHcm": {}, "6oZo9P66KhOUJssM": {}}, "dateOfBirth": "1984-11-06", "firstName": "uWfJi7rXjdvaEBAQ", "language": "Qc-300", "lastName": "HbAwpEDtwQMrKaOK", "privateCustomAttributes": {"RiSwZtlE8WgSDwhL": {}, "nYGLUYi7SkHSyHKI": {}, "P2cXHnqgTn01fZXS": {}}, "status": "ACTIVE", "timeZone": "1FV4odLgonFdxg9C", "zipCode": "5GQW86CMKgtlQNJ4"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '2yp0Sa1MhuFajCT4' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Jy3jredkMAFEVPXt' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '0m2KxgwNZOZpDj0l' \
    --body '{"nFzcgkBoTnsYws6a": {}, "xYKozt6ZiKiS3Bxb": {}, "pYjY1FFaemDeq2EV": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '9ZAjEU1X7eqdP5rR' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'u8X4v9lhscJVlBrS' \
    --body '{"og723BiS1QaFJzds": {}, "T6wDVc8wTGd9rsAE": {}, "Is5aGtIWsFANj0w7": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Tkpdc1Q83rSrU9wC' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'kk3lPcq06t9n5Ylj' \
    --namespace $AB_NAMESPACE \
    --fileType 'xvbteY1HrzV0vmqW' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'nIRxgXzlWLVnOJjR' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetCountries' test.out

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
    --userIds 'NcSWxLtocYiIHYMg' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'VQ35jKzNZKZx0zil' \
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
    --body '{"avatarLargeUrl": "4kb3tR4rl4KJF3A8", "avatarSmallUrl": "I9dsmq434ABjYedY", "avatarUrl": "5B9Xl1MkYDFqg23W", "customAttributes": {"9TbgCP4qXQipqYPP": {}, "o1ycrrFS8f0jKY2J": {}, "dw8fhO5jw1w1a1uZ": {}}, "dateOfBirth": "1973-09-10", "firstName": "FvXWHfPqdX6joVeH", "language": "cp", "lastName": "LMMk1q2LjArqd1VD", "privateCustomAttributes": {"X8NZrkilGIz2K8jc": {}, "QfllmFmMo5CpIwtq": {}, "fl8eDe38W0ncEZMt": {}}, "timeZone": "9qXoeJhCXVSndCEi", "zipCode": "Nwmx0Dk8JEw50KoU"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "S5FSrmSizmFUv8Dp", "avatarSmallUrl": "BvQqhigrHMRsR3cL", "avatarUrl": "Jo49qzf3pAC62jAd", "customAttributes": {"k7ZWavIHW6dxioPf": {}, "3z4IENb9r52SZqE7": {}, "EoFLDcV1tl51HIMg": {}}, "dateOfBirth": "1993-07-05", "firstName": "dhbE0vEsj2RkXnJf", "language": "CJa", "lastName": "Fvo3QI5UvVuOZayo", "privateCustomAttributes": {"omKcBdyQX722N99T": {}, "lFn7oduVfaSSw0Jj": {}, "E71DyXPIVediPvI5": {}}, "timeZone": "NRP5OKnz0V0Lg5GM"}' \
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
    --body '{"dToFkoYJlTbS3N2Y": {}, "gHkE2Y7dgji6H7ub": {}, "OTkc6QAVcN1m8Aw3": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "XYaNDM30nanusx22"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'MEeatfXOQ7U3gNs2' \
    --body '{"category": "z9Fwd7uPq6ORCuGw", "description": "8UyR50YCdf0JtQjI", "gameSessionId": "PHPngtvzdGllLjG3", "subcategory": "0uPnojm2AMRR6C0v", "userId": "Ir5vGSXNdxWKwwou"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'TURhZYqUFQYLGCVM' \
    --category 'heFY26cmj5BQeZbW' \
    --fileType '4oQ4C01qu6vlvmZw' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Uj7nhmlRlSacD6E8' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '6a316LbtiWcBM86H' \
    --body '{"avatarLargeUrl": "Zg6ZjHD1n2gzXAxm", "avatarSmallUrl": "ru8n6gTFOIRlLYbk", "avatarUrl": "lDvuq8qZrp6rZgUq", "customAttributes": {"UXKtDcHhvSDazWbF": {}, "o1SWKf5SRqEwxo7p": {}, "TLs11V5ZHN7mOjsX": {}}, "dateOfBirth": "1998-07-11", "firstName": "iIIUaPTatLw3zeoa", "language": "ta", "lastName": "66oj83ekAWSKmHUQ", "privateCustomAttributes": {"aCfHQ2QJ6YbTquDk": {}, "6jPljfDDlEQ7RUBR": {}, "YI9sOIMQtIXmHqXe": {}}, "timeZone": "mxi8RcgkbjzI1Hej", "zipCode": "pcRdb8e9jYQIqCmN"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'jTU6YyCAPDx5qxrc' \
    --body '{"avatarLargeUrl": "uDCwKBDh85b4JGRZ", "avatarSmallUrl": "EfmAQbQuYjbY0RG1", "avatarUrl": "elpWK38OXFc6bWI1", "customAttributes": {"kGrEzj2Zn2hYLkfI": {}, "C6RfLZuPhIHtiyiD": {}, "QoxN745t1lJqxTyF": {}}, "dateOfBirth": "1980-07-17", "firstName": "R4vbZGZtgTa8raGt", "language": "Zp-161", "lastName": "qhq3kUNU4Pk8idqB", "timeZone": "pQfzGPrkDqQEyoqX"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'CVTrBKOuzHlM4imn' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '3DgrVJ1M0596UHew' \
    --body '{"T5yYqUWrJTW7jtWZ": {}, "O4dSwjhFdJI0rhRN": {}, "t51NfzyTJbRZiSU9": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'HxENjQ3xwxuYtt1z' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ablEcm70VuGudKwl' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE