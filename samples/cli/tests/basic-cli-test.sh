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
    --body '{"displayName": "Mmuq19Wixyz8BcEF", "namespace": "8aDUikDXVObxkBF0"}' \
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
    --body '{"actionId": 54, "comment": "zNEcwLXbU7wyniKH", "userIds": ["f2qV1IHPFtQZlyGD", "ialjqsAaSuDyJLTh", "S80ySl5VYuCgo0mh"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["vW0D7nCqcbezlQBz", "Kl97PG9u1iq5T1oW", "I4oIRXJoBC2yvT0i"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "GkkuIJjr8l7pwxvJ", "description": "V49ldhwbTa9nq1FN", "gameSessionId": "LU5QMAL9PBsboEGH", "subcategory": "XCCVdtaAWgmTZqL2", "userId": "UM0fM7obY3CmE9Xz"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '5tuhs5rrUvsk8qnw' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "qVWdny1HLI458LlY", "userIds": ["5MrTbINqAJpUeag4", "ouSpe608wObRIx0h", "F1q1a7xjzl8YGUYT"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "Q8RCtbm3GAUSe29t"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "NNRePo2PauOQ1VNN", "value": "iPed0TUUYJ9JSH5n"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'bmQUBLq6woLibGGz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'rpg6AJGWxwRbDnPa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'OSEMthSXjfwvrP0h' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "FqTtOig0U3AMeglA"}' \
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
    --body '{"apiKey": "31jQPSlrHmP5zsug"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'HAwG6LuabTUzqbFs' \
    --namespace $AB_NAMESPACE \
    --fileType 'jNDzz62a7Bg5Qjyv' \
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
    --lang 'L12fbvyY1HBewMPW' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'u2DQAr18BHUn04xV' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "XM92qX4ojuRa0k9V", "name": "QNKdHBza3BxVEpgi"}, {"code": "HHJJc5u7wpBWZLX1", "name": "m1uVXpr5pZMPmPdI"}, {"code": "ALS9KBHKmYQCKxbj", "name": "6ffEyZy0A8cHxVxo"}], "countryGroupCode": "gCXOAE3mSkKPmvhN", "countryGroupName": "k4FIl7THmZEWf11w"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'n9qMADhub3Pjn20x' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "MnoStyiYLKDYljJD", "name": "Q86z2QUHmhYuxkTz"}, {"code": "m941iYXir2rTSB3Y", "name": "SyJLHu4Ao3w39DHz"}, {"code": "yurdT493C6VFCZMh", "name": "TqHbtVCtnTN7cqES"}], "countryGroupName": "0erzl6OIYUtMmePh"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'LjrCE6rUtZAJs63w' \
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
    --publicId 'FIRHndIaAljmsALn' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["5IUAJno2KOJfzV4a", "MDaeFGhnT5q6f6AZ", "PzJAZCqZINjvK8Xf"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'qvC6l2LvzPrs3Byi' \
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
    --userId 'YFKoB0xza2SHNNrL' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'TXFzeTo79qiYy2pA' \
    --category 'F1DwYMEgxmUWao74' \
    --fileType 'R1KZOhlKUo2tuMTO' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'xTgz27trjucqZjh9' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'j0L1MnE1crLTv7Iv' \
    --body '{"avatarLargeUrl": "eATf9AYMZ7xcDCIH", "avatarSmallUrl": "xrRipyW8QK9ZvGGc", "avatarUrl": "GZGdPYX7WHH5oudE", "customAttributes": {"L2vl3TSh0ItLXLh4": {}, "W6xqfIfbEUDdolwn": {}, "ltVh2aJlxkGN7Z2F": {}}, "dateOfBirth": "1999-07-12", "firstName": "seFM0HAgBDhB7Ixo", "language": "gdG-AEiP", "lastName": "zZrqZ3vSq6I41dYl", "privateCustomAttributes": {"jNQx6VeHyXkMgh4r": {}, "eoYCYUm0jXv8B9Pd": {}, "tG5psrmXEBHrvzbq": {}}, "status": "ACTIVE", "timeZone": "kCtDWD2L3aMpOTsH", "zipCode": "lj8Ri81IgoqcdanE"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '9HwhVDNOVBj1CO5v' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'psGZ2RCJ642itNA4' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'eh5VWkQubtT4JMrI' \
    --body '{"Aj02FI9zMtrkQROj": {}, "sUmeAcvmQw7hoYch": {}, "btZKmTAPtLBbWGG3": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'u874yjLFWXUkPug1' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '6nxAvehQLaCFUYKb' \
    --body '{"ITTyllMQhvfVTPSi": {}, "lQvxwkum2487LgGp": {}, "GgWWTGkb2bhJQQ8k": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Q1lUivniYtkFaGyb' \
    --body '{"status": "INACTIVE"}' \
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
    --folder 'yMEtP1IEPtfcDA7T' \
    --namespace $AB_NAMESPACE \
    --fileType '82NrJF2HVABUf6Do' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'k4e3je5fh2tpWVq4' \
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
    --userIds 'd5bX2DHEJFMClbgq' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'mMaa3kJzWZfGhevP' \
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
    --body '{"avatarLargeUrl": "DrKcSIIz5YUpG8B0", "avatarSmallUrl": "PTM6lubFDwaF16yQ", "avatarUrl": "2BogJDI4TTw3DtYJ", "customAttributes": {"5uB5UA6Mkwmquml1": {}, "BMboLAFbfv59TKqc": {}, "L2cX6E9Opk1WW8Sq": {}}, "dateOfBirth": "1994-09-29", "firstName": "okXnQV22mxEGQUlO", "language": "Rl_Dbnu_590", "lastName": "vNR3OH7yD7dwttFy", "privateCustomAttributes": {"mUQl4BenB9gWdkmP": {}, "eHvgspxdYWS1I5Iu": {}, "DnOeppaxd1Y01xKQ": {}}, "timeZone": "ct97k5WSwTdz3RCo", "zipCode": "qMmGh1tzqOCLh43J"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "X0LPIzouYD50wogR", "avatarSmallUrl": "pSmtOifHSMZB6uS2", "avatarUrl": "hmYDboiYlyT9xyON", "customAttributes": {"uTPCNxXYB9aYJfFb": {}, "2vctt1eURdDwMD9y": {}, "WWyEnmV9s4iWYsxO": {}}, "dateOfBirth": "1995-05-04", "firstName": "7HCj4KwRFFkzk6wY", "language": "zWRw-UE", "lastName": "J39bQ3ztKyXncVx2", "privateCustomAttributes": {"Wmuu37T9vICT1q3J": {}, "l6p4dn8TOdsjKqu2": {}, "QQmohuwUs47xDNcn": {}}, "timeZone": "4zz455Xj5kOL9gaT"}' \
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
    --body '{"pqonRPmUpTjwoZja": {}, "gIQ6U6PdkpnsV77E": {}, "3MsYc9HlyvrBypVS": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "bCa7CELImcb6V5z9"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '0nLgsmmiDwAFwijK' \
    --body '{"category": "CBcdbiG6tfngg0Qs", "description": "eivml37qVr9Wqy47", "gameSessionId": "mZ4exRwUv7280CPz", "subcategory": "zJujq2AxZfaUYw3I", "userId": "eNLHnKk0RBfNil9q"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'eSb9wyPYWaRI5R1E' \
    --category 'Ym2LvvcydAPrD29I' \
    --fileType 'h79jqvAWXHfOgsbD' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'WTRAvGFU4drrMdQJ' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'GTEAt6Rbn6o2zavL' \
    --body '{"avatarLargeUrl": "ipYPkWu2hpAanXPv", "avatarSmallUrl": "9LYvBGU2uRDXwcM7", "avatarUrl": "PT5t8gGSpkiiE56U", "customAttributes": {"TYrJTeYODYk3CcU6": {}, "AIS1SSLI4huV8eRd": {}, "wXD8s2N7D7mQE92V": {}}, "dateOfBirth": "1976-01-07", "firstName": "Ly8eTGBZqhEH2khB", "language": "eK-lCxM-965", "lastName": "zM77fQekwmtq0nQV", "privateCustomAttributes": {"d9CZvtsEvAaVaj9M": {}, "1eXXqTfIqHoNhLNb": {}, "rk3Y8LmWU1PE20Q2": {}}, "timeZone": "IYtu5nd9BKeCTmvX", "zipCode": "gBeG3wUYcXo4jEqo"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'zjebYG94B8HDh8PC' \
    --body '{"avatarLargeUrl": "mGNz3Jhqbk9Ho4Jf", "avatarSmallUrl": "6tTQudxnfCm9Wrwn", "avatarUrl": "wszLzsbr8Iq93cQo", "customAttributes": {"cEyZ0b8glpXHu19u": {}, "sHqFWNoR1hMHaFL0": {}, "k9C656RzFh9vEemf": {}}, "dateOfBirth": "1988-07-11", "firstName": "PTsqSFdR5g9LWhFe", "language": "OuPF-cWah-mx", "lastName": "wF8TLCULb5lZVMB9", "timeZone": "tfEYs2ZAw3LpANOn"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'fOEr6knxwhGoViXc' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 's3q4BLKMR72nLAZe' \
    --body '{"M3GeUHjlqc153MYF": {}, "auYgza8glh6Xm1se": {}, "yTmnjo2lBdnFS6yN": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'oJw9mHgYcVb2t4fW' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'LLP9SjVMH1GRyPke' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE