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
echo "1..352"

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
    --body '[{"field": "b4Re6cIE9aAiBPh9", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["vjGyNXNNQ2zgPGSR", "Q4uwRdgeQ3lkuXxU", "akc7rVssycWB0HdC"], "preferRegex": true, "regex": "oxTr71yJ9wuHRLJG"}, "blockedWord": ["8znyF6iICOJozj17", "VIuXw1kgYxiESdvA", "d6kjppe74XfTOgbo"], "description": [{"language": "2YENSuHG8KD3YMJr", "message": ["ncJDurTPH2Fn6E8q", "UtTZhdNBh1S3ZfQy", "aF7qCLsLtgv2YXto"]}, {"language": "8CMxwuQ0bfawPqpz", "message": ["xNJQbN5Uder2nWVK", "1EwnoUKofmvc0wDL", "LWdtCoFrmHjmvEeo"]}, {"language": "pbQBImhL39popVWB", "message": ["EZqSq2ITqyEUGk5w", "yGCaEN2RTs8VmRvL", "2SlhSTphGgqtopt5"]}], "isCustomRegex": true, "letterCase": "EpzrWkNlXpnhtWfB", "maxLength": 89, "maxRepeatingAlphaNum": 93, "maxRepeatingSpecialCharacter": 68, "minCharType": 68, "minLength": 75, "regex": "MbiMAcPw4jqxREVj", "specialCharacterLocation": "lofvECunSLbUUPTK", "specialCharacters": ["mOSupQQjM8nYyJG3", "TIFN770dvSCUNUJp", "RCYIXIEAR88NohBI"]}}, {"field": "3ty8WrlDP8yEMyZZ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["B0fUrPWSIYEJyXNy", "nVQWnFexsT2kYR5j", "1GNXlyhGVi3o4eA3"], "preferRegex": false, "regex": "sUoAdNyTmJEgY9sg"}, "blockedWord": ["JgsbV2urtovP7TA7", "v1YwvRILxSwlUUZr", "yhVf9reZ4FDGTxPz"], "description": [{"language": "KBwwDYLoq2bPBOzh", "message": ["9zjMbk33qzP99peI", "FX06Ie904EO9F3oY", "5mAr27c3CmitZuHD"]}, {"language": "t6W89K9jKgn1K0st", "message": ["5uwiFUS68HdhvyFp", "NTawegHtwEUkuzAC", "6uJSA9IHwwBwWYPr"]}, {"language": "ySnhiodvnXDhhLE6", "message": ["GTm3GFHfY8HNUrrc", "9ZZiugLc7vCQp1Ju", "rB2vsiym4IVIqQmh"]}], "isCustomRegex": true, "letterCase": "wfk4hTgHc0IAEMQI", "maxLength": 45, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 63, "minCharType": 64, "minLength": 91, "regex": "nNgcHqxD5JibG18R", "specialCharacterLocation": "PO3MmpDLt3oqurL0", "specialCharacters": ["Iy8CROMWPYUEZMHP", "bDa6pqw2hVupsEs9", "VRPoP4dtwx94az1g"]}}, {"field": "Ms7rr8zYKqeLGly1", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["2vMBg70oGPXf7RsV", "qWA4WDbOVYHobqu9", "d9FL1tbUvnuBAuvN"], "preferRegex": true, "regex": "FuU2A1kCEyT0aZBr"}, "blockedWord": ["cvZtDS23bOceiLmf", "4MWEL5zF4Xeddkjg", "0xIRSsKVce93ArlL"], "description": [{"language": "CfOV3JiH2rocOwYu", "message": ["yRitUw6z0ElyceAo", "rUJ7xgz2RzD05d9K", "njl9YJE7CzCCSzYO"]}, {"language": "y9Mn28s4ffMrA98Y", "message": ["bv1mZsoUGxEBrO4G", "9LjrJwS6KRPQc8a0", "CTcmJmZrvv4KznMU"]}, {"language": "nVmIwiZJMSLnkX3W", "message": ["eg8uVswKlsAgYYmq", "zqcrOq1UKDVsWXFu", "7DsPYa59xHoF90gh"]}], "isCustomRegex": false, "letterCase": "o2moUS1axFZAl1u6", "maxLength": 31, "maxRepeatingAlphaNum": 46, "maxRepeatingSpecialCharacter": 19, "minCharType": 50, "minLength": 47, "regex": "p2p6qOaaf5yY9LzA", "specialCharacterLocation": "IBXNOOGA8rbeh1Uo", "specialCharacters": ["KfdWwP1jOm80bRbM", "tRe8Tdksm4JcEPki", "zViimAR3l8YS89tH"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Jbgg9ftc6SrNdwWp' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'DxyHamYPL0floGim' \
    --before 'St69HWNXN7aEJtka' \
    --limit '42' \
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
    --body '{"ageRestriction": 63, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '2BotND7xBuN25ejc' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 21}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'tOqxG2eKHHbsCrT3' \
    --limit '14' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "ZiBRGnAvsEdpe5Qf", "comment": "JM0pDUU1PFJyVMV0", "endDate": "UXtX2nQVS1qBnJ8P", "reason": "5cvNGmRmj0HFGPQG", "skipNotif": true, "userIds": ["6ztfBL2wstvwRbCI", "qoKoRuofQ0cAzq9Z", "LYvQyXzvuCEAxwPX"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "nEdhAiWthrYVYlcn", "userId": "11OFFTbeEjM5zUcU"}, {"banId": "uSpHdSN6866Rniz6", "userId": "iBJ6DlwyreULnV3K"}, {"banId": "m4EwbZFD5JQjbJcs", "userId": "JtjJj4wAvcVBhAgF"}]}' \
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
    --clientId 'TA5Y0QGBsv7gKa1g' \
    --clientName '0kRnnpw9D844YAnS' \
    --clientType 'wzfE0Nmam99mgtCl' \
    --limit '33' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8cFYxwyTKSb5MqLf", "gU7IZh7Bgv6RbWRD", "pCkdFGnUCyeYy2Vj"], "baseUri": "FMsJp0TXWXW1vSR1", "clientId": "eDgLrIS2vDYiIFGj", "clientName": "NmSKOyIVKwo0pslL", "clientPermissions": [{"action": 70, "resource": "TCMzTlTy6flRRePR", "schedAction": 89, "schedCron": "Jw5TNl9hjISBhlLR", "schedRange": ["egg6njPEPisZ8Bns", "kJzOxa5yIMh6orqu", "ivgT1WZ8YMHBO2zm"]}, {"action": 87, "resource": "d8qLs59CD1QL6EFN", "schedAction": 88, "schedCron": "EFZrIJ1g0oNLGTD0", "schedRange": ["hYxR09TP4VXsZKZm", "udEvtclfMFQnExnL", "xoggZ3qhJlQeV7Is"]}, {"action": 65, "resource": "s40SOFefFvrTp0WI", "schedAction": 69, "schedCron": "CCORMCIaP685DPWh", "schedRange": ["F48KyBuKdlg45rnG", "V9Ka1AgX88aQCyl9", "An5g7jVuRXaKHNHN"]}], "clientPlatform": "xYFvMiimqTdrMWwP", "deletable": false, "description": "ShezQWZ2D2zEhdj1", "namespace": "zY63gf6KEo77E80k", "oauthAccessTokenExpiration": 98, "oauthAccessTokenExpirationTimeUnit": "wbgMpjDKB3RYAnk5", "oauthClientType": "md3eycy6QZL4vX6V", "oauthRefreshTokenExpiration": 59, "oauthRefreshTokenExpirationTimeUnit": "Ig7J3bWM2EBTMFvT", "parentNamespace": "uQYTpqV46cqNXr26", "redirectUri": "4zV2sFXuE1kp9RmZ", "scopes": ["wzIJGVHN72JmMvFQ", "qnqg1aUTIFrkdYQq", "8n27YdqH0L5aXtxE"], "secret": "hWcxbnOl28WQlpmS", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'vo4OX14Y5OqlZ4Tx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'XyZictRpErjktSmG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'qgLqB0NQAaFbbD5p' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Mx3C3Dy0at6TrHq6", "iQfm3Amvn65MS8jC", "BtULoG9FH6RpYtle"], "baseUri": "0qXcQ12zX020woQj", "clientName": "JzOycBFnRp0jR9i2", "clientPermissions": [{"action": 35, "resource": "opJpsZyPoPLATzOw", "schedAction": 39, "schedCron": "b0OnOkNkFqfgwRej", "schedRange": ["fDkEx4ngkfA9DtUZ", "ULxdlU2oTn0IUq3r", "x6pK09NDB5wT0C0j"]}, {"action": 50, "resource": "T6yQbLH4Pp8CHaIC", "schedAction": 34, "schedCron": "ORMOds6vV4mY2smD", "schedRange": ["HeKZFFROKiKPhOFS", "IHUAc6nenzmUDp5f", "z5VUrk6C59Kq6aBA"]}, {"action": 0, "resource": "E76XsX3R41AfiTQP", "schedAction": 53, "schedCron": "rhAI9Cq1kTPDENXe", "schedRange": ["7w77ayLrofkCepKU", "PCEug2Iluh6Bnh64", "cgGGRaEB3YW17EzI"]}], "clientPlatform": "P9nGG6xgBIsHROPm", "deletable": true, "description": "SiBXzVNhKSEL5QuJ", "namespace": "lWCb9uxVm0QDgUG7", "oauthAccessTokenExpiration": 93, "oauthAccessTokenExpirationTimeUnit": "5LhjYR1eVAyVSFbj", "oauthRefreshTokenExpiration": 50, "oauthRefreshTokenExpirationTimeUnit": "sEEgu8K1U0IGZO4L", "redirectUri": "CedJSO3huedqcaoT", "scopes": ["9UFdBcbogpY5y8NB", "pYgp4knBCbiiYWna", "0AefAPRPAODRRkUm"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 't5zdomglTMIBOHml' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 43, "resource": "ulIGd9xyZyiTUakt"}, {"action": 3, "resource": "D2fzCdrI1EXxmXyS"}, {"action": 87, "resource": "W3sfBwrdKQGzPFg8"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'eVs8a0viitJ7ptOn' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 86, "resource": "YsLyTe63Mhy5CmTa"}, {"action": 1, "resource": "TFlvJwzu145qbCRY"}, {"action": 48, "resource": "KyFrTYsZum3gXJpI"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '52' \
    --clientId 'OgkyPCONQGjkFP80' \
    --namespace $AB_NAMESPACE \
    --resource 'SuE1q9oaI1RbG14y' \
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
    --limit '14' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QFZ2Z9hyKnu3SQmI' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bgJdLMH1hdG9zjH9' \
    --body '{"ACSURL": "tAKJ82Ipaptb16KQ", "AWSCognitoRegion": "9tJTWlhO08dH21oy", "AWSCognitoUserPool": "NFPzsI7RpCeLoG7n", "AllowedClients": ["j2INrZzUk7eLS72w", "uRVdm8SHfwWnbzz7", "rAuArniqYK5mMNoG"], "AppId": "iKBVfQvorwtPmnfC", "AuthorizationEndpoint": "JbQsgfXY3ipxP4G9", "ClientId": "of6WKliu2WUQzDiY", "Environment": "GdjXWY2371ncoBH4", "FederationMetadataURL": "rcFW0IsAIumHP1eX", "GenericOauthFlow": true, "IsActive": true, "Issuer": "DIyeyBJ9arzO9Hcz", "JWKSEndpoint": "Sa0EBpGELKVTcX3o", "KeyID": "piA52bEo9w0tB9UG", "NetflixCertificates": {"encryptedPrivateKey": "kjjnCb1ibCXhv8qt", "encryptedPrivateKeyName": "uZ8TaOMVOzH5gbLa", "publicCertificate": "e7WARKe2LKzPRav4", "publicCertificateName": "a5HgvyEnQ1LALOgT", "rootCertificate": "KoijyL1G3V0D43No", "rootCertificateName": "JD4IXKnl96FE0RxB"}, "OrganizationId": "XVqraMMeqPP8pfv1", "PlatformName": "0MQOU77fYTi84Hvd", "RedirectUri": "zKYuKFYG08Jbozmd", "RegisteredDomains": [{"affectedClientIDs": ["A3mchjosBmNeAGyb", "PBGPQy4RS6QLsYAf", "Sson0NWe5Nnm8t3c"], "domain": "dMigsOIfOncnXRkZ", "namespaces": ["tJ94x1Lr0qi9zwdx", "dM0FraDn5bet7sWA", "hgSVBFDthRjO6xVT"], "roleId": "25ewozrXzPAUsj5p"}, {"affectedClientIDs": ["82CBymJwr3HbfI01", "yRo55kXu3FwTPvBK", "jZBWjuTF3pnaAch5"], "domain": "MxPdMGg0eD7wWmgS", "namespaces": ["WDz74a675WjyW5GK", "8R9iWwirCwtcHEbR", "KGVj2qQ5xbPPmnGa"], "roleId": "wmrpjIfIKzk3VA2x"}, {"affectedClientIDs": ["0LJKvun5ScndcvhS", "O7cZORP1w8TZpYBz", "weUpjgtdPVx4iehv"], "domain": "U4KsLbxBgy6PzuwH", "namespaces": ["MQm0qaPcI2M6xhbr", "mfZ1pGscbKCBBlfO", "Jxy1FYH1pRxkfkbw"], "roleId": "eYiwpg4lanzW35Zd"}], "Secret": "JjaOMkD3UeqCBkgB", "TeamID": "IOq06mVbgDSkFvCp", "TokenAuthenticationType": "Bm7zcijymCN7jV6B", "TokenClaimsMapping": {"M1eOzfGfUMrt10Rj": "0zyi5ELSgqgDWG6l", "RGZZgR5ftvG73TRU": "dPGIgufZmGE0Y41F", "VQelpWQQFEuWulNo": "nQ8OiGpj56Pqbvsv"}, "TokenEndpoint": "M0mnfZA8iDI05MHq", "UserInfoEndpoint": "Kxpgx6OuTHTFQ9Q1", "UserInfoHTTPMethod": "LWgCHSr2I26Dot03", "scopes": ["6nuo0YzUwclIYLa6", "MgEiOUgv4QMDHM1R", "F8FOepx1SXKjfLaU"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'duiA4LVKv61jglmu' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RGO1QerukLhDUcsf' \
    --body '{"ACSURL": "NxGQVkRrPCPQ8CS0", "AWSCognitoRegion": "QvHK397wu8Mc0M57", "AWSCognitoUserPool": "yHpm6B3U7PVitIzg", "AllowedClients": ["Tx2yoRwf4SqiwPF2", "olZOeCAsSnEd9JQj", "CbnJdnuZSQjufR17"], "AppId": "unL5wv5XKBwydryw", "AuthorizationEndpoint": "94cUWMn9SgvXwEXU", "ClientId": "odU6WON02ACKKGnP", "Environment": "oBLLbkUNJ36PpqvW", "FederationMetadataURL": "YrhlG9amLdjnTXHM", "GenericOauthFlow": true, "IsActive": true, "Issuer": "hzPyEaMgA24Ntonu", "JWKSEndpoint": "k4ZKSBg4pSIQTp2P", "KeyID": "0GB74eMpy1mj3C9e", "NetflixCertificates": {"encryptedPrivateKey": "gytMtB8ycPazQe0k", "encryptedPrivateKeyName": "aKv4sGqydmaVp5Nv", "publicCertificate": "xZyjUzv1anZwpsvC", "publicCertificateName": "hw0O3nJfOiVzfPlX", "rootCertificate": "fr7WtO7PzLtHmoie", "rootCertificateName": "iqljnBh82hVP1skQ"}, "OrganizationId": "k23JlNyDm3Lbddq5", "PlatformName": "6BcGrJdvP29ROIUF", "RedirectUri": "MGKLUSxCJDquhNB9", "RegisteredDomains": [{"affectedClientIDs": ["nWkbKqdKQX9Bx9jn", "4rHrrLOSoLJryPwV", "5w1ffycFs1ZtiopC"], "domain": "g5LuAqqOTCk6JchC", "namespaces": ["B3Dzk6XF0n5hoadV", "7O0VYogRSqiLAfhQ", "Rc60XQtLVncS6bNy"], "roleId": "w9DkrAEiArST7IA0"}, {"affectedClientIDs": ["Cajo8A3b2qhVkfk1", "xfXpgeS65MiHHFRb", "EcIZ22YwhKG2votZ"], "domain": "dm7LCzcmd1DugAOc", "namespaces": ["E14NVV8T2mqZ1V5F", "Dl90eZUXQncVQ7LU", "vafYH2NA3fo4TkWA"], "roleId": "t1aBvfiRbF1W4L6O"}, {"affectedClientIDs": ["dlMZWxoS4WGLVyML", "hIXTyhvQJFqRLMeV", "cqB4aO4NisRCdmzC"], "domain": "5XC8xmXAcNSn0J2c", "namespaces": ["WeFLn2HD97gpgHIZ", "5DpUrmPIRokyC2YB", "Q0mOLhLw1qe9TB2r"], "roleId": "H5WpAwaMpkTjQLaA"}], "Secret": "ZKuYXHpQwCGVJJY0", "TeamID": "vMpxDyJmASCKLqed", "TokenAuthenticationType": "k1ekgIOWAVnc3tfO", "TokenClaimsMapping": {"7wYFKmW3mBLhsuVu": "yBabFlH9AjgdglIn", "ImIdgy1VLj6cGxHA": "elAAXkYGzDysDKjK", "2rPFvSWKbQ49CDFq": "RfWoecoX5P232ynx"}, "TokenEndpoint": "O67kFJ6zzAyIPdVW", "UserInfoEndpoint": "gwmfAlMj2nLJvFeo", "UserInfoHTTPMethod": "kXIkNxH3KbgnJbWR", "scopes": ["wUlXzjvoANV3Y5D3", "hV6x6CvDVreXqPVj", "vCW4Jeu3MNn8J7A2"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RPN1W1A2XRd4f698' \
    --body '{"affectedClientIDs": ["isdtktihZNYzgp8c", "HbO2rgqN7VcvFEjw", "E8AIJgHDRkCW2zhD"], "assignedNamespaces": ["THtfxtIX96etrhsK", "aNHGkiN6EXyJYXG4", "PCyMfU5Z7sJHetiw"], "domain": "rvB50mjrWadxALLG", "roleId": "0ET3JNeisev8wkD7"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vzagw4xkTxtEtpfI' \
    --body '{"domain": "mmbFgowvs6zlGFre"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'N5rVWvVSzsaNuNxo' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wjQnNf4fV6gePe2J' \
    --body '{"acsUrl": "YCoNPAQE0MMJrLm4", "apiKey": "m5zXJAc2EMPhmhFS", "appId": "u60mDSh2y4iiILa6", "federationMetadataUrl": "JjgcsEfCUbIgOylA", "isActive": false, "redirectUri": "mcOgsEbUtmBXry5Z", "secret": "zlIpqH7RpwyhdLiG", "ssoUrl": "AilbsfdSmNykLRAZ"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IgIbeTA5xXbdb1TY' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'adabHd59ORL0vgdm' \
    --body '{"acsUrl": "dUoHWhzboR5128ZZ", "apiKey": "5rMW4pJefOzb1Zdb", "appId": "vHfvZZUei8VArrMo", "federationMetadataUrl": "mL1nYa90OMbw7YyD", "isActive": true, "redirectUri": "lBK49SvNcFerB4FS", "secret": "hXeSnjnZTqsXadYY", "ssoUrl": "561rURNRkRdoESlq"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NPw9yTzH0W0mmDHw' \
    --platformUserId 'eYO4Es9cTmPPofcT' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'dFJi0uAGAeYkRzY0' \
    --after '23' \
    --before '1' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'II7i8CoiZkb0BEZ9' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'r2arwHCuc6qoCXJY' \
    --body '{"bulkUserId": ["97B5YtP6vtGui1h5", "ooEOioNggjmIYzN9", "THC9ADBFBL9voxgt"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["i1cNFvUgUeLZG0cX", "jXuTU471MYy3o5zl", "y9zsZJLQh52Vphj6"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["whXlytYgCE3Owsm4", "lv8zOEeyE9OueST7", "0ZW0yi7MavQa9ghS"], "isAdmin": true, "namespace": "tJpa8iqRuvhecTwb", "roles": ["un4WVqUR6dXBlJnL", "rfjoNofx4WSjLyev", "enges8N9HdFipeez"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '99' \
    --platformUserId '8z0sbojZ89Q2BhyA' \
    --platformId '5P8kqNuzo3uqmsoS' \
    > test.out 2>&1
eval_tap $? 147 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 148 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 148 'AdminListUsersV3' test.out

#- 149 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'UTi5SSpa4I2PRJ13' \
    --endDate 'cCVZf2HRDCslZkaj' \
    --limit '81' \
    --offset '85' \
    --platformBy 'joYBcncRhpUzLJQw' \
    --platformId 'YWKwEr1FDfYRcrlo' \
    --query 'SKI8sIVIkGOlCA05' \
    --startDate 'GP5vGqfJ8kuYA9JQ' \
    > test.out 2>&1
eval_tap $? 149 'AdminSearchUserV3' test.out

#- 150 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["4XGhSYttkwoRYm1D", "zLVlt5nibWxnKaAL", "5gYC5n2QsUar6l1x"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ywRwgbtCGThzjHPv' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zYUJpLqEQXHfzvlK' \
    --body '{"avatarUrl": "YgqlSGdIuRx58ECE", "country": "29nJBuifVWuAs6jR", "dateOfBirth": "ubcVScD1P4dGBBvs", "displayName": "IVIQPrTU5GrOUCvu", "languageTag": "n5QNGNCoqnuKsI9h", "userName": "ZRkgkBpj8z4d5mR5"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nEQy4py4wrlFdxhk' \
    --activeOnly 'false' \
    --after 'Xee78DrX7KHyCxha' \
    --before 'OM7svQkV0cCdDUDd' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ir01VlgjghajZOFR' \
    --body '{"ban": "5WAYU9QtnEPRc3ln", "comment": "N0oTQk0qjUYiGnOr", "endDate": "8fCJXM7weelv06XW", "reason": "2Zq0jMaYm4MlA8oE", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'TKo13RCmZWPeHGmS' \
    --namespace $AB_NAMESPACE \
    --userId 'h43hNbpb5busmOi6' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '4PtVtvlbEsEufWAo' \
    --body '{"context": "fNwVL5fmskmKdWHL", "emailAddress": "Vc5y8Dl1T9auyHud", "languageTag": "I4Rt2eP7f10w7pqr"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eU85QkA373QF0DXc' \
    --body '{"Code": "z1NHy11TvCeE77UQ", "ContactType": "K5EfTQcbOvXMIc9L", "LanguageTag": "jpGdGtOYtZFxPA3d", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'wGqkcKYHlOLNDLOc' \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'miBmYyHBWui33Gaa' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Dk2vc9PdIWItaIJH' \
    --body '{"deletionDate": 35, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EaiI119qfvyl3Rzu' \
    --body '{"code": "EyVfwOt6Pn66ENvx", "country": "pLZe3mRrLQpMRvW6", "dateOfBirth": "rCzggG0uXwk3cw2v", "displayName": "8k5NDTByer9v2lG7", "emailAddress": "50JY1x8Y43vtTnLZ", "password": "PUlOMseqMSPYeajc", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ezRNdaS0poAAST67' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Vtpm39QPTUyy0yi4' \
    --after '0.6352010240710407' \
    --before '0.1472782832366064' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ekqnRkibVhcl8nKa' \
    --body '{"languageTag": "vH1BcEdnveNtoPOA", "newPassword": "dmLiEFBiNKb9gu3U", "oldPassword": "JlN62pIZ37mh9nHv"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WYK8fEHaNkeHMlBZ' \
    --body '{"Permissions": [{"Action": 53, "Resource": "A7l67xxxH19TTxS1", "SchedAction": 80, "SchedCron": "OPrxj2IyMZx3op5l", "SchedRange": ["kWmrPfgVtAopTUsI", "9O5Ct9wzFX3byGmu", "KCV7dhSSPQec1KL5"]}, {"Action": 86, "Resource": "iclIDCaEDj2EQ8wk", "SchedAction": 56, "SchedCron": "yrsL8p1WLOeHHSdp", "SchedRange": ["iEolAzVCGUfnr5W1", "neHF6z1e1RgfCPhJ", "bnxgHTyy7IjChHgR"]}, {"Action": 94, "Resource": "LRxLaj96EJrEUmfn", "SchedAction": 86, "SchedCron": "Bntcg6js5E4MZG0q", "SchedRange": ["BZLsv5cSndgtIHgt", "LSPhr7yUPyuHNljE", "uTZFJTHRMS8I3IZV"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D1vw9J9oyI7RnQlL' \
    --body '{"Permissions": [{"Action": 90, "Resource": "CwXW4P8CQto22jHP", "SchedAction": 69, "SchedCron": "WacTrkRzvCFZ7Uid", "SchedRange": ["5zPI4WVqG7yPEqnn", "Ln7RbFSasClBKTxv", "i4GjDW8Ntd7vxw1n"]}, {"Action": 10, "Resource": "AWsn5LhIiSEvJUbZ", "SchedAction": 44, "SchedCron": "m3FC1Eh9krH0PdNN", "SchedRange": ["nxamdu7yLc1hDKJt", "vqSCrWLSyzZXRqkW", "wdMzSehYta3HbTeE"]}, {"Action": 45, "Resource": "936Q2saeOPtOgpZT", "SchedAction": 78, "SchedCron": "XltCAn4Ag9Qt1VFn", "SchedRange": ["zttT6K1dRjaD1Gjw", "qb1FNOML0RG3Swap", "fp3ZM9Q5hiqevR6f"]}]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qcsaf2DCElVOSPq0' \
    --body '[{"Action": 22, "Resource": "ik1AAY59WYHjevpV"}, {"Action": 70, "Resource": "LlYqQlJrmYm7jjKN"}, {"Action": 87, "Resource": "5raicUny1Bjgi0kK"}]' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '29' \
    --namespace $AB_NAMESPACE \
    --resource 'lZZD3k0dLzSOs4pa' \
    --userId 'ldKCNUHwxWUXjpDS' \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'x3d72y7kQ4d58415' \
    --after 'fMcriytoGAJEjiNE' \
    --before 'JmYHSh4sYykaunov' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'bzad9LmpnIhK69Rs' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'PpPAs6buYTWd2S7X' \
    --userId '1wQwq7rbK84y7MYZ' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'fMMnH14MbGEp52sJ' \
    --userId 'f3NtK2QVDRu1pkrh' \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'b86xaI2m8zfio4fe' \
    --body '{"platformId": "ZLnur60ZeapXI3Nx", "platformUserId": "5RoAVfnwI8A21Eqz"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DSxYETa12AZ0cKnf' \
    --userId 'KMk9hP28VdPyOEyW' \
    --body '{"platformNamespace": "PVnUssxbrF8dbZqV"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ueU9t1ttqNsgGL9D' \
    --userId 'mAHAFj3Q2KMwgARi' \
    --ticket '7saVKBRcZoFsx8p2' \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8s7cO2VBTixu6LlA' \
    --userId '9BgEQB0LF82Af19S' \
    --platformToken 'zIJri3SfAsWQqNSD' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'dtxuEt56BOiHVaeG' \
    --userId 'uSA1p6gYbcg1jY7Z' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pQeGkZiGxumTRgU9' \
    --body '["hlYQOGuIlXYJZvSk", "hkJBxgpOJmagnZIG", "2URMPdwHLohY8Jij"]' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xnZp8RfVGlgSmq26' \
    --body '[{"namespace": "EGr8QgMLISlOR2Av", "roleId": "L9vDsQ6DBuHGlZdN"}, {"namespace": "MGJxZF9XRXbKbhyt", "roleId": "HDBE5FoXrFmyMzSX"}, {"namespace": "H9ZrvxfOaRYxN8aF", "roleId": "kgS6jqmBOPpfb1ku"}]' \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'hbuYET7p9h0uy4ry' \
    --userId 'BG5qRILI0ai9ibIV' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'MMVTE1cByRnm2doc' \
    --userId 'n2Dh5AEqVDN9y4vR' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vN4uOnKwwexH9eiY' \
    --body '{"enabled": false, "reason": "oC7YcnlLL0tlLCVq"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xbxODumsSDe2EWxC' \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'mw09BXW4QtXShUlL' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "3H2ZHLPxt8kQOOOQ"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateClientSecretV3' test.out

#- 185 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'KW3uHsQP0rGRrApP' \
    --before '2goI4oQ0er9Nz5jp' \
    --isWildcard 'true' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRolesV3' test.out

#- 186 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "s221taqWdcXZcqip", "namespace": "5Zl3E0pPwpnBYBQH", "userId": "FY9idFNvb7BgKlzL"}, {"displayName": "dN0QUgEoYdD3Xh5n", "namespace": "RvVXpW4X4cSYfeRD", "userId": "WqMTaqPnoMHlAXQW"}, {"displayName": "aHhdDkhpGqCLpGRM", "namespace": "4CdmrRQE7bM7j1V9", "userId": "hZRrCwPOqII5FkR9"}], "members": [{"displayName": "YV8K9DC9dXvbiomX", "namespace": "2L7G4IAmBdwouSQa", "userId": "D4hJjzxnulGgy6oi"}, {"displayName": "FcQi9ev2WHi1VCUF", "namespace": "jTaNhs6SvXezUASI", "userId": "UspfOV0vpRKEmt52"}, {"displayName": "fk9lGS18bmTdBE3k", "namespace": "zqQ0eq3YSNn0KYjS", "userId": "NfX6CGHNfZLj5gCR"}], "permissions": [{"action": 39, "resource": "2Atuv1PGkAJWL9x5", "schedAction": 8, "schedCron": "7Qiy0Kyvlnw1DWVl", "schedRange": ["Ajg5JECid7QqYZNm", "L3Rg1PRoGPeItLwl", "KWhlfLK7DYNwrwQE"]}, {"action": 87, "resource": "mpkO9AWa5tC0MY8n", "schedAction": 70, "schedCron": "1Tq8r6mw7e9t9Rbg", "schedRange": ["E47kopdJQ0OdiBFj", "Slklf8eUlEeUSWgv", "KTMHmsCoUL7XyMwy"]}, {"action": 23, "resource": "N9MiGnLIwAQ6a77Z", "schedAction": 11, "schedCron": "ImswJkbVfUMpfoN3", "schedRange": ["y9NzQjblNM9PGBwL", "9h9HLhJJhVYi60U8", "JYNHOnfeO5QckTcz"]}], "roleName": "wX85kH5n7iSTmzct"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '9LLRbmL8icnhgi0u' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'zfQfDOY7SozuJTjW' \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'Ed5ClJkZD6gI684E' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "5aiynZ41XQz9nABI"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'Hy0I3SQVK1eP0mb6' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'li5pPoUAMCFsRtH6' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'RLlfFzCUzJKo9TOm' \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'OXSVG42xpXjz0dpl' \
    --after 'UEgoIJHmclbRJYAw' \
    --before 'CI1ns5UUnNpNuvPf' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'T0bbgTSno63eX5gc' \
    --body '{"managers": [{"displayName": "s366g1absA7R02Tz", "namespace": "NgGU08rJg6n4zEHD", "userId": "jJUxDvQzvkoBkbAP"}, {"displayName": "ZYH5oLHg5EiItqxu", "namespace": "FrKobpbo8PJRzFUm", "userId": "MZOVsNs6utMhZv7u"}, {"displayName": "SpqSmaPCh2A5kRGF", "namespace": "QEEHCdWXGKAMy6Gv", "userId": "igtLxhchXVuZEEy6"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'N56YPRo4CYMsJIfv' \
    --body '{"managers": [{"displayName": "86sttPl1V6zBPftk", "namespace": "LiajtluNvOF9wAUZ", "userId": "5lNhWDy0PBVn4eXw"}, {"displayName": "fyTjYb1WyiVoFrZV", "namespace": "0SMHmAte2C4GmRQE", "userId": "YO28FnW3ZwEkkL2p"}, {"displayName": "baOiNC09925BeS1B", "namespace": "P2yXTR2a2j9PSt9y", "userId": "fqOYjvVxWyzacuzJ"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'P9LH0OanJgTaldn2' \
    --after 'OGmkOzqhQpDRKkET' \
    --before 'ZktYnng5f2nNCVjs' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'LsrFhWzGGa6Iivoo' \
    --body '{"members": [{"displayName": "B37ipfowQf4UpRgy", "namespace": "Zigp4ZRMhuHg9HNV", "userId": "V3s41vwVMmyXDe9k"}, {"displayName": "813GSK6MSdBwslIW", "namespace": "KA14A939IT12T3Zm", "userId": "VLHouWbLYXIHAKFU"}, {"displayName": "ZJT8hnK6jZYmB3nH", "namespace": "PESzjPn9JGaPK56N", "userId": "C2zbQ78qMIynil2o"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'cLMMWgOclUripVHY' \
    --body '{"members": [{"displayName": "tedTSUiWgRzPuw8N", "namespace": "m6yHc3w56bvNfxgb", "userId": "snVUA0gQO0KbG0RZ"}, {"displayName": "2QRithDvfZ5THIR8", "namespace": "MKSpMfeocYbtrRjt", "userId": "Ywwx18wAm5990N9C"}, {"displayName": "C5Q846uLT8og1KJz", "namespace": "hug9hND4xtXY59EC", "userId": "woGugoyPaQmkLtpR"}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'EujpcI8rB1nacpYi' \
    --body '{"permissions": [{"action": 56, "resource": "NI4AxcAN1mTQrEub", "schedAction": 37, "schedCron": "ULicb27RAMtR2i1p", "schedRange": ["h9PDQFzPmBgUUS6u", "Z2Us4yvc8U8M5CCq", "kydbI9L31IRgDB9q"]}, {"action": 47, "resource": "ytRniQ7rks5cqboW", "schedAction": 13, "schedCron": "cUWnHir55mTssU2S", "schedRange": ["Wu2VhWO22VlMuT81", "jw7JcD71TiNgGbJJ", "zh4TFzmLqvbPojFS"]}, {"action": 67, "resource": "ecjnkiezmQlaUI3B", "schedAction": 33, "schedCron": "Czkn6uwRxhA9NXHW", "schedRange": ["9gBYbsj1n8DIKRrA", "6lcBHFAwMrfERNPS", "y3386hOFYPUNb4DE"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'xCEAkCa1B0K5B0wZ' \
    --body '{"permissions": [{"action": 42, "resource": "gHU1M7IORjLyunlj", "schedAction": 24, "schedCron": "F3J1b7eNkuOlhSBr", "schedRange": ["Ezh7gArvUuZojXcr", "7NzGyXdtGOttKU0n", "RWvuoeJG8bPfDQqW"]}, {"action": 65, "resource": "LRHvksWNYoLJQjDU", "schedAction": 13, "schedCron": "OrgDLLzPu6zG87E4", "schedRange": ["vpQawwmp8XcuI8i7", "FZTTUIKC9ux3DmXO", "u118ffKydSBmvX4T"]}, {"action": 64, "resource": "lvu3oYV9oh6dBmuJ", "schedAction": 81, "schedCron": "4hG1FvROpGyVb8w3", "schedRange": ["f39GjyAU7tzIfYjl", "Md2vKLRJwYFhcp2f", "FR60n4q52MlslbCg"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'w8ZIeflUz1aP8uEA' \
    --body '["0OP2Y4YmpgF3AWWv", "oXtsDAqdFYChKYIG", "FUOCE355Zbv32IXF"]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '37' \
    --resource 'KyeLe9hMby6YDrgX' \
    --roleId 'I4Kd63kcdLwk7dQ9' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteRolePermissionV3' test.out

#- 203 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 203 'AdminGetMyUserV3' test.out

#- 204 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'VsStr0GJPwrZZTLf' \
    --extendExp 'false' \
    --redirectUri '2MJH1OCGrQlqrluc' \
    --password 'Idm5ZdjWPLik5QI5' \
    --requestId 'a5rfVdLLJ2UyA4XA' \
    --userName 'ZQRyGHpIfVxKAxVQ' \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'GGFDUNm7kOneH9kc' \
    --linkingToken 'ISiQr33PQ6gSVYIX' \
    --password 'XzgQE7oQLa4i0TtM' \
    --username '7X07hmXf41Y4jsBN' \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'eMax1oqq8wpMi1N6' \
    --extendExp 'false' \
    --linkingToken 'ca4NR9OFlMM4kZ7m' \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'XixDdXKHRYrm9Yk3' \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'IOjY0VuyPTi3l7Ld' \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '4A3voYNCfC2u48s3' \
    --isTransient 'true' \
    --clientId 'UvzNRq7oTTvddZce' \
    --oneTimeLinkCode 'ERzDKOfYgRlAawyU' \
    > test.out 2>&1
eval_tap $? 209 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 210 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 210 'GetCountryLocationV3' test.out

#- 211 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 211 'Logout' test.out

#- 212 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ztpXpRfuKQEf30Bj' \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bpH1G74bih3nh3Ic' \
    --userId 'FEnlzwCawVn8BDoj' \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VvQtXl4JGf4I62qC' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'tDXWCFFCoIzX6hG6' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'dAT5x3zouZX12un3' \
    --redirectUri 'Q4KJRH1dhCLIedXl' \
    --scope 'WPj7zyiroOAoFlDv' \
    --state 'BljT2W6Xteggdd8s' \
    --targetAuthPage 'As5UKptbanOhV77V' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '6pWNwh5b1XxmS0xJ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'pFUdnXPSGfshtxwO' \
    > test.out 2>&1
eval_tap $? 216 'TokenIntrospectionV3' test.out

#- 217 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 217 'GetJWKSV3' test.out

#- 218 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'MZYX1quPSHmMwIxT' \
    --factor '787caySwlM3sw8EP' \
    --mfaToken 'cxHCx5IMrq6YwoNa' \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'N4gFeBoQWzrXljFz' \
    --mfaToken '2BDWgvPABNj6eCHE' \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'hUlJpkbkUqYNHHx9' \
    --factor 'wLF7z1rfk8UQB56F' \
    --mfaToken 'Raski7E6HQoyfrg4' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VZUhLrpUvfVbNL2a' \
    --userId 'W1Npi6AXra4jtTo0' \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'eOxEHouAdcsXuZpG' \
    --clientId 'ronTzBujQ3iIYoA6' \
    --redirectUri 'obvDQ8XwAyP1sk5p' \
    --requestId 'oFqWTruBTuwtO9U0' \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'hOeaUNqoj2afLmm5' \
    --additionalData 'e0MWMhaVFm4IXGWI' \
    --clientId 'fxlJJobfhoKynUrc' \
    --createHeadless 'true' \
    --deviceId 'h5fq6MV7Dp3zoZgj' \
    --macAddress 'yEBrBji92McRWBCg' \
    --platformToken 'WP2lGcBgBRLxL5Hw' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 223 'PlatformTokenGrantV3' test.out

#- 224 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 224 'GetRevocationListV3' test.out

#- 225 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '83VN5TUNLMxeuYKm' \
    > test.out 2>&1
eval_tap $? 225 'TokenRevocationV3' test.out

#- 226 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'EnYsG92IJJG1eiu5' \
    --clientId 'Cd8kyno5DlgOv0ER' \
    --code 'uSFlY0iIMMcsNcm5' \
    --codeVerifier 'VhYkSKmnhNtJtxJt' \
    --extendExp 'false' \
    --password 'TRUFPLSshuuBgYDb' \
    --redirectUri 's8eeNRG0PmSm2eYl' \
    --refreshToken 'M2p05bYo38xKzJfb' \
    --username 'Fsr1rjvwgWuJYO9j' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 226 'TokenGrantV3' test.out

#- 227 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'flfu8su2EZK3Srn0' \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '5pRXjIRr2AoW47re' \
    --code 'QUZWClAxOtPQd2de' \
    --error '8atTxc6pIPVHULSH' \
    --openidAssocHandle 'GkLJYYRX4eE8F8fT' \
    --openidClaimedId 'DBoeXQeaF4gemowU' \
    --openidIdentity 'uBdt9mFCD4saKsBN' \
    --openidMode 'vAAWZ2mCR0oObGgB' \
    --openidNs 'Z4YOOiR86kmB8rjc' \
    --openidOpEndpoint 'FsDp2M4qfXOCJgC9' \
    --openidResponseNonce 'fNNAO04923nnW8mG' \
    --openidReturnTo 'nSYyV2p7FPw6Bo6c' \
    --openidSig 'pLKWaanzJlK2gv8I' \
    --openidSigned 'JPYj8fYdSxVeAMt9' \
    --state 'RzUu24NFRHTA0mxu' \
    > test.out 2>&1
eval_tap $? 228 'PlatformAuthenticationV3' test.out

#- 229 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'IOn5rZ2II74oiWzi' \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidations' test.out

#- 230 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'cX32cu06iAKHgIrp' \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'PzuScuhTKe8QS19o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'PublicGetCountryAgeRestrictionV3' test.out

#- 232 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 232 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 233 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '3WikMOz2lnjD7jIR' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vuIZUrctj5ffImm3' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["caueYUEkzcQbcyjK", "qOl22gusRCQJTtiZ", "4g39kOvWdfGTSuke"]}' \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jT1BnOFNckEgFPMk' \
    --platformUserId 'K2R9h96uVsn1Lut6' \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'LQEeN8jT185t7HUg' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetAsyncStatus' test.out

#- 237 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'haaJrd23sQ4YhoSw' \
    --limit '35' \
    --offset '6' \
    --query 'QzwrQEnOUwGxZzB1' \
    > test.out 2>&1
eval_tap $? 237 'PublicSearchUserV3' test.out

#- 238 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "xTPIhMJmyQiMLPrR", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YCOqpXAzHyTHcBfL", "policyId": "te1u4YgJO9HaqDUW", "policyVersionId": "DsLvVbuuB4B4fQUk"}, {"isAccepted": true, "localizedPolicyVersionId": "TKJsdZlxi8geKzCJ", "policyId": "haU6qpbwuoIwtc3t", "policyVersionId": "qNLwqwF63aW3LWFM"}, {"isAccepted": true, "localizedPolicyVersionId": "6eegUtxeBQYK0Xmf", "policyId": "0gSyBt8emmdFLpBL", "policyVersionId": "W9ioXWfbRFgR4QGZ"}], "authType": "fhphePbOzFV0NvyE", "code": "AD07huxNOhDSdbNu", "country": "8IkawLMaKtHrKiWz", "dateOfBirth": "cXk59IXuVIes7OyY", "displayName": "vgR3lE3r1W0PwIdK", "emailAddress": "ciuo7dlFnxCzpAXj", "password": "5OFzgNP1AQXFtZff", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '4I7LyxBhtUg1Dy0s' \
    --query 'HXbiBcZWRCfyE4ps' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DI2DEWpYPyIbyB8Y", "dXfK59JWPSvMe8qz", "pMWEyolpJTbjXx4S"]}' \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "V4mvqSHDP7WC4GoI", "languageTag": "dQGVklCZ2MGmEGOG"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZdbGsIfMVUQfWzVI", "emailAddress": "TbUKVtmESbrgfi3Z"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TBn8ZGeuVpngjKrv", "languageTag": "FYQteLwyBf923YZ9"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'dyDjpVQ1kkvuXIXp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'h87zaekDLQh4Pk5W' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "efKpBAy6wVPEgtmH", "policyId": "rd1GAdcq8vDdoTGC", "policyVersionId": "ww9FIDuuqsCpyjUX"}, {"isAccepted": false, "localizedPolicyVersionId": "9ZRAEu3sLe5Ntt9O", "policyId": "BxyofKyTJiyd62fJ", "policyVersionId": "iZzEj0YikMDziQIM"}, {"isAccepted": false, "localizedPolicyVersionId": "lEPeVcSmdgkZpOJ9", "policyId": "7WfNXNhXgBpJp2Xr", "policyVersionId": "VwiksvTMUbvEubwm"}], "authType": "EMAILPASSWD", "country": "lYTPTEENErsGegPK", "dateOfBirth": "tyDTtSPnhc9dpwCL", "displayName": "iYEDEt5nE1amOKD0", "password": "yJHefuMFoXlBwin2", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "vliZF3KetfUhhxFh", "country": "NRVmcvV6H19h9D7G", "dateOfBirth": "S9cHiN9vZj1lLe28", "displayName": "gCjZAK9imY18OdPH", "languageTag": "vLXYdeDSm7xtNfKc", "userName": "yLBLwNIe2SaMn1iH"}' \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "BMlYCtU0lJSiYLqV", "country": "mb76ZcC9DbXyZuPJ", "dateOfBirth": "iBvmDmmPsRDgyhIS", "displayName": "eAjp77KWhYevo0ZC", "languageTag": "ucVOzZIbI9I1gGzx", "userName": "GnA95Ed7h94PUMJk"}' \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "XkTi3GHE8tLsnFuh", "emailAddress": "EsN4rKHOOp8RcgS1", "languageTag": "hyDLa4xKdGxItDxw"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UZ2dPtjEWxtnCQy0", "contactType": "ye4DgxC7XwSRxKfL", "languageTag": "LcbIpfIFYeIzzaSW", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OZKwjv8vuqZ0JGf4", "country": "TGneDUOzADGBfjHg", "dateOfBirth": "IQJ0RCt3xXXb7uHD", "displayName": "w2dh72eYFPYvbRpI", "emailAddress": "GOywi0R9lnxD6GWA", "password": "5nCBIqXoq4kZL0lU", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "bhBeXhfwBeq4yKHM", "password": "036zSQq9Sq4FJK0s"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "TLsPReBNLkKWamBC", "newPassword": "vAihv05NMOfJUgY7", "oldPassword": "uw0UV4I33RsjmCS8"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'spyftNf0zLVHJph0' \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yFJNpqfNCRyzigy1' \
    --redirectUri 'fIiETEh97u7Fw2rL' \
    --ticket 'dOsyWbM1IVlmdKAH' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'k7wfK0CProJfQ83L' \
    --body '{"platformNamespace": "me61hV6KJam7kQrZ"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7TvNULe5HqpfLfrM' \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'plfUHYtLPKSNpGUj' \
    --ticket 'PepSrqSV8pvc0T69' \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '0o9Sy7XlvUtGB7uk' \
    --clientId 'ec4FinxOI3bPhs5l' \
    --redirectUri 'rl8bMldx1pavpUSK' \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ixwYDrd76ui1g3I9' \
    --code 'OljuBN05RGEzHS8y' \
    --state 'UiPbmb2d56Nj8R00' \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "o1ljAExpOxRkBpUJ", "emailAddress": "GBqwsXk6npVvFMpN", "newPassword": "uGf2sXdQRIfomeuY"}' \
    > test.out 2>&1
eval_tap $? 260 'ResetPasswordV3' test.out

#- 261 PublicGetUserByUserIdV3
eval_tap 0 261 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 262 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZaIazjfW10pgpitE' \
    --activeOnly 'true' \
    --after 'qkEddMBcMDRqVNvQ' \
    --before 'Z1afAtDch8H0BNR3' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserBanHistoryV3' test.out

#- 263 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jLG4km01QcZTxfFZ' \
    > test.out 2>&1
eval_tap $? 263 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 264 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZrlttLWJIxkE44aV' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserInformationV3' test.out

#- 265 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eZE8rJST0tTlpSlD' \
    --after '0.12853329528612578' \
    --before '0.797043719593366' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserLoginHistoriesV3' test.out

#- 266 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LUbHm5X6NTzAO4TI' \
    --after 'pvc47LpB1JyvBcf0' \
    --before 'IylpfWi7a6Dlq3IN' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserPlatformAccountsV3' test.out

#- 267 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p5eswh5ddjmvRwjx' \
    > test.out 2>&1
eval_tap $? 267 'PublicListJusticePlatformAccountsV3' test.out

#- 268 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'W81vYf5u1m9R7yet' \
    --body '{"platformId": "r4GfZjSrurdU0Sb4", "platformUserId": "CHxWoRRneuOZwxku"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicLinkPlatformAccount' test.out

#- 269 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'cvLsVk2p84CTMrw7' \
    --body '{"chosenNamespaces": ["qlQpKsL9ZfYG6ZKw", "NyiQ1F9EiL9129Dj", "ROoQsHj7gusAXDvW"], "requestId": "mfTBIgVFZg64F33a"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicForceLinkPlatformWithProgression' test.out

#- 270 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aALgDwDJvy70nGH3' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetPublisherUserV3' test.out

#- 271 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eCSug9OfMznGwKX1' \
    --password 'jlBirr00azQfvMd7' \
    > test.out 2>&1
eval_tap $? 271 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 272 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '7sELQkEzVAdMsAGT' \
    --before 'wEWvh5CvarbPvjmR' \
    --isWildcard 'true' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetRolesV3' test.out

#- 273 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'FfpBoCc9tCt9JWFv' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetRoleV3' test.out

#- 274 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 274 'PublicGetMyUserV3' test.out

#- 275 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Ld3NiJG3N1UhnDZw' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 276 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["iIFe7OUOqmtcupkK", "QRgOpGNEwxUp5BVP", "z2QdJKGACOjRNrf1"], "oneTimeLinkCode": "PVLPCtavztaFVHex"}' \
    > test.out 2>&1
eval_tap $? 276 'LinkHeadlessAccountToMyAccountV3' test.out

#- 277 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "IMb1L4HRYQaPxGfx"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicSendVerificationLinkV3' test.out

#- 278 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'QYrHoKIhGMqgWRJH' \
    > test.out 2>&1
eval_tap $? 278 'PublicVerifyUserByLinkV3' test.out

#- 279 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'goZ6wsgSy2fm2LyL' \
    --code 'nbHqTZVU66oixtE7' \
    --error 'piuFyokVdK6SkgYe' \
    --state 'asUc7O0Dr1KfIvuk' \
    > test.out 2>&1
eval_tap $? 279 'PlatformAuthenticateSAMLV3Handler' test.out

#- 280 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'kSdbd970kyvRk6nJ' \
    --payload 'sE1wg00XMAV17tM9' \
    > test.out 2>&1
eval_tap $? 280 'LoginSSOClient' test.out

#- 281 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'rwukYQx4mD4Dubyl' \
    > test.out 2>&1
eval_tap $? 281 'LogoutSSOClient' test.out

#- 282 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'ENpIaVb5Yy6RMKbm' \
    --code 'etejMylgFO4UFD2j' \
    > test.out 2>&1
eval_tap $? 282 'RequestGameTokenResponseV3' test.out

#- 283 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KZpGDxCEJvX0XmiQ' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetDevicesByUserV4' test.out

#- 284 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'EXObbX72VTxcIzrU' \
    --endDate 'NZG0wC4WkiPDaWac' \
    --limit '85' \
    --offset '85' \
    --startDate 'XM7lTTRp6iQIrNQl' \
    > test.out 2>&1
eval_tap $? 284 'AdminGetBannedDevicesV4' test.out

#- 285 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TfwOJ0ZXNDtXJciN' \
    > test.out 2>&1
eval_tap $? 285 'AdminGetUserDeviceBansV4' test.out

#- 286 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "zvGSsCTXNtzSOJ94", "deviceId": "Er6gSkCG8XgQVIR4", "deviceType": "EqkEUxne0CsdVSja", "enabled": false, "endDate": "xp7hHhFHHwXZNTHX", "ext": {"VCFUJ0eLUmzEmNVl": {}, "R0juFJLZ7bjRb7o3": {}, "xFwWs1qNVy5zlx8c": {}}, "reason": "9Qa4BKKy6VgIWHLl"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminBanDeviceV4' test.out

#- 287 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'YpexBxHh1GRXmd6A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceBanV4' test.out

#- 288 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'ic0uXjwSYa8svAZs' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateDeviceBanV4' test.out

#- 289 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'f1zRHdBffrnFJiKB' \
    --startDate 'kOGOzjSgBoWcVWGG' \
    --deviceType 'Dl1tQsCn2PSmgGHI' \
    > test.out 2>&1
eval_tap $? 289 'AdminGenerateReportV4' test.out

#- 290 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminGetDeviceTypesV4' test.out

#- 291 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'QjPk3EsLvFnh3Vae' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceBansV4' test.out

#- 292 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'lsiQjPWzpcgWAgC9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminDecryptDeviceV4' test.out

#- 293 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'v3x4NJTCu7X7A6Ql' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 293 'AdminUnbanDeviceV4' test.out

#- 294 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'zMnMTknjRQpPDEdR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'AdminGetUsersByDeviceV4' test.out

#- 295 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 36}' \
    > test.out 2>&1
eval_tap $? 295 'AdminCreateTestUsersV4' test.out

#- 296 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xIILRCDKtSOADnab", "8X1Oeq15qCtAtrkV", "qC7LGPCq6Vlg8jc5"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBulkCheckValidUserIDV4' test.out

#- 297 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'etuil2qklJdJ98yb' \
    --body '{"avatarUrl": "JhIKiJ9xVhMAdtVU", "country": "D9zPqWew3nbdR9Bp", "dateOfBirth": "mUXNF6T8rL0RRWyy", "displayName": "30ik1Eeru4sgFOWm", "languageTag": "Qi13zOxz1xE2P6HJ", "userName": "fERzg4WNAKZ80znk"}' \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateUserV4' test.out

#- 298 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AHJipXLN68gEXW7v' \
    --body '{"code": "WyBYLUjpxiOuYseG", "emailAddress": "dwBxxagHtAeg1jhr"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserEmailAddressV4' test.out

#- 299 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'w2qVuIKc0ko18A1W' \
    > test.out 2>&1
eval_tap $? 299 'AdminDisableUserMFAV4' test.out

#- 300 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Qp2Q7EW7TPFAjvG8' \
    > test.out 2>&1
eval_tap $? 300 'AdminListUserRolesV4' test.out

#- 301 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '3KOkRlaiAWJPgdh1' \
    --body '{"assignedNamespaces": ["WxjRIrnDnetBhWDy", "u0uZSmuxAIwOmJRy", "DlJ36eszkM3e9kXn"], "roleId": "NQU1BuM6MffzvnY1"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateUserRoleV4' test.out

#- 302 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'h22gI1EXwysAEiZ8' \
    --body '{"assignedNamespaces": ["ScazNbxm6lNutBmr", "9gqFkkqzVvp5rY7m", "AKqxjcWiFmtvlRts"], "roleId": "xBVGwpTwjyTE1esw"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminAddUserRoleV4' test.out

#- 303 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'v2weQn5MiM8bD8tz' \
    --body '{"assignedNamespaces": ["J62ADNdv1R7F02iG", "MEwuyZZCpbbhdrR6", "jzzoGpWGkwUs98FY"], "roleId": "FoYpf5qShXyCSqq9"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminRemoveUserRoleV4' test.out

#- 304 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '78' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRolesV4' test.out

#- 305 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "2gIqDN8OWfpxmF6A"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateRoleV4' test.out

#- 306 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'f9j3r9W669PPZZvC' \
    > test.out 2>&1
eval_tap $? 306 'AdminGetRoleV4' test.out

#- 307 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'DkovqjmXh5ZAxNey' \
    > test.out 2>&1
eval_tap $? 307 'AdminDeleteRoleV4' test.out

#- 308 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'u4U7Ik86tUjHQz1v' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "zDHSOzoS6pe90ui1"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateRoleV4' test.out

#- 309 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '0eUFuqEWGL51Xjoh' \
    --body '{"permissions": [{"action": 14, "resource": "aj0LT77kCg5gYk5q", "schedAction": 17, "schedCron": "PRkIZzURy7VHl8Zg", "schedRange": ["K1hBctw69AY9siDi", "vZMVzKQff9nuwHte", "BrcLsMf0hmuvP751"]}, {"action": 21, "resource": "8GNboH5G6BilzFwD", "schedAction": 89, "schedCron": "eKPNWGfHkPJ8MafJ", "schedRange": ["BQuI8bEXmyEGZkiw", "VGwp1fC39COHMvbj", "952iOXW1On1mG1mh"]}, {"action": 12, "resource": "SDwPYASvRU6n5GZI", "schedAction": 33, "schedCron": "S7AtX2QrZRAtH2cx", "schedRange": ["ndOSewB28jq2hQWI", "gTryEFPGdKhjP2N1", "b7EcyRmOjWhAvPsn"]}]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminUpdateRolePermissionsV4' test.out

#- 310 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'BxB8sEAl3Nfcg3sT' \
    --body '{"permissions": [{"action": 62, "resource": "RoGswY6sPXJ073HF", "schedAction": 76, "schedCron": "cuRdTZXTKZZ5Dn9M", "schedRange": ["4CBNZsuFGNNF7xrz", "RpxM8IoemHLKTZd5", "h0EP2v0osZ7gJwEE"]}, {"action": 27, "resource": "LnBk3hovKkAHSyKL", "schedAction": 66, "schedCron": "PbNnR4LSndZH6Tpu", "schedRange": ["cohgqKWnvVyYfqnv", "7KoFfllYjI1tYPmT", "PvT3X9IYbcxdjaxA"]}, {"action": 12, "resource": "vOPXAMuvQReQqLki", "schedAction": 50, "schedCron": "RX6vIL3m5VLVs7Ig", "schedRange": ["BLgGOH3r5bRjpDU8", "MGsCiaKvlObOA4xz", "jmoaxWIPYvlBW6hi"]}]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAddRolePermissionsV4' test.out

#- 311 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'ySDFpgMb8U2x5eqv' \
    --body '["i70nJ9TrMXG0RCHt", "vsIe40wUHrfS7Q4I", "2fHmKCxS56M60MwY"]' \
    > test.out 2>&1
eval_tap $? 311 'AdminDeleteRolePermissionsV4' test.out

#- 312 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'i1rolaOBa4cscqV8' \
    --after 'LlSAubVkPNu5GsSA' \
    --before 'Wd9IbgfAhY9MoXAz' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 312 'AdminListAssignedUsersV4' test.out

#- 313 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'O1NyO1mI14KExKUw' \
    --body '{"assignedNamespaces": ["H3Y6Pv5oAyeYQjx9", "C3DyADSipEnIoX2v", "kndqqi3ouo5g9Fw6"], "namespace": "t4FetqJMFwtd37OI", "userId": "3D8GiQdXDkXZ3hEr"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminAssignUserToRoleV4' test.out

#- 314 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'hUz5yJVBWpeuRizo' \
    --body '{"namespace": "VwDCAJ5yOoHsz1Sn", "userId": "AzI60lzyz04O6czN"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminRevokeUserFromRoleV4' test.out

#- 315 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["L5QlGmXXfyhO8ze8", "GqkPYZyOI9Wo16Lj", "hKnvev32bsrAKwRK"], "emailAddresses": ["BFPdI5617Du4Uzka", "Db659TEZXOxOge9y", "RMNHg1eKlxSaJIVt"], "isAdmin": false, "namespace": "B3SZ07HH6rcbb29X", "roleId": "SUkojOfY9QQyHEbD"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserNewV4' test.out

#- 316 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "ce270EeTrwRNfnWY", "country": "RMXnuxes3L03Ez1V", "dateOfBirth": "pdyxBWdorVjL6404", "displayName": "XeLMAXrru9NC7LtB", "languageTag": "02Ds5S4qSjZbwBnY", "userName": "yfLKROtZMO6eFsMv"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminUpdateMyUserV4' test.out

#- 317 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminDisableMyAuthenticatorV4' test.out

#- 318 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'uWLZGhJFYJJp6GoX' \
    > test.out 2>&1
eval_tap $? 318 'AdminEnableMyAuthenticatorV4' test.out

#- 319 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 320 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminGetMyBackupCodesV4' test.out

#- 321 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminGenerateMyBackupCodesV4' test.out

#- 322 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyBackupCodesV4' test.out

#- 323 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDownloadMyBackupCodesV4' test.out

#- 324 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyBackupCodesV4' test.out

#- 325 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminSendMyMFAEmailCodeV4' test.out

#- 326 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminDisableMyEmailV4' test.out

#- 327 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'xyfzVlYqaQBg8CbX' \
    > test.out 2>&1
eval_tap $? 327 'AdminEnableMyEmailV4' test.out

#- 328 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 328 'AdminGetMyEnabledFactorsV4' test.out

#- 329 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'PB5z3mBiYYZrw2p9' \
    > test.out 2>&1
eval_tap $? 329 'AdminMakeFactorMyDefaultV4' test.out

#- 330 AdminInviteUserV4
eval_tap 0 330 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 331 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DufCbidXUBmpZnQP", "policyId": "KdIXXgWbdjGffEsq", "policyVersionId": "rRUAgAUmmikP2o8v"}, {"isAccepted": true, "localizedPolicyVersionId": "iLcKTvqmlP4rDc6F", "policyId": "cxGrxi9Z8zoByYjD", "policyVersionId": "IwWUtRD0eZp2JPiw"}, {"isAccepted": true, "localizedPolicyVersionId": "g8ff7dx1gLh468m3", "policyId": "J6StoQvslyYRxgJ9", "policyVersionId": "z8tpegK07oihJwzb"}], "authType": "EMAILPASSWD", "country": "YPAh0aQUtGQqXkIQ", "dateOfBirth": "RHv6yDrdqo9wzEvH", "displayName": "C0VdnOXe2eqO0wdY", "emailAddress": "HRI1cldjherKxt7b", "password": "JSYfaX3RbH4bHAWD", "passwordMD5Sum": "0P0VjEVtJej8lkvU", "username": "562VzDJgcY6vjir2", "verified": false}' \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateTestUserV4' test.out

#- 332 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "i2riHccrIVbbu8Vp", "policyId": "01QAXMBLf4Y6RYFf", "policyVersionId": "DkEF4IRGAMo3Y0eu"}, {"isAccepted": false, "localizedPolicyVersionId": "FstrSbxtjF6PID8F", "policyId": "QtbdPcLakwlyAB09", "policyVersionId": "rLRAhHg9UQkXZUuJ"}, {"isAccepted": false, "localizedPolicyVersionId": "lVNwR8wlmx98IEth", "policyId": "HWcCQECv8fEcblNx", "policyVersionId": "pyvOJrUZS3fQ2H9K"}], "authType": "EMAILPASSWD", "code": "bCZtlc5XwgmbEVhn", "country": "nQ20xGlmXfPBNS1F", "dateOfBirth": "BHqb1wWzYYstsXVY", "displayName": "ozuYHtlXwzyeP8p9", "emailAddress": "i22DZZbshx6eEqtJ", "password": "2HN5ImGFbDpRJ4hC", "passwordMD5Sum": "gjxMZzl2ztG9dzgM", "reachMinimumAge": false, "username": "uo4ChHdlg5lZMj4k"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserV4' test.out

#- 333 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'hoqEtUooEX01tODO' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "hO0CYzHV7RbSwpzN", "policyId": "qjyLlY2wFJrnW7ln", "policyVersionId": "8dfOJQBQe6J9MKpI"}, {"isAccepted": false, "localizedPolicyVersionId": "60o6RvWxwUX83iyO", "policyId": "CPwAZYOShEp02qcb", "policyVersionId": "Rmv0dfZ7n6pYEYS3"}, {"isAccepted": true, "localizedPolicyVersionId": "0sbhglsFdoNxE7Gp", "policyId": "2upTnepTaoOL00KD", "policyVersionId": "h1XjVRjDzaKFaqv1"}], "authType": "EMAILPASSWD", "country": "hHIFg1d33g7FPECq", "dateOfBirth": "Ewu5DjoIEVeZL2YS", "displayName": "JCWlVBfwUDbZAlFA", "password": "c5ofEPrRUTiLGEts", "reachMinimumAge": true, "username": "yramCUfEyZhvjkiW"}' \
    > test.out 2>&1
eval_tap $? 333 'CreateUserFromInvitationV4' test.out

#- 334 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "bAbVHLxQHIcyfc9k", "country": "zmNfcKrpSvZbiwIn", "dateOfBirth": "IELbLikRUD8DVAF8", "displayName": "13D2mvCWC3hWTntp", "languageTag": "ptwGJS7IMXEbkSdI", "userName": "KGGpxTsXpIGXd8Ep"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpdateUserV4' test.out

#- 335 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UGqEgSDw3idFFuQN", "emailAddress": "Yqmd889Wm6vvIviZ"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpdateUserEmailAddressV4' test.out

#- 336 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kLmwGncpWp9c5Qtv", "country": "hb9cqavUUzWjYceS", "dateOfBirth": "VBuqxmbNZ5SgH0Qq", "displayName": "Hw5boFVcpMA2BKok", "emailAddress": "3kpLWB9s3r8ACWoN", "password": "lce3EMGarP3dx8cn", "reachMinimumAge": false, "username": "pzA2uTus1AVobMHk", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 336 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 337 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "m4tTnoZXLDU0cpca", "password": "8ooZhujl4DN2Kp5k", "username": "3bJbz1UF2JgqT9bF"}' \
    > test.out 2>&1
eval_tap $? 337 'PublicUpgradeHeadlessAccountV4' test.out

#- 338 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicDisableMyAuthenticatorV4' test.out

#- 339 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'qJUQG5YW8I0ajfIX' \
    > test.out 2>&1
eval_tap $? 339 'PublicEnableMyAuthenticatorV4' test.out

#- 340 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 341 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicGetMyBackupCodesV4' test.out

#- 342 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGenerateMyBackupCodesV4' test.out

#- 343 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicDisableMyBackupCodesV4' test.out

#- 344 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDownloadMyBackupCodesV4' test.out

#- 345 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyBackupCodesV4' test.out

#- 346 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 346 'PublicRemoveTrustedDeviceV4' test.out

#- 347 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicSendMyMFAEmailCodeV4' test.out

#- 348 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyEmailV4' test.out

#- 349 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 's0fhBWfq0pTWY7fp' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyEmailV4' test.out

#- 350 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGetMyEnabledFactorsV4' test.out

#- 351 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'wtb94j9PtCUeZXkn' \
    > test.out 2>&1
eval_tap $? 351 'PublicMakeFactorMyDefaultV4' test.out

#- 352 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "kdvEYZgigwtDWtpW", "namespace": "4uH1t3JENw1G7gFp", "namespaceDisplayName": "UGvUMbm5ad4X4Uuq"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE