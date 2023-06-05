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
    --body '{"displayName": "GJZUthGvwUGxQktx", "namespace": "3RRGbBEXYMEbmyLP"}' \
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
    --body '{"actionId": 4, "comment": "hkrohm8ba0anaExj", "userIds": ["w30WsoS6DVuYiltj", "Ldyth9s0zRIxza2u", "up56hzVdGDTR2Wtk"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["cc9cdIXaSWCDO6QE", "qcYaEOOKftKeYxJM", "KqYwmJLM1lCzhz8d"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "dLnh0YHde9obQsVi", "description": "zMjETBhwpT7FGIRg", "gameSessionId": "m8pRu5MFHjiWVZOG", "subcategory": "e1RTU09crnKgT9ZJ", "userId": "BFCbgjhxCR5Vl6Ng"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'lEBKBk9UNqDHtmLH' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "OYFKA8IKkwWzf6VA", "userIds": ["hXXoqmhV5KY6cgSF", "JYgihRkifNQqu6RJ", "uPcf8LjHhKyZdaAb"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "9X6UlPlfqQ7SzCPw"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "qhRCfzyfHGIeAkls", "value": "rCsUzTTt43QAwkRq"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '7mqEb9ZNHKszWZMf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'IPBh3r9zsy6CgkUf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '0YJuR1HltrcJWD45' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "6ECFEyedmQpfS1j0"}' \
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
    --body '{"apiKey": "8s4gL9VSEX5jHK3H"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'zumftKKO5QpUjZzd' \
    --namespace $AB_NAMESPACE \
    --fileType 'CWM2LrcBBhq8r26O' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace $AB_NAMESPACE \
    --lang 'wIm6Vd4Ek9sfIs3z' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'o86kgTbaomfP137r' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "rICW8xEvdRko6L7q", "name": "6Y0dnBfFvKYQ3Xfr"}, {"code": "pchH5VJw7AokIHjW", "name": "uljdntTRsN2W3FPd"}, {"code": "eIqkDARPNVYRisRK", "name": "YJrgM5hfOsvit861"}], "countryGroupCode": "Tbdi8fwaaQak4Baw", "countryGroupName": "iIBx9L8ukewM1Mjv"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'hu8AFgH8SflUIhqQ' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "2T9C6GJuiPIMiRdt", "name": "HrD2AblaPORFVIFn"}, {"code": "O3ndCLOxCnwhSZSC", "name": "hiWYuOkmLROzZeSO"}, {"code": "bnkTo5z0XhBKzqp2", "name": "seyFWuDmZ5kw3qXM"}], "countryGroupName": "l97g2m2DZ13k0Wkz"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'J1TaIxdYClzhBdn9' \
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
    --publicId '5mqrptLP1hlNbm7a' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wOrTNYoqLWMfkitG", "43V5XDTnHMCdTGYt", "kTtv32JSpmhl0lcS"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'JfZcUGvvcmIsr1Ph' \
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
    --userId '88bRRRULwvJA4WLh' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Kvnka1ZST2JSU8i2' \
    --category 'RWWHo2jBQTRhawzL' \
    --fileType 'skAPiXaRuin6eXYM' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'bGvi8mTMv1bcUdGo' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 't0HB58hoCKDKqg0x' \
    --body '{"avatarLargeUrl": "mo1hrlrh1Sut1Eng", "avatarSmallUrl": "TQOJeLuidgJewgzG", "avatarUrl": "aZHj3rcg1f81O3Q4", "customAttributes": {"8IELlItoKxqF4Fs7": {}, "5vhvmQPM4FGIcQXj": {}, "CthZib30lvxZIf73": {}}, "dateOfBirth": "1980-09-05", "firstName": "1qM7RCYH8gtT5HuA", "language": "WX_WvoB-xR", "lastName": "uI1h6THfK3QP98Pd", "privateCustomAttributes": {"XwoCsQOGjBYwlkWY": {}, "ukGkOW09PD5D17mf": {}, "QXdGta3nqgVj3ruT": {}}, "status": "ACTIVE", "timeZone": "XyeGBsIfnou8wViC", "zipCode": "1YjtnLDrYWxWCGEp"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'fj6RtVV4opKecHHT' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'zqVpxStwKQrVC2cL' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'c39sPtPsNSDQCsEv' \
    --body '{"YKqeSHBkrHsn97z5": {}, "6i3EJCEo7sqKtb9D": {}, "45DejraU1rmj2i1W": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'UM4vGHdR4gc9V6Jl' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'F6kDqA9tCWlPPCpQ' \
    --body '{"tJqDXRyN4Cj3Avpz": {}, "sODyTILzzC0aX1wB": {}, "9aC8NISYxS2aPnK0": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'VtPGWCylOeCsWreW' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'mWHSOLnHdwBmgylI' \
    --namespace $AB_NAMESPACE \
    --fileType 'YXBkiG1rE1pKCrEY' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang '3RO0TvxDDpAW2bIv' \
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
    --userIds 'YQjmwiQqw15mG0Zl' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'NtYlRHssUyYPkmcm' \
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
    --body '{"avatarLargeUrl": "hOvadf3OQl9EUYri", "avatarSmallUrl": "SWkrsniLKvITXtYd", "avatarUrl": "GIOsGgGmcZitTPHu", "customAttributes": {"LKMyMlLOFwbi3qob": {}, "chkaOj5jSBOci95v": {}, "AhAwRZzysvlEga1a": {}}, "dateOfBirth": "1980-01-29", "firstName": "wx6julAvlkqTh2Ci", "language": "jVJ_vR", "lastName": "2TqoZJJTq5BOb66m", "privateCustomAttributes": {"0wy0hgmb6MIi5u4d": {}, "t6oxHyb5F8innpmY": {}, "FSSwZqUQmRxcDX7x": {}}, "timeZone": "xHSygfv63fWi8pKh", "zipCode": "Mb0f9MOVKUgUgEFw"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "iRDtq0IAxKbWxyu3", "avatarSmallUrl": "QuvIM6lyPa4YGNkB", "avatarUrl": "q4MCEJGJrSCU04gi", "customAttributes": {"qwNUxoDeLAiyyr4U": {}, "alcy8xkeqMTWd0Pw": {}, "3TmxgTvQEPErA9yk": {}}, "dateOfBirth": "1993-05-20", "firstName": "pPHrWB5pUL6k6AYe", "language": "SVA_fNWG", "lastName": "hZ6yieEMaE7Nur7e", "privateCustomAttributes": {"a5yzTLQdsJdxpBrO": {}, "jrhjOeAZbfVtoIYX": {}, "F7WQWgVxwgxC9g6D": {}}, "timeZone": "NhzIJMKSzsoROsy6"}' \
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
    --body '{"bUsOX6PUwKMeyMI4": {}, "FDh5oAu32uxBg6Lx": {}, "nuHGvzr7IPWc4scv": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "fQneh40RWtTcVWTc"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '6eVggKckz9c8BOPr' \
    --body '{"category": "fXf6LTIuTjQ8LgeG", "description": "AvJGE75oyHYHaPYp", "gameSessionId": "qeRcPvq5aGLqqKni", "subcategory": "z89SYqVuzeH03dqS", "userId": "x4DLmEPURG8fmAy3"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'dV50oiziPhwmgYhY' \
    --category 'T7EBa3MrucpH2em2' \
    --fileType 'AQWzSbxwzdpNn0Hm' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'yYp8ht7KjjVcNbpJ' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ZIO4ffrsxSjtRDBk' \
    --body '{"avatarLargeUrl": "a6gjNGvu9mK0SNLe", "avatarSmallUrl": "LTgKkpLGE3GG1R5U", "avatarUrl": "kz4V3x1sovTIues8", "customAttributes": {"Q5TpgRIPmpzBe6My": {}, "OtZZkrP86vRBfRDJ": {}, "VtLinHXpIxSKoxF0": {}}, "dateOfBirth": "1973-11-12", "firstName": "6S2oeTcjOx3Vh02t", "language": "KmPI-xQTO-Hs", "lastName": "XtGjqqVYG614YTEx", "privateCustomAttributes": {"MWT4pNk6GKjkIDgS": {}, "rQ9GNajhTG5mEEeZ": {}, "rEdsdxFllksCtG2L": {}}, "timeZone": "adsPThj3iBYuuTBz", "zipCode": "Hk64QEpP7O6OyxGT"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'vnRzdbkolOYF1Atu' \
    --body '{"avatarLargeUrl": "VABCGG4cxuYMB43T", "avatarSmallUrl": "Pb7qNP1Tmi7MFfWi", "avatarUrl": "iYQtQ5KzexpzuFBf", "customAttributes": {"cVeuyocaYQHebsUx": {}, "i5DNin4IrX0IQ4pa": {}, "M9xAQF7uBE759eF1": {}}, "dateOfBirth": "1983-05-19", "firstName": "eUppDsPzCTDWHQiG", "language": "WPG_tubo_hU", "lastName": "x5n9bkubqrwCiLKz", "timeZone": "8Ba7BBtWuxtI0QdM"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'z7OlLnWbWFCwWBxk' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'DgAF4dLdzeieXX9Y' \
    --body '{"Zn3lzsnUkfcZtwMC": {}, "KpmXil2uBSS2Us6W": {}, "883LcDNrb58pAFRB": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId '5AjZq2x6rntnAyaf' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'hHZhc7ueQtdj9mRj' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE