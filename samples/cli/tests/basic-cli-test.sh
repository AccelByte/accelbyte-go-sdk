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
echo "1..60"

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

#- 24 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace 'H45PaRSO' \
    --publicId 'FQBtu23R' \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --body '{"userIds": ["EZ8hRVX7"]}' \
    --namespace 'LGOvDdYi' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserProfilePublicInfoByIds' test.out

#- 26 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace 'QS9i7mV1' \
    > test.out 2>&1
eval_tap $? 26 'GetNamespacePublisher' test.out

#- 27 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace '91pjG9gp' \
    > test.out 2>&1
eval_tap $? 27 'ChangeNamespaceStatus' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace 'xL6ycTQd' \
    --userId 'vln2LAuS' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace 'QWEXL6LF' \
    --userId 'E1YHo9m1' \
    --category '26ZWc8hH' \
    --fileType 'tWvbNYqg' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace 'UqslArFP' \
    --userId 'iHUIvaCv' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --body '{"avatarLargeUrl": "8kU9dBBp", "avatarSmallUrl": "dsJLhsVy", "avatarUrl": "Exrkxoot", "customAttributes": {"0B7WOfer": {}}, "dateOfBirth": "1972-01-31", "firstName": "pMci37Ds", "language": "FeXA-EmBf_483", "lastName": "OYiBA5lt", "status": "INACTIVE", "timeZone": "OXmlG6eh", "zipCode": "1dTdoTFp"}' \
    --namespace 'BIcuC1dQ' \
    --userId 'Y93OJnJ6' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace 'Te9vD8ld' \
    --userId 'z7Hu8AD7' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace '9kdWunvi' \
    --userId 'zU0q1pHy' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --body '{"hhERoGgd": {}}' \
    --namespace 'rysMizBG' \
    --userId 'SRdP2l7D' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace 'NSZ8Aq0X' \
    --userId 'iPLQXSe0' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --body '{"7ZddOGTM": {}}' \
    --namespace 'lJjBwj9H' \
    --userId 'JHQKseEd' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'Svguauw1' \
    --userId 'xT7eMwSl' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'False' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'TJ2ulNzB' \
    --namespace 'vwJaQa54' \
    --fileType '7JllvA8R' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace 'WSpabUt7' \
    --lang 'xk6QxyWh' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCountries' test.out

#- 42 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace 'fqoWfJw2' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace 'o8oWUqvP' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace 'CZ2HzT7N' \
    --userIds 'XmWDlXsu' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace 'NIdQJR5l' \
    --publicId 'sNOlvkfw' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace 'aSbnsuLC' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace 'gToxuVTe' \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --body '{"avatarLargeUrl": "kJgvg6h5", "avatarSmallUrl": "HIpH0Dvi", "avatarUrl": "plEk4vj3", "customAttributes": {"LDp4yqDt": {}}, "dateOfBirth": "1992-08-21", "firstName": "pxlHasin", "language": "CJRK-ds", "lastName": "aIVBmft3", "privateCustomAttributes": {"Udg7p9PG": {}}, "timeZone": "mY2H5kX4", "zipCode": "MsisSX28"}' \
    --namespace 'nARxWRpv' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --body '{"avatarLargeUrl": "5ou5xtvd", "avatarSmallUrl": "28OUfCt8", "avatarUrl": "UJC5flNy", "customAttributes": {"j6HsTtX8": {}}, "dateOfBirth": "1991-04-01", "firstName": "lnaaS9lq", "language": "YGp", "lastName": "kJIxfQZz", "privateCustomAttributes": {"a8kNVbDx": {}}, "timeZone": "VMq7HJk0"}' \
    --namespace 'F89xAc3Y' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace 'VfaENtrl' \
    > test.out 2>&1
eval_tap $? 50 'GetMyZipCode' test.out

#- 51 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --userZipCodeUpdate '{"zipCode": "0pTKZTXq"}' \
    --namespace 'zHuBMYQS' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyZipCode' test.out

#- 52 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --body '{"category": "A2jz1ZOp", "description": "dOjSyMdd", "gameSessionId": "B41JuMf7", "subcategory": "RUyBHRj8", "userId": "IiRimRll"}' \
    --namespace 'HT6Dc40v' \
    --userId 'FFA6gpU7' \
    > test.out 2>&1
eval_tap $? 52 'PublicReportUser' test.out

#- 53 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace 'EW3x1dCp' \
    --userId 'm55gOeqQ' \
    --category 'IqcJVKmB' \
    --fileType 'M1J1IbuT' \
    > test.out 2>&1
eval_tap $? 53 'PublicGeneratedUserUploadContentUrl' test.out

#- 54 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace 'rrkbmuT1' \
    --userId 'whOqmEnD' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetUserProfileInfo' test.out

#- 55 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --body '{"avatarLargeUrl": "XIWrBPlS", "avatarSmallUrl": "ay46mv71", "avatarUrl": "BAZAOjtF", "customAttributes": {"J2vmTj7t": {}}, "dateOfBirth": "1993-12-25", "firstName": "ZHWDdCkI", "language": "zOa-YfaD-li", "lastName": "gRwFRr0g", "timeZone": "wB9tz3vp", "zipCode": "99XVlV8r"}' \
    --namespace 'K3tE6n0s' \
    --userId 'mip1tw3L' \
    > test.out 2>&1
eval_tap $? 55 'PublicUpdateUserProfile' test.out

#- 56 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --body '{"avatarLargeUrl": "7cUd9pqt", "avatarSmallUrl": "v6JfPZwc", "avatarUrl": "CVOXcVa8", "customAttributes": {"0TmCwtD2": {}}, "dateOfBirth": "1976-07-30", "firstName": "H01o6Ndc", "language": "iGZ-wPfb", "lastName": "mBawMyoK", "timeZone": "yNpdAasm"}' \
    --namespace '8xwUfzOl' \
    --userId 'QiZY4NbO' \
    > test.out 2>&1
eval_tap $? 56 'PublicCreateUserProfile' test.out

#- 57 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace 'QXJ7uOTz' \
    --userId 'NMvuq2tN' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetCustomAttributesInfo' test.out

#- 58 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --body '{"l4CX4Iji": {}}' \
    --namespace 'K4DEUJRV' \
    --userId 'K3l9Eb0R' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateCustomAttributesPartially' test.out

#- 59 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace '1XRb0RH8' \
    --userId 'vS1smeOl' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetUserProfilePublicInfo' test.out

#- 60 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --body '{"status": "ACTIVE"}' \
    --namespace 'grdTXCza' \
    --userId 'PBtkZMio' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE