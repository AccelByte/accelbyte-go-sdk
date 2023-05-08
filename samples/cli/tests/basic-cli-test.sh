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
    --body '{"displayName": "qpvw2XB6TYHt2f6L", "namespace": "tI8BN5xzzzY9ZdFn"}' \
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
    --body '{"actionId": 5, "comment": "WG0WtimGwGRRKu9I", "userIds": ["JnpynlaaijGmsrtw", "zEKjUPoXQ6DPwspZ", "yFab6MqcLPDts1yW"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["9OyShjbPTA7HuaMZ", "2NQWrU4IZF8JXXBq", "brCuheVuCJCYwAGh"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "SfrD67GPaHLaKVJ3", "description": "8SjjE6Hf7svPInL1", "gameSessionId": "FS4dS7DSxjaeicxR", "subcategory": "cxXkjcDXEDjBdjHl", "userId": "goyblvMpNXu8jt5h"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'nDegC5cvvI4EnLmS' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "ieVIVlGIPc4qAFOp", "userIds": ["xJixfquXj9ui5tBe", "E1DzJQXN4lr6S0sH", "eFieA0KNgpYLGjsb"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "r84gWShnrDkTbQA5"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "Y8b2BjKbXVIn9nhS", "value": "cjAc6te3fvIhLgGP"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'HvnP4mBmwe117rjs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'OCWStVlFwJUvyWLo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'Sp0EWIQAEHIJ7nyr' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Jkjcr6bVoukFUAXz"}' \
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
    --body '{"apiKey": "YrJU0P654xm3jVNA"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'y7uMfWYBBEiJGRw3' \
    --namespace $AB_NAMESPACE \
    --fileType 'uka05kNSmFg3BxA8' \
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
    --lang 'RWUaLj0LedmO6iMA' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'FucK7srjdI7fNAMf' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "2URsnNoocgvJ0C2o", "name": "Ul9xRuXRE46Zm5mj"}, {"code": "OnupMSUZ6N6TkyR9", "name": "e4CI3MbVa6eso60C"}, {"code": "VuTofbpZOYQqPbZ6", "name": "rnFY5jWPkmIZMBvB"}], "countryGroupCode": "moRaBgJbBQcxKVTw", "countryGroupName": "eB6u0C8JhRcQ9OJZ"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'zz6C9gjJGjfOQGWA' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "blmrNKdFzHtKfr83", "name": "KZIfA0EwD5EmCHeT"}, {"code": "3q473I1Z1ReZLdaM", "name": "Wuctr3AaJj7nwNUL"}, {"code": "q2KcDTXahaWGhZt6", "name": "nio3iCbqTYrL2LlX"}], "countryGroupName": "SG3kjOFWBSZNKLYl"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'FVUPwNhovDI0poOL' \
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
    --publicId 'AYHa45xM7hzk9yP7' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SKnKgpmPvpkLmpNa", "noIW0FzNHXKyv9Gx", "Ien5R6kRvVE9bKCq"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'Sysk0EFVQ8wTKSFW' \
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
    --userId 'Z1wIVvhyVL4VkJsZ' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'sZsCD2u9gtuebVMM' \
    --category '4cwOTK64Yz9GssO9' \
    --fileType 'lrGkhOSgcpTSfaa8' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '5jLLdzEZW3PyVs7Z' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '5CZ4tvlOBTuHorPF' \
    --body '{"avatarLargeUrl": "G9WWgvM0OhTPejGB", "avatarSmallUrl": "839F4XrkG29UUpBr", "avatarUrl": "cRma4T063s2nnJjw", "customAttributes": {"kbcdKSdguv0DqGfn": {}, "5A0Sw4gU7lAtLZ2Z": {}, "ykrAedU5725HadHK": {}}, "dateOfBirth": "1997-07-19", "firstName": "lsbuISoWTzvzP79v", "language": "Czjo", "lastName": "1iFEpgdiAagHZavT", "privateCustomAttributes": {"bJGHG5eXr0UXgkdr": {}, "8vaPWM6wcMq2hOJU": {}, "shtKtuUYmpvRjWsg": {}}, "status": "ACTIVE", "timeZone": "hl48F3spUKQjDjQY", "zipCode": "1JjquHXiELTeAXLt"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'p14vvGvgzHmS3O6F' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'XXdpKg3dBuKyVm9I' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'R7PsmasMOlhr2uEz' \
    --body '{"wTZFo7HjLmbLA6cP": {}, "PfbeJ7NvLD1GiOIn": {}, "aNcg8nRGhaVWwlrw": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'M7JfKxOAUO3VrYCb' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'icgtFiOeGcBfu2MY' \
    --body '{"Im096l3vmIf1C4V3": {}, "woYIzAEFbooLf5Oq": {}, "qXMUE2erBZhAwnAl": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'zkKNaRSPVQoEvkmZ' \
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
    --folder 'zKD8EiC6MPCnNUng' \
    --namespace $AB_NAMESPACE \
    --fileType '401vsaTxsrNsliyC' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'XOzvvgHwcEnCM3SB' \
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
    --userIds 'k8T2LRxlepACGIvL' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'o6UQNqMGQ5Y9Z3MI' \
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
    --body '{"avatarLargeUrl": "iEmAJGSg6FwyiAGa", "avatarSmallUrl": "mcUBcyVX2mUQZWs2", "avatarUrl": "nGcufLanFvkmu1RL", "customAttributes": {"540UOSRbaszlDSbK": {}, "HSzY1fcHK2EGdJG0": {}, "T0eHo1nSGMRJpQDt": {}}, "dateOfBirth": "1992-11-09", "firstName": "iR60toaBMHUBJLdW", "language": "MF-090", "lastName": "4TVwP0tTfdIjkmtW", "privateCustomAttributes": {"Wz0OPeRGVRKOmF2t": {}, "hN5rIt6urW8RDzzA": {}, "UpVIGLIMGyG7Pqx7": {}}, "timeZone": "KgrJMofD8Ez9mloZ", "zipCode": "yDHtP52UqAYwS89R"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "5cYdBQVvveuqvcOP", "avatarSmallUrl": "gVPZ9LGrAs9tMxdc", "avatarUrl": "iGva34oZALsQdLlY", "customAttributes": {"VxQIW2uQgoprYRvB": {}, "WYCBslXX9WFA9EIx": {}, "mEf6FHGjh86eItzX": {}}, "dateOfBirth": "1993-09-16", "firstName": "ahdP9Ir5T0OzK2RE", "language": "Zbo_zObv", "lastName": "CJn89SYHw93SSOod", "privateCustomAttributes": {"Od6NZHVIpYcm2Lli": {}, "fIdQQgMArSe5kybt": {}, "5KpN2N6jxkpbTWMs": {}}, "timeZone": "cy6UCI1mofm7PBHn"}' \
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
    --body '{"6ZW7MiVQoObB2b6s": {}, "80GHeFzpFHP2ei93": {}, "H4GlVW6RhY1cqTPH": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "Ejo5Nj9puiBAZGGb"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId 'exjAjbwG7YA0owU4' \
    --body '{"category": "wCuWxW2NfddIeduF", "description": "4xoyHwYWjNhJ20Lv", "gameSessionId": "g0JLqp2aW9QV0ndj", "subcategory": "jG9KV4OmsD0wYx53", "userId": "mXoBDbcupVcVj95x"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'yts3qxI0heQaN4eC' \
    --category 'Ecr5G5MuePy3WKkM' \
    --fileType 'aGdoiYC3l8aFXdxr' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'z0pUbAiprAPqMQBI' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'jUatI2CWgPwqj7da' \
    --body '{"avatarLargeUrl": "4ArDyxJ28YHoGbBQ", "avatarSmallUrl": "Tz4QVeFDIXfsFrHT", "avatarUrl": "H6K4WvjhnlmMKIud", "customAttributes": {"x6480s0iVqEszNaS": {}, "dtqQeUrajrACBXyt": {}, "AxcRcg2UjyQ47OMU": {}}, "dateOfBirth": "1976-05-03", "firstName": "nnPwJMcovXTj7fpv", "language": "wfLt_Iw", "lastName": "BU0bluFU73PNVfF1", "privateCustomAttributes": {"Oy620kCN7MN6ZW39": {}, "rvVbDERa5Huo9hLM": {}, "lBXOu9ZRWoWL6QVi": {}}, "timeZone": "tWDDHyZgPr1IFl9E", "zipCode": "vilu4yr9Nck12zwc"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'mWTsQRhhzhJzuLry' \
    --body '{"avatarLargeUrl": "AIcJfr1GYO0VgcaT", "avatarSmallUrl": "3GYRNKCYhCAovvxX", "avatarUrl": "CBdMaGAFxTRhT4vs", "customAttributes": {"CyC2FhTPT9OkqY80": {}, "jBCPrw7moCB27Y3K": {}, "eM8klPgwP8rOPkKx": {}}, "dateOfBirth": "1983-10-23", "firstName": "00GLPI2RV9T4kORU", "language": "cvKW", "lastName": "BM285CxxJC5ezSZT", "timeZone": "2dlmZRqRKKav5WB3"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'Nb7VlwUNKFYXdAnr' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'xKRXsLgrWSSixG1G' \
    --body '{"9WS1KWaZbIgVT1W7": {}, "wEIFAkEgzD8qzJdG": {}, "jPbjS3ShyduHPHgQ": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'kzKDlhiWpZLnz0ji' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'wtn3dZ0xg2vunmP8' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE