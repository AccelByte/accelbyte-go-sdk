#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..58"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetNamespaces
samples/cli/sample-apps Basic getNamespaces \
    --activeOnly 'True' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "tBxyZcDX", "namespace": "BpGlsQuJ"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace 'u8vMf0Is' \
    --activeOnly 'False' \
    > test.out 2>&1
eval_tap $? 4 'GetNamespace' test.out

#- 5 DeleteNamespace
samples/cli/sample-apps Basic deleteNamespace \
    --namespace 'Trd8IDcV' \
    > test.out 2>&1
eval_tap $? 5 'DeleteNamespace' test.out

#- 6 GetActions
samples/cli/sample-apps Basic getActions \
    --namespace '2zXnTKjX' \
    > test.out 2>&1
eval_tap $? 6 'GetActions' test.out

#- 7 BanUsers
samples/cli/sample-apps Basic banUsers \
    --body '{"actionId": 3, "comment": "PqamiBxx", "userIds": ["9Cs18EY8"]}' \
    --namespace '4ekItqRz' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace 'HU1oh570' \
    --userIds '["KQBVaewc"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --body '{"category": "72krSha6", "description": "8n3Ynozp", "gameSessionId": "1C2KmIQT", "subcategory": "uBdNEUsx", "userId": "Fb8CJ17M"}' \
    --namespace '7DJZaMSx' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace 'ECbZbygy' \
    --userId 'oarORoeN' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --body '{"comment": "HSb8Rh3k", "userIds": ["gs9qqJbn"]}' \
    --namespace 'QsoBgiVp' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --body '{"displayName": "P8Cm3yvA"}' \
    --namespace 'SUoxdxxF' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace 'qmAGTJ8I' \
    > test.out 2>&1
eval_tap $? 13 'GetConfig' test.out

#- 14 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace 'EdagEtp4' \
    > test.out 2>&1
eval_tap $? 14 'DeleteConfig' test.out

#- 15 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --body '{"apiKey": "w29KOu9c"}' \
    --namespace '19R6XDqW' \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'HkkP8npL' \
    --namespace 'EKMfjiX7' \
    --fileType 'jpkVZk3I' \
    > test.out 2>&1
eval_tap $? 16 'GeneratedUploadUrl' test.out

#- 17 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace 'aQYEmqGo' \
    --lang 'dOEGt9gP' \
    > test.out 2>&1
eval_tap $? 17 'GetCountries' test.out

#- 18 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace 'Oj0c6i0J' \
    --groupCode 'kvIas73u' \
    > test.out 2>&1
eval_tap $? 18 'GetCountryGroups' test.out

#- 19 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --body '{"countries": [{"code": "cYnFAJ3D", "name": "K5T4Eogg"}], "countryGroupCode": "0Y39UoYl", "countryGroupName": "pv5bVAgt"}' \
    --namespace 'sDhUTDUs' \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --body '{"countries": [{"code": "cbQDjbTQ", "name": "uPMz2PTR"}], "countryGroupName": "lkyU89ZP"}' \
    --countryGroupCode 'Ow6zPFJ4' \
    --namespace '2cwmzBBS' \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'MNcoAAOj' \
    --namespace 'KNjfcYHm' \
    > test.out 2>&1
eval_tap $? 21 'DeleteCountryGroup' test.out

#- 22 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace '093aYgBU' \
    > test.out 2>&1
eval_tap $? 22 'GetLanguages' test.out

#- 23 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace '1sqjyK0X' \
    > test.out 2>&1
eval_tap $? 23 'GetTimeZones' test.out

#- 24 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --body '{"userIds": ["H45PaRSO"]}' \
    --namespace 'FQBtu23R' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserProfilePublicInfoByIds' test.out

#- 25 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace 'EZ8hRVX7' \
    > test.out 2>&1
eval_tap $? 25 'GetNamespacePublisher' test.out

#- 26 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'DdYiQS9i' \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace '7mV1C91p' \
    --userId 'jG9gpxL6' \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace 'ycTQdvln' \
    --userId '2LAuSQWE' \
    --fileType 'XL6LFE1Y' \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace 'Ho9m126Z' \
    --userId 'Wc8hHtWv' \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --body '{"avatarLargeUrl": "bNYqgUqs", "avatarSmallUrl": "lArFPiHU", "avatarUrl": "IvaCv8kU", "customAttributes": {"9dBBpdsJ": {}}, "dateOfBirth": "4675-10-13", "firstName": "t0B7WOfe", "language": "CzD", "lastName": "i37Ds7YS", "status": "ACTIVE", "timeZone": "ExaI3uzL", "zipCode": "teMbFAlt"}' \
    --namespace '4hr7HmOY' \
    --userId 'iBA5ltAO' \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace 'XmlG6eh1' \
    --userId 'dTdoTFpB' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace 'IcuC1dQY' \
    --userId '93OJnJ6T' \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --body '{"e9vD8ldz": {}}' \
    --namespace '7Hu8AD79' \
    --userId 'kdWunviz' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace 'U0q1pHyh' \
    --userId 'hERoGgdr' \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --body '{"ysMizBGS": {}}' \
    --namespace 'RdP2l7DN' \
    --userId 'SZ8Aq0Xi' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --body '{"status": "ACTIVE"}' \
    --namespace '07ZddOGT' \
    --userId 'MlJjBwj9' \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'True' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'eEdSXRDS' \
    --namespace 'vguauw1x' \
    --fileType 'T7eMwSl9' \
    > test.out 2>&1
eval_tap $? 39 'PublicGeneratedUploadUrl' test.out

#- 40 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace 'MLH0NnTJ' \
    --lang '2ulNzBvw' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCountries' test.out

#- 41 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace 'JaQa547J' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetLanguages' test.out

#- 42 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace 'llvA8RWS' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetTimeZones' test.out

#- 43 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace 'pabUt7xk' \
    --userIds '6QxyWhfq' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetUserProfilePublicInfoByIds' test.out

#- 44 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace 'oWfJw2o8' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetNamespacePublisher' test.out

#- 45 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace 'oWUqvPCZ' \
    > test.out 2>&1
eval_tap $? 45 'GetMyProfileInfo' test.out

#- 46 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --body '{"avatarLargeUrl": "2HzT7NXm", "avatarSmallUrl": "WDlXsuNI", "avatarUrl": "dQJR5lsN", "customAttributes": {"OlvkfwaS": {}}, "dateOfBirth": "3459-10-30", "firstName": "xuVTekJg", "language": "GHh-Le", "lastName": "k4vj3LDp", "privateCustomAttributes": {"4yqDt8QU": {}}, "timeZone": "ZDpxlHas", "zipCode": "inGcjrkm"}' \
    --namespace 'RMttgjDS' \
    > test.out 2>&1
eval_tap $? 46 'UpdateMyProfile' test.out

#- 47 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --body '{"avatarLargeUrl": "aIVBmft3", "avatarSmallUrl": "Udg7p9PG", "avatarUrl": "mY2H5kX4", "customAttributes": {"MsisSX28": {}}, "dateOfBirth": "6535-06-25", "firstName": "d28OUfCt", "language": "jcFL_tTxp", "lastName": "lnaaS9lq", "privateCustomAttributes": {"yygPcfkJ": {}}, "timeZone": "IxfQZza8"}' \
    --namespace 'kNVbDxVM' \
    > test.out 2>&1
eval_tap $? 47 'CreateMyProfile' test.out

#- 48 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace 'q7HJk0F8' \
    > test.out 2>&1
eval_tap $? 48 'GetMyZipCode' test.out

#- 49 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --userZipCodeUpdate '{"zipCode": "9xAc3YVf"}' \
    --namespace 'aENtrl0p' \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyZipCode' test.out

#- 50 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --body '{"category": "TKZTXqzH", "description": "uBMYQSA2", "gameSessionId": "jz1ZOpdO", "subcategory": "jSyMddB4", "userId": "1JuMf7RU"}' \
    --namespace 'yBHRj8Ii' \
    --userId 'RimRllHT' \
    > test.out 2>&1
eval_tap $? 50 'PublicReportUser' test.out

#- 51 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace '6Dc40vFF' \
    --userId 'A6gpU7EW' \
    --fileType '3x1dCpm5' \
    > test.out 2>&1
eval_tap $? 51 'PublicGeneratedUserUploadContentUrl' test.out

#- 52 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace '5gOeqQIq' \
    --userId 'cJVKmBM1' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfileInfo' test.out

#- 53 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --body '{"avatarLargeUrl": "J1IbuTrr", "avatarSmallUrl": "kbmuT1wh", "avatarUrl": "OqmEnDXI", "customAttributes": {"WrBPlSay": {}}, "dateOfBirth": "5666-05-23", "firstName": "Tj7tT7TZ", "language": "wdDc_580", "lastName": "yFAdAtYc", "timeZone": "iLIgRwFR", "zipCode": "r0gwB9tz"}' \
    --namespace '3vp99XVl' \
    --userId 'V8rK3tE6' \
    > test.out 2>&1
eval_tap $? 53 'PublicUpdateUserProfile' test.out

#- 54 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --body '{"avatarLargeUrl": "n0smip1t", "avatarSmallUrl": "w3L7cUd9", "avatarUrl": "pqtv6JfP", "customAttributes": {"ZwcCVOXc": {}}, "dateOfBirth": "3754-10-19", "firstName": "dcBIgzrD", "language": "wPf_bAWm_060", "lastName": "sm8xwUfz", "timeZone": "OlQiZY4N"}' \
    --namespace 'bOQXJ7uO' \
    --userId 'TzNMvuq2' \
    > test.out 2>&1
eval_tap $? 54 'PublicCreateUserProfile' test.out

#- 55 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace 'tNl4CX4I' \
    --userId 'jiK4DEUJ' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetCustomAttributesInfo' test.out

#- 56 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --body '{"RVK3l9Eb": {}}' \
    --namespace '0R1XRb0R' \
    --userId 'H8vS1sme' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateCustomAttributesPartially' test.out

#- 57 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace 'OlngrdTX' \
    --userId 'CzaPBtkZ' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfilePublicInfo' test.out

#- 58 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --body '{"status": "ACTIVE"}' \
    --namespace 'o4wcyhlo' \
    --userId 'VS3rYp8Q' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE