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
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "XiWt2akW", "namespace": "2PYuQx56"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
samples/cli/sample-apps Basic getNamespace \
    --namespace 'RslpxMiQ' \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 4 'GetNamespace' test.out

#- 5 DeleteNamespace
samples/cli/sample-apps Basic deleteNamespace \
    --namespace 'Lo3xoBJA' \
    > test.out 2>&1
eval_tap $? 5 'DeleteNamespace' test.out

#- 6 GetActions
samples/cli/sample-apps Basic getActions \
    --namespace 's6iENHNf' \
    > test.out 2>&1
eval_tap $? 6 'GetActions' test.out

#- 7 BanUsers
samples/cli/sample-apps Basic banUsers \
    --body '{"actionId": 23, "comment": "Oeu2AmGF", "userIds": ["QHL1vD2b", "dbwu1zcE", "zQPhDPzn"]}' \
    --namespace 'YLoUT7mJ' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace 'KZ10CXf6' \
    --userIds '["x8WMzW1v", "cSgbfUrT", "hBLk68V6"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --body '{"category": "MCOIcHqH", "description": "QLWNkCB8", "gameSessionId": "HJDai621", "subcategory": "Ug0FCusq", "userId": "O253Vi9Y"}' \
    --namespace '6PgrJ9nk' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace 'SsJbZoD5' \
    --userId '75ol9CHX' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --body '{"comment": "ukQuwVjM", "userIds": ["ON8FaQQZ", "FjvjV1av", "KngYttGP"]}' \
    --namespace '2jFQtnDI' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --body '{"displayName": "igZiVcF4"}' \
    --namespace 'btowxSHy' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace 'sLynFFWU' \
    > test.out 2>&1
eval_tap $? 13 'GetConfig' test.out

#- 14 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace 'HgpGL7K8' \
    > test.out 2>&1
eval_tap $? 14 'DeleteConfig' test.out

#- 15 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --body '{"apiKey": "oQXM6xnx"}' \
    --namespace 'VBEuMdQx' \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'PNh6qDpo' \
    --namespace 'g6j9J820' \
    --fileType 'THS9aBJH' \
    > test.out 2>&1
eval_tap $? 16 'GeneratedUploadUrl' test.out

#- 17 GetCountries
samples/cli/sample-apps Basic getCountries \
    --namespace 'RvkEFH6F' \
    --lang 'IHVqpu32' \
    > test.out 2>&1
eval_tap $? 17 'GetCountries' test.out

#- 18 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace '3Dqj2HX6' \
    --groupCode 'VTTpX0bu' \
    > test.out 2>&1
eval_tap $? 18 'GetCountryGroups' test.out

#- 19 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --body '{"countries": [{"code": "tL6eg88z", "name": "CpCoiSs6"}, {"code": "c1RypVKI", "name": "sIJyAKjb"}, {"code": "qA5EgEUh", "name": "WOH2Q5ri"}], "countryGroupCode": "iolEQnjN", "countryGroupName": "zHF90gZt"}' \
    --namespace 'J4Ax87N3' \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --body '{"countries": [{"code": "yQkqAygl", "name": "AUJTbP1V"}, {"code": "H80fKNkd", "name": "mQtGsLAP"}, {"code": "P4XVts7v", "name": "JL0gyboe"}], "countryGroupName": "0o3iso9X"}' \
    --countryGroupCode 'q8XrQFBf' \
    --namespace 'kXvqtW3g' \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'b9kC839U' \
    --namespace 'Ozblg85F' \
    > test.out 2>&1
eval_tap $? 21 'DeleteCountryGroup' test.out

#- 22 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace '4hGueDig' \
    > test.out 2>&1
eval_tap $? 22 'GetLanguages' test.out

#- 23 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace 'rpTwHNdr' \
    > test.out 2>&1
eval_tap $? 23 'GetTimeZones' test.out

#- 24 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace 'yzt1ZJLp' \
    --publicId 'LGuACcSR' \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --body '{"userIds": ["ysBlkQiN", "vl5GMX7O", "WLm4jlWW"]}' \
    --namespace 'Gsb9K0ZZ' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserProfilePublicInfoByIds' test.out

#- 26 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace 'WDcXUOB2' \
    > test.out 2>&1
eval_tap $? 26 'GetNamespacePublisher' test.out

#- 27 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --body '{"status": "ACTIVE"}' \
    --namespace '7kHAAPTd' \
    > test.out 2>&1
eval_tap $? 27 'ChangeNamespaceStatus' test.out

#- 28 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace 'mwgjk9Tb' \
    --userId 'yXdpXmBb' \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace 'FmNQ5hda' \
    --userId 'iuoHFWTb' \
    --category 'PYBjHdRH' \
    --fileType 's3A2sSCv' \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace 'shOgJYmD' \
    --userId 'xLAbO9Rm' \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --body '{"avatarLargeUrl": "3qk2zUpX", "avatarSmallUrl": "q0yb6L9v", "avatarUrl": "dgshIla2", "customAttributes": {"wtK7CsXp": {}, "e9t9F1sV": {}, "UR5Pt31F": {}}, "dateOfBirth": "1986-03-20", "firstName": "0KV6jL9k", "language": "EYp-wwVC_017", "lastName": "xnclmj5w", "status": "ACTIVE", "timeZone": "LmkHGZgI", "zipCode": "tTqXk1ns"}' \
    --namespace '0vpb4QgU' \
    --userId 'oFetpNod' \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace 'eTY44zh4' \
    --userId '3wQvNN77' \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace 'fEu2gPIa' \
    --userId 'uJ7wlpEz' \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --body '{"GlQKyUwM": {}, "9SpTlgnM": {}, "y4urCZiP": {}}' \
    --namespace 'sMqQGvG8' \
    --userId 'eVPpr7NM' \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace 'zNI9OUbk' \
    --userId 'Wv4fsFOo' \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --body '{"4OYNpqz8": {}, "tPXCmuWa": {}, "tT6CrlOF": {}}' \
    --namespace 'cVYlrj24' \
    --userId 'r4gY3CsH' \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'S1nsqVZO' \
    --userId 'yZWwFZzp' \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'Cp5kleQV' \
    --namespace 'EPZgXyom' \
    --fileType 'RhQBh5mj' \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
samples/cli/sample-apps Basic publicGetCountries \
    --namespace 'FVhjPmfR' \
    --lang 'FqO1NZzQ' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCountries' test.out

#- 42 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace 'eLhGb1fx' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace 'Wo93ub9u' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace 'zuP81TIo' \
    --userIds '8uSiPyjK' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace 'bQIi3Q6a' \
    --publicId '4Rpgrq93' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace 'Yi1asls3' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace 'bTfdDkWU' \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --body '{"avatarLargeUrl": "F52ZmXji", "avatarSmallUrl": "QsxKGTSq", "avatarUrl": "B6OuqLSO", "customAttributes": {"FVtlXQsM": {}, "hzn7PudA": {}, "01PTWMpy": {}}, "dateOfBirth": "1991-08-30", "firstName": "vdXJBwEK", "language": "tQUz_syis", "lastName": "En73ry3x", "privateCustomAttributes": {"stGrGfuG": {}, "Fkp5ytnZ": {}, "Jx1Q2caL": {}}, "timeZone": "6m0m4CMp", "zipCode": "jv4HJrzW"}' \
    --namespace 'bCgBi8z7' \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --body '{"avatarLargeUrl": "O3e7jYFS", "avatarSmallUrl": "qXAThmmk", "avatarUrl": "4LIwOyna", "customAttributes": {"NxJqd2Hq": {}, "oIvejehM": {}, "SAN5dsnh": {}}, "dateOfBirth": "1999-04-14", "firstName": "ERDitzX4", "language": "YoL", "lastName": "bM61iCZt", "privateCustomAttributes": {"VcNt9HWr": {}, "L1YSnkD3": {}, "kJsV4Scx": {}}, "timeZone": "zB9dl88L"}' \
    --namespace 'pvtAZ7zK' \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace 'PCNMTRrI' \
    > test.out 2>&1
eval_tap $? 50 'GetMyZipCode' test.out

#- 51 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --userZipCodeUpdate '{"zipCode": "LRTVYUxl"}' \
    --namespace 'anhlIOkQ' \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyZipCode' test.out

#- 52 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --body '{"category": "K4EdLUzw", "description": "kKkClG2p", "gameSessionId": "wpAkOPAy", "subcategory": "CBuIQ1R4", "userId": "HxLhxPwG"}' \
    --namespace 'HYqgEBBT' \
    --userId 'tzEPWs4L' \
    > test.out 2>&1
eval_tap $? 52 'PublicReportUser' test.out

#- 53 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace 'Dxh48spN' \
    --userId '57ZBmA78' \
    --category 'lbA0Jh4L' \
    --fileType 'AAdlrfSz' \
    > test.out 2>&1
eval_tap $? 53 'PublicGeneratedUserUploadContentUrl' test.out

#- 54 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace '4fxejr4J' \
    --userId 'yIk5KGgd' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetUserProfileInfo' test.out

#- 55 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --body '{"avatarLargeUrl": "WecAOjtX", "avatarSmallUrl": "G9SvJHnR", "avatarUrl": "kGKH5k4D", "customAttributes": {"EKymAzfU": {}, "nlJ3g7mp": {}, "qnqGMw31": {}}, "dateOfBirth": "1978-03-19", "firstName": "BLJ6gUlt", "language": "eh_vBjQ", "lastName": "lpZlmfaY", "timeZone": "7Bbcqa9R", "zipCode": "UKCVDKf2"}' \
    --namespace 'nIM0AN5w' \
    --userId 'I1uCQvfh' \
    > test.out 2>&1
eval_tap $? 55 'PublicUpdateUserProfile' test.out

#- 56 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --body '{"avatarLargeUrl": "6gUDow1e", "avatarSmallUrl": "HdLiy0uZ", "avatarUrl": "5hJlL4NY", "customAttributes": {"ngiyWjW3": {}, "P613Tfde": {}, "P0TBs7oX": {}}, "dateOfBirth": "1977-01-28", "firstName": "dBgk0qjs", "language": "HOzN_BWqf", "lastName": "zAaeSuxX", "timeZone": "NZETThtE"}' \
    --namespace 'ouX0Xvhz' \
    --userId '2Al7f3BE' \
    > test.out 2>&1
eval_tap $? 56 'PublicCreateUserProfile' test.out

#- 57 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace 'Iji1mZ3h' \
    --userId 'BG2R40Vm' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetCustomAttributesInfo' test.out

#- 58 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --body '{"suB1v0Rw": {}, "E47vKeTK": {}, "w5ipNgRJ": {}}' \
    --namespace 'FF4Jhxkq' \
    --userId 'o9xQEeBc' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateCustomAttributesPartially' test.out

#- 59 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace '1DCS1f1K' \
    --userId 'sG6YvMKl' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetUserProfilePublicInfo' test.out

#- 60 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --body '{"status": "INACTIVE"}' \
    --namespace 'ZdzN86hC' \
    --userId 'ewidORC0' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE