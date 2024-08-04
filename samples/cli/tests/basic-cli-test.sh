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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "L5rnsUoG8Lb2hacB", "namespace": "aYaghF7uP2bToDie"}' \
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
    --body '{"displayName": "ucyXrhkh5Tgw8aiq"}' \
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
    --body '{"key": "XQNxW3bP55R9xNnS", "value": "Xc9dUOGCMxYmtQVK"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
samples/cli/sample-apps Basic getConfig \
    --configKey 'l2TIuoHSZOY5b9FB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --configKey 'leAgH16Hbdw5wXhh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --configKey 'RELaaBxxg6HemkTx' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Emv2YlkWaYdHRUll"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'a2F48gUrXqtsXW5R' \
    --namespace $AB_NAMESPACE \
    --fileType 'o90oKDms6FoBmU7A' \
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
    --groupCode 'sLgyVAJ3Ypid8bJ1' \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "IxigwrdPSyMOJvOl", "name": "WDll3UNt7PVyAlwT"}, {"code": "A1yrUKIpX6dKPORR", "name": "rs4vwR7CuKJIKqCh"}, {"code": "vFSIJZUU61jeFGzd", "name": "Sn0FGkzduScjhg2e"}], "countryGroupCode": "gdJOnnU0DCDBiu0D", "countryGroupName": "BoRPByDE3z36mQEU"}' \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'Is90BCOSalaeFfGr' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "m4kOba4N27dlTTYB", "name": "e3cWqi3qkfTpdreN"}, {"code": "1mRRXIwFFDZSSsbq", "name": "a7nTYPNGmhRxM17P"}, {"code": "Z3FxmkFA1xS7wKaq", "name": "n77hkB34N5PcTZAP"}], "countryGroupName": "TYS1AF4gzrbDwjxO"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '1QKIfdHsaOez0g4A' \
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
    --publicId 'wAsHdZ5K9ksed49n' \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ujvF6HSHwiOUrLZY", "XD8gJLHeFQcDaEVV", "2VjBkvXtAFMMS9L4"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '1Eat7M14Z6beHRUs' \
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
    --userId 'Q0gyJNtJUAB22mhw' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'QiSgW08IRIdO6RvU' \
    --category 'QIQxWvU2EKCjX13u' \
    --fileType 'BaFYwyWv6YJlxx8T' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'D9tpWzrSALOESmhQ' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'lRpg1KggLuz141Km' \
    --body '{"avatarLargeUrl": "FWPULwGdXqIwHEBy", "avatarSmallUrl": "8b3n1KDpGi4mdnOw", "avatarUrl": "1MC3PVcy0QsL04nJ", "customAttributes": {"Qe4xSOIooUpSBTtV": {}, "ayvXZpaekARudyue": {}, "Yf0oB2hZY8l0gbrE": {}}, "dateOfBirth": "1984-09-03", "firstName": "sBrrhUGpDTSJqEGn", "language": "vzY_mCRh", "lastName": "4bS9zOHdxsDHQO4l", "privateCustomAttributes": {"wd6cQ8if6j8GzEoI": {}, "Oh4KairjHS637AxI": {}, "OffHHG0ZedyZ6X1f": {}}, "status": "ACTIVE", "timeZone": "59rce1Pcsarh1Om6", "zipCode": "ckUXh26EsELH1Wzu"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'xjTTP3pqCtNJwgiU' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'IsKCEyVxhgGI2fFZ' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HBelibtp7F8GUZIT' \
    --body '{"ZU73PrKnN6IE5EK9": {}, "sYPFtUjOzmPNgcgz": {}, "6XuQwmQXR68BX1eC": {}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'REf9ELEZqzZBb3J5' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'woihQtxT2qwKGJVX' \
    --body '{"gjhuLq75pGKRH8Y7": {}, "DwS7ie25lPC0pNCM": {}, "McUnW6ghlc6mgDOw": {}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'N71gLx4eoU5tNV6d' \
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
    --folder 'kqTqKR4V8kbe0XV0' \
    --namespace $AB_NAMESPACE \
    --fileType 'j87gVPKwjLyEiTDO' \
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
    --userIds '2AHqoEgPB7wnuECY' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Njlskxz5ehJSGpiL", "7nmnJuH9uOmwrKFi", "zcQfKey0jd489UAd"]}' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '3GZ7Fb1amj7nbVDa' \
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
    --body '{"avatarLargeUrl": "tJEQxamaF0GZIPMn", "avatarSmallUrl": "5jx42FIlP6itaOVz", "avatarUrl": "n2AiSRclTWwnZhMw", "customAttributes": {"SUHTSplKfvK3LcYH": {}, "zWNKD31p2cbtDAZl": {}, "LFFH8FsF1BY2sMAU": {}}, "dateOfBirth": "1999-02-11", "firstName": "QuJ16qo047f3HY0s", "language": "cJ", "lastName": "tG6Go8ybUq0aaBap", "privateCustomAttributes": {"AsqEgz8p1Yoe180X": {}, "ndRk5h95KZCfOnZU": {}, "kSGkFnxuZeT9lTxe": {}}, "timeZone": "OeiZIDThnMFIIV4S", "zipCode": "alMwAFFBXynHxVFq"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "CL8GZkj2rNIL0OnR", "avatarSmallUrl": "LqD8Snjagnn5ocku", "avatarUrl": "17pMroZcV37v5EP5", "customAttributes": {"AneLvJ8ZSE3jbjGw": {}, "mPoG6LAaqkxfrEKt": {}, "0tGqZxBypam6XSqz": {}}, "dateOfBirth": "1980-11-09", "firstName": "g5YJl3xK16G2ilpe", "language": "aDj-nJyQ", "lastName": "cZCzyef5xNCRdNz1", "privateCustomAttributes": {"p1WsazOHthUjKTUz": {}, "lXFtWVhpxzAGNbJ8": {}, "BLFz0SFQn6N5OrIr": {}}, "timeZone": "fH813wlf3ypOw9Ig"}' \
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
    --body '{"GGIqTyR9s2wyLyBt": {}, "taB1vhnYNIq8xcyT": {}, "WnHrODcpukJCE3Nh": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "SW5PvGwLQushpUMp"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'OYBcfs2xQkNNA7Tz' \
    --category 'I5HdCYpsXO3zKAUp' \
    --fileType 'CHMxES5leINWkVxm' \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ch55wuqoKLynQbDk' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'pgOmEt06nrOTpteU' \
    --body '{"avatarLargeUrl": "03uPBOUaPuxhQpe3", "avatarSmallUrl": "GGUnBkUiw8TBOvMr", "avatarUrl": "ISPPijPi7JVbWpQI", "customAttributes": {"Dh0SfKWwvNeXnFcG": {}, "GIorWkEuS0e7BFVu": {}, "PTzjPqEqz0vht5bt": {}}, "dateOfBirth": "1990-01-05", "firstName": "lmbynvdW3hPkM8H9", "language": "vNkK_CKKi-669", "lastName": "CfbEhrCpSmAPymyA", "privateCustomAttributes": {"SGgQDjV9l6aPx1q1": {}, "qF3A8zDJCO1PtQmf": {}, "hlXyuSow2e0kXWKN": {}}, "timeZone": "kEs5qZ2dgz9jnwC1", "zipCode": "GFd6aaTyaw1ZEMC4"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'a7Ld0CwHYrL2IG0R' \
    --body '{"avatarLargeUrl": "E2UYTCw26lkr7FNy", "avatarSmallUrl": "aXDEVAyCHea4X3Q3", "avatarUrl": "DSlWKIqMlqZ1lDHq", "customAttributes": {"ctymd68HoZ6YHufX": {}, "oyqps4lvOHoP1s8j": {}, "6fOQXb960WZuKqlx": {}}, "dateOfBirth": "1994-06-07", "firstName": "mcakrkQIHlCx0G09", "language": "Bzxy-ly", "lastName": "OH5hpslORg9wFPYd", "timeZone": "0uGgG8fsjORhjc7U"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'BSBFmgrSmmNzTAGD' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'l5WKDX7fiOPUMEld' \
    --body '{"dXKP0PI9zMXdUm8X": {}, "7pvKcuBhU5ztjmRG": {}, "K9cJoa0J9hBhhvyZ": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'RNEz8hR2WMwhmKXP' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 's582gkrhSZEOrIiS' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE