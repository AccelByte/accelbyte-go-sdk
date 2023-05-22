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
    --body '{"displayName": "WgKWHqJwfYihYGxK", "namespace": "YR2SvCmsF75rgLlP"}' \
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
    --body '{"actionId": 24, "comment": "ADtk1EFf9tVUidAU", "userIds": ["U1HkxF1dL7AcpKnS", "orX87fwAKSfYXz4O", "IPlGjwprgqWYE0ai"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["wVugbqahcZGwy1ta", "3jcu9M0AwYgjHNKN", "taZ0iUdPK52DaI5w"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "T9Mx1IX9jrqTm1np", "description": "eHueEzKR7dVLexTU", "gameSessionId": "MTl2Iqan5eseeuxp", "subcategory": "HFiIKcWLOlwMts8D", "userId": "KqezHhyPUNXpPVZY"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId '1YOtZEKBoUL8PoI5' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "UbMzzpDcy8i3MOZb", "userIds": ["oi2JDVN3QEAg352V", "5yfoW5DprWHlLbFP", "07kdzCKk5oEWOzVQ"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "Fb6UInJUxQDNORJd"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "b4mjXAl6OOmZCoFp", "value": "GSmbi8x6jiUyLIJS"}' \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'qafK69409tKtGeN2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'M7BECSNX5XHbz84I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey 'Trcex5rjRdGrPoTk' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "hwoaY3IlasaVQttf"}' \
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
    --body '{"apiKey": "1IRQyJKOS8KoxKkn"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'jjgKCBFlrU6J19nR' \
    --namespace $AB_NAMESPACE \
    --fileType 'fzAdqvZ7iWsog01I' \
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
    --lang 'oMlbIOFGV6snWieW' \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'ScsLBPqzyrbihD4m' \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "289oLcQiQEOdDC2B", "name": "v6K0jmHuOoQUjTbw"}, {"code": "apffYEjAPAnTyc4r", "name": "vpJyrg32ILwFrVfu"}, {"code": "zrwntXdNGTxdBHcS", "name": "PVmPeVkpcDeT7MZ7"}], "countryGroupCode": "NReHjPnIz2z2MOsB", "countryGroupName": "sYZNCmsal3uN7vJH"}' \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'KPcsYKKkpk5nqtye' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "RuaKt69adGppbW7C", "name": "DJfdLjzUT02JPXl7"}, {"code": "KzXo67h1JDL46dDg", "name": "TPJyaRE61R85wOVY"}, {"code": "S8hsgHKVZLWPLsYu", "name": "iMUG6NOqAJAgqKMl"}], "countryGroupName": "I1jljmikdhepbIvg"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'cjhP1cB0LibWwhRY' \
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
    --publicId '7r2FbkKFY0i9qFuJ' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["spgiKUMOhvUVOhla", "LA5098IhVMm8c2V6", "awKBMzI0yck6LPhp"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'JpufiCbLckiGW6kQ' \
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
    --userId 'rcplUQE8zVGB18Et' \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'qJgZlx9Ay90CCrek' \
    --category 'v4Hyq2nXpnT44Mld' \
    --fileType 'LHYyMvtk6gMHtGvh' \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId '4IkxKQpqcxQf3KZE' \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'LsftV6Lszb4xWlnm' \
    --body '{"avatarLargeUrl": "C56YwzaZ4wz6u1Je", "avatarSmallUrl": "B7YAjse2ITTf2U0m", "avatarUrl": "WQMcgSTJJqkS2ByP", "customAttributes": {"9N7Cbc1aBTrsuMmm": {}, "FAQcNtVzq97ZtW21": {}, "LPDHujhrOVeoTnXm": {}}, "dateOfBirth": "1983-03-23", "firstName": "HWcMQ7LBJRMOWlME", "language": "cGy-hoai", "lastName": "bMa9nDhqXV624023", "privateCustomAttributes": {"N4XiIXiIRKPJJ4pL": {}, "1XYValFx2hgkcPxW": {}, "aTO9mxhv2Y0ShtXI": {}}, "status": "INACTIVE", "timeZone": "JFnipqnr4flJATuZ", "zipCode": "zLyTDa8hs9KhD6ny"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'bc12bCwFVOyR0iYR' \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'x6zMGU7xBOT8lIB5' \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'OfRhpvhGhj1odZ36' \
    --body '{"Uqa3tVWJXurqqFUS": {}, "gZUolzs6I9Yq8GEf": {}, "88jbG7ZleyTfPYk5": {}}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'cBzqVqqwW7ULLoxr' \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'S60ThL6bC3GpRlGj' \
    --body '{"8PI2CY8amiKhJDSO": {}, "VbHQFr98aKACTJdw": {}, "bukvxSH1QzEe7WmR": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'eAeVXyKv5burfYCG' \
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
    --folder 'omxp077hZUNrt9KG' \
    --namespace $AB_NAMESPACE \
    --fileType '5cKtxjw1t8JJRLIc' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace $AB_NAMESPACE \
    --lang 'Hd38dKcNfRqEX3un' \
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
    --userIds 'PJc1196kvEteniyr' \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'LUwuGGJZqDkHH6ye' \
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
    --body '{"avatarLargeUrl": "a8q5vxUYkmK0OPIT", "avatarSmallUrl": "ksGzhzrgk3ylEsf3", "avatarUrl": "8fu98SOmzaltDPdp", "customAttributes": {"HErlN4pg9dE8ZynW": {}, "dTfz5z31BpW9SjuJ": {}, "RgtSaVCi0MeLloK9": {}}, "dateOfBirth": "1972-03-12", "firstName": "rhVJwF73sTcDCChK", "language": "IxfU_MPio", "lastName": "KGXXaFDyZcpE8ceM", "privateCustomAttributes": {"G1mfCANfQI1py21M": {}, "0ka0ozbbQY0LWdif": {}, "MPj7KWmiHaSZwE4f": {}}, "timeZone": "lAtT85MjDW6fafQ8", "zipCode": "ObsaMolv8QSBBBnt"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "4nvYSqAerKmyL8kN", "avatarSmallUrl": "9w5YX9sZw09rBbNa", "avatarUrl": "3rQtpZfBNmUbXThB", "customAttributes": {"rfd22DsPwQeyUKdG": {}, "85nPc2kYR1Orjc4S": {}, "lSi9W5tj2cEGBBAJ": {}}, "dateOfBirth": "1984-10-24", "firstName": "XUJUhxcrVFyBcGVX", "language": "MZZ", "lastName": "ZqJiodQ5Zu33OEX9", "privateCustomAttributes": {"5otfdxOyMF4KPfGq": {}, "zriipA2SS5b0FwzO": {}, "pX4tmuRmW7AWSfWl": {}}, "timeZone": "ci9uFIHgZ7htpcg0"}' \
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
    --body '{"fnNKCIWQjWU5d2T6": {}, "erBdobwrgU3XwPY7": {}, "ZUjTLhkVxEF8KIKT": {}}' \
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
    --userZipCodeUpdate '{"zipCode": "kK4n6tfE8oNyDmaM"}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '9DW3DOCYsOK3Ax6b' \
    --body '{"category": "KbupIO1MOndLXNFT", "description": "GTl7eOVLommJiGpy", "gameSessionId": "D5oMjTcr1GFSfdwB", "subcategory": "Gh1mPLnqKSihquB5", "userId": "oNAva6XGkK2xiWJE"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'sHSoFP0pVfqWMvPh' \
    --category 'DlNbhZANGSYCLFhB' \
    --fileType 'Fffaswz6JyjKO5ds' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'H3xbhE8P9ryNEBDh' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'F6TXS22iIiM5tNWC' \
    --body '{"avatarLargeUrl": "OaMJIDM3BwQhPMVV", "avatarSmallUrl": "NqEKDGuXYDB0nJV7", "avatarUrl": "E2lIPMeQqo983We7", "customAttributes": {"5hRtTcV9nHgDhGya": {}, "lcv5ZlCsy4hrhN5m": {}, "H2ooKT2Fb64t4zPZ": {}}, "dateOfBirth": "1978-08-11", "firstName": "UK5hkxeNuqpzX7mH", "language": "fzLO-Iw", "lastName": "qOc2BRRYDZNA4vjd", "privateCustomAttributes": {"bZaJsuZOskYafFaC": {}, "vumpgP8nxBtOtRec": {}, "vAjbZ1zXX4RiRIIR": {}}, "timeZone": "rVL3ailFnpVXS2r2", "zipCode": "sggOhzpgX8o92wGO"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '7XCfmskOBApIy6MW' \
    --body '{"avatarLargeUrl": "vvgNhZm929ISVvmI", "avatarSmallUrl": "NL2A3c4qusL6DwpH", "avatarUrl": "JBdsW0c27DIewg8I", "customAttributes": {"pRe7qBUoiDhd9txn": {}, "8KC8Gw0sRmBeNsot": {}, "27uqkCometoYECqC": {}}, "dateOfBirth": "1986-06-06", "firstName": "1tg035Zuhsg7ghhA", "language": "ZL_INWe", "lastName": "zX8nrj3WgcSgtgwV", "timeZone": "dYC3kybSR03uEBkF"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId '4Pvkd9QtbrNXboCl' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId '19F44HxF7bms1lmo' \
    --body '{"ZM3HVzEDuWkq4zUW": {}, "OPlKaXMvDqK8GoXr": {}, "D9QgfVIqGJdYHFah": {}}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'MvHevijqtL9jDDGz' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'hhaNlxEsmFR1kMwo' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE