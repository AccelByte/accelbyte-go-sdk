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
    --body '{"displayName": "HUepJfJGqY8jslON", "namespace": "EEacp9vboJMZyM1c"}' \
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
    --body '{"actionId": 49, "comment": "2UAISHfBn9th4aX8", "userIds": ["XMoKVJeLwGBbybtn", "9fYw0woGIfVgt86z", "4PLWgEtvMngAAmvy"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["1X9YcZILZoUmQb3A", "03GVlk1b9u9qBpoQ", "2zoKxjEsKE95DM0K"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "g41IUF3DPtk7RR6V", "description": "vlA97yR6TqyNnOMo", "gameSessionId": "lhH59jG0qFurg32c", "subcategory": "iJqdw1okTXB9wijf", "userId": "itZKycVxsnoflHdr"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'qXfMQ5rsuCCqpyZ9' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "TJ8tub7UNZVVGiQN", "userIds": ["FBXezorM0GD7IExV", "0WlWgmAZZYPlQPN1", "bZc3hQbajsKsOfW5"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "hIUUlN2RGx0e7p6m"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "nRkmPptlA4amO719", "value": "0ZjL8eAoK0SYQYpE"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '1GTwnc5ntp0XXSUV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'paxMBCaNP6YJQaUH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'fI8PvkvIxRJsr0wo' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "WgktyYET3ZMN7eSp"}' \
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
    --body '{"apiKey": "0Po6w3fk94IceQOx"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'yOCRMLwBWiKDskqi' \
    --namespace $AB_NAMESPACE \
    --fileType 'YT5TGxqUlNVp3VxW' \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
eval_tap 0 22 'GetCountries # SKIP deprecated' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode '84ETGCnsg3OhY7Oc' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "Cm2XHINIanb0Si1S", "name": "yGYC4YamKKvPYrJr"}, {"code": "DSsl1I73PVG6Wmap", "name": "vTQRVdr7Fa6vMQN9"}, {"code": "r0N1g6tXgwANRfqC", "name": "lkaefNfDoZTSRw5a"}], "countryGroupCode": "8t1PPrY9QrESjg92", "countryGroupName": "LQzdaXALF3t2lbEe"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'BV435wrAG3t8xFrv' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3pJOsqtNjOSK0gcB", "name": "hmfyXWnkrPiNxVYX"}, {"code": "zzu6guihUfQs5l77", "name": "g4J0h1nyAEp6Ff6D"}, {"code": "R6XZKL3vf8a73rsc", "name": "tcMoIeVTUhGFNIph"}], "countryGroupName": "X8BqKRchHlUctVXE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'ubtT0cV6bG7R2KyI' \
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
    --publicId 'MffTnP1HgQzuSw3u' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3LI5vXUc2ACgyDEG", "SGY3MHDJUtvTpzWw", "w9PaZv8c60LagtVV"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'ZJCtLPi6UYfiS76g' \
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
    --userId 'CJFeCuQuiR1KKZ0p' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'DQRwDln5Hg2E68cm' \
    --category '1eOEJsXW7Lt8D2Uq' \
    --fileType 'OJ8Z67oV6auzV5zg' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'tNRH2Xs9Y5dDlIQg' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Ebh3LNK8j7BZMYXH' \
    --body '{"avatarLargeUrl": "u6MkSWfqWxveu14A", "avatarSmallUrl": "bBaDb4T88NXLk3Hk", "avatarUrl": "JKuJ4J807X74E8SF", "customAttributes": {"1mTbrGeyyS49Jc7Z": {}, "DkkIyXzbKXb5U8ju": {}, "NQJOG7uhVt1wx8vx": {}}, "dateOfBirth": "1999-10-11", "firstName": "ssv9yESvBawAtyi8", "language": "Zztu-GV", "lastName": "yl5Leymvf8P8L617", "privateCustomAttributes": {"BidLPXfenluwtW2Q": {}, "pNLTszYvgMeSQilp": {}, "8sEdRWuIHwVz26WI": {}}, "status": "INACTIVE", "timeZone": "dXqzW6eZeSmfIzsU", "zipCode": "iq8PuIpe7Rl3A4pd"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'WfoXaday2ny9lXFP' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '1yLHEl1p9ZZA8Gym' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'd3fUJnB18L005GIZ' \
    --body '{"TiCMCm6ttpqe24OZ": {}, "7hyDAb2XrjAOIrzj": {}, "ccz8ciB1n9yVYO2M": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'RLmbg6vxgoq0YbeX' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'HiSaTNeGNqDg4oRW' \
    --body '{"n5WnTpnqXofOZXNV": {}, "yl79m2KH6tXtLK6x": {}, "rn4rpTCTE8NOeP5Q": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '4S0DWOu6N5tewV2k' \
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
    --folder '24jTIsKSjEwUtFMV' \
    --namespace $AB_NAMESPACE \
    --fileType 'CxGrbRVhzAWON0aG' \
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
    --userIds 'eJvgZJGQVeKCyry8' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId '2hRaBR7Z3BApqFw3' \
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
    --body '{"avatarLargeUrl": "LBjyxVNKBQsrptTK", "avatarSmallUrl": "CCYXXCNnjK1ZBOLH", "avatarUrl": "spIxYimeTRW1DdvR", "customAttributes": {"YSUbBPSFyLhYvo8N": {}, "qx945yeVxpUT8H4J": {}, "IEJcyPvAsytPLQH1": {}}, "dateOfBirth": "1998-10-02", "firstName": "yAbyNuNr4RXcsHbe", "language": "OrS_ehYL_bq", "lastName": "uR4SKol4JujO061q", "privateCustomAttributes": {"XZCvV20KZElzuL9a": {}, "85bBFw168f6zRW3F": {}, "FV3qWhbMz9TEWSNZ": {}}, "timeZone": "nYRohfKG53dwaPkh", "zipCode": "Ceuy5qLYpx3ctYwB"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "uf5ZgPHG8bux2Bcd", "avatarSmallUrl": "OQbh2ipRS9fqogKT", "avatarUrl": "F6LYHNcKpY6i8tOK", "customAttributes": {"NY3TkrcfNNFv9GzS": {}, "IqdInm4GYSkRa2jf": {}, "cFKE3qC03cEhJimU": {}}, "dateOfBirth": "1977-06-03", "firstName": "V9ZYKfmmJRqDZy2h", "language": "KU-trUU", "lastName": "GFIqx4qddewvUf9N", "privateCustomAttributes": {"C0fhSmz8VHiOdsTz": {}, "PiSLWoaE3Ma5MogS": {}, "ckCk4TmkkGrRCpWO": {}}, "timeZone": "rAod6wYNtuwFX3Fm"}' \
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
    --body '{"ycoWV0GfNJE6i9e5": {}, "f2bVPwd901tftNVh": {}, "9qwIg8ITZSJvo7fb": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "4D64IROlGQzD6Ljw"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'V5OY8ScSuBXWEaBA' \
    --body '{"category": "4gfT5pLgNV5tKaaa", "description": "ln5ZzY800sJnaTa9", "gameSessionId": "4LH3c037IHOcu3IM", "subcategory": "ITi033Z5JNQSuMZC", "userId": "eOUb78NbjQRXMZVd"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'ZOVAJK4bDhifX7e0' \
    --category 'JkCJRjeYWWxqdemD' \
    --fileType 'HPmfRu19MgxfWIw9' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'fVGchjZP6xSCmTs6' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'FD1Xaeb3WioSGVhG' \
    --body '{"avatarLargeUrl": "4ngap8QlH5NEHqoN", "avatarSmallUrl": "RtpPFsokm8oHd0Gj", "avatarUrl": "rAb6SPQT2a207nzb", "customAttributes": {"ELZ4XvlZm5w1FAcJ": {}, "r9ox0hNCadKmZbOM": {}, "8US2TpHxtYHjwRpE": {}}, "dateOfBirth": "1996-09-08", "firstName": "Yw5EPXSN9moH0bJ2", "language": "ignl-CB", "lastName": "bgrUaAw9rzmPiwCt", "privateCustomAttributes": {"1HcP453ThckI5YsJ": {}, "xWyWUckXeLA3Aghi": {}, "O6hwNlPdaatIuSpz": {}}, "timeZone": "kZZett9PMXworUjO", "zipCode": "DSC5jxo2Z4tfYwxq"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '45HssmePUj14VRJR' \
    --body '{"avatarLargeUrl": "rjLXJrKiLyAuFscd", "avatarSmallUrl": "XlCJeCczjGLZEg4V", "avatarUrl": "T5u2cHMmGuZxi0CL", "customAttributes": {"5eU82FNepwDMRLwd": {}, "es7nuPz4UiKidOLx": {}, "Fm83dPLxTPdoJeUr": {}}, "dateOfBirth": "1988-11-04", "firstName": "2cKNNFyFJbIpEtn5", "language": "qj_tV", "lastName": "HGhYA7PKLFHLO3tp", "timeZone": "Ig7PN6iV5vt5pvTq"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'S3OhLNzCxl5v3NKk' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'zqY0fcFJHBjDUPAN' \
    --body '{"KemZCBmyiD8Km1k7": {}, "VApGfZPuumjF85oz": {}, "NpAMf2yiUmoCxaPo": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'BAevVGsOS4Yp5mXR' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'RXbDRpsNoEo5pvmo' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE