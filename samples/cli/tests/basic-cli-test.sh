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
    --body '{"displayName": "5qPrlPOv10wafmhO", "namespace": "4kASAne1ddYDJJNd"}' \
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
    --body '{"actionId": 45, "comment": "IZXptE5n4GQ4mMIo", "userIds": ["Je4gR3hSJCJ62INj", "aKoqVfL9lx3rPkgM", "aAuuzRvIAOM8YMsU"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["C2Q93SaV3cLRve3A", "9CvVimrDaox2StJl", "RjkoPpGRKums5Pzx"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "6FHV4hfJsJMzgDY4", "description": "RNqgPaASQ7OCtPoH", "gameSessionId": "cdwsoxofsIU4B2il", "subcategory": "a3lpJOzCMHhF7n1f", "userId": "WIzI2wfabaSE60l6"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '3qafCcejbzuBSBj4' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "yp4zB4b81sIcGXRh", "userIds": ["zX4Hsg8TKAIdH2QD", "leWs5KvLxgf30LaP", "k8h3ezGAflhTXfsW"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "XxoEGnPaM4cyvecL"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "8onrMtAfPnwpKss6", "value": "7v6ZsLWBjQnX1UrZ"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'M0L4U8mAouhrgLQW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'tVEYgS2aMIMVShTM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'IXpPhaY7koIBzUDi' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "5HCe6QnOtT1J4RVV"}' \
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
    --body '{"apiKey": "4Kd9HKVcpSyBLe3k"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'pvGfC18toyi3S84d' \
    --namespace $AB_NAMESPACE \
    --fileType 'XPCP5A65lbWCs0Hi' \
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
    --lang 'qPTwQ8hkWfq0YRoo' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'hxa5PJSxfg19IlMm' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "CiiEctd9C8tq1XW3", "name": "Q61i86EkDPhCzwWn"}, {"code": "IXT7E8LfVNGrWBPB", "name": "VX1TxOvvsO8mDkh5"}, {"code": "lFwuVTTZV4axubpa", "name": "iClxgciXGUiRhBfh"}], "countryGroupCode": "lba6ygG6iWBYf1wM", "countryGroupName": "KJDtKuPEJowB1GcV"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'BDm3zpSMvso0RIKv' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "GlwNKnuUwsYKIFFt", "name": "izEqBqUQdHnyOxVq"}, {"code": "u0sTS7s4DwinentC", "name": "cHpR8BfdIBKUlwVs"}, {"code": "sA5o2ZhjnSOXB5rG", "name": "tJShw4rQqlXy6U27"}], "countryGroupName": "Kdpl7MATIjtAZu0T"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'H4HOyIOILqJ5vPeR' \
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
    --publicId 'EKX0ivXa0mJzk5kB' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xHGQbp0cd9a3LNLf", "HMXYsscUhoIhzbJ4", "tn7DCj6SyJzRlisj"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'YuiLpIB9OEx8csXy' \
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
    --userId 'xVgANoQiOFrxxflq' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'sHm0hub4ppKJmc4U' \
    --category 'Hk9WjZUCQJwbdo7G' \
    --fileType '3KmeYEswSu2xCZfy' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'jLYvzsdGTz1yDKVl' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '2a5TUiFryZfzBGX2' \
    --body '{"avatarLargeUrl": "5cxQRASWR6uHztCe", "avatarSmallUrl": "5NEkfxLKqY0iZ6jN", "avatarUrl": "nkQLoZV79kZ8xRee", "customAttributes": {"ZGAi9VQX6XlW2kUj": {}, "JxoccyhoAoFzxV2P": {}, "heMIIfG4KVbDU3dW": {}}, "dateOfBirth": "1972-09-08", "firstName": "3Hvb6EiDPKvdqX4I", "language": "KhFS-bB", "lastName": "bQGSIuxJzuXb2kvq", "privateCustomAttributes": {"nIxBZ8EEbwVQXZdr": {}, "MaoIZpl7Jy5H5mjJ": {}, "UUaqQVlnjV30mcrj": {}}, "status": "ACTIVE", "timeZone": "xJFBW8UP52zEYkdl", "zipCode": "mgcxfbj2kVOjvUuw"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'cCy1NereXrWJQw6U' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '1IgexawIY6K67iAD' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'pV5WXXMIQtC4xM6Y' \
    --body '{"DTLWBZh9RnkQxtLP": {}, "C1cUIPQZyUQW6S9Q": {}, "kJ0IWVfwBXZ6hHvI": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'A8es4ZxfZYxcYxH0' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'pbqL6PLiZfPHBY8d' \
    --body '{"GLPYEJe5R7Jb0IR0": {}, "PFCXOxyVAD5caYbL": {}, "l2udWbBmyuc8bFCm": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'kNZrjG8O5GoxtPuj' \
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
    --folder '66kLfxvFH390RrGy' \
    --namespace $AB_NAMESPACE \
    --fileType 'jZpTfRdC5ncKUtxh' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'Zs9BRBIAVvSLS8Z4' \
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
    --userIds '3N8CJlqyDy3meprC' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'pEOiXc2rBw3ucnxV' \
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
    --body '{"avatarLargeUrl": "5fxTtiZrrl5uHmF7", "avatarSmallUrl": "7J2RHjYjKWbYJC0u", "avatarUrl": "bsU19V5Lh38wOcOp", "customAttributes": {"JyKdKb7JqiYJ8qHt": {}, "9JVIcUzololiaMds": {}, "RuxCjxzn1OwNZjI0": {}}, "dateOfBirth": "1982-04-21", "firstName": "vMOdzXa80f0lduby", "language": "AzN", "lastName": "9n0u5awu7NkHnFhD", "privateCustomAttributes": {"y6PpJaJJa01MYVnD": {}, "YruG9VhLlL78Y34G": {}, "OViVqCZZWW1Xuu2N": {}}, "timeZone": "BYbw6fvIGZSjMaQG", "zipCode": "b0OIoH4NnAwGMuyH"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "Mv3Q5x7bjlv5oE6B", "avatarSmallUrl": "3U7bgBePIINwH9LP", "avatarUrl": "njEynT45xyv2brJY", "customAttributes": {"yQnXNTLLwqsMgmet": {}, "86zQjhnW0CGNSXZN": {}, "nfLIbfxR4BFJysTw": {}}, "dateOfBirth": "1990-03-28", "firstName": "aLcZ6gPG92xmITSW", "language": "ySW-UzVP", "lastName": "NFYMdygi1ZZY9LAu", "privateCustomAttributes": {"spuYxNoN8IbMze7T": {}, "b2q8jyPs2C56zFFo": {}, "u4toJZ4s41HWgOxj": {}}, "timeZone": "Gk2muG7DYeCymypW"}' \
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
    --body '{"Ku7CgijL0Mud2XVV": {}, "WUW9MYmcsSYCJdGH": {}, "2E34rfClcJh5PfMc": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "CkFBunzzMuiaDmqx"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'uFYcrujr1OWCu70n' \
    --body '{"category": "AWMu1lQ9hs2Obtb8", "description": "bE9ej0R5oewO5wXl", "gameSessionId": "vkyGlC2Hv4qqbvD7", "subcategory": "3bivUJfp4d86yQA2", "userId": "00QRbkMUhnIawN34"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'UGRCzd7WsYiJ7bxU' \
    --category 'eLfTRmn9odXKDYBY' \
    --fileType 'BTHd2zpCpAZFpdMq' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'mUC0pzFUuHoerDXE' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'cHON0s1xfmpBhCHO' \
    --body '{"avatarLargeUrl": "PgluDNkXWqod9Y8b", "avatarSmallUrl": "1yLMRIbz9ESD24m7", "avatarUrl": "avj5fUPCx2AMpY18", "customAttributes": {"yq64jHqITOrcfK9F": {}, "nvRWrDLrcnXPaF6t": {}, "wkksYg8d7UjKXerh": {}}, "dateOfBirth": "1985-10-24", "firstName": "jy13r1R3vv4QdOtQ", "language": "xdu-068", "lastName": "oQpt72gtEIiSW8CK", "privateCustomAttributes": {"gChWOImVl0u4ZvIT": {}, "Mk7RrVRyvt34V45l": {}, "Ton1brEVjWU38Ehf": {}}, "timeZone": "BqbuVeM1oQuxt4R4", "zipCode": "CxJUWuuhhsU7TRLI"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '2VhTyonJ9GNMiaLa' \
    --body '{"avatarLargeUrl": "Z3VrRvmuXgwDE4Rk", "avatarSmallUrl": "3mWp61EBv8p6TEtT", "avatarUrl": "yqfBs7iUJlPteK6F", "customAttributes": {"hoaxApZgpj02ryn1": {}, "q0iiCF0GLmUAmai2": {}, "4v0HnopaByFYssBy": {}}, "dateOfBirth": "1976-03-22", "firstName": "FL5yIsEIH70pItuH", "language": "aDmw-DPLo", "lastName": "JDobbPsmRmLMDZ2V", "timeZone": "0buIIwzICdPrLUvZ"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'bkarEkKeNDQsyaCD' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '6lxPXbiHf7Xuy4HV' \
    --body '{"hjVpA0Lc9MPY8Ojr": {}, "hlzUijR7yH9qBUIs": {}, "edOnlU4UYdzByMhn": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'tGIrmPEbzkuVpiJK' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'j0SAs0jYaA9rf8kP' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE