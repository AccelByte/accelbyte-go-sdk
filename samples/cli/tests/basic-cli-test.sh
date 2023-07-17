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
    --body '{"displayName": "CX0iOlPXZMiADetz", "namespace": "1wyRvBvBTPwaq1jf"}' \
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
    --body '{"actionId": 34, "comment": "y1MnVq65qkWiIT5G", "userIds": ["wfefbr8blavcKKFO", "9tojpNid1hzncrpP", "1mF4N3xFxklO1IYd"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["cROBqTnED3gfBc4n", "zMtoFu1Wm5Oswand", "hCmxbyFWpJxG5Iwg"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "fa7s07qDGvLkPn9i", "description": "uNtNqeyBfscVvUPF", "gameSessionId": "p3rLhwL3O1AMyp6Y", "subcategory": "HsQlwjXTOi0H3RX8", "userId": "wNB4qO4Cip64BrJy"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'sYHqAiVl2dIVlVRO' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "xwzHE6MjhvUzqgiL", "userIds": ["664XiSmwubPKNe8B", "EVTkNaDnvB269GOT", "6e7TgPGjOSDo9DJJ"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "teJ3YgUYz2yXQpB3"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "6m9PNvk1yyxWfzPl", "value": "KdbIGs1ZQTMfj3oR"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'RYPZonwir5TUhtEs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'NSNJZQaP56sMmUGn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'UoUUqpWsPi1e3Ub6' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Qadqgl6zKGQ3wD78"}' \
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
    --body '{"apiKey": "6Beamn3ER6MaGx2P"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'FdLA7HMWQqv5eLXv' \
    --namespace $AB_NAMESPACE \
    --fileType 'BIUa5JJn3KvTxMgl' \
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
    --lang 'pPjo6ceQeFiC8lQd' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'K78Z3btYSzR87WAl' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "UJ3bikqXinhw32bc", "name": "Usi6CGUa7zp1yNPj"}, {"code": "314K2SGhVABe7KYU", "name": "6jLQ06Rc3ViE4L7v"}, {"code": "g6Jzegnz1kbhRO0s", "name": "QEba8LmrnzdJn2ff"}], "countryGroupCode": "UX9RgRI4YsuUBvEZ", "countryGroupName": "W9sWu3oOnCoHTKcW"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'WZwmDKqT6B5DvHJa' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "qaruGM3TUv7nQJHL", "name": "ODXwK1ZYBIEbbtez"}, {"code": "zg1nSyKtKaSPRWsq", "name": "Qu3jm0b2my2lzSqY"}, {"code": "qVsstM8MYQpNU8t0", "name": "PqLAZ3vXs2fQiz1i"}], "countryGroupName": "uKxvartCND4rb6CO"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'aZCSEb44ocEPToVe' \
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
    --publicId 'jBnsEJXaNDu91oJx' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bm6gbFmf03bayDv0", "zk4TO1zioHy9pWzP", "aFskIzIF5DrMpbLU"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'YRA14HJo45PvkbpA' \
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
    --userId 'TNvxBNlYABLMfnkg' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '25kXKEFgMiMaNn8J' \
    --category 'GvDW79NI7d86TFrA' \
    --fileType 'X3NxrYfjFx4qfmh1' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'fWArFmoTHFOtOfPt' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LY9MX5bHrbRIBEuj' \
    --body '{"avatarLargeUrl": "7R94Wv2EoA0UNN3S", "avatarSmallUrl": "NGwib4z1BoSmwC01", "avatarUrl": "lmZfyy1m0pc30HtS", "customAttributes": {"mLktLpn6iaw3vGoE": {}, "hdXKzAmscss9e4L0": {}, "5KIKULo2GrGNodxA": {}}, "dateOfBirth": "1971-06-14", "firstName": "qLa2t8qqKh6AISsq", "language": "Teo_eArt_131", "lastName": "nRpH9xJdV51vVKxR", "privateCustomAttributes": {"kcIeh8hoeG2ZiqJd": {}, "BThrzw0NbAiavuoB": {}, "uWFKMNuLbz9hldPE": {}}, "status": "ACTIVE", "timeZone": "TDSvyeVffVE51WE2", "zipCode": "RyYai6hvRUHNu3C6"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'sEDZcnOY0KeuTWKV' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Uo0ldJwFxXOaX5KF' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'vm47lkUFYs9NtE3g' \
    --body '{"OTHG8r3buJS1WmyZ": {}, "c3PtIZruG2ZjddTd": {}, "VNPRHQS2wQ3aJV6O": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'KNZzVQDeLHefz3ks' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '4sUVSgh5loQq2DFM' \
    --body '{"koK5BOhMsRXZrGjj": {}, "P0cwIjBrW6XFeARe": {}, "R2hI9hIKl8iXmu9V": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'stZE0Pv1xZPlCW5u' \
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
    --folder 'eAxYzeduiKGB0rMV' \
    --namespace $AB_NAMESPACE \
    --fileType 'yPOkIY3tplQtV4ta' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'JNbotk3vuebxvLn3' \
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
    --userIds '79qSgeeqg4xHOt7a' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'OjKGwiQ3szhayMVm' \
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
    --body '{"avatarLargeUrl": "xOnMdjerzCCXik8x", "avatarSmallUrl": "T7x1QLHpRok5M9GT", "avatarUrl": "rswXfgu9neCVL72w", "customAttributes": {"p1h3ANIHLiE5vbUU": {}, "3lFb0pLVc2oRgpsV": {}, "K6qAud85P45PuR79": {}}, "dateOfBirth": "1984-07-22", "firstName": "jirBKoYX3JTMsrFa", "language": "PJMm-LFNP-552", "lastName": "rf74lz28YYcXk3tG", "privateCustomAttributes": {"uHO0itWavjUitnc4": {}, "WdxSMaHaHsIsPJ51": {}, "5bAC6IdKC4s0oDgs": {}}, "timeZone": "qjyTjUorXUlP0ixA", "zipCode": "wISF2FU8P1N3aRDL"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "rbJgEe4kGG1HB9aJ", "avatarSmallUrl": "LMCLf6sHnx1ypRUi", "avatarUrl": "7dKHYyEHb14ImE5a", "customAttributes": {"qGVAhFMoPEyReLqB": {}, "RXbw39cFT8RgEQ80": {}, "jNADIkLmSKZ8z7I1": {}}, "dateOfBirth": "1990-03-04", "firstName": "3mWhKHNyF9eobTb5", "language": "Rg", "lastName": "2d6cnkElLy68CfTG", "privateCustomAttributes": {"a6zgXrUecNDChcjR": {}, "XDuLZkOQvqXLtFiS": {}, "trEQd0FVmasjX22c": {}}, "timeZone": "CE8WqTUx9rn0QH4n"}' \
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
    --body '{"mDZEfIxPIXYWo9RX": {}, "TazIdJZWfD4wcSOZ": {}, "7KmmD8NEsiAp52QH": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "6GVtzrBkZDF5P0oq"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'zLWC19JZFKHuCO6l' \
    --body '{"category": "RJdOImx0BewYDepu", "description": "vIXzNolyeaNHwIIj", "gameSessionId": "wAa8v8LZhlgyO27E", "subcategory": "E1LiHU4ey8rFalW1", "userId": "NcKVlbYK9tzxu4k3"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'MqA91uPYEbN70W5l' \
    --category 'UywqIb1fw0aDhmyN' \
    --fileType 'ROsFyMurK80Qu6xn' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'chU7eiYDoiApXzDB' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'fvXXfC8VS5yKgtd3' \
    --body '{"avatarLargeUrl": "osnIKxfzk9eoqu5u", "avatarSmallUrl": "IsW7GZLXbQo9ob0q", "avatarUrl": "5wSmVi12aQbaW8IQ", "customAttributes": {"772EWzQTFTbkwNnC": {}, "PIqrAOUITkXJxd3e": {}, "DAGFbqJaOuhqPOMO": {}}, "dateOfBirth": "1978-07-20", "firstName": "1TsuXx6rgTAEmL6L", "language": "LXl", "lastName": "Y1uos094Ha2o50eE", "privateCustomAttributes": {"H1nxxwJs49aQLpxp": {}, "cPxIdh4Y3Hgympql": {}, "O3V59jzz8Xs8Rlii": {}}, "timeZone": "E84HBoYFowLi0v9O", "zipCode": "5KLJestgOjEWrjgl"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'WYc55wsBVCA0nk8f' \
    --body '{"avatarLargeUrl": "OoU7cfYXUBu5AoFO", "avatarSmallUrl": "YVdf2PDCsbk8le2M", "avatarUrl": "3aqRbxAujbQzdZw0", "customAttributes": {"NlcJ1ukXhW08FsQ6": {}, "i8H2d1xagGebme0E": {}, "bu8mDS5J3LVp6i2u": {}}, "dateOfBirth": "1985-07-30", "firstName": "gFjePQ4lkBTj0Ete", "language": "Vu-142", "lastName": "cVh8JrWaqQOZePwI", "timeZone": "RqxMm4gBErwYMbCq"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PTm6OsYsdgCrWB1G' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'gMK1dFz4TmF2YryL' \
    --body '{"DuxJ0Q3VJ0aLKjVM": {}, "VBf84Unz7MM8ozx2": {}, "uwfJ2BgR0WJNTtaq": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'cimg0nE5sqeaE7zV' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'DCctVE3VQoORXz4j' \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE