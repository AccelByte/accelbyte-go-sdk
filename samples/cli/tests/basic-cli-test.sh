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
    --fileType '26ZWc8hH' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace 'tWvbNYqg' \
    --userId 'UqslArFP' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --body '{"avatarLargeUrl": "iHUIvaCv", "avatarSmallUrl": "8kU9dBBp", "avatarUrl": "dsJLhsVy", "customAttributes": {"Exrkxoot": {}}, "dateOfBirth": "1140-04-30", "firstName": "i37Ds7YS", "language": "eX-907", "lastName": "Alt4hr7H", "status": "ACTIVE", "timeZone": "OYiBA5lt", "zipCode": "AOXmlG6e"}' \
    --namespace 'h1dTdoTF' \
    --userId 'pBIcuC1d' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace 'QY93OJnJ' \
    --userId '6Te9vD8l' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace 'dz7Hu8AD' \
    --userId '79kdWunv' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --body '{"izU0q1pH": {}}' \
    --namespace 'yhhERoGg' \
    --userId 'drysMizB' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace 'GSRdP2l7' \
    --userId 'DNSZ8Aq0' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --body '{"XiPLQXSe": {}}' \
    --namespace '07ZddOGT' \
    --userId 'MlJjBwj9' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'eEdSXRDS' \
    --userId 'vguauw1x' \
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
    --folder 'MwSl9MLH' \
    --namespace '0NnTJ2ul' \
    --fileType 'NzBvwJaQ' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace 'a547Jllv' \
    --lang 'A8RWSpab' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCountries' test.out

#- 42 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace 'Ut7xk6Qx' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace 'yWhfqoWf' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace 'Jw2o8oWU' \
    --userIds 'qvPCZ2Hz' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace 'T7NXmWDl' \
    --publicId 'XsuNIdQJ' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace 'R5lsNOlv' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace 'kfwaSbns' \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --body '{"avatarLargeUrl": "uLCgToxu", "avatarSmallUrl": "VTekJgvg", "avatarUrl": "6h5HIpH0", "customAttributes": {"DviplEk4": {}}, "dateOfBirth": "2973-11-27", "firstName": "pxlHasin", "language": "CJRK-ds", "lastName": "aIVBmft3", "privateCustomAttributes": {"Udg7p9PG": {}}, "timeZone": "mY2H5kX4", "zipCode": "MsisSX28"}' \
    --namespace 'nARxWRpv' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --body '{"avatarLargeUrl": "5ou5xtvd", "avatarSmallUrl": "28OUfCt8", "avatarUrl": "UJC5flNy", "customAttributes": {"j6HsTtX8": {}}, "dateOfBirth": "2300-05-21", "firstName": "PcfkJIxf", "language": "zZAK-756", "lastName": "c3YVfaEN", "privateCustomAttributes": {"trl0pTKZ": {}}, "timeZone": "TXqzHuBM"}' \
    --namespace 'YQSA2jz1' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace 'ZOpdOjSy' \
    > test.out 2>&1
eval_tap $? 50 'GetMyZipCode' test.out

#- 51 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --userZipCodeUpdate '{"zipCode": "MddB41Ju"}' \
    --namespace 'Mf7RUyBH' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyZipCode' test.out

#- 52 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --body '{"category": "Rj8IiRim", "description": "RllHT6Dc", "gameSessionId": "40vFFA6g", "subcategory": "pU7EW3x1", "userId": "dCpm55gO"}' \
    --namespace 'eqQIqcJV' \
    --userId 'KmBM1J1I' \
    > test.out 2>&1
eval_tap $? 52 'PublicReportUser' test.out

#- 53 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace 'buTrrkbm' \
    --userId 'uT1whOqm' \
    --fileType 'EnDXIWrB' \
    > test.out 2>&1
eval_tap $? 53 'PublicGeneratedUserUploadContentUrl' test.out

#- 54 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace 'PlSay46m' \
    --userId 'v71BAZAO' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetUserProfileInfo' test.out

#- 55 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --body '{"avatarLargeUrl": "jtFJ2vmT", "avatarSmallUrl": "j7tT7TZH", "avatarUrl": "WDdCkIsZ", "customAttributes": {"oArWwPHc": {}}, "dateOfBirth": "7606-10-09", "firstName": "gRwFRr0g", "language": "bTZ_vRkT_234", "lastName": "w3L7cUd9", "timeZone": "pqtv6JfP", "zipCode": "ZwcCVOXc"}' \
    --namespace 'Va80TmCw' \
    --userId 'tD2lAH01' \
    > test.out 2>&1
eval_tap $? 55 'PublicUpdateUserProfile' test.out

#- 56 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --body '{"avatarLargeUrl": "o6NdcBIg", "avatarSmallUrl": "zrDyWpFB", "avatarUrl": "YGmmBawM", "customAttributes": {"yoKyNpdA": {}}, "dateOfBirth": "4355-07-30", "firstName": "QiZY4NbO", "language": "xjUo-QTnL_eu", "lastName": "JRVK3l9E", "timeZone": "b0R1XRb0"}' \
    --namespace 'RH8vS1sm' \
    --userId 'eOlngrdT' \
    > test.out 2>&1
eval_tap $? 56 'PublicCreateUserProfile' test.out

#- 57 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace 'XCzaPBtk' \
    --userId 'ZMio4wcy' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetCustomAttributesInfo' test.out

#- 58 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --body '{"hloVS3rY": {}}' \
    --namespace 'p8QtcEmC' \
    --userId 'EVc75Ufe' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateCustomAttributesPartially' test.out

#- 59 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace 'ypWjDNhz' \
    --userId 'CL5sWS2q' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetUserProfilePublicInfo' test.out

#- 60 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'O763iEkl' \
    --userId 'kzLm88Lp' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE