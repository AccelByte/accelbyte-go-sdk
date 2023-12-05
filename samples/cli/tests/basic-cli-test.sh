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
    --body '{"displayName": "Lff4nO4cd2CR2V0d", "namespace": "NdWlyIjmtjfS8WOh"}' \
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
    --body '{"actionId": 0, "comment": "WnIG9Uu0BAbHozfh", "userIds": ["Rr6mznhdjYylS3Sc", "rQjwOtbOHGPgt1y9", "sflZrZ2dGLr4DMdb"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["Z1klgmZeB2JluYZs", "Kk9Ub5etqCyysqQk", "qm5ik8Hss2LXkYDx"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "5p1DjRfOe7lFlHF7", "description": "sp0e6L72Grs6wnJ0", "gameSessionId": "T9Qnq6fqKOHvgwlO", "subcategory": "8vkMbKXvXhPxRJQt", "userId": "srAsVIG3ghFBT4Qw"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'TUpkLQjckyYslknv' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "WdjbRA3uAQNADnWG", "userIds": ["Jy6hxdFnKeReZ1iD", "GSJ2p3jFRDC8tWfa", "Bd9fkGN2KlEt9Y6R"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "ejUGQUP3MeRXeXmG"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "xFzl47SsASwsslkd", "value": "TAXWwbiw4I4hXxRU"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'VLTi97garRBGp8rb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'FjvHJeeHp11E70hO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'kX53b6ztoGbEha1l' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Gi8n66e3vHpE367C"}' \
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
    --body '{"apiKey": "9Hb2CyKAb0B2aDwx"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'nDsn78czexclNBom' \
    --namespace $AB_NAMESPACE \
    --fileType 'XimZ7QeuRU2Hgexn' \
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
    --groupCode 'Q1dv7RVJX0wrgsO5' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "lxlj7RxTHxzqfQ5m", "name": "90s66XgevvsyTGaN"}, {"code": "65xbs38ZPtNtPoRL", "name": "6Gj9ztP7MaNs851D"}, {"code": "lQqNVzVEb6M3xdqw", "name": "BMaJFz2Mz3bOM2Cq"}], "countryGroupCode": "SCiKPxPLh0c7Pczo", "countryGroupName": "iTBQyZyxzlnEAyA2"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'oWNIdKv0WkMDMhOf' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "IeJOr2FRBFmFxWB6", "name": "IV0ordI4YeDpclQu"}, {"code": "H4kUE48wo9GR9itV", "name": "j1KnkizPJq9qwA4U"}, {"code": "aaD6iD47bt5gzcK5", "name": "LLADXCf4XjKAl8Eb"}], "countryGroupName": "1DiO3reE85dAFlW4"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'QzkKQWqjlleqz5S8' \
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
    --publicId 'lmZ9gCHKdER0Mvdi' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wRfeAKiezikDQYSN", "rrTu1hoCqwj8czDs", "deFT1foROcdqs8NW"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey '0VlrW7N1WTUo7Brc' \
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
    --userId 'PUGmP1ZPYd6WPKvO' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'mw1A0zefi7JrEc8N' \
    --category '5n550poskfm99o3y' \
    --fileType '7ZF8aaiiyv1f3nR1' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'wsRvoJOKWivme2HR' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'D2YnqMGsZgdiECI8' \
    --body '{"avatarLargeUrl": "ODhvkqWzpVGUmwbv", "avatarSmallUrl": "rw4m6hfAUVJQdyTy", "avatarUrl": "j8k7EpaKQaZ1C3zo", "customAttributes": {"jAiQcAqp222O8djS": {}, "uvlARF4D5QFNsVuk": {}, "jYiNkHVyDV5nolOT": {}}, "dateOfBirth": "1977-10-27", "firstName": "QzSEtsOszwDicVxd", "language": "laPJ-334", "lastName": "8tMmfnS2SG8qGBPH", "privateCustomAttributes": {"1yiTL7waOcJtKQaI": {}, "kZXOB2nbG3fho1Q5": {}, "XIczacDUOf2yTgNz": {}}, "status": "INACTIVE", "timeZone": "wqv7RmipKcoOFkbo", "zipCode": "zPlFBB8XiBctKI1M"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '6DqBvhf9fRQ1oMIj' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'ByoiReo8iLeyhcpA' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '1uJCkrzrAblFZ0wQ' \
    --body '{"cu2IetzmjuEtoY4z": {}, "TT4VbU6bAbHcNFR8": {}, "Yh8oU2zggupu3pmA": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'aSRcPOJj8a65Trqt' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'Qc6fhhczIR05F4eH' \
    --body '{"6aLQ9ekDNLshDBkH": {}, "srZSBVaenhQtpPNp": {}, "daG17Xzc833wXSoy": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Epb2zL7ULQtRw8Wx' \
    --body '{"status": "ACTIVE"}' \
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
    --folder 'eHeNJH9yO3b2omoc' \
    --namespace $AB_NAMESPACE \
    --fileType 'wb5wma9xBwT0dXG8' \
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
    --userIds 'kNOemkBCF0LovAWJ' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '2YDPbgBTM4LT8ERm' \
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
    --body '{"avatarLargeUrl": "aOumoLYRnCrsWnaj", "avatarSmallUrl": "744EQHCkFB5qWIIk", "avatarUrl": "YEOcyXxW11hmLlFO", "customAttributes": {"ile6qWXeelunTmk5": {}, "XOkjPG1mwYqgnOMI": {}, "wjStccuztWvjOGvU": {}}, "dateOfBirth": "1973-01-19", "firstName": "G4xSLjh824Yf59Da", "language": "ns_nV", "lastName": "f0R3CiJySBK5wcUz", "privateCustomAttributes": {"qY8E1DDLSBNH4oeQ": {}, "nDwo416nk7e9C4cW": {}, "cjy8FJ7LJZ9ihk1z": {}}, "timeZone": "64AIeGoOul7lCCG8", "zipCode": "3cNonQ98K4hr79KJ"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "46j3Ov1TRVn4OOcR", "avatarSmallUrl": "mep6eiIPeUf02wPV", "avatarUrl": "fGCPFyO8TwzyEuZn", "customAttributes": {"jFw8kdqL5K7MRtDX": {}, "D3aUDfqyIyGhV4iI": {}, "Io3DQbZJuElMKx1U": {}}, "dateOfBirth": "1990-03-21", "firstName": "L9pDOF5Ku5SLSXVO", "language": "fSBG-796", "lastName": "2bNV05uESh7ii9KY", "privateCustomAttributes": {"iCj1KrvJlnCkStcr": {}, "yHX73pJ6pQ0dPrdV": {}, "EIuRQHebJc55vgo4": {}}, "timeZone": "0VjCAYBGI8r0piPv"}' \
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
    --body '{"oLbb0kwLoEG8oN4q": {}, "OkkChSd4S6oAlny4": {}, "ci6oax0PiNCfSeg2": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "7RoE0P1h2r4YkMIl"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '9RXhLvOXVoV9KvKy' \
    --body '{"category": "ccuLj1wSCS3Br4YJ", "description": "Kr1Nh7BOpk5oNJhv", "gameSessionId": "jH5nTLxus5yWvcI7", "subcategory": "JDYgCbPEXf3ZEHOd", "userId": "es600tqiYzeRQUyS"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'qbUgl1xGUvLnCiAf' \
    --category 'v2ohg778SBQsqCJ4' \
    --fileType 'B50ufrYBt9CUXowG' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'n8PUXv8yZ5bVsVoz' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'PDtQWowD8VlVabpJ' \
    --body '{"avatarLargeUrl": "ttHtXc9IBSSoXbux", "avatarSmallUrl": "aPChE1pjby9JBTC4", "avatarUrl": "3q87g16HLBjmGVIj", "customAttributes": {"uzQKRO27UncdIhs2": {}, "GTXxFMQbczJyowxe": {}, "YLrMrX186MVkZ0u7": {}}, "dateOfBirth": "1975-07-14", "firstName": "oxTs3wjjfWMDtJP3", "language": "hOCA", "lastName": "3aHQn3UkAUJ5XqF8", "privateCustomAttributes": {"06H4BuA3YSpq0aJQ": {}, "XgJ0O4hyKPmazCpH": {}, "agJGRHIsllwkR1K8": {}}, "timeZone": "2Egvnrqb6BpDTnQN", "zipCode": "xvp8icoc3G6ANcsJ"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'oLutAELeZxvTdQjx' \
    --body '{"avatarLargeUrl": "DqvyyEy0mwnXMlDF", "avatarSmallUrl": "PFjuXY8Z52fjs171", "avatarUrl": "5CNb1IH9EcNEdvji", "customAttributes": {"cWKYUjHBne3564a6": {}, "j6lLfHzraLwRNsOM": {}, "2LpHg8hscTuVkt2x": {}}, "dateOfBirth": "1990-10-29", "firstName": "f3cvaqawED0M1odd", "language": "BV-wjrL-855", "lastName": "FafdheA2mKL7KLOy", "timeZone": "3o8KwxNVQmvBgUnw"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'jti4MWy7PM0dQ52H' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'WNhsuGXpD01F3w2l' \
    --body '{"HrODiBhalkBu8nbh": {}, "Y3xFZNPzCWtkzso0": {}, "aoGkfUrkmx1KEZi9": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'QxGDTXxkgxW2GLDI' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'c6quUAajvqecs3VI' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE