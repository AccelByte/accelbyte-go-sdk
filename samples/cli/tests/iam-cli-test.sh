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
echo "1..350"

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

#- 2 GetBansType
eval_tap 0 2 'GetBansType # SKIP deprecated' test.out

#- 3 GetListBanReason
eval_tap 0 3 'GetListBanReason # SKIP deprecated' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
eval_tap 0 6 'GetClient # SKIP deprecated' test.out

#- 7 UpdateClient
eval_tap 0 7 'UpdateClient # SKIP deprecated' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
eval_tap 0 9 'UpdateClientPermission # SKIP deprecated' test.out

#- 10 AddClientPermission
eval_tap 0 10 'AddClientPermission # SKIP deprecated' test.out

#- 11 DeleteClientPermission
eval_tap 0 11 'DeleteClientPermission # SKIP deprecated' test.out

#- 12 UpdateClientSecret
eval_tap 0 12 'UpdateClientSecret # SKIP deprecated' test.out

#- 13 GetClientsbyNamespace
eval_tap 0 13 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 14 CreateClientByNamespace
eval_tap 0 14 'CreateClientByNamespace # SKIP deprecated' test.out

#- 15 DeleteClientByNamespace
eval_tap 0 15 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 16 CreateUser
eval_tap 0 16 'CreateUser # SKIP deprecated' test.out

#- 17 GetAdminUsersByRoleID
eval_tap 0 17 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 18 GetUserByLoginID
eval_tap 0 18 'GetUserByLoginID # SKIP deprecated' test.out

#- 19 GetUserByPlatformUserID
eval_tap 0 19 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 20 ForgotPassword
eval_tap 0 20 'ForgotPassword # SKIP deprecated' test.out

#- 21 GetUsersByLoginIds
eval_tap 0 21 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 22 ResetPassword
eval_tap 0 22 'ResetPassword # SKIP deprecated' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
eval_tap 0 24 'GetUserByUserID # SKIP deprecated' test.out

#- 25 UpdateUser
eval_tap 0 25 'UpdateUser # SKIP deprecated' test.out

#- 26 DeleteUser
eval_tap 0 26 'DeleteUser # SKIP deprecated' test.out

#- 27 BanUser
eval_tap 0 27 'BanUser # SKIP deprecated' test.out

#- 28 GetUserBanHistory
eval_tap 0 28 'GetUserBanHistory # SKIP deprecated' test.out

#- 29 DisableUserBan
eval_tap 0 29 'DisableUserBan # SKIP deprecated' test.out

#- 30 EnableUserBan
eval_tap 0 30 'EnableUserBan # SKIP deprecated' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
eval_tap 0 34 'GetUserInformation # SKIP deprecated' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
eval_tap 0 36 'GetUserLoginHistories # SKIP deprecated' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
eval_tap 0 41 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 42 GetUserMapping
eval_tap 0 42 'GetUserMapping # SKIP deprecated' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
eval_tap 0 44 'PlatformLink # SKIP deprecated' test.out

#- 45 PlatformUnlink
eval_tap 0 45 'PlatformUnlink # SKIP deprecated' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
eval_tap 0 50 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 51 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 52 UserVerification
eval_tap 0 52 'UserVerification # SKIP deprecated' test.out

#- 53 SendVerificationCode
eval_tap 0 53 'SendVerificationCode # SKIP deprecated' test.out

#- 54 Authorization
eval_tap 0 54 'Authorization # SKIP deprecated' test.out

#- 55 GetJWKS
eval_tap 0 55 'GetJWKS # SKIP deprecated' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
eval_tap 0 57 'RevokeUser # SKIP deprecated' test.out

#- 58 GetRevocationList
eval_tap 0 58 'GetRevocationList # SKIP deprecated' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
eval_tap 0 61 'TokenGrant # SKIP deprecated' test.out

#- 62 VerifyToken
eval_tap 0 62 'VerifyToken # SKIP deprecated' test.out

#- 63 GetRoles
eval_tap 0 63 'GetRoles # SKIP deprecated' test.out

#- 64 CreateRole
eval_tap 0 64 'CreateRole # SKIP deprecated' test.out

#- 65 GetRole
eval_tap 0 65 'GetRole # SKIP deprecated' test.out

#- 66 UpdateRole
eval_tap 0 66 'UpdateRole # SKIP deprecated' test.out

#- 67 DeleteRole
eval_tap 0 67 'DeleteRole # SKIP deprecated' test.out

#- 68 GetRoleAdminStatus
eval_tap 0 68 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 69 SetRoleAsAdmin
eval_tap 0 69 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 70 RemoveRoleAdmin
eval_tap 0 70 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 71 GetRoleManagers
eval_tap 0 71 'GetRoleManagers # SKIP deprecated' test.out

#- 72 AddRoleManagers
eval_tap 0 72 'AddRoleManagers # SKIP deprecated' test.out

#- 73 RemoveRoleManagers
eval_tap 0 73 'RemoveRoleManagers # SKIP deprecated' test.out

#- 74 GetRoleMembers
eval_tap 0 74 'GetRoleMembers # SKIP deprecated' test.out

#- 75 AddRoleMembers
eval_tap 0 75 'AddRoleMembers # SKIP deprecated' test.out

#- 76 RemoveRoleMembers
eval_tap 0 76 'RemoveRoleMembers # SKIP deprecated' test.out

#- 77 UpdateRolePermissions
eval_tap 0 77 'UpdateRolePermissions # SKIP deprecated' test.out

#- 78 AddRolePermission
eval_tap 0 78 'AddRolePermission # SKIP deprecated' test.out

#- 79 DeleteRolePermission
eval_tap 0 79 'DeleteRolePermission # SKIP deprecated' test.out

#- 80 AdminGetAgeRestrictionStatusV2
eval_tap 0 80 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 81 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 82 GetListCountryAgeRestriction
eval_tap 0 82 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 83 UpdateCountryAgeRestriction
eval_tap 0 83 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 84 AdminSearchUsersV2
eval_tap 0 84 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 85 AdminGetUserByUserIdV2
eval_tap 0 85 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 86 AdminUpdateUserV2
eval_tap 0 86 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 87 AdminBanUserV2
eval_tap 0 87 'AdminBanUserV2 # SKIP deprecated' test.out

#- 88 AdminGetUserBanV2
eval_tap 0 88 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 89 AdminDisableUserV2
eval_tap 0 89 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 90 AdminEnableUserV2
eval_tap 0 90 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 91 AdminResetPasswordV2
eval_tap 0 91 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 92 AdminDeletePlatformLinkV2
eval_tap 0 92 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 93 AdminPutUserRolesV2
eval_tap 0 93 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 94 AdminCreateUserRolesV2
eval_tap 0 94 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 95 PublicGetCountryAgeRestriction
eval_tap 0 95 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 96 PublicCreateUserV2
eval_tap 0 96 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 97 PublicForgotPasswordV2
eval_tap 0 97 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 98 PublicResetPasswordV2
eval_tap 0 98 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 99 PublicGetUserByUserIDV2
eval_tap 0 99 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 100 PublicUpdateUserV2
eval_tap 0 100 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 101 PublicGetUserBan
eval_tap 0 101 'PublicGetUserBan # SKIP deprecated' test.out

#- 102 PublicUpdatePasswordV2
eval_tap 0 102 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 103 GetListJusticePlatformAccounts
eval_tap 0 103 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 104 PublicPlatformLinkV2
eval_tap 0 104 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 105 PublicDeletePlatformLinkV2
eval_tap 0 105 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 106 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "KTbHrOmbJXMCkLL7", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["563xEUn0NNfOQlTX", "vdMefaxJbPMms72y", "hAMc3AC7PsM2NNY5"], "preferRegex": true, "regex": "sJG68voCqEGto0oY"}, "blockedWord": ["8JbfrEhpiBYutJjf", "XLcBAlP4SUC2Sm96", "qGVjK2rbafUenrcv"], "description": [{"language": "nBEhyDi3La7FCisu", "message": ["TxlkBzPjDTKWRJ5Z", "C1VJWU9pMtzK6D1Y", "Bfp00Z5W08aOWNpI"]}, {"language": "HRC5waU1SijMFHAC", "message": ["1HRA6qHXDgV5v7rj", "XkF3wxVlG669Kkec", "sN98eEHYB0wHt0VU"]}, {"language": "EhR8aDD4vuv9RW43", "message": ["fZovE3WpE8L02x1C", "eOTcGkD36I9JvMcy", "XM5ShygdqRql9YRR"]}], "isCustomRegex": true, "letterCase": "CMMulFFevWMPhgt8", "maxLength": 38, "maxRepeatingAlphaNum": 55, "maxRepeatingSpecialCharacter": 77, "minCharType": 55, "minLength": 85, "regex": "lsfW6B6F1fy9Aggh", "specialCharacterLocation": "8HPIMY41oWsqxOSq", "specialCharacters": ["XPPJfHrodby3H7OV", "q1VtVn7dmK7UwIBU", "dRZTgwxCdneLkALB"]}}, {"field": "l1VuYwddWIZ8C7zK", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["aD9EpLtahOb97y47", "VPtc1UG4irrmtif0", "QpnCPAY7i5iJ4yjQ"], "preferRegex": true, "regex": "NZE3txBSPjR6CbRy"}, "blockedWord": ["bfAjGVQ67ytkbRHd", "ot8qxPrXMLk8iDBz", "rv7Q30ZpYOSSXz2X"], "description": [{"language": "28raqqXVoh2Bi3V3", "message": ["qmeN957G711MRhEF", "EwKeHcaRdByZpOSh", "K3WDfYZDdj7L60LL"]}, {"language": "0mDeqDvnB61cc02T", "message": ["vRTnwzF6msfxkRvP", "mC5j5tfesK77PWM6", "kYuXCoo6T0UekxPw"]}, {"language": "3bO4TtXCyrlYEbsM", "message": ["BNHtyDbwNSnf7Ovo", "RLj0YvPW2ssxm6CE", "EViYvOYSTyP0qxad"]}], "isCustomRegex": false, "letterCase": "qrCDBwtJ6s5J3Pb2", "maxLength": 78, "maxRepeatingAlphaNum": 3, "maxRepeatingSpecialCharacter": 88, "minCharType": 66, "minLength": 96, "regex": "G63c3Q8O0rrRACUP", "specialCharacterLocation": "Q4I1OkhVTb99y9mN", "specialCharacters": ["Bp2AHdjARFNnkd7q", "pImJ3vyKE7syr9LB", "8ARjq3FiK9fgZ68P"]}}, {"field": "DEK4Yv4MQVk2h3V6", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["I5yCHc7PRYhhCn9g", "lRD9oZN7TBeN4uar", "W7I2B6XBZLUC1GiC"], "preferRegex": true, "regex": "En8AYn3dE4iPyDXS"}, "blockedWord": ["6Ay42mnUBGjZRbNB", "4zN1t6yKtZIHvV06", "SyB65JBAUhvY46tr"], "description": [{"language": "yN7A83fhhnRSGfBx", "message": ["PM70XS5ptNfz9q4f", "fTZvx89St90rE2yi", "80TOEWplg3dYdzEJ"]}, {"language": "JFea00P64eeBjyaV", "message": ["rHKBHyFQGzLJaLBi", "XPQB8K2zDx1w8rq3", "MithZiZFrv0XeSBr"]}, {"language": "ncBdVUhFg9UDuhcW", "message": ["iavFBXOq8cDGlGE7", "b5EEhp9hj6NwcQuV", "onvW62euyjdMkzVy"]}], "isCustomRegex": true, "letterCase": "Yfj0KjEPa1eS4mtx", "maxLength": 86, "maxRepeatingAlphaNum": 89, "maxRepeatingSpecialCharacter": 78, "minCharType": 30, "minLength": 39, "regex": "ObgkTVuXQukERTKW", "specialCharacterLocation": "RUIUzBJY1npRSg2d", "specialCharacters": ["pxqZ0IT5hPAvihTG", "OpCoOPKIGCQXIuWW", "IEL9pfUIJJJwFxb8"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'DobtYv8JkCJGCQuf' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '1kXZahLsTFiSPAPb' \
    --before 'owZA2jTBKSVJojnd' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 74, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'oRyu2NqaiktlDha2' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 99}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'TmVwfYPZqbmaYZNi' \
    --limit '51' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "rrs5IDlR72N2U7kO", "comment": "rYVnPji5OyG2zqFF", "endDate": "83rIrQut2g08MX6S", "reason": "XHysh4Mi48S8bRNA", "skipNotif": false, "userIds": ["drNlUrfHBSYtkQhU", "iqUQz3jDQuPcm7Lk", "SyVR4YaXhQJ7u5Kd"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "JvtdCMlPSyMQde2E", "userId": "SN7DvouNR8uNdskV"}, {"banId": "vA0oPE929L6yhdX1", "userId": "D9wu5J3lB4ji3pIG"}, {"banId": "K12DtFBouL634vkL", "userId": "obEX4LNCp6qUNigZ"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Da2BcMKn4fMVSXnx' \
    --clientName 'FHxFi1NnWnsamuxO' \
    --clientType 'lV6UgQVb3tor82nx' \
    --limit '35' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["vnncCrAD6faHFLdR", "zoc67O2qAZkByycg", "zzdETSu3MkN1DPGy"], "baseUri": "kYZHQYZrOOMggE9J", "clientId": "tIiEiNuGCt190ZsQ", "clientName": "KkkfJp5kalyxa8Il", "clientPermissions": [{"action": 15, "resource": "iL1VhsmKPoOrWzP5", "schedAction": 73, "schedCron": "2hh5fLlSkUUXRkI5", "schedRange": ["5mFT00nYut5gwkB2", "IJfGdUiyp4vV2T15", "1sJw208MlQsuHPoe"]}, {"action": 16, "resource": "lq80olJVBK1iwLJ5", "schedAction": 18, "schedCron": "oSPLnHmk1l5ApAP6", "schedRange": ["5EjQgdQEEgZ37tfQ", "AD8Lndik7cvjY9NB", "cMVYZO5DZpl1ksNF"]}, {"action": 97, "resource": "WVUFupVM6MARHFtf", "schedAction": 71, "schedCron": "hyqr8GoehdBNJiQy", "schedRange": ["cqCo5zYAu5kKGojA", "Zx5DiqtSXMvM99Tf", "PFgZITOutZaWtpSk"]}], "clientPlatform": "Mw0GAV2XwU9VDSPq", "deletable": false, "description": "OaFNRnJSRseCfUO4", "namespace": "3D0QRlXyfyXq9I6I", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "3hLqYMF1WRW0ukL4", "oauthClientType": "neZC7HsEksD0jjrI", "oauthRefreshTokenExpiration": 66, "oauthRefreshTokenExpirationTimeUnit": "faTTzkVEmRrgMfpU", "parentNamespace": "nrGci91kSMEBEesH", "redirectUri": "76nPb1pzDPMfM2PD", "scopes": ["vseLgVvkuMt2brBF", "sOU4LzORF8e8JeJV", "HpYWQi0ugBnsIvE6"], "secret": "Dt1xe5njfBfrVOec", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'VDiM26s641VcNKYZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'uwzG8NuVXfEB0phN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'mpHeZ2Cdg5cO429y' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["A267PImA9qe47Bw8", "Ij8hdo3oKHbVp85d", "4weapgW8ClDKiG6P"], "baseUri": "OEGeyMoG0MSc4H8V", "clientName": "Sictp56bQBH4EwoM", "clientPermissions": [{"action": 63, "resource": "1mal44qFSvUfB24c", "schedAction": 52, "schedCron": "jVBQaLpVfS4aYBK7", "schedRange": ["bpZhhs325u5rXTQN", "aoel1JXpL7iSQIhs", "XKnyTpUOfAMFsIkt"]}, {"action": 47, "resource": "8freB2rlbzg1nnsE", "schedAction": 27, "schedCron": "onyYUs3FRwsX9hzl", "schedRange": ["uruPfvWc6y8yhvSC", "glwY9We3c5U5qQR3", "5bTCGIF456vsFEfH"]}, {"action": 40, "resource": "2MQeAfPnHjxZPjw2", "schedAction": 83, "schedCron": "OXfKJf2Xqt8l88HE", "schedRange": ["P5lst2jn6yICeRVv", "fXYtxPqkgJ0sUW7Z", "ifiATtZJDvqLXcQV"]}], "clientPlatform": "nZwXjkkzLSLFOfOn", "deletable": true, "description": "zP4OeRJ1OTBvf2Qp", "namespace": "IDRuaQMUwcvVH4xv", "oauthAccessTokenExpiration": 2, "oauthAccessTokenExpirationTimeUnit": "AKYLNk8JjTP6xaP4", "oauthRefreshTokenExpiration": 29, "oauthRefreshTokenExpirationTimeUnit": "feqX5ONj0ZrDY6XZ", "redirectUri": "dovZG21xUKORopBL", "scopes": ["HrFV75xFpbKmB39Y", "mDmJK6ExksUwFr1A", "1oPjkbk60DBcosdX"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'aG0NCXo2btCIkUtF' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 72, "resource": "XyuQZf0GBzmqqkci"}, {"action": 10, "resource": "NSk5GipPlYguObSK"}, {"action": 25, "resource": "dY27304URj7UhSdr"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'SPRpjTTQa1p2OwUy' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 76, "resource": "kw9a7vKQjvVwRo2q"}, {"action": 71, "resource": "iPHHJkO1t7XSeF1i"}, {"action": 68, "resource": "HFj4M3fSBs9z6YEV"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '4' \
    --clientId '3OFE85hCyx6teS5M' \
    --namespace $AB_NAMESPACE \
    --resource 'qm4lbC0sAAmjbxL5' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 129 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0ROTrjqXSX9DcQyO' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dh6HDAPXEFW0JuvZ' \
    --body '{"ACSURL": "SwlTZI1YpELZiQao", "AWSCognitoRegion": "8gtEl4XbWOIj5Pdv", "AWSCognitoUserPool": "vdMz35WASlXAfioA", "AllowedClients": ["z731oO0CtfmnQYsX", "XocSu88hVUj6r9nm", "pdLZ9rRqYc8oMzR8"], "AppId": "UbmEDbtwu9Vh5pB8", "AuthorizationEndpoint": "45GMOiNc7g8eChcH", "ClientId": "inKU6wHxH96vjSkM", "Environment": "KmXdzY0JVXOwJCVX", "FederationMetadataURL": "oB4J30ImE2D8PTpm", "GenericOauthFlow": false, "IsActive": false, "Issuer": "ULc7o4igTRIjAw0q", "JWKSEndpoint": "szCEA3MPaswCUB98", "KeyID": "oUNusw6HgdMSqdc7", "NetflixCertificates": {"encryptedPrivateKey": "P5zbor2zC9NRn2EQ", "encryptedPrivateKeyName": "HtGEpVXy41Ls5MUo", "publicCertificate": "VZ0YexhLwCzjU6wW", "publicCertificateName": "I6QKgHWsAvF5GfxK", "rootCertificate": "kMMOjgB43eDkyQg7", "rootCertificateName": "jWsqAwHVfFt5OOq5"}, "OrganizationId": "EBFXjSklBMZcSw3R", "PlatformName": "jpN3Eyx6vilg5HTJ", "RedirectUri": "7xXGu402gk3HFmb4", "RegisteredDomains": [{"affectedClientIDs": ["Kw82aXorSlSuc645", "6Fl2sFhRYKrlp1HB", "HzUiY87MNB5eTO0f"], "domain": "7ZlrqpJLDShrXroP", "namespaces": ["ZM4EKihtm6k5d8Pu", "0nOtvLpxHb2IQFvw", "T8kSMfxIMEXehJFX"], "roleId": "p6sS0qyEg9iwmUSR"}, {"affectedClientIDs": ["9vC1DhXAhtjlFM3A", "dtuctNTbKd3kMDTq", "cqqslNtt2xzJLzZJ"], "domain": "n2PMkF1brBNo5UxX", "namespaces": ["LgL0CtEciUDR2P14", "I8Mfp9uxSEikFDXa", "eStVXUlwo93ACEdv"], "roleId": "As8KGv34GXbW76Bw"}, {"affectedClientIDs": ["HvMuky1yyL94Ox0o", "UhcWfed7bAM4qx2Z", "UlWggVuRmC2T6mMY"], "domain": "H1F2JkKkrLZpOy7V", "namespaces": ["pbHYBKhr9gNjnnQ4", "9Pm17bK3jAzCC0TU", "tW5iHJTowAdqbGU3"], "roleId": "5ntRbqSAK5a1XsKs"}], "Secret": "lByd3D9TEfQaaaz6", "TeamID": "PLE7QsP6jMShoLB9", "TokenAuthenticationType": "vsCwS8oWPMGFxC8v", "TokenClaimsMapping": {"ffLWTlkHBJLkRR1u": "245CpPQmgLSrMRS2", "aDFXpBeDBQoi9e40": "oiOyEqv62T304bhp", "0blOO7RXZtmdyP66": "AOi2xxNF5C2rKcFA"}, "TokenEndpoint": "Q0gL55SJpN2Spxjf", "UserInfoEndpoint": "wx1rIgullqHjK1F8", "UserInfoHTTPMethod": "9t9DOHaFBoifZhQI", "scopes": ["lHmSC1TjOFs9CqVq", "ZXg1viQth5yHI79z", "DVVw2qmfZPNwLl0o"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZGPu0EoLy10YJJ3e' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dMqMoprmzNnHn57p' \
    --body '{"ACSURL": "1cjObeojKpiHsjdB", "AWSCognitoRegion": "LnhQsSuIQ96MLqbi", "AWSCognitoUserPool": "0sdeg049HhOfrsSy", "AllowedClients": ["4qxT0dS4jZV8Mdl8", "CCNyLv8Sip41NqMh", "hT44eRwQ6k11p962"], "AppId": "CVoX1XY8U642UIru", "AuthorizationEndpoint": "K1lZhe6YfKAqW0xL", "ClientId": "DAy432DP6CvpnuTB", "Environment": "8ODjh332gs1JAEIB", "FederationMetadataURL": "QmxXfhkxEodGSbSu", "GenericOauthFlow": false, "IsActive": true, "Issuer": "k31PX01lt2IUfjbB", "JWKSEndpoint": "S6PscGBrWO8O4KyQ", "KeyID": "Sr7aPePqm6hog3gz", "NetflixCertificates": {"encryptedPrivateKey": "914v45UYPq21Qsf5", "encryptedPrivateKeyName": "WYAkzg6NdOpUTwg6", "publicCertificate": "LZbWchefIYFD6hhF", "publicCertificateName": "rkPCiyg6MS78006O", "rootCertificate": "U1MDMRxNFnySif4J", "rootCertificateName": "j6X2MXHLaHErpCb0"}, "OrganizationId": "uB5FugLqnLnpUmee", "PlatformName": "A0VBlsSORh41vqds", "RedirectUri": "UKhvzfhDT9Jf3hTO", "RegisteredDomains": [{"affectedClientIDs": ["mV2LNHYCwyv6NnnM", "6CJWfUYOemrolrCc", "p7HRufipleFUhv9Z"], "domain": "uKoAuthv14wVBJXp", "namespaces": ["qZYNN8JwGQB8yLnC", "qnZ1ZKgfahGclIwV", "O2RVncJUS6gvlr5l"], "roleId": "xprAg7YEGt72d5JM"}, {"affectedClientIDs": ["LMEeWCCNpGxr5r2h", "s6GjnqCydTfRnw4y", "Qo1ZTnVHz4CgljpG"], "domain": "xxwjq3Y75raceEXN", "namespaces": ["SfPomuRWlpmb824C", "ZQm3ehySjT5V8vWk", "JfRD9iOIMwzvtUdD"], "roleId": "gnEyfxU6h6CpqkDV"}, {"affectedClientIDs": ["br2PjRfYEfnVDuHS", "Yo6kPX1QhRMr1MV3", "x2EWX94C7xI1qdI9"], "domain": "D8HV9BG9JeKSxqJ1", "namespaces": ["uXKo2C34SQ09aUar", "VPHMjn6Zp1uvGZnm", "a1ucbaIlhwCHMEIu"], "roleId": "ooVZzibJKY27oXHN"}], "Secret": "yosK0VmhPYOl1UE1", "TeamID": "2VYAQF02VbxZU8dJ", "TokenAuthenticationType": "tHASEjaZjd52BljR", "TokenClaimsMapping": {"gD4ouvUkHk2lR5t6": "haqdjqwifjiDiqFO", "ydKICj86X4y8mQzX": "jEInkR44ATvufkZk", "84fAH8uOao7FWmkR": "GXR2QpME0qkCRej8"}, "TokenEndpoint": "wSjIKES1Mq2v8x64", "UserInfoEndpoint": "iC7DHHCBiErSSWDc", "UserInfoHTTPMethod": "N41uLhZ4a2LeZ1Yw", "scopes": ["mK8GmIzzpy7n4zGy", "rPwU5MKS3SKuWdv4", "tT2wbQOIwQjhDy1c"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VD28hI5z48gnRDYn' \
    --body '{"affectedClientIDs": ["L0TF4Mq1jiwCKgyS", "ls8ivKzPLqzJbPSb", "JY82SX4FhrPKUwE5"], "assignedNamespaces": ["TPRJRDLfs09osDKW", "issAZvxGZOT5DINM", "ciimqamCGjAW31wY"], "domain": "l2yiFJEu1HC92LiL", "roleId": "4ZlHyZrvZfHnaQRh"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UFv8euX5XGXD43yN' \
    --body '{"domain": "82ct2QoFJHhuauDW"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '0crUMKWgk4bYltAn' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'iQP3tchKT5O52ez7' \
    --body '{"acsUrl": "SRUbDTCOgYAw7NS8", "apiKey": "iY273mUQQJqxlAuQ", "appId": "uuRASCewWZ0m7L8O", "federationMetadataUrl": "luVAULk2HcqYttu6", "isActive": false, "redirectUri": "WNiqfnp7hx9SaY7y", "secret": "g8SVffQfB3rSsfz0", "ssoUrl": "PY9VM2K5qJgD2qdz"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8xOnkaTj4kb8X37v' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'fLL4Yw1Rd5VUqQlT' \
    --body '{"acsUrl": "w58wqTSTiLnhvLjs", "apiKey": "syxhnJruMSpWWkBB", "appId": "YZm9FK8Uudmue0ab", "federationMetadataUrl": "4KdUj4pJeUdx3XnS", "isActive": false, "redirectUri": "TBHClmCrFsOu5G5s", "secret": "jt5D3SXUwqebVx6c", "ssoUrl": "pqMBOoQQJqPbRyC1"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '28agpPOmNSrJfWvy' \
    --platformUserId '6V9K39MrGVU2EHcS' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OsXFjAZlzUivuwDj' \
    --after '90' \
    --before '57' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'pMhcIS4HFhVZwWv0' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["EYQCmPrAbSAyNdiW", "1DVrqO6NEGBLiLXq", "fORHNlSgl5f6h6db"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["bh20l70NnYMkipHy", "KmzCJrGB7OKAm7ZH", "keKcg38TWAg3GK15"], "isAdmin": true, "namespace": "6PnKGtj9Un31YXWm", "roles": ["EfwSOwec7msnjNks", "C3UqIN68qTvaEAWD", "VG1KsMhStIHHx9bK"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '16' \
    --platformUserId 'gI3FHPlai2Ds95PB' \
    --platformId 'YHmUpLmsxSxMVVWQ' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'umHvKHKOTF0jPGDB' \
    --endDate 'LJJZgHeVloQ6BQjd' \
    --limit '51' \
    --offset '1' \
    --platformBy 'i9TO2VZ0y9FxZrcW' \
    --platformId '4eYIgAbc5Mk8iNBL' \
    --query 'd7w3qKMG5A5mGsdo' \
    --startDate 'o9XO8TQvBGESeKU6' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["5THZdmNhUKcJM0lS", "HIP3prHh4okUZvYz", "RIRvjON9tIwTpsgP"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lLSPBX8yuY4sNWh0' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f2z0R1CYEjeNxdju' \
    --body '{"avatarUrl": "gIGkyhhBhaX8ViFv", "country": "2dX2Xt1cS269dUAZ", "dateOfBirth": "S5GFBmqpXhMBzeO6", "displayName": "a3KP6PF5qaIbRE21", "languageTag": "rJxSOKcQRGORyAez", "userName": "HmES0YuTLScIa1Fr"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wp7IPHy1fmXurjoG' \
    --activeOnly 'true' \
    --after 'sTfmkLcbUOdNbM3j' \
    --before 'mpzo30KuXgntqPrF' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '5vH352p5v0uJCjzr' \
    --body '{"ban": "weANX0IO0j10E3MU", "comment": "KhvnTl8XLpziXNJp", "endDate": "5pKvl0r6UAei3tYo", "reason": "WGyrHYtAY7KqVcth", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'F7bkxyz5nIxGgzVH' \
    --namespace $AB_NAMESPACE \
    --userId 'gmbeeiM3bXqEdO7a' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yVGHTFhGZtdsOpFt' \
    --body '{"context": "9KEdwMe73KkEeujq", "emailAddress": "ZAL6o8Ywdcj3b3mI", "languageTag": "zNog8agaSIIsfTSc"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rtlkGVMmkd6FNAFm' \
    --body '{"Code": "hstztOorUiGIXVF7", "ContactType": "47ZwJEUSrxdxSquZ", "LanguageTag": "AekZFeivnXyC4hnv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'ev5rTzsHXLpGhEz3' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '233EwnPdC18rybV6' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aoq9EukxUAf7uDd6' \
    --body '{"deletionDate": 27, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xT4xIvNwwQSFB7ve' \
    --body '{"code": "Wf2uqH0SynCRKg1y", "country": "aYhPbWKBvvCmKiaq", "dateOfBirth": "ehZMEAT65smObKTf", "displayName": "zsZgfBYgqczGThYL", "emailAddress": "QDdMbh0U7AYtxWgl", "password": "xo88EBDS3j2CDz0E", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D3Dvq5b2TF4Pp01v' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '9AaatNkjo5smHa8d' \
    --after '0.7745791725176099' \
    --before '0.20006884079293985' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WCKR87JnQRUwpPCu' \
    --body '{"languageTag": "sm9IPKjRhC9q2dkQ", "newPassword": "BuH3Vt479znyMPaD", "oldPassword": "ylDJ5Lu45tpQixng"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZdnQJyX4dpxlBhos' \
    --body '{"Permissions": [{"Action": 97, "Resource": "Q1yfV5hoiIKRKnSD", "SchedAction": 97, "SchedCron": "IOMCTlqJPpXOiUo9", "SchedRange": ["AYdpxidNJp9DwNMO", "AWs39EIKoe0FacJX", "KsSZ4mGgk2q4DmFy"]}, {"Action": 66, "Resource": "ZFz3Ls8b14IN40Wk", "SchedAction": 61, "SchedCron": "PjZTZx7c5ERfjuwE", "SchedRange": ["povgoYShBwMHk6QN", "LFcKpYc6qCWJYWOm", "LWYEN6PTUgaGngJg"]}, {"Action": 74, "Resource": "MeLMiMuzZp4jwtgs", "SchedAction": 6, "SchedCron": "Dk51zOUyGxQUP7RX", "SchedRange": ["P3DrcJvcya4RKnl3", "elaEg2lMTE94hEyv", "U94us1eCm2ZOYdrF"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kvKb0QLWB5ROOPpG' \
    --body '{"Permissions": [{"Action": 24, "Resource": "kp28MDTf9AiSnpDs", "SchedAction": 9, "SchedCron": "qdgAdOHrJUkAkwyr", "SchedRange": ["OHENrItV68y3pHBY", "U93awwRWgpweMbS3", "NNdrflKeGulH1EY3"]}, {"Action": 78, "Resource": "akpAxnct2y6LN8oP", "SchedAction": 11, "SchedCron": "iWlWdCsXRkg1IAe5", "SchedRange": ["II6sW0YghjGHeVhW", "uMUAvKl1AUcXH7R5", "bVI52SLOaPYWSS0x"]}, {"Action": 39, "Resource": "TR5kXxAzCQw9C6Nr", "SchedAction": 98, "SchedCron": "HPoHQ1iY7TK5iVAK", "SchedRange": ["Hat3Ke8Oi7QZbOP4", "FiGZYrTwbVct1ePi", "EIzaYAoca3HDlXV8"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xsp5QbZlhXMcB6a1' \
    --body '[{"Action": 69, "Resource": "8lL1XG6TpZ3unalw"}, {"Action": 60, "Resource": "M75i4b8lbhbkEme4"}, {"Action": 75, "Resource": "9ulDXABQhMuKd0Lg"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '86' \
    --namespace $AB_NAMESPACE \
    --resource 'yfkqjDyRRhFLPkkH' \
    --userId 'jGuu3dcKconacxIy' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'h3xM2w31DUPdB689' \
    --after 'jNSATIdbENjCFqAv' \
    --before 'IagdwMdfyASNwFwQ' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'NNwrFLavWAvcZLOf' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'RozBh1GlH7SzZtTQ' \
    --userId 'uXLxPnWILPy48ZyL' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'PvyEF1SgZM3jO7Di' \
    --userId 'j67kctzzUcEBZ0aV' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '95pDr4yWSKLpJ9RS' \
    --body '{"platformId": "pqiD7bBMHCC51qTg", "platformUserId": "d3U23SPgZotfVeoB"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'h0g1mvMnhfYSklYQ' \
    --userId 'ZvOvSFaWbrXKShZp' \
    --body '{"platformNamespace": "qQNRw40iaOrziSwW"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'obU6zIy8zmnj1DM2' \
    --userId 'qR1uf6QKplWK0W4B' \
    --ticket '4lTh8FkBq9b1HYCp' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ECjubfWSmZisI26f' \
    --userId 'VozGzw0rKLQPmpWe' \
    --platformToken 'v4YTLoiR3VaFsWwA' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PRGydOLoECpjSwyF' \
    --body '["yF1nArGPlA7uCNm3", "UnwVMl2vOix7CHhL", "wD0nHuYpaThjwPG0"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PCPG2g1TKzpUbp1j' \
    --body '[{"namespace": "uEQcPGV9ssbhTKnW", "roleId": "WTZcdgrkTwgQFT5T"}, {"namespace": "opykeT0vKqfZ1WGy", "roleId": "RSNXblYEHIje03bU"}, {"namespace": "VBWNp9W9rk3J7yU7", "roleId": "16Rrm61lWwXl76DL"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'D2QKAdIhWbkClZMG' \
    --userId '7CPZ5E43wi9MDTMt' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WJxYU7BAHUU3f4p9' \
    --userId 'yo5UtKYL0WAoB9Op' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KEY9IBrDJjWmewwZ' \
    --body '{"enabled": true, "reason": "l4DiyDhKhyz7K7qr"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZUvw9Zx099s06neM' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'AP8AXQFxurVvrAyG' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "JgFHUGSp2WdFo93E"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'dxzDAl9Lzq1u8LgV' \
    --before 'SQlkOBP8qLPdMCUN' \
    --isWildcard 'false' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "Dj0b2C81igmWFXAb", "namespace": "tN3f4PBgjZDlOvsB", "userId": "Sa0qeAdnnycwXecy"}, {"displayName": "jXiDaKqv1UvhBxVe", "namespace": "SYcob23hikMQxIT4", "userId": "Y4rMlYzchJz35CmG"}, {"displayName": "6Btxptm0LLKhqJfN", "namespace": "iZhBxTkXfuVuvF43", "userId": "M6GX3s4QMITpEXzz"}], "members": [{"displayName": "7FzldV5YXiuMMuk7", "namespace": "Qy2BWUHs9pqIu7E8", "userId": "UdE3LtziTSUT5w5O"}, {"displayName": "baYOgl8KfIGYjznl", "namespace": "Ii05g1gNe5doPFwD", "userId": "aM7AlDXMbsegIx8E"}, {"displayName": "iilXCF7I7wxVRZuG", "namespace": "JOD7Q0IzytYECjkU", "userId": "SCyF7aliFVAUiLWP"}], "permissions": [{"action": 2, "resource": "zHzzRT6QndBcpedi", "schedAction": 71, "schedCron": "d7gb2iGrZ6vqwoJK", "schedRange": ["8nWxapFXYroCbWxu", "uhInj5YtFEl0e3cc", "FwAhtqB8t6E3ceNg"]}, {"action": 23, "resource": "kPobXQDCmkEpBTj8", "schedAction": 11, "schedCron": "9jW8ybeujogr1j9K", "schedRange": ["RZ6DkqEXvMbFvo1d", "nfeQ6ywqzeOAae1u", "NJDf8VYBcKHF20b9"]}, {"action": 11, "resource": "Ne4BrE0mvR36bNF9", "schedAction": 52, "schedCron": "KSVwQRuCvnpoFb2c", "schedRange": ["RFmLFbZePMfhYbGM", "w5vNrtYhbTyoGpZf", "7SvgwotNJ6OWzC8s"]}], "roleName": "fLQ5qXHygzWKLa9N"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'nVFzsinRj4jb1DcZ' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'AWIcEoIRVqcfVy03' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '7UFo2hYIyYHeqRyt' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "hhTbrBsAkQ2Zdrx4"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '97IysImTAhBd6Myr' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'MAkt4o2LiXMK7pKL' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'PBXYtQr8GzqWWDb4' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'UU53j1MIXv4fBo8u' \
    --after '6tfnbZMQUb5FBh6X' \
    --before 'Jd154h13uuR1Jlaa' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'P1DPYtrWw1t8QqHp' \
    --body '{"managers": [{"displayName": "CxzA66JE22ndVce3", "namespace": "JUshAFgEUxmiOXkE", "userId": "M8X1W3Dm8OSC1XCF"}, {"displayName": "tXjRzBHazOr5tmz0", "namespace": "IrZksWVoxRxZwzF2", "userId": "5kq4U5nnnsHGmSyS"}, {"displayName": "46g97rJWX4EYRftv", "namespace": "bdoG8FDqk9Iopq6u", "userId": "crQnBclYCbJ1tJLH"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'hrmYZesh5uShlQIQ' \
    --body '{"managers": [{"displayName": "eK4fOvm7dqTeoHhN", "namespace": "9wQWGMIGbPKkwHyB", "userId": "4DiV1yqyzt5FPVrG"}, {"displayName": "zgdZ2C8hW4LxuKZs", "namespace": "urhhIG0tlU50fEFA", "userId": "86myus3DdlfHoyw4"}, {"displayName": "XQxoHWOHKxoKQZw1", "namespace": "Dw6AqnWbTywabCWr", "userId": "xrWS7zfJrNIhbCBX"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'GGlWyLFEf3Vq1z8g' \
    --after 'VhXH4mVcrqZIE9lj' \
    --before 'P4lCTwuHfvmR2Mny' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'xShp6qakyEMeigqc' \
    --body '{"members": [{"displayName": "PmRBQBN0PAABHPyy", "namespace": "y0M4CEu2U8bakLZS", "userId": "SFWUgrWtd7eswGO5"}, {"displayName": "pB8xUpZ1pR4xk1mT", "namespace": "tKbF9cszzgakMUGV", "userId": "ojVscBSdKwrWZxrj"}, {"displayName": "7vWPD6meW6ez5j5o", "namespace": "hT6jbvDEW8YNEM5M", "userId": "J9mYlgrSF6tn48XK"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'L3OFI3VcPSiTwz8c' \
    --body '{"members": [{"displayName": "xt0Ph8XlUra4sGMx", "namespace": "jvO6c3ojnYNzINzF", "userId": "Uod4X4NL5uZAAPcN"}, {"displayName": "x9lMOGK3Mc6MfRx0", "namespace": "mzAXpsSnYCHoiIZB", "userId": "m8YNSdhFXN8RapWk"}, {"displayName": "Yj0yS0a6u2DpAdP4", "namespace": "83bOBgPIllwKPp1r", "userId": "Ap9jcu22gR15EB06"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'RYEK0VnaVDxOAQLp' \
    --body '{"permissions": [{"action": 28, "resource": "b0Wu3B10XTAtgibY", "schedAction": 93, "schedCron": "4jae81iLr1IKuCtR", "schedRange": ["0sg7CKaHrCSdVpYI", "81ik4AuutYd808Ug", "FUNkIVbZmkNTvojm"]}, {"action": 16, "resource": "z5wVtgSn52iqEoSL", "schedAction": 65, "schedCron": "PdiGHpluOspAIg73", "schedRange": ["QYS4N6yKryRUC3JB", "i6Yii0VoMsND1c47", "BnBdkywHqEfHZI17"]}, {"action": 84, "resource": "LgK38KSwdDy4bBKa", "schedAction": 31, "schedCron": "Z14M9GDgVnYT8vIx", "schedRange": ["gimVqFmdLPdjSZRs", "wPdoVYsMWlMsbthL", "HYHUFxeFv1y07RXo"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '1gwgHCZLJnHg4EzN' \
    --body '{"permissions": [{"action": 12, "resource": "y1oT66DLMpO6JUT7", "schedAction": 48, "schedCron": "gShhwcJcFc3vkkrw", "schedRange": ["dEwQwnEqd5tpriTX", "R4Cas8Q5NMkQPhuf", "aHswY03mhVArlv8P"]}, {"action": 62, "resource": "7VA13u0uIYFo33wv", "schedAction": 5, "schedCron": "d7jGuRL1c2psTify", "schedRange": ["T1xlvMURWId8rmPy", "h5czmWXIjIeUxUQk", "JHXJHEUYk8pEePUu"]}, {"action": 40, "resource": "NvBPxn0gd8x8WUiA", "schedAction": 9, "schedCron": "p4eC9DNIvCFVT3xG", "schedRange": ["lPkytyIhg7U4XHnE", "K9lxWK3Ip3S2dyyi", "pBBPa3rmejh3fU43"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'zKsusoWuAI1qoQfU' \
    --body '["7nMwlsGHtLHlv9pW", "32OUV6xfJHuzVmYV", "r5kMzOEXb8Mhlinr"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '53' \
    --resource 'vK9OtFQIocgCrUs1' \
    --roleId 'wxvPdBTNCPlSjAqF' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'v5AYWJoPeU0M66Wq' \
    --extendExp 'false' \
    --redirectUri 'TVFbymWytXcz8HNm' \
    --password '5Vl7N5Ki9fQ90tIE' \
    --requestId 'CbJkwxIVl97vPpWm' \
    --userName '7m7MiTc2FJeaVnRE' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'lXlFAL1F6EnrqMvZ' \
    --linkingToken '26GfqwTfmnU4u8L6' \
    --password 'YtoLHp1aAArBhPo6' \
    --username 'SBd0hZfOZv8oAjb9' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'e5yuGTvY0VqxjTgt' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '8n3hYIJFTUJcuc43' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 't81NSNpXaE2TwpKm' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --isTransient 'false' \
    --clientId 'TFYGn88WPbyaGiNr' \
    --oneTimeLinkCode 'x2d0r3QNTyqH1OJR' \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'GfDa6sy7MGZJDUx9' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '98WqLPA2ojSF7T5K' \
    --userId 'NTRXBNO6AAQE5fK6' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n4goXSBgvJ0TomPP' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'KWKecxpRtVLVsg31' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'Pv8i9Lmy1EUBlbXz' \
    --redirectUri 'w8mzdoTnytvt3iUV' \
    --scope 'KdK7g3zGUanBso46' \
    --state 'IjEoPJeE2JAfLL6G' \
    --targetAuthPage 'th2yX4KOAHtxsJJm' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'fN1IzWb6X8kkIJdt' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'zTakZzPpQvVz42zY' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'LPZpmsolnbJ8sUZ8' \
    --factor 'Kv8bzvQMErKLsUBz' \
    --mfaToken '6AxyTXhVBvUuM0Ff' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'CWScqx2RHQN7mv6N' \
    --mfaToken 'vUp3gaJac2ohE69S' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'iXl269tiE3u9xGqk' \
    --factor 'mtidSXyf55bNhjjf' \
    --mfaToken 'I3I54Keajr7FTa2y' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TxN0EPJ1H1JbT7hd' \
    --userId '5x3EMFoEgbN1bgYL' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'x6N16FdxR4Kv19Wc' \
    --clientId 'puJCgMikuxMoZwBX' \
    --redirectUri 'uskdff2Z6mb3LiM9' \
    --requestId 'gldSxnZhPpNFAE7n' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '3b4seFf01NJOPyQd' \
    --clientId 'XNh6qTFCoSkC0mww' \
    --createHeadless 'false' \
    --deviceId 'LgwiE8rHMeLefIqY' \
    --macAddress 'ETeam6JUHImOU05k' \
    --platformToken 'tphVujKe7RYm8tba' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'D2jiYVveJB82YFv7' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'ay0G8JRPGPojqpEA' \
    --code 'w5APby0ST8VkswmP' \
    --codeVerifier 'ecb4e8Bwy434aapx' \
    --extendExp 'true' \
    --password 'bsudHrCANfpcyyBI' \
    --redirectUri 'jV0fADvBHtZf9MN8' \
    --refreshToken 'ShbXWOHy7DAhecW6' \
    --username 'cBp13EqOLUadfaCL' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'PCPyliFouCK732vu' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'zPiwtjoqnexOHAqI' \
    --code 'zLyyg15UuVBWiG31' \
    --error 'L1E0EWn9frqTLgrq' \
    --openidAssocHandle 'sUKEBqA4P1E5enDR' \
    --openidClaimedId 'kb4VTYUl87YpbNG6' \
    --openidIdentity '1j6FT7mIz9i8akUA' \
    --openidMode 'pMz8kOJug5LkhKCh' \
    --openidNs 'VRUNeZCIPJ2sf8Jl' \
    --openidOpEndpoint 'fvDJBKVzxltAubgw' \
    --openidResponseNonce 'TCNlkajuS6F1e07R' \
    --openidReturnTo '6jAHOo26wLFUtUNH' \
    --openidSig 'Czzi1YjsFTM7LOyD' \
    --openidSigned 'HzH6PfUolIXmZiKa' \
    --state '7wG3d39AXK7JBxWX' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'RIdZXZma5AOt39z1' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'NA5xs1xNKIaqQCT5' \
    > test.out 2>&1
eval_tap $? 228 'PublicGetInputValidationByField' test.out

#- 229 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'AKNtKi9rpkJG1eK6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'PublicGetCountryAgeRestrictionV3' test.out

#- 230 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 230 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 231 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '1dKMl4Pn2MK482Kv' \
    > test.out 2>&1
eval_tap $? 231 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 232 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QuCliHHi14Sw83ie' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["WAcWxr3MvJ93Gilo", "tP6siLREC7II3qPF", "ozHEqrUvqOemSMIf"]}' \
    > test.out 2>&1
eval_tap $? 232 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 233 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tQzGQpkfcCIwLgKL' \
    --platformUserId '8R6L0GUW4b28aIL5' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetUserByPlatformUserIDV3' test.out

#- 234 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'QviNLFTeynK3jnzq' \
    > test.out 2>&1
eval_tap $? 234 'PublicGetAsyncStatus' test.out

#- 235 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '9Gce88uo48zeTQ6l' \
    --limit '76' \
    --offset '13' \
    --query 'vEkn0UssHUY5DpSB' \
    > test.out 2>&1
eval_tap $? 235 'PublicSearchUserV3' test.out

#- 236 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "wbyC9cAUF4Ghydyc", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "b4R5uQRZWADFL5xZ", "policyId": "T0qEicF1EaFnVyvl", "policyVersionId": "mzqZV5ZL5iJwLCJU"}, {"isAccepted": false, "localizedPolicyVersionId": "bhptvKLMzKkPomds", "policyId": "DjFwNYASxq57HbNx", "policyVersionId": "aj67fmBvEki278Gd"}, {"isAccepted": true, "localizedPolicyVersionId": "KZ0UTOqEaw9tMwMj", "policyId": "mSTgy550oG03v8WO", "policyVersionId": "rx4AcZiPa2P40H7u"}], "authType": "TwIFicA2eQBniLWK", "code": "Gd18uBVJwqCGa5Mk", "country": "7IPDtIT8w39Y6B2o", "dateOfBirth": "268fUKIV22EBF7Gs", "displayName": "pQIIY7PzP8o0eNp7", "emailAddress": "9AigySR8fTce4TyX", "password": "ztT0XeTAuvAbeEfA", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 236 'PublicCreateUserV3' test.out

#- 237 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'K4KFlrG8Siu1YPZw' \
    --query 'HUBX6vXOkvUuk1Bl' \
    > test.out 2>&1
eval_tap $? 237 'CheckUserAvailability' test.out

#- 238 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zeGNtsH7CLXiUFpp", "1aOVCQ1KAsH9qOxO", "NU9UYR2RHeRu2kQk"]}' \
    > test.out 2>&1
eval_tap $? 238 'PublicBulkGetUsers' test.out

#- 239 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "WFIWdm1hLeUKL1ej", "languageTag": "eGUvj7w93ukRgiAL"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendRegistrationCode' test.out

#- 240 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1Yu5faG6vVeaNCad", "emailAddress": "1YPGRknco5m8eZmz"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicVerifyRegistrationCode' test.out

#- 241 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Hxf2QKb0n8PaNnA8", "languageTag": "hYScurBuGyfmhw6y"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicForgotPasswordV3' test.out

#- 242 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '1C42buY0ZYsRSxgp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetAdminInvitationV3' test.out

#- 243 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'Z6O599z3hHViYmOm' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SldUjYlWg9NaMClM", "policyId": "68KhISyIEPJX6LG5", "policyVersionId": "0HtvlAsxvod36NaM"}, {"isAccepted": false, "localizedPolicyVersionId": "DjutNhWM9s5q749B", "policyId": "f0ms9Iv3VPRAupPX", "policyVersionId": "wNekSF4hF4pgJyzn"}, {"isAccepted": true, "localizedPolicyVersionId": "2DIJAvFm43VHasL5", "policyId": "J4GveMcdL164H472", "policyVersionId": "HzUQPD2tVfiMEdAT"}], "authType": "EMAILPASSWD", "country": "hnEuvC4mZ4bepdBc", "dateOfBirth": "1kpyl7njUTWw1Rx6", "displayName": "b6NoMCsKyoWtWoBk", "password": "8zyhIB12aiktwArN", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 243 'CreateUserFromInvitationV3' test.out

#- 244 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FKSAj8ifBeTqf4qZ", "country": "kpatph7K3mwxrmVs", "dateOfBirth": "Zq4vdbZ8aSlhaqin", "displayName": "YhiR6a09S4QmSwgv", "languageTag": "TF0yqjCn13Qz7WGa", "userName": "j8naJq1F8HkmWRup"}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserV3' test.out

#- 245 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "svjMZ9nRfp7I6xWv", "country": "SLK2bme37wadeesF", "dateOfBirth": "TbqGVurtJ2YUTlpv", "displayName": "zlFM2Ovwu3iXMH1m", "languageTag": "gnOXhK1ho0LMM8AU", "userName": "gfvCQulVRP90n6Py"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicPartialUpdateUserV3' test.out

#- 246 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "syZlgmd9GOfleahB", "emailAddress": "EswZAs5YOOkB2OhP", "languageTag": "P24A4qGsHUMV5VSk"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicSendVerificationCodeV3' test.out

#- 247 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "98NV6dMxQfH6aK5a", "contactType": "pp39AsdY0bRmaybd", "languageTag": "5uwi3WhCNbyyR4ZV", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUserVerificationV3' test.out

#- 248 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NEf0aOS6Ix3I6AJF", "country": "2Aeep42ni9X9rOXL", "dateOfBirth": "chZqaghTfI2vv0iB", "displayName": "CbQfjmjtwKWtIm9x", "emailAddress": "gXUUIyVJomuETMsW", "password": "70S7bspJX7hiwQ6h", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 248 'PublicUpgradeHeadlessAccountV3' test.out

#- 249 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "cFbhymSyPjD6nfYW", "password": "XnS7G57qwralI0U3"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicVerifyHeadlessAccountV3' test.out

#- 250 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "RfHS3mzpL4tSj96i", "newPassword": "SxrSljzCAtMeGIpD", "oldPassword": "ngW8dhsmfZzNq33E"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpdatePasswordV3' test.out

#- 251 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'RkqpuYNpKlngaXuG' \
    > test.out 2>&1
eval_tap $? 251 'PublicCreateJusticeUser' test.out

#- 252 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8fjKXWAdPsdI5a8j' \
    --redirectUri '51mPpv1fuwc6a9zA' \
    --ticket 'zNwgY1kwmR6R55NV' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformLinkV3' test.out

#- 253 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gnxkRGQl3qaFvAxU' \
    --body '{"platformNamespace": "ZQNxOUM6l0p2HsIy"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkV3' test.out

#- 254 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qSyPaZEAaQRszuoG' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformUnlinkAllV3' test.out

#- 255 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vkBALZuQjiUNOebt' \
    --ticket 'tehb6edJmGnil7Fn' \
    > test.out 2>&1
eval_tap $? 255 'PublicForcePlatformLinkV3' test.out

#- 256 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'u6mT9bhYlKMzkvOd' \
    --clientId 'gRFLL3a11mYzHY9G' \
    --redirectUri '6Ozzz8InOiesxzi0' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatform' test.out

#- 257 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'PU2w4A1TaqOptawS' \
    --code 'fFKladvruhGQsB3y' \
    --state 'U2QTa3I9YRMtNn1y' \
    > test.out 2>&1
eval_tap $? 257 'PublicWebLinkPlatformEstablish' test.out

#- 258 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fcf7Q7R5hYLUctR9", "emailAddress": "IvyKTrqIkAJ7F04I", "newPassword": "74DFvVu7UvnD4FXi"}' \
    > test.out 2>&1
eval_tap $? 258 'ResetPasswordV3' test.out

#- 259 PublicGetUserByUserIdV3
eval_tap 0 259 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 260 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u482vMXmpMjGnfMR' \
    --activeOnly 'true' \
    --after 'X6tvm1s83PIfn81r' \
    --before '9p7Pi7UNE3IpQSzH' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserBanHistoryV3' test.out

#- 261 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kJYHBK2Nf5TpvGdg' \
    > test.out 2>&1
eval_tap $? 261 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 262 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CFX2SV0DoKUkRXgK' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserInformationV3' test.out

#- 263 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HGVdzShTOCdrort9' \
    --after '0.8360711421126917' \
    --before '0.4884640247020047' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserLoginHistoriesV3' test.out

#- 264 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oTuhBDPjw1Zdb7F4' \
    --after 'N8YHj7tY9YGJ2j0f' \
    --before 'Syf0cAnxEux2W86Q' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserPlatformAccountsV3' test.out

#- 265 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U92ByE0Cv3jNDUgC' \
    > test.out 2>&1
eval_tap $? 265 'PublicListJusticePlatformAccountsV3' test.out

#- 266 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'bguD2InuZrjBqWuP' \
    --body '{"platformId": "hS5iLBFnVobeJL91", "platformUserId": "J4tROuiuG0jxFV20"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicLinkPlatformAccount' test.out

#- 267 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'HZofmgI19urg7LP0' \
    --body '{"chosenNamespaces": ["wkfpWia1IMKjGAcG", "PI6ImXmg0JX5GGEw", "Firw9SKiVisUaHSj"], "requestId": "Vx1gPdJpIkRu0njQ"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicForceLinkPlatformWithProgression' test.out

#- 268 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MwkOtmc458pcQ7Qp' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetPublisherUserV3' test.out

#- 269 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UzXhU0Y3sw95XdvV' \
    --password 'Gh0R4ceqfDK9pzia' \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 270 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Oi5K6DumsWkCRS5r' \
    --before 'X3nmwGs7cHza4J6r' \
    --isWildcard 'false' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRolesV3' test.out

#- 271 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'baO7Wm7pT9OdOyxC' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRoleV3' test.out

#- 272 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 272 'PublicGetMyUserV3' test.out

#- 273 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'AcnUkSYCs49oaGTD' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 274 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["gZgcLcJFAz2Dg1Sx", "QkhMx58xvgKGtSrO", "9xUoWf9gdq3ZEjad"], "oneTimeLinkCode": "XV2dNY1s3uDv1Q0S"}' \
    > test.out 2>&1
eval_tap $? 274 'LinkHeadlessAccountToMyAccountV3' test.out

#- 275 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "Z03XTimm2tBYvvMt"}' \
    > test.out 2>&1
eval_tap $? 275 'PublicSendVerificationLinkV3' test.out

#- 276 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '3ykNJZHngg3hgErd' \
    > test.out 2>&1
eval_tap $? 276 'PublicVerifyUserByLinkV3' test.out

#- 277 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'PSyrG5UtOlCKCbBB' \
    --code 'JJkGCV1giNVsTiuS' \
    --error 'ifrHPmGQjOMH868L' \
    --state 'Pt9qgA97xrdIPz7N' \
    > test.out 2>&1
eval_tap $? 277 'PlatformAuthenticateSAMLV3Handler' test.out

#- 278 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'aW4p7SqcY7vl6NFL' \
    --payload 'fw2yBd2AMXnzSNGT' \
    > test.out 2>&1
eval_tap $? 278 'LoginSSOClient' test.out

#- 279 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'cG8PQbxo6h2sVfum' \
    > test.out 2>&1
eval_tap $? 279 'LogoutSSOClient' test.out

#- 280 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'YM96QAi29uu9zKSm' \
    > test.out 2>&1
eval_tap $? 280 'RequestGameTokenResponseV3' test.out

#- 281 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '3tGeetbq3c6WQ3uN' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDevicesByUserV4' test.out

#- 282 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'C2l9RdFbR8goGB2E' \
    --endDate '1f54xEH8maaLqhTG' \
    --limit '83' \
    --offset '75' \
    --startDate 'J2ZKKNYFwipLzpmx' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetBannedDevicesV4' test.out

#- 283 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '1lNfQs2Ych6M1HUO' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUserDeviceBansV4' test.out

#- 284 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "1wAJkoZdgUGdcOYC", "deviceId": "I66Ms2qXjLMpgkmo", "deviceType": "Xg8Qjl99eiKrEcDW", "enabled": true, "endDate": "2qgh1bm8XyNxCmsk", "ext": {"GuTatPNP8oh74nOp": {}, "qKAXQT91dXp5SzRl": {}, "N5CpJigOUbtRylkg": {}}, "reason": "vPoH9qbiO0cl4D4A"}' \
    > test.out 2>&1
eval_tap $? 284 'AdminBanDeviceV4' test.out

#- 285 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'mqh65mZpsxflrkNS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'AdminGetDeviceBanV4' test.out

#- 286 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'KecXJP33v6m06S9D' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateDeviceBanV4' test.out

#- 287 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'ZhIlX3V7VnVut7TW' \
    --startDate 'Iller709pj4cwTPt' \
    --deviceType 'Bz60jV5b9ND96bpK' \
    > test.out 2>&1
eval_tap $? 287 'AdminGenerateReportV4' test.out

#- 288 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceTypesV4' test.out

#- 289 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'DWFn23FgIWLwVUvg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceBansV4' test.out

#- 290 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'BeA9pfiQEZh0CYh5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminDecryptDeviceV4' test.out

#- 291 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'DXdlA2SxDBw2NRWn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminUnbanDeviceV4' test.out

#- 292 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '8Y1E3ggC3DmQAFRW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminGetUsersByDeviceV4' test.out

#- 293 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 50}' \
    > test.out 2>&1
eval_tap $? 293 'AdminCreateTestUsersV4' test.out

#- 294 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xu7ptSbVChBUz6Oh", "9CZhSbF8xS1LKVED", "RlJpLySmGRd5cAoO"]}' \
    > test.out 2>&1
eval_tap $? 294 'AdminBulkCheckValidUserIDV4' test.out

#- 295 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'a1OVE3uvQmrOcFEE' \
    --body '{"avatarUrl": "eeskgRhUt4ImoiPP", "country": "ha3LFepOp01HQBw9", "dateOfBirth": "pRLx6AWP4l5k9dI2", "displayName": "PokZfxA8p2exxyXS", "languageTag": "1z9iHKZlYS1GJqPu", "userName": "UpwPlW3WbGPantjx"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserV4' test.out

#- 296 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AebtoNvHOS4RoBIU' \
    --body '{"code": "z3jE6JuDqxGIk3IB", "emailAddress": "7NCBRp9NC9y2LgwA"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminUpdateUserEmailAddressV4' test.out

#- 297 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'N4bcGjIyyIJjrEnj' \
    > test.out 2>&1
eval_tap $? 297 'AdminDisableUserMFAV4' test.out

#- 298 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'euz71PW28GcMOfBO' \
    > test.out 2>&1
eval_tap $? 298 'AdminListUserRolesV4' test.out

#- 299 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zt86geSNTgvP8mnM' \
    --body '{"assignedNamespaces": ["4InzFf3e7xe0U6fr", "GjVaq45w0lMGwBp2", "8k6eizpUwVxmWknR"], "roleId": "4RPUaGHkOfh98znD"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserRoleV4' test.out

#- 300 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pH99TdtjMYdp2FhQ' \
    --body '{"assignedNamespaces": ["ffZADvQuO1kcyWqr", "LzSE3EMCOSxYNmk3", "3YDOkw8xtDAXYiZL"], "roleId": "nZDYrdmLuIJxJ7RE"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminAddUserRoleV4' test.out

#- 301 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hJuiQE6c90iSCiuk' \
    --body '{"assignedNamespaces": ["3Z6TWafaYe1J9fGj", "gZx3AxWVLXNre7VE", "PRR2DlWl4MfLYMVc"], "roleId": "Ls1QOiWFpw4iHYFA"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminRemoveUserRoleV4' test.out

#- 302 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '77' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetRolesV4' test.out

#- 303 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "TkUszsH95ezCct4Z"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminCreateRoleV4' test.out

#- 304 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'sb1btzlnpYTROK5n' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRoleV4' test.out

#- 305 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'ZcVvodEolf6lFmiq' \
    > test.out 2>&1
eval_tap $? 305 'AdminDeleteRoleV4' test.out

#- 306 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'we1d811gEexuKNIH' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "KgpaGVd8QH9cmAPY"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRoleV4' test.out

#- 307 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'pyQN4wvZ9ddbXZAz' \
    --body '{"permissions": [{"action": 18, "resource": "Ui6Iqt0pDsyTqpxg", "schedAction": 44, "schedCron": "vW7tUzm2b0f66iz5", "schedRange": ["fwxZUe701K9sXGa9", "uWmzNH7AbQGhD7Fr", "2CCiDuVrve4vfs0o"]}, {"action": 2, "resource": "QIJ1ZLgPAW6v5xtM", "schedAction": 79, "schedCron": "WdlTY1JGcAkKm1n0", "schedRange": ["doSwzp6Ex2QGVTBf", "EZNreIqYaLs5rKZj", "LEmLaE5WdslgQcoZ"]}, {"action": 49, "resource": "gEMJxD0JDhOSJyB9", "schedAction": 91, "schedCron": "HtEYCIySefB3yllk", "schedRange": ["Z89q2tbidDeTQsGc", "7K7UvRQ8wM7zUleN", "y8ZArFhm7P5TspXg"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateRolePermissionsV4' test.out

#- 308 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'b9LK4IDFE1Ox0eWv' \
    --body '{"permissions": [{"action": 49, "resource": "X1bz8C078gG8aYI0", "schedAction": 96, "schedCron": "Jt4Njj2IKD71kYSk", "schedRange": ["zMBZPVreszdSRDW4", "VNpFHaYbIzCJgx35", "OXisv2AeTD4EINiO"]}, {"action": 88, "resource": "cBuaTriGBesFRMhX", "schedAction": 91, "schedCron": "YB8QVz84SIWPhbUZ", "schedRange": ["MybOHzl24hdqsqoV", "FD5BajzuQtCZzf6O", "PhCwDbtLx2YWiiIo"]}, {"action": 24, "resource": "AEasgYG1qsyyAWBf", "schedAction": 88, "schedCron": "GUUDP1aeHnixPvqv", "schedRange": ["MgEqKNDgNGKsRMJ6", "fSMob4GbNR3tr4Kd", "IebTjdL0WqI74x2t"]}]}' \
    > test.out 2>&1
eval_tap $? 308 'AdminAddRolePermissionsV4' test.out

#- 309 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '0ssIF2JsU5XXyxmz' \
    --body '["gA28svniNH9jU6ik", "DTrJmTQFP061itU6", "q9M1tqtMk1siGfwr"]' \
    > test.out 2>&1
eval_tap $? 309 'AdminDeleteRolePermissionsV4' test.out

#- 310 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'ZzW7toPgl87dQVJd' \
    --after 'IlgrYrYZIdGTEDpI' \
    --before 'Hkzu8ZKrwVvGnxpG' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 310 'AdminListAssignedUsersV4' test.out

#- 311 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'nwmMP0ztGfaeolDF' \
    --body '{"assignedNamespaces": ["x9IxHEviEJor2UIW", "lQyvD5m6IiMPFc3W", "0rVhhpSaHcxzmICT"], "namespace": "o29tiyV52WrZKhrb", "userId": "a3yTAHWo1oHRu0t3"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminAssignUserToRoleV4' test.out

#- 312 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'uEZHnppREG0PKaGW' \
    --body '{"namespace": "dpF5OGQDYeFljOxx", "userId": "wSv1Il9thf85OqD2"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminRevokeUserFromRoleV4' test.out

#- 313 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["NKpU1PHUK7p2I2DR", "1aVh6AK8HaUaQyxr", "LNBzGm3iuHtX63BB"], "emailAddresses": ["89tbnBWoxkbD6ZKd", "qxeSgwkiYJHQAIsQ", "WSOagTN7p32QRjEs"], "isAdmin": false, "namespace": "GTr2VNG41eemHYLD", "roleId": "OR8bqjyrgNm7OW5M"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminInviteUserNewV4' test.out

#- 314 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "4QtL4aNFT4tSI5gN", "country": "XDTazcMBeH2X9gtV", "dateOfBirth": "kQC9S6l3tGFJPROQ", "displayName": "U7LJOM10BbdVx2Fj", "languageTag": "GI46oKw9krmjtS6O", "userName": "6QxRJAPquo9kgBMu"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateMyUserV4' test.out

#- 315 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminDisableMyAuthenticatorV4' test.out

#- 316 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'f12GVvfheyJTSHsG' \
    > test.out 2>&1
eval_tap $? 316 'AdminEnableMyAuthenticatorV4' test.out

#- 317 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 318 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGetMyBackupCodesV4' test.out

#- 319 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyBackupCodesV4' test.out

#- 320 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDisableMyBackupCodesV4' test.out

#- 321 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminDownloadMyBackupCodesV4' test.out

#- 322 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyBackupCodesV4' test.out

#- 323 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminSendMyMFAEmailCodeV4' test.out

#- 324 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminDisableMyEmailV4' test.out

#- 325 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'JG8RySDhvg4xDood' \
    > test.out 2>&1
eval_tap $? 325 'AdminEnableMyEmailV4' test.out

#- 326 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminGetMyEnabledFactorsV4' test.out

#- 327 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'e03uaetvEwUwMKjE' \
    > test.out 2>&1
eval_tap $? 327 'AdminMakeFactorMyDefaultV4' test.out

#- 328 AdminInviteUserV4
eval_tap 0 328 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 329 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "5lYO10L5M5NNuVSW", "policyId": "yEt4ygtGOUOB7e9I", "policyVersionId": "rnLmvAem6HB8n9cp"}, {"isAccepted": true, "localizedPolicyVersionId": "ZPPDdcCpbtAuVUsD", "policyId": "HVhJKeylJlZYxJhY", "policyVersionId": "YmbyO6eRBCvMEw7X"}, {"isAccepted": false, "localizedPolicyVersionId": "B8R8iWiQetbvK6ZT", "policyId": "yerZ57yKdLnZuhJp", "policyVersionId": "np2sqLWSDh5gtZyp"}], "authType": "EMAILPASSWD", "country": "eK3umlCo0P1gt8p4", "dateOfBirth": "kw06rDy26STJtv6v", "displayName": "KaRQQ4cV0aE0jNBH", "emailAddress": "9KvYR9DUu1LMPSD3", "password": "JEAAbOdQWaTNXnsm", "passwordMD5Sum": "KvYYUYxcZb0Cp3hb", "username": "EE6mY16KgnWE1gEp", "verified": true}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateTestUserV4' test.out

#- 330 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "AryvV8RTlttC2R2A", "policyId": "oVEMK3REX79k9iTK", "policyVersionId": "pkgovucy5lzqWy8J"}, {"isAccepted": false, "localizedPolicyVersionId": "uMkBfbp0dLV3jZkq", "policyId": "qLUvoaCdL6lrFbFN", "policyVersionId": "79WXaILu6gbAkIbO"}, {"isAccepted": true, "localizedPolicyVersionId": "00GTZjVHvAkVXWqd", "policyId": "60OIsTdDWDkuLc7I", "policyVersionId": "yAlaTc5YfuDH3SE0"}], "authType": "EMAILPASSWD", "code": "Pv3QGJFjDa9JXu7q", "country": "Y8hZvJFuFOJsh6hj", "dateOfBirth": "4zcetVkfCiwnNDkn", "displayName": "tNWfEe0x4TqNunDP", "emailAddress": "nQcZ9aRFQ00Oc8nU", "password": "06dNGuThdysBztTT", "passwordMD5Sum": "LDZy0pDYvYwfUqN3", "reachMinimumAge": false, "username": "2NSHWsub2P34YyNm"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicCreateUserV4' test.out

#- 331 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'AtRTYzVFHdERY4rs' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "77q27CqOby89sVAM", "policyId": "jS3vgLalYcmYLpNM", "policyVersionId": "sScVuWlwxiK9Yk2j"}, {"isAccepted": true, "localizedPolicyVersionId": "YdPlcnatN3ViOgcF", "policyId": "FFl1z94DfhfKww0h", "policyVersionId": "zOMFPnz7wPPcHKKa"}, {"isAccepted": false, "localizedPolicyVersionId": "F7ssSTJ9aHkkoxyc", "policyId": "sZd5EFk1gou1yui4", "policyVersionId": "eaV7Sp8KegmyHLyH"}], "authType": "EMAILPASSWD", "country": "ilVXhFKNn6v4iDb4", "dateOfBirth": "oi0n0HAQh1ZZaEIR", "displayName": "InYGZgEroqJpZCNC", "password": "trYjlcuWXQgaQ9t3", "reachMinimumAge": true, "username": "c2pcaNc7kLFMWUwX"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateUserFromInvitationV4' test.out

#- 332 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "vB4gpzBcUAJMxOzg", "country": "XaO5eCSTdkxJUWXU", "dateOfBirth": "2sx2KWD9rw4RBuX7", "displayName": "Mxoih3RINFUYCCav", "languageTag": "9ZEcwF7jXEMPEKZD", "userName": "ausj5MwUC5yvsA4Z"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserV4' test.out

#- 333 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "X4TGm2eIb8UXdKQm", "emailAddress": "USZZg4AUt968kJgH"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpdateUserEmailAddressV4' test.out

#- 334 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uS6K86mnW9IHLtIg", "country": "iNaBxeZgS2yCnowe", "dateOfBirth": "X28CeNS2JADTJeRT", "displayName": "QimChHmHkPTOoert", "emailAddress": "jnD4kzGv4cCupArX", "password": "ONKJdKC2qjr36q6v", "reachMinimumAge": true, "username": "Dierpvj2QfTGq9Lw", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 335 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1ea0hBQ2u1AtoINF", "password": "aoAJnYekebmLLNoG", "username": "gPNTFgfdVDGJUtsN"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpgradeHeadlessAccountV4' test.out

#- 336 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicDisableMyAuthenticatorV4' test.out

#- 337 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'Hhe05HC1fIdRNT98' \
    > test.out 2>&1
eval_tap $? 337 'PublicEnableMyAuthenticatorV4' test.out

#- 338 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 339 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyBackupCodesV4' test.out

#- 340 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyBackupCodesV4' test.out

#- 341 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDisableMyBackupCodesV4' test.out

#- 342 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicDownloadMyBackupCodesV4' test.out

#- 343 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyBackupCodesV4' test.out

#- 344 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 344 'PublicRemoveTrustedDeviceV4' test.out

#- 345 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicSendMyMFAEmailCodeV4' test.out

#- 346 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicDisableMyEmailV4' test.out

#- 347 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '9mdqlsFSM1j3D8kK' \
    > test.out 2>&1
eval_tap $? 347 'PublicEnableMyEmailV4' test.out

#- 348 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyEnabledFactorsV4' test.out

#- 349 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'AF5UIPju2mzjWB8d' \
    > test.out 2>&1
eval_tap $? 349 'PublicMakeFactorMyDefaultV4' test.out

#- 350 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "BMV7fybCWcLSBvrX", "namespace": "wdd6P71PdP1kqrl9", "namespaceDisplayName": "Mf3xqfgDBud2qsNw"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE