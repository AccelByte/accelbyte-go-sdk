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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "bXxsCGiWONkk6S0R", "namespace": "BpAuh1wF11D4FHIh"}' \
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
    --body '{"actionId": 52, "comment": "4acsnr0DcUD2K9yj", "userIds": ["IqB9jUDEtHTTDZoN", "ZUVDBJETWXIUXsMI", "ISYvMuAKxwOuVKue"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["kDJt4Imx0BPCPgVP", "gAj2I1rCtxME6tGj", "JikWCy04tIjLeHAt"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "JaEch9TuMaRFHK7o", "description": "2JWx9zXsP43IGUWD", "gameSessionId": "9acQ7yxGMNmTrmQF", "subcategory": "GlZleqwglNc83Da3", "userId": "xBZRikh0xxt15AX4"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'jMeOcfSB8nydu1Ed' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "iyU3reIy8KcPBdgA", "userIds": ["NoUj3vO6eGALFjv6", "5ApoMoVOaSFE6C3b", "qdlDd4M13Eujntuu"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "mXkOd9uybzFJPw3C"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "70Pnv3ZUP0nSyrAR", "value": "XUBHwY8aA8ztEXtM"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'tbFuPWbDzKR7FTKX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'LENE0e7cm7jHUzri' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'X0vUWPXsyUNfFnRy' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "RQ3VsuKNQiKKfpxp"}' \
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
    --body '{"apiKey": "ApVVdSnjOmRJ7dL1"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'I1MkTiKSFd3AsWUI' \
    --namespace $AB_NAMESPACE \
    --fileType '2lgCQHkL0kpHuIwN' \
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
    --lang 'qMFtXLTU8Xh7oTWb' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'RYoFQC6siuHFliij' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "OYJCX6P6bJvfpgWZ", "name": "bSI4Lq8wtcDSGBSW"}, {"code": "drR1dCj6nt2VHoMs", "name": "yXcHUKvn1Zsgs59m"}, {"code": "o7pfbX61IU5jsIqa", "name": "lgtqtpibbQBnh3lE"}], "countryGroupCode": "VcwyLrPfpZ8rWCZz", "countryGroupName": "OG1ms8ro3ySzUMT6"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode '6LHi7CuezaTiAtHc' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "uT6k6ZhJJGh8nCVL", "name": "VhTP6ZmJcc1FY3AU"}, {"code": "ZWsRRLNaB30YaPHb", "name": "yb7dZXsA8HWhORFi"}, {"code": "9iUrSR5HErt5bW6X", "name": "gL3Qny39B9RxWuNq"}], "countryGroupName": "krUueER5qrR3Dzv3"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'J7zM54gafykfT5kn' \
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
    --publicId 'iwn2fj0hUHmaQRLJ' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UZSx5jNoduIqQeHO", "QClQRP3yOLManZDI", "nZNxPND44EO1rRgD"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '0h4KCY1bRtQiSjVP' \
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
    --userId 'nQsRiDfZf0Wfm2r5' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'zI5sskz9NEQJuK6j' \
    --category 'A4UwiZTggVDazzn2' \
    --fileType '78WuWszRYjH47goY' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MnoOw60oVJTUfYNW' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'MaxDPImuGHDT3kOz' \
    --body '{"avatarLargeUrl": "Wo8ryMi6AipLO5lT", "avatarSmallUrl": "tsnnvhwNbhhSwD5d", "avatarUrl": "sVKdhTU4Drr6tPjf", "customAttributes": {"wlJzZNo2wJDr2ZXf": {}, "Xf66RyvuVhCrnkZr": {}, "0BzhOHMJyozj90Uy": {}}, "dateOfBirth": "1999-02-14", "firstName": "mnRh4RzsfBWZ5BEP", "language": "At", "lastName": "CXIzzWhTqEOY2EGC", "privateCustomAttributes": {"jVgExc7hsX3qDy0B": {}, "vEjrjqA6kjYLh7Ri": {}, "mH9X6UMHr510Nxxr": {}}, "status": "ACTIVE", "timeZone": "kPbxmAjt7jklVALt", "zipCode": "YTiTBksjRBWklcRD"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'YYzutrUVlusrKtxz' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '47L6e8hgBKci4tOc' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'wtXuUSCVjiFNa1Np' \
    --body '{"5KNVvQuWnmdy0a7f": {}, "O5Wli7jZyReAoRCa": {}, "HbiY5E8lgd9CsoYP": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'wDd0IZqEIIJlR93W' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'VkL2TQTHkC61DiQn' \
    --body '{"mYf7aVrz8dqH0cQo": {}, "s4VvMjvtX1v8mWBj": {}, "DAh5ghGXMkgAfe9y": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'JWUr4AaWBACzx05Y' \
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
    --folder 'PNo6nuLiIbcVL5YZ' \
    --namespace $AB_NAMESPACE \
    --fileType 'QHKST94xjlS4eMNR' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'x8SAhGktJVFHuJ1r' \
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
    --userIds 'c0NBDka7p2mpzsAe' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '6t4rUsxHZn1Bwgjd' \
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
    --body '{"avatarLargeUrl": "lq2wU2EspvgGyJ6M", "avatarSmallUrl": "nZnO6J7gpw6oZuSQ", "avatarUrl": "q5lxE5DXXJuDI7Kd", "customAttributes": {"YMMa8wI6YsI810CE": {}, "T7ZkSGRi4KuvwwKt": {}, "FCRYQCEQ8TGn0WKf": {}}, "dateOfBirth": "1995-09-07", "firstName": "9q4bRyPGiK0WFlzV", "language": "wiW_781", "lastName": "L8TVy5VGvi7tHepi", "privateCustomAttributes": {"kYy2PR6Q8mOBsZO7": {}, "95nSX2nkn6icf82E": {}, "g37DWdHzgkiC9TpJ": {}}, "timeZone": "Q4CLiy2kbLfvN0zw", "zipCode": "fqFk893J5t0Sxxoi"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "MGHTw19ZOU669Srf", "avatarSmallUrl": "QJVqB5IEyIdI8p3l", "avatarUrl": "NaovhuJr8YBXIFS7", "customAttributes": {"rVRyUiEzAgBpvUXY": {}, "rXUT2OGHrU4bMqPL": {}, "Ri82CWWqGZMgCtNs": {}}, "dateOfBirth": "1983-11-28", "firstName": "EtLj370UmAV4W3oq", "language": "cf", "lastName": "SvpDRxyCblRVzTJu", "privateCustomAttributes": {"iGFLjLem1p07UgqS": {}, "sUWoTiBcaX3448mY": {}, "kEFg9Boq3m5AdOtV": {}}, "timeZone": "x6IcWifKfcF06rqV"}' \
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
    --body '{"Jy1x26KyQTtK51RP": {}, "t9QNWjYrkP4lMBPE": {}, "u5C5JvdN7PIAatYi": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "WWzgK0Rt41GX443L"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'BjjObkvHrcj63Dpo' \
    --body '{"category": "OQLYQp0oFHssdSTI", "description": "QF3zNnoAk77zGoBT", "gameSessionId": "6O60immY79CyaE9B", "subcategory": "ISJAGhv7ocdYBe2J", "userId": "VRFgZtvwjYLnAqPU"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Ys2nIkWk91gbv40a' \
    --category 'NdKCWIUS2X9UeeXY' \
    --fileType 'CDnqbcluuqVsVvW5' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ZP42Ng7M2HyE3RrC' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'aR2ZfDWFqUkvqSg8' \
    --body '{"avatarLargeUrl": "jpoX5nUtQW6Cu1UM", "avatarSmallUrl": "o3OLdOwzSaLPXPBD", "avatarUrl": "XxCKu7qpRAX8XY3h", "customAttributes": {"FciODsZRdZ0K1YSO": {}, "xIS4HwaYKOQcIuz6": {}, "pC1Jb9lxr4kUjcqM": {}}, "dateOfBirth": "1982-04-18", "firstName": "Nq9R9QNebaKkJSeG", "language": "VSc-lhvg", "lastName": "4ihzm5BPWfo8LYzb", "privateCustomAttributes": {"xPtUmh1iJV3OUKwQ": {}, "JGVUY0V3LSK5fn1J": {}, "KtB7LoqU3z4U2kj5": {}}, "timeZone": "y2jPoV9qGAf1cEJx", "zipCode": "LslkqS51DlaV3A74"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'WOtPwDPCPTT2cwCo' \
    --body '{"avatarLargeUrl": "dZXU8ULdP9Y9ola4", "avatarSmallUrl": "JgQbIu3uPxnpYNVz", "avatarUrl": "3XkSCZE0eS25JvzG", "customAttributes": {"ECxqClKBUZok11CH": {}, "OMkuIl7S4BrzePEz": {}, "wbNGlBrMfh2TDc2r": {}}, "dateOfBirth": "1972-09-29", "firstName": "GYOdJ4HYrSJxlP1T", "language": "xz_wwoy_Hg", "lastName": "mC8CTxeGmdth5M6r", "timeZone": "tbipDSBKm8r2Dcx4"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kXm32m5RAsBmqZ8z' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'KQfNYyacdHJ5juml' \
    --body '{"FS9bu5Gn8TOt5PbO": {}, "E85Q0w4rw9NxeJ3o": {}, "cczPA0Vllexzy2uN": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'KJrOyDIcXMmsglfM' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'An0Rw4sH00s5IW4P' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE