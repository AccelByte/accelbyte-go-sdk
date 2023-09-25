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
    --body '{"displayName": "bjAi0Kjw4sFVBBfC", "namespace": "wXgLz2ZgkERes6DV"}' \
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
    --body '{"actionId": 23, "comment": "jcOprKf8CHWCTEHR", "userIds": ["PCiQNVzbPu2bn7lq", "XGFxFGdsw9AF1kcB", "UurgYlHI7EyTE5Nc"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["stv5c9MTBtFVnPYq", "dQt129VBUsMNouvL", "s9RHOwmckVpk70Kz"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "Pw32h5tunTGFjvfB", "description": "SbJvZKh0kcnUyTzc", "gameSessionId": "ZEazUttOjixOiGZM", "subcategory": "DatA5ep0pdy3XI17", "userId": "1z3nrF2zPNDSLKLa"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'tQNBpFrA6CLKgctV' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "K51wXnzQgilNWQVX", "userIds": ["oZnYmxHA79dxDWdc", "dOTdok9TFh6ZEdLd", "7jZqDKZGPbFX6ExH"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "2KPd7btRWr9DRXqa"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "it7MQXMDvxGbGM9n", "value": "O1YGDt1ZoOxJYFaD"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '03l5XFmJzhEdnGCU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'xhHRFCjW7uRw1jfJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'rCE1lgIgyBFaPUA2' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "kCqJrXEkVdrTslr1"}' \
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
    --body '{"apiKey": "5R9arEFsVySEX3Ks"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder '0G624cNzLPbs7e3Y' \
    --namespace $AB_NAMESPACE \
    --fileType 'UTfLL3Eb3a8LNN7x' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
eval_tap 0 22 'GetCountries # SKIP deprecated' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'enKiAuPcfzqRhBsj' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "dL7SM0Wx40vCA7mK", "name": "VGar6Io3zffTKhCe"}, {"code": "o5rls6PlVK9OUDrQ", "name": "yHUIljixxZxAF3yY"}, {"code": "Cq65JSKr3Jvbya8l", "name": "Aj789uxqIUTw2Qq5"}], "countryGroupCode": "juJWQgewrZEnJJqg", "countryGroupName": "2b2BomWcNWfKdUKu"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'tSZ5O4nkxTJICO2Y' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "6rTNaNlkBX5UV7Vu", "name": "N2b7slnGexQdi185"}, {"code": "8M0oaKqzGFOC62JW", "name": "nOcMuGztqtkmnztb"}, {"code": "bth4NjI2bVDkZ9LS", "name": "wx9gvk4ym46jwqZv"}], "countryGroupName": "R6Qiiz82h7PZhAHa"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'OsozKr6IVtZdgYw3' \
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
    --publicId 'PIG2eXaAeH8oOoio' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RRbzrxu0PwI5xjoB", "NSIWFb6Rg07nctht", "XvV9tz50b2H2IOGA"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'ABEU4EgCj9OM2tQP' \
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
    --userId 't0QKWL60uKuLNo1j' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'Vynsw66aQYmioffd' \
    --category 'UjybQVDYFP6XnngS' \
    --fileType '5eHYBscr08zHxBVp' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Hdz4WtePdAOBUb9Z' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ZqQo5d1XKJrCXwPK' \
    --body '{"avatarLargeUrl": "cN1s4LhNvo03itbY", "avatarSmallUrl": "g4t4lEWijYWclnpL", "avatarUrl": "RDdz1jvdcaF89hMJ", "customAttributes": {"q1ytWz0hqR48eY21": {}, "YxyNN4m9n9hsKfUT": {}, "m8T8PKpeVwHFkQ8E": {}}, "dateOfBirth": "1974-02-23", "firstName": "EOptD4IdRP6ORRUs", "language": "qa-nihU_418", "lastName": "t7PZfApL3zNqbWT6", "privateCustomAttributes": {"K1clZLdNIvI2WPl5": {}, "eV5bLx1L1O8Y9rHe": {}, "PobaFX7hAff13xO4": {}}, "status": "INACTIVE", "timeZone": "RUwBidvakb6hnjm3", "zipCode": "W7tNDwWFxysH6sDR"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'fW1vwtuiauZrg2ZL' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'HG9vV7tjAf6GzFff' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'cIFmXMcEKpzv7eHR' \
    --body '{"c8YdQkPKyUU7vVXV": {}, "JLmU7mRTBpqcAse1": {}, "ia4bgn5d7IGVrWjV": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'aIepAwq8Mi0ZOJLm' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'lJIMb7VkyM5UC5pl' \
    --body '{"B7w3ehI54kVsJVcT": {}, "qkaHm1IGsZlJS7hu": {}, "D1aZduwYZH7tzceG": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'WToPUFau39lsMEMu' \
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
    --folder 'xUGlUN3YQ50mXihO' \
    --namespace $AB_NAMESPACE \
    --fileType 'ySPJnZGGVP4HqiKm' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
eval_tap 0 47 'PublicGetCountries # SKIP deprecated' test.out

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
    --userIds 'jVeu3b4mHS9ltEpD' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'XWz8zMnX9HZwHU9P' \
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
    --body '{"avatarLargeUrl": "50tcU0yYOhndBq0a", "avatarSmallUrl": "SvaQc31LFe8QKOOM", "avatarUrl": "jM86Cj5B4XFdqONn", "customAttributes": {"I0JRTxlnRJBpf5IS": {}, "ZlGjzWWLCES53we3": {}, "BuPFwFFOSFjv8ZWD": {}}, "dateOfBirth": "1995-07-14", "firstName": "BSfVhK0TfWvpsoJo", "language": "ZGn_600", "lastName": "k8Tiys1uDHbHGfOJ", "privateCustomAttributes": {"SKq4OHY9SPs4HRiA": {}, "zXSWIfY0oD7HkkrJ": {}, "tWBwxChUaOrJ97Tc": {}}, "timeZone": "BRjcUylWdRkyO3Bq", "zipCode": "uSMPN95kbv05dRgK"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "2dmh8Ua9zl3t3pUL", "avatarSmallUrl": "ZLA5OeXzj93lk3Pi", "avatarUrl": "5havrrCHidgeF9Mu", "customAttributes": {"DSE5sLGF2lMrlnc2": {}, "xQoml2pRVkA8zb1d": {}, "qflOlnLT5MLxVsr7": {}}, "dateOfBirth": "1984-10-22", "firstName": "7HTJ2uMHk8UWBp9v", "language": "SXEk", "lastName": "Kqpc9Tp2p5qYrI2G", "privateCustomAttributes": {"QXp8rjKjHWKjS2fN": {}, "GeFLGX9Ft6VZbziE": {}, "70A8msfey245CQ9Z": {}}, "timeZone": "C4V8MQIPlq7Jbjge"}' \
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
    --body '{"WRxC8xAmnC4jwukA": {}, "32tPFZ2YoXU8z7PZ": {}, "iCcOgevPSUiCudmz": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "VMh4kmAlxHlqcIJZ"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'H2olsFq1Q9pdJ4MT' \
    --body '{"category": "0ymDFLl65KD2aZQX", "description": "ch4jEM1VfIsLbqiV", "gameSessionId": "2FXzTxk6M70xDQNo", "subcategory": "2mpczsKV7ak3JzSb", "userId": "ARUmPBob9qwc0Ofy"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'DHWweudPbR4dPXar' \
    --category 'TSdUc6vnOJt5RLoN' \
    --fileType 'v4yCmdfTprwMHUX6' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'dO0HDqdPOmDOxiMU' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'XdizoMC1iqErdlIW' \
    --body '{"avatarLargeUrl": "cZZBLQl4ZzTRWevO", "avatarSmallUrl": "QaoQddXGYVOvyp11", "avatarUrl": "fyMPKONL0tUX2hKV", "customAttributes": {"nBxXnEL9Nn51ijI0": {}, "oMCEhXs1Z1CAg4Yd": {}, "THG4AfF6UR9Uckoj": {}}, "dateOfBirth": "1992-10-13", "firstName": "Ho3hFYgmYOcgFY01", "language": "LEmP", "lastName": "c3LoJ1Q80YE3pkyP", "privateCustomAttributes": {"B3UhRbPL8bxkgwmQ": {}, "HjDK7QBBfb779eY6": {}, "CeTGoInEKY63TUSd": {}}, "timeZone": "X5GMJjCV4LnMDJ2C", "zipCode": "GPIJdByRf2bvpWXM"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'GXVMU9ALOzB1VCor' \
    --body '{"avatarLargeUrl": "RTpoG2hGb9s7S1ac", "avatarSmallUrl": "GpzgN7qEVCDSpTfS", "avatarUrl": "1gAO63pGkHlZh2aT", "customAttributes": {"4OvtbsSw6bAYyZ3n": {}, "3jz6EgYPUKkPlzvt": {}, "cmeGwMmxqUf8ejYK": {}}, "dateOfBirth": "1976-09-24", "firstName": "iRfA5lHnEdTk5jsf", "language": "Da-Ixfi", "lastName": "tXsBFHxaBsHsTE59", "timeZone": "ImfYERSGSkxDiwZT"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Lx6ImXXNRocmh2jQ' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'nlcMoj37a1UXFXlX' \
    --body '{"3IaSJ0YfvknzR9iR": {}, "VYKrTaTUFPbnR5LP": {}, "nhQK4yZMapwQ6QiZ": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'lyBcrYMhzFfvrqy7' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Q4lLRNanODaqEpKx' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE