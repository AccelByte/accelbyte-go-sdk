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
    --body '{"displayName": "2udL2Hd9VXdkN4PQ", "namespace": "rUgoELEgSy2bTAQQ"}' \
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
    --body '{"displayName": "N7eMV2UEXPL2uYSW"}' \
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
    --body '{"key": "enCssgqZD1QPe7BF", "value": "KGax21NAs8L6ldPW"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'PmwwOwqVVv369Fbi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'uYc3Gqbs9ddj2CD8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'ek6Kfmo8IhDZBFfO' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "qgi1CUjLF9axvTJx"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'Q0z3n6kbKg6bynmp' \
    --namespace $AB_NAMESPACE \
    --fileType 'hRIfkSi13wDbe19d' \
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
    --groupCode 'RFOjGJc5NAzvFPug' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "u3OoNuf99QNedgRg", "name": "9lKSIYXA7RySs09c"}, {"code": "n906LMeSQwRrHucA", "name": "7dZriKaSDMuzM4fL"}, {"code": "2VnwLTiABtToy2JP", "name": "xuHayvXvmHDrmSSp"}], "countryGroupCode": "mw5KwsSNyGagbJgP", "countryGroupName": "ei8nCbky3NIgQNm9"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'erpEEqrpVcCYhQg8' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "FII9530WmoAHJkux", "name": "p2xi30BHG61RnF5e"}, {"code": "DowqQzn6Hshpg3H1", "name": "WPHBIMREoLOlZCcX"}, {"code": "RCXF28Z8aubZqZ4q", "name": "dRaby7bDNAbn3bAr"}], "countryGroupName": "UDdtrzeLmZR4kpNO"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'lu27gu3kojrWmZ1N' \
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
    --publicId 'TVXfkg0sXpTIn4pp' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CIF5tiH5iKzAdqhD", "7TVhRDyDxhwkVKrg", "myhEK8UqAfJvKKLe"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'xbgJjcfwHQrKPtaO' \
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
    --userId 'VkbnhwjO6DI0hEe7' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'TSzugF1s4vm6Pjgy' \
    --category 'SycVHUDduc5F6ooT' \
    --fileType 'cYjDRAlFgmeo1TdA' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Xi4NAgBZ2gckMBwe' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'g4qxH808Aak60xM7' \
    --body '{"avatarLargeUrl": "iMGxhdSQfmI6rmWt", "avatarSmallUrl": "YfzSpC5vrU9RjMsV", "avatarUrl": "Rv1kLSF8wJjzAOpJ", "customAttributes": {"CW8AH403N0e01Lsb": {}, "M5AR9sBTkcr06A9b": {}, "ypF8dF0RcVUQk7MR": {}}, "dateOfBirth": "1988-07-14", "firstName": "fokVtTUnnko79NSP", "language": "gVF", "lastName": "knlFjDL4r5v69dhM", "privateCustomAttributes": {"pF1E9cTJY0Cc9bkS": {}, "K5rw7C9hIb8WwG36": {}, "oZgJJtarFs7kW4cj": {}}, "status": "ACTIVE", "timeZone": "RyxEfT0lYjfFcgZB", "zipCode": "GXaJnHPear64D4e9"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ELVboLUxrltMCrDH' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Ilre8RbOnFNMYUuA' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'CwhBvl1YmB7t9HOU' \
    --body '{"3KYGyJkxieHBcIDm": {}, "rojmKNszxcdwBYa9": {}, "0i1sGJt28nK8oxpy": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'EOJHoYwklEszOkLA' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'p4r25Mp9ItNhS30Q' \
    --body '{"kUiJ2tyPn0lxQ0tU": {}, "LSSoqzSi1CXBWEjN": {}, "zSpDHJ0JDUssgaPu": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'tS2JUw6OEhGNttCx' \
    --body '{"status": "INACTIVE"}' \
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
    --folder '2eekbsxCJYDkElUK' \
    --namespace $AB_NAMESPACE \
    --fileType 'u6gBnlzWm4oJB4XG' \
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
    --userIds 'JvLHCK1qxAWnV72u' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vyZs7rAHPW3nfrkm", "BorlMQKXcDOdrMXJ", "zntUTpCN036ofl1t"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '1zQzvPST0wItj6u8' \
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
    --body '{"avatarLargeUrl": "6zn1MKMD62rC14z9", "avatarSmallUrl": "BXAHYbkTpNooW9c6", "avatarUrl": "kIk54e0FJvc1gN35", "customAttributes": {"LfDgOGOZ4BWO4jjL": {}, "KyVZmTxurtGEmg62": {}, "DIG3W5jp3uxblfVP": {}}, "dateOfBirth": "1983-01-17", "firstName": "cLhr9RTMNo2uBssV", "language": "vks-JjYJ", "lastName": "ZXgFmNOROyXC93OK", "privateCustomAttributes": {"Yxrd2p7QqAbhhsk9": {}, "GhqJrTNBScqcG3Vs": {}, "OZqE2A8nrTocPoNR": {}}, "timeZone": "SOOH063ceI6ElhWv", "zipCode": "Rlxtj4NIgvdoru9F"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "35mk1i47sRRQzUPv", "avatarSmallUrl": "bCmdrcW1xdHWNgPz", "avatarUrl": "DILocNV01WqTXBiM", "customAttributes": {"MD4bGJJbaTrBBogW": {}, "yEjWFWWByYADPOtl": {}, "cqkE5ZKoTVC30rUe": {}}, "dateOfBirth": "1984-10-11", "firstName": "WAOpqwabLjcoyMUx", "language": "MyGI", "lastName": "sLPr1r63bqsgNDOi", "privateCustomAttributes": {"KllQZOVTlbo9Sw0S": {}, "ZeiL4JQcVKnLG6Uu": {}, "iYPTSAGfadEn2BCH": {}}, "timeZone": "sAs7QljS9TutA65e"}' \
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
    --body '{"Z5MST62BxeOx5bQ9": {}, "l4S00IMWdI9A5ly2": {}, "mkdNmrdgjFVINTOF": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "sIMf2O3dDtgJPygx"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'tUnqDLmtgDXNFI6K' \
    --category 'Mjai63X2wxvqaZy6' \
    --fileType 'Ig3c7ylwX12OqOSe' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'o73CMVrbGsCPZBx8' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '37DCcYYtU8S2LSZr' \
    --body '{"avatarLargeUrl": "lNesn26nZ8RySczp", "avatarSmallUrl": "0Zs2HzeEY7Fxn48V", "avatarUrl": "T8ZTcfAILHbGOGs3", "customAttributes": {"tTGyXNQLxuUKVN8U": {}, "aFaYOlFDMRSCZo3l": {}, "KrzBZGwvl5bgYia5": {}}, "dateOfBirth": "1987-03-18", "firstName": "KiWs9VzG4ABX9c0B", "language": "scYe_JBGF", "lastName": "gBIT7GAOhtW83WQM", "privateCustomAttributes": {"3Ann06gpgdVwKn84": {}, "tv861tDqKiDcHRF3": {}, "pSt5dlCzRigXwbAH": {}}, "timeZone": "DDk0hcYr0YQ0QBJb", "zipCode": "SbilqXiHnmtrqrFs"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'vZSQINRZ14ZJKW2M' \
    --body '{"avatarLargeUrl": "SP2eZ19YqbLccOUf", "avatarSmallUrl": "QRxfukJruKNKZn6V", "avatarUrl": "AhRfwLlLs1N1WATI", "customAttributes": {"x9jh1bH3iQBmrxE6": {}, "JXapIQCnnoQTwmzG": {}, "hzGY8rEBS3LVR4G7": {}}, "dateOfBirth": "1993-07-20", "firstName": "m1LOExrftrpYWcjd", "language": "IV", "lastName": "Bcf36OyqPM17pNTG", "timeZone": "qmsUXpdJ4awtAtRN"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'T61iTkIhg6pn2umM' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'wAw7sZAKqKwlJZ8s' \
    --body '{"3UNNCOrTuCC7mKee": {}, "hBM2NYNqsE9j3z7F": {}, "TcwqWdl4mSzlTr0I": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'hC5jjI0Yaz2MOKYp' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'd4y19BBD3ZTU5Mrs' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE