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
    --body '{"displayName": "59ypFIidADWyHST4", "namespace": "GYYxZqnBjIZPyNsj"}' \
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
    --body '{"actionId": 79, "comment": "moMSmv59aqrJSeFb", "userIds": ["NclWy71uwWvDnZ7s", "NaGUAE3DzDAxR5Wu", "wS330NWKZErpJur7"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["gC3TrJ6phiz3E96B", "JMAupgEMTSnTmiqV", "NW9JwUo4eFfBZU1X"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "Z2B6OHX312wOVj3V", "description": "NBMdDzyj0jLY015R", "gameSessionId": "NzJtUdT2jCaEkJsK", "subcategory": "AUcg64kmdiJltfaV", "userId": "5K9khMBe6zhG9cQs"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'noUOYKFxbbDjz0sw' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "S0ZSflzo3HkTa19b", "userIds": ["Gp8PeYwjytJIxqYB", "OeGubDGLidaoZ4i7", "TQRpmHAyEB2mHGoE"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "HvI3rY0rm4DBs0dM"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "DubPJoRuEfzz8rJi", "value": "UsibjRi8YseCS7GG"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey '7x3dUlWh1T19skWx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'NxvLstD848YnoBvk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'hTfYz2InAmNy7UQn' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "VaWBGWtm9KY7DRMe"}' \
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
    --body '{"apiKey": "9G1zHBGWPwrVtPIC"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'PjN776GyQWas32PU' \
    --namespace $AB_NAMESPACE \
    --fileType '4Qt9N6x0IZ0fEEtL' \
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
    --lang 'i4UeqS7dDcJRF3MH' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'AAhPvk1EEsjIoSUK' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "mqwG3bwVknfEeXRl", "name": "de5n9iHiDORxGkVc"}, {"code": "xkv0cRplpsF3WSZj", "name": "7r1dy0UYCdYvFuob"}, {"code": "zWyG1oyBo4UGUunf", "name": "53HHl4wb7T4Fk3ya"}], "countryGroupCode": "VnbYWvNIL3KvpWlO", "countryGroupName": "wwGX4kX5c48KT5Lc"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'dRSli6lUJW1rwNQG' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "L2aWUWOJf0ymVK79", "name": "Kbec0u0iOCpcugNY"}, {"code": "S0C1e7QJqoGOtWiQ", "name": "eMNQVBUk5Q0DlWgB"}, {"code": "ZjVrcbnrCy9H1hg1", "name": "amH24L1eWV4ooDC1"}], "countryGroupName": "uER9ue87y6GjH1fW"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'geHiuzLiH39C3Obx' \
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
    --publicId 'Nt8VWCLVqHBFc7cJ' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["d8ucNoc54cIhpGIz", "2N5vMebBD61NIwOt", "eNd4hbNSjNDrzYTt"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'rrONorZfzQBxeZrZ' \
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
    --userId 'e45ONz3dFjsK0soC' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'ZAXw2ECxjvKj0Vr5' \
    --category 'qCxBidQG4okNWons' \
    --fileType 'jbvcCIDFAaWH3cjL' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'I2D6SOCVOYepewgI' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'f3yG8oU4O3x8KrDz' \
    --body '{"avatarLargeUrl": "vxD9aHRUhKwcvITe", "avatarSmallUrl": "UuS8bAxNI3vWz6Jq", "avatarUrl": "xrBwCcdFIVwGAsQs", "customAttributes": {"M7w4NVKTHeIkRHo3": {}, "OBJPPf8nNcCNQRki": {}, "CNa3EPQmr3D8kEzD": {}}, "dateOfBirth": "1989-08-12", "firstName": "mMI5WiKu0VD4uUUB", "language": "OF-ydfJ", "lastName": "bLR0vb7mSZcaijaI", "privateCustomAttributes": {"18NOrlBZtnfDEESl": {}, "acwzhQ7XY714d9Pi": {}, "XtAuHhFZD23Jf9dM": {}}, "status": "INACTIVE", "timeZone": "h00eY5AdcIvibN87", "zipCode": "eETZeZiCb9rmTFvJ"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Suqwf2HNjyN38BmW' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '2VHyxeOngndBp9C9' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'dIpRAahlsc8cHz5E' \
    --body '{"rr6bLANXiYV9JioP": {}, "XgbMLcLbfLLkr7XB": {}, "PgXVcOwkZBdqdkPm": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'zBcpVxGCQ2OJ3vjD' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'mx90amePB2n41fvf' \
    --body '{"h7kDfYNsbqg1tAnk": {}, "tbqpURBoFUDGLqSK": {}, "0XRAD4I7xzO6zgTZ": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId '1ZFifud6AvqqIEmU' \
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
    --folder 'y9moaNlLD2UfpyED' \
    --namespace $AB_NAMESPACE \
    --fileType 'At8izymaNAzdqVkR' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang '0mpBD29wt6LdnC2d' \
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
    --userIds 'Iy9gXaYnFuxKxmZA' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'wvRNNyMqN01S2MH2' \
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
    --body '{"avatarLargeUrl": "WKNF6jbakWBgkMtw", "avatarSmallUrl": "YwZV2dBMRJqUwxAY", "avatarUrl": "7i5yXh8ZVwXvRKz7", "customAttributes": {"DczL2dxeiPPKzM5A": {}, "zPi8k3k3iERlmeGL": {}, "b22WhdVR2czXrRbw": {}}, "dateOfBirth": "1979-09-18", "firstName": "86swoqoD6kp6YUpC", "language": "Ge_FQPp", "lastName": "a0phwHnxM5mP5Fcb", "privateCustomAttributes": {"0owiYJecql6qq6iw": {}, "P9Tddaa33ZKmb1Vo": {}, "zyf4H0IdrWj6YVtO": {}}, "timeZone": "kZH7BHmW40zZZGjE", "zipCode": "NGakxivW4Qg43ltr"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "soOM5KICuITjHFXJ", "avatarSmallUrl": "DUk6q2qShuNCSnR9", "avatarUrl": "n16VNc31A5aBMSLy", "customAttributes": {"XDxaE6zjftZtf6Um": {}, "WNykyTodXfgH4252": {}, "bS1p1kUJV4A3og67": {}}, "dateOfBirth": "1986-11-13", "firstName": "Kdb68kUaYNUzraZl", "language": "Bhz_YUED", "lastName": "oRzXl991SzSMa4Ic", "privateCustomAttributes": {"lXmB3ky1lrIdsaAI": {}, "fgSStz6ZKe9GEMlF": {}, "dutR2A3GNhkznS70": {}}, "timeZone": "kB796BHu0kslotCg"}' \
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
    --body '{"YugfNYOSVEvFZYjM": {}, "3BktN92GowLjpnd2": {}, "jes6MqPcDRrz5uMv": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "b4J7AxvAtDGA7InR"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'zowRHPakyBLDQ6QU' \
    --body '{"category": "YzomEuh2ZAXC9cZy", "description": "5V8C8ooZZ3bgdtFm", "gameSessionId": "jg87l3o4R2kzUEup", "subcategory": "1ELFCUz4NhDv0qwQ", "userId": "ZscTsnlIRj5gcKaQ"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'n8fapnNK8tQJXhLV' \
    --category 'vqifMd8ueG8wyWmx' \
    --fileType 'y6bKVoFz5WmxtRG2' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'PPSSxzrN4EiDYYHt' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'z2KdqI4LaWIjOXEG' \
    --body '{"avatarLargeUrl": "b1m9d9yZGkT54hR9", "avatarSmallUrl": "cbpP3opQIl7NXf8t", "avatarUrl": "lwfQRd9o2WHBk4Zr", "customAttributes": {"1JjlzYuLNcUTM6HK": {}, "zDmYjsGLHeAqCMxy": {}, "03z2omkL8nsehfxA": {}}, "dateOfBirth": "1996-12-11", "firstName": "ZehXBm1ziEG9q5Gf", "language": "Zwv-mcHh", "lastName": "wQtFj95QOW1PdvUk", "privateCustomAttributes": {"uN8OIBBOQwLD9FBe": {}, "WMRdhygaNKhSQMui": {}, "FHcoOOs0S6P6cdEp": {}}, "timeZone": "6uOXiFBejlm1otvh", "zipCode": "WUgHaPOcnqGrW8f3"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '5dNSWWeog5q6s9dW' \
    --body '{"avatarLargeUrl": "dcK4AvSBzOR1Fk6k", "avatarSmallUrl": "jHDzyPnQZLbK8mCN", "avatarUrl": "keapnzn4drkBcnHh", "customAttributes": {"ZXtVwxk5fbztA1gv": {}, "vTmrum7p2aj8lAr3": {}, "u6NNbZSxfCJ1yamg": {}}, "dateOfBirth": "1988-05-14", "firstName": "dlzEkqOwt6ofYv10", "language": "yvR_nwLb-UN", "lastName": "kta70yRm4ylJhvli", "timeZone": "DRNLDsfJia52EsSE"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'yvV4PHZjy8C0YY2O' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'b6BotvpMhGyhifO1' \
    --body '{"El0GzCcpMpEpKvKS": {}, "eh7rm16mGxP4K5aD": {}, "QW323TdwgnCw3Ges": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'IZcfUM7PTigXHDqM' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'GofW0ksSRCMixmlW' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE