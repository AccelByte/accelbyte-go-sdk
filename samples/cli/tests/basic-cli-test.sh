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
    --body '{"displayName": "cpIVylTmL6xicbvq", "namespace": "zybwajU8DhdTMzkv"}' \
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
    --body '{"displayName": "cu5Sdhr3k9lNbEMR"}' \
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
    --body '{"key": "KzmFtA8DHnQkBWMJ", "value": "y9bGlfwjPNIn3zQk"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey '4yNLkImDlla06Hc9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'm4jDxx1Ci1Yfpv93' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'duBIYTHqrQV9oee5' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "IfK54wB0pckjuAk0"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'fn77kRSnS4qp9VpK' \
    --namespace $AB_NAMESPACE \
    --fileType 'rfrO7ZfurAY22Z5Z' \
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
    --groupCode 'FKMx7IqtWZXaT6qT' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "XHbcYE2MdE3vvU6G", "name": "0wyljPTFQQzxF0fk"}, {"code": "eZVd3i58sOaxqGaA", "name": "K26vD1Fm81Vnu3QX"}, {"code": "xhMFljYarGgYdnLy", "name": "LMLu7dWfm1ctb0wg"}], "countryGroupCode": "o5jfl0rQ0OhwEVnM", "countryGroupName": "dXRc6NWzYXHvqEVe"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'KjYWqAw5LUw2l7m3' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "81QPkcve1ni7pXs1", "name": "GZe9N4fxU1aT4fOR"}, {"code": "hUtK6ZpwUS49wioO", "name": "2i6cvuJJZhWkH0wx"}, {"code": "xxDqyAiK17J3xqvo", "name": "SAKtJPOaw6lLZwJt"}], "countryGroupName": "nxVXKfBWHkffxVb1"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'eVpxueOp6Vug5o0M' \
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
    --publicId 'hHWik1KLCevbb8r5' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Imx8nQn5BLskNSNl", "nLbmi1nt5jOfi0FF", "8FSH7YqnkFKs3oij"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '8DXqWmpz09VRBmbN' \
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
    --userId 'c7iKHxNV97dFMTvp' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'wdr3CbhWBZxE7Tc8' \
    --category 'ENQYTNa4emALLQKi' \
    --fileType 'doMpMxmcLM1WI0y3' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'g1nzwxfXMthsG43P' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '3X9wGbWpRvuuFkJD' \
    --body '{"avatarLargeUrl": "xBZKJti9uOifPpF2", "avatarSmallUrl": "xFIvv17JjbfDSlCA", "avatarUrl": "ZQfYe0OdFeXAka5x", "customAttributes": {"icc3hnMvDTtzulVH": {}, "scoEvi24VPGmEWUI": {}, "UCahnqo03TPwjqIB": {}}, "dateOfBirth": "1972-03-12", "firstName": "KjiW3kjtAQbySfmL", "language": "brE_xeyY_nz", "lastName": "4wHxt0G9duCa0OSA", "privateCustomAttributes": {"XsMtPMLQ55QBnI8S": {}, "GQsqMWEWQlGleTb8": {}, "eIl1ZaeeLsWlRK30": {}}, "status": "INACTIVE", "timeZone": "izCyDhczC4g2q3Wf", "zipCode": "J8sAaUc4CeBdvLvz"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '8bPQkFUKqucYm9sV' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'AvUkie30cG9BGv6q' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HmN8vJQ6yI4kNpMw' \
    --body '{"STjGIVVa2PmhkcwW": {}, "nc6V2ErdrOZ0yqRg": {}, "vQw9CuFtbY0tnmUT": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kP3VJ7Vjl1Xzi6gD' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HtmIl6ZQC1KqYXSd' \
    --body '{"TpFUbHNARNn9d3GO": {}, "Muk4mlQKX9w6JT6P": {}, "6E5KTTUBSn9EbWta": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'OiOajHALwhZ18E6g' \
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
    --folder 'Rfd0sMNxwzMNChYq' \
    --namespace $AB_NAMESPACE \
    --fileType 'L9aztyIfp3nsWtdv' \
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
    --userIds 'o7BHEFONkwx1U00x' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wFnFudwgfttuMLSr", "x8JUYZbMdoh9HmmX", "bG0lj7jDZAJXOMKb"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'XP0IXoKZs5jsgLqj' \
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
    --body '{"avatarLargeUrl": "0iCaNLUZPOpsh0Jk", "avatarSmallUrl": "qBs8NUgp2Rqqb1cV", "avatarUrl": "UPyce8MOhQ5Yu8nj", "customAttributes": {"23W8NeUhSBapcuxE": {}, "YxYRe6ZZZ0K02Euy": {}, "ha3A2C2MSnDeVXNP": {}}, "dateOfBirth": "1986-07-20", "firstName": "GgVETSkT2aWT7Kqz", "language": "VnM", "lastName": "N2CFr9ZntDrMaIpt", "privateCustomAttributes": {"2ESVgdStuX167eYj": {}, "Fb1NJZeHP5bVTdgT": {}, "SbsSNrB2RzTwpQXG": {}}, "timeZone": "6hbjWjfEWw99RUhs", "zipCode": "wvcjCR8LzMtPctWN"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "5dEwkZKhi0uPKMxN", "avatarSmallUrl": "S0r9WcPQEcZEN5iB", "avatarUrl": "cDXoUvI2bg7SkHVQ", "customAttributes": {"R5imMpretqpBVJ3r": {}, "7OO6mketW3fETEWf": {}, "z0avP48QVE9avtAH": {}}, "dateOfBirth": "1982-08-12", "firstName": "QapWqbNSUkmGXWzZ", "language": "eqld", "lastName": "BKbQJLi9HBtPe7Jz", "privateCustomAttributes": {"06ScD0EmcaXoXniD": {}, "YiMKuw9lgJswmK9x": {}, "n2SFxnK1cW5dvMJe": {}}, "timeZone": "5tlgRh9rM1UF7fyo"}' \
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
    --body '{"qxDMLivyNtax7X2y": {}, "9fXWBRavWBIGXGnE": {}, "S9ly57HmDeCaRTvG": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "BT6656ywr3TKD9h5"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '0apKy8nKKwi1FqJM' \
    --category '7Rd70UxNpKhS6yDh' \
    --fileType '5Nd3fW8lBI22gAdm' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'o6sA7Sdx06dv26ch' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'PmsX86VINRRuFKZF' \
    --body '{"avatarLargeUrl": "5XWijRkk2ptrcjJ3", "avatarSmallUrl": "7VtHHbU4QFoe28ef", "avatarUrl": "YaMgGuRGu2I2vzV2", "customAttributes": {"IYcHztvKK7pklYZg": {}, "iIIBgLVGNySgu0ZD": {}, "gLcWVd4toDptCd4Z": {}}, "dateOfBirth": "1995-04-23", "firstName": "X7BFcaVr8orVUY44", "language": "jT_Czgy", "lastName": "xAMyJA69IPG6zfrI", "privateCustomAttributes": {"9sy3shRnFCj1izHI": {}, "WDJrJIgDeXKH97bH": {}, "BYyDhcHJS6TcXYex": {}}, "timeZone": "cMjjRxBFkf6vvdt8", "zipCode": "SwxFBdMWu35GMRro"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'VJTNwyMqGQDygA74' \
    --body '{"avatarLargeUrl": "3A98pvqM2nACvIVX", "avatarSmallUrl": "49zkeG1Wcj8D12EK", "avatarUrl": "ZbOprvNA6GZJ3QIG", "customAttributes": {"ITY1GgyTFLHFkorw": {}, "i5mmWVOdzCBgQ0kT": {}, "isNGxSSTwrO8f1fR": {}}, "dateOfBirth": "1978-11-10", "firstName": "KC8Pb7QFiK3PAXCd", "language": "SJZ", "lastName": "8n5ZzVa4JGPcOU9w", "timeZone": "h5mlqIBaUO2sAjFu"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'lqb9Vamuyz2Oh6ai' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'ethSOHd3mbQNHHvd' \
    --body '{"e44DjWmxkgkZKOvk": {}, "BBmtoMcS1Nd86sVU": {}, "J0Fe3M2sxP8ztt3e": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'xxnJRv4UducIgITq' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '7Hx8BBK5Lkyf2eev' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE