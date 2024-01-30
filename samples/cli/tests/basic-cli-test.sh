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
echo "1..70"

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
    --body '{"displayName": "3RaYQaO7PwXE6zyd", "namespace": "SO4ZnXoErqiXbCwn"}' \
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
    --body '{"actionId": 45, "comment": "HUsSlUwJw5oEg0VM", "userIds": ["eJYZW0Y6yTxtJEns", "n8Xw6V1RLk2e5mmO", "5FxhEiWuBbjDvyVk"]}' \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
samples/cli/sample-apps Basic getBannedUsers \
    --namespace $AB_NAMESPACE \
    --userIds '["U0YRqIpKbTeDyMog", "8ybGpGjCG9WGHgXh", "DJ28G5UoFcTvGZ8Y"]' \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
samples/cli/sample-apps Basic reportUser \
    --namespace $AB_NAMESPACE \
    --body '{"category": "kepI4vA0zLicPWga", "description": "bpyGMNHNgo0fveMc", "gameSessionId": "cWwt3DhGjx4YixHT", "subcategory": "R8O0UTOZrUfa6OmH", "userId": "G29XMC4VZpG7xfox"}' \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
samples/cli/sample-apps Basic getUserStatus \
    --namespace $AB_NAMESPACE \
    --userId 'eXkhWUxcZHReW7WP' \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
samples/cli/sample-apps Basic unBanUsers \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "r8KfYOhcwGHKl2lO", "userIds": ["407uRcEXWBP100Xf", "26JPQqKiECVyMeRJ", "sDubRS2LybeJix3a"]}' \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
samples/cli/sample-apps Basic updateNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "9cX2KlX34lUHfKpP"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetChildNamespaces
samples/cli/sample-apps Basic getChildNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 13 'GetChildNamespaces' test.out

#- 14 CreateConfig
samples/cli/sample-apps Basic createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"key": "FIkm0sMfXuhJRCYk", "value": "s81rcJeh47iJ8WMu"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
samples/cli/sample-apps Basic getConfig1 \
    --configKey 'EjKjUrBTdgpO0msD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
samples/cli/sample-apps Basic deleteConfig1 \
    --configKey 'l1XoRlajgqKaMqAA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
samples/cli/sample-apps Basic updateConfig1 \
    --configKey '76rnHFaBIth49q19' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "BWRPD0LeeD2cExAH"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateConfig1' test.out

#- 18 GetNamespaceContext
samples/cli/sample-apps Basic getNamespaceContext \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetNamespaceContext' test.out

#- 19 GetConfig
samples/cli/sample-apps Basic getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetConfig' test.out

#- 20 DeleteConfig
samples/cli/sample-apps Basic deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteConfig' test.out

#- 21 UpdateConfig
samples/cli/sample-apps Basic updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "G20vLNUos0Zd7Ha6"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'MIxLn36jLc0YJJ2m' \
    --namespace $AB_NAMESPACE \
    --fileType '2ftd2gFpjrTeuNOM' \
    > test.out 2>&1
eval_tap $? 22 'GeneratedUploadUrl' test.out

#- 23 GetGameNamespaces
samples/cli/sample-apps Basic getGameNamespaces \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 23 'GetGameNamespaces' test.out

#- 24 GetCountries
eval_tap 0 24 'GetCountries # SKIP deprecated' test.out

#- 25 GetCountryGroups
samples/cli/sample-apps Basic getCountryGroups \
    --namespace $AB_NAMESPACE \
    --groupCode 'XEvGEKLODFwVyFaO' \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
samples/cli/sample-apps Basic addCountryGroup \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "UU4i8afnHviYSqnN", "name": "MkMZHJJTr6UGdqva"}, {"code": "XInRjQJLoxWQidAf", "name": "TYXclMubFcNG59lc"}, {"code": "GX2FFlxUPOfM6RGs", "name": "xuTc4HL0qq0MRxpu"}], "countryGroupCode": "3c8ZRbB8XliN20js", "countryGroupName": "apGGeSDoMiMmqfoW"}' \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'snfN02cXNfDZk3rn' \
    --namespace $AB_NAMESPACE \
    --body '{"countries": [{"code": "3FmQgk78MMvmy4vQ", "name": "abpXXesuxKZttdSM"}, {"code": "sId6YYOMOX8oA6hk", "name": "LPlT87Mh0giPUlG7"}, {"code": "tuhzmENHf2UZjxRZ", "name": "dBCnbxQMcgiGTGxp"}], "countryGroupName": "LTp7DTh7s90mzcDK"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode '7wXfn7bW9qM5ilWy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteCountryGroup' test.out

#- 29 GetLanguages
samples/cli/sample-apps Basic getLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetLanguages' test.out

#- 30 GetTimeZones
samples/cli/sample-apps Basic getTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetTimeZones' test.out

#- 31 GetUserProfileInfoByPublicId
samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'pvfXI6jxdwCAca3m' \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e2XrgQNJ9znMJYzY", "hYP2v1ZJj5dF0mgK", "LADHqKFl4WChaTev"]}' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'lalFQSQPEbka4K4E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetPublisherConfig' test.out

#- 35 ChangeNamespaceStatus
samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INACTIVE"}' \
    > test.out 2>&1
eval_tap $? 35 'ChangeNamespaceStatus' test.out

#- 36 AnonymizeUserProfile
samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'FQHcmPQkFT93D1Gi' \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId '3yepmPntKtyj3Exu' \
    --category 'vRuTYLtWzM8SJ6VV' \
    --fileType '7Gt4hVbt2RjNUoWO' \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'EjjPCCNT7zvWHv65' \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
samples/cli/sample-apps Basic updateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '8Nm4GYG3J50nFurp' \
    --body '{"avatarLargeUrl": "QTvmKUsVH843MqKG", "avatarSmallUrl": "2g1uI4gQRKuUjEFZ", "avatarUrl": "S1Vz1WabEEeSgZ01", "customAttributes": {"V4D5Pt6NKnDCVxPM": {}, "z3Ylx1162cHu6YXx": {}, "LAn025J8X7zghqkF": {}}, "dateOfBirth": "1988-09-22", "firstName": "Zd8y3O4yCbYGpqCr", "language": "CXND-jhCX", "lastName": "opNDJJc0PGIZqbjW", "privateCustomAttributes": {"mInAMH42Dn8NQqvi": {}, "WDsjXsxowrqBPv3h": {}, "ks9PgNwu0Lybn8c3": {}}, "status": "INACTIVE", "timeZone": "NXugPiMeYJ6sGXZy", "zipCode": "y1D7A4nftxAetdIP"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
samples/cli/sample-apps Basic deleteUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'kx1T9f5GuDMoDnfu' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'AlqpuS1cdWNXisd1' \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'abg7bEFSXf8voJtQ' \
    --body '{"9BltlQmmLLEqmFi4": {}, "A6kPuIcqXqASF66E": {}, "enTy6mxLQRgpciKD": {}}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'cXMpU7IuoNEZnwFY' \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'CE9d3mP4mwIG8g1Z' \
    --body '{"hu8HaT1in1yQJq7E": {}, "dAiW78l5xSnmsaGR": {}, "cXW4T76pT76p1GMg": {}}' \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'X5eCkgHLJlI0rNjT' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateUserProfileStatus' test.out

#- 46 PublicGetTime
samples/cli/sample-apps Basic publicGetTime \
    > test.out 2>&1
eval_tap $? 46 'PublicGetTime' test.out

#- 47 PublicGetNamespaces
samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespaces' test.out

#- 48 PublicGeneratedUploadUrl
samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'pNIP3lREfXyESYI1' \
    --namespace $AB_NAMESPACE \
    --fileType 'iNiFPgIFxeeMBTLe' \
    > test.out 2>&1
eval_tap $? 48 'PublicGeneratedUploadUrl' test.out

#- 49 PublicGetCountries
eval_tap 0 49 'PublicGetCountries # SKIP deprecated' test.out

#- 50 PublicGetLanguages
samples/cli/sample-apps Basic publicGetLanguages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'PublicGetLanguages' test.out

#- 51 PublicGetTimeZones
samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'PublicGetTimeZones' test.out

#- 52 PublicGetUserProfilePublicInfoByIds
samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace $AB_NAMESPACE \
    --userIds 'iyaCVu42D9Z0CFpl' \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace $AB_NAMESPACE \
    --publicId 'UT0HS8ixxZY4T2Ed' \
    > test.out 2>&1
eval_tap $? 53 'PublicGetUserProfileInfoByPublicId' test.out

#- 54 PublicGetNamespacePublisher
samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicGetNamespacePublisher' test.out

#- 55 GetMyProfileInfo
samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetMyProfileInfo' test.out

#- 56 UpdateMyProfile
samples/cli/sample-apps Basic updateMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "DqhsNaB5cWRc0lIc", "avatarSmallUrl": "vx2uoM9cItWnOqAV", "avatarUrl": "Q44cihbjCHBEtcez", "customAttributes": {"i3CeBjVkezpJcmSA": {}, "K6rSw4da4r8HbaUt": {}, "xRyiTt4vMIvK9JOj": {}}, "dateOfBirth": "1999-07-03", "firstName": "voJKlNWb5ISOLZXp", "language": "Et", "lastName": "a36ZaCoZj2Dw4n34", "privateCustomAttributes": {"ftHXBtIPVzLeYHwB": {}, "dq8TRhqkfMDdp07L": {}, "WroX1fkZevGeIthr": {}}, "timeZone": "eRSwIqgyh4vbASsL", "zipCode": "ckiQ1j3eyXLsWU8g"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
samples/cli/sample-apps Basic createMyProfile \
    --namespace $AB_NAMESPACE \
    --body '{"avatarLargeUrl": "ZTyXcqzSEZWkKBaZ", "avatarSmallUrl": "oUOJD44cSxTgTJkG", "avatarUrl": "fG1KgGp9B9vbs2d7", "customAttributes": {"0rnnjlZyx36Rd7kU": {}, "ZUkowAIYX1soMxwi": {}, "MpTccVbEeLpwqtsV": {}}, "dateOfBirth": "1999-01-14", "firstName": "GHT6ahnnP21iLjQQ", "language": "Zoz_LcPK_Dh", "lastName": "s1KUpZwKlkYN1bw4", "privateCustomAttributes": {"jEz3Fpy6H1Me6ofR": {}, "SyKEhZ0jASqpr2W9": {}, "45nsRdpqGX2eP2Ov": {}}, "timeZone": "wZwpr7YvH7f2ut1B"}' \
    > test.out 2>&1
eval_tap $? 57 'CreateMyProfile' test.out

#- 58 GetMyPrivateCustomAttributesInfo
samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetMyPrivateCustomAttributesInfo' test.out

#- 59 UpdateMyPrivateCustomAttributesPartially
samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --body '{"GozC9tLzbVlqBioS": {}, "laoFvJh8StHGXY6K": {}, "rKhcrmwxWndCMf1O": {}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 60 GetMyZipCode
samples/cli/sample-apps Basic getMyZipCode \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetMyZipCode' test.out

#- 61 UpdateMyZipCode
samples/cli/sample-apps Basic updateMyZipCode \
    --namespace $AB_NAMESPACE \
    --userZipCodeUpdate '{"zipCode": "w8DipnUlpAY10Jum"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
samples/cli/sample-apps Basic publicReportUser \
    --namespace $AB_NAMESPACE \
    --userId '1SdgVPl9mzay9ALj' \
    --body '{"category": "v7XjwyVVIEcGvZPP", "description": "vO8uwRxfB7PHHCEq", "gameSessionId": "95Vrhzr3T6Yvwnbg", "subcategory": "NpnKGigtkQMgP4kZ", "userId": "H7OP6dYD4GEHlOlH"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace $AB_NAMESPACE \
    --userId 'MaYmd2DxGrVok8ya' \
    --category 'mqpvx59Mj9Jc2960' \
    --fileType 'xCM2r2E3kxVtakVi' \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace $AB_NAMESPACE \
    --userId 'nBSwwh3w6ojVErXE' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId 'lHZiOwoZ0pgCPzwI' \
    --body '{"avatarLargeUrl": "JIhxJoWoLg7yIn0F", "avatarSmallUrl": "wSTet8oZEyCr82G5", "avatarUrl": "JsGcfHD48EP0kmwW", "customAttributes": {"i027l30qtoV6agf3": {}, "QSHFffO4BsdQVt4F": {}, "uWoWZOUKEi9rnZfu": {}}, "dateOfBirth": "1984-01-17", "firstName": "T0Ftz5e960IJ5Nfw", "language": "zOpq_XDZh-GG", "lastName": "HDVh7zkxaNBFhsjK", "privateCustomAttributes": {"GZHvl2bKJmiW0fMQ": {}, "syo1kM5nlg4t9zeh": {}, "SFWearlre59FSPna": {}}, "timeZone": "FUEeZ3MFZVP9UzZ0", "zipCode": "pt3ZPEy6lBVr8Qud"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace $AB_NAMESPACE \
    --userId '4U2Cc2fwnbSdKHdt' \
    --body '{"avatarLargeUrl": "XCjUwfjjdcC86aQ4", "avatarSmallUrl": "LNxAn6GPbDphDrxE", "avatarUrl": "5LWdKmRabXDDlhJe", "customAttributes": {"KiJcaaBUrFKdkUnY": {}, "ey6SGwxgvvrjSJVY": {}, "bfipGQtRkALyuyCa": {}}, "dateOfBirth": "1972-03-29", "firstName": "zwFLYZwjPGO9gbid", "language": "WIKw_wl", "lastName": "YqxwN39zr14sJuE2", "timeZone": "ZmIkUzrUIjHl1G6i"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace $AB_NAMESPACE \
    --userId 'yaTydJpEGWI0gXSy' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace $AB_NAMESPACE \
    --userId 'TTBuKE2CoKta73Yv' \
    --body '{"Xu3KrrpZSp5uFpmA": {}, "9QegKHiTTfjGAjRj": {}, "a6Ht7gQD55qj3rlU": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace $AB_NAMESPACE \
    --userId 'byebMuWLkLKgfbFo' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace $AB_NAMESPACE \
    --userId 'HBr9O6xDhdqMarJR' \
    --body '{"status": "ACTIVE"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


rm -f "tmp.dat"

exit $EXIT_CODE