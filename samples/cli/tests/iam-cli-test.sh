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
echo "1..349"

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
    --body '[{"field": "wNgdmuKKdC0NaYkj", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["rE5my8JbN6lpulXp", "MPfQnKJPbr4PPTZ2", "3B2hqXK7EggSf954"], "description": [{"language": "YgZghq0mmNjG0xPT", "message": ["BCBHms8IlfDHnmaI", "PtlMDGWRimF7vY6h", "FgYcWs9BFhNEDF7I"]}, {"language": "xqb1TkZhjcu77oqG", "message": ["hHtTJ4ABfjLvM5bR", "xJry3TnfVtzLE7Tu", "RWWrUxJRDZZXG4EM"]}, {"language": "GLdl3RZvu1f3CMw9", "message": ["ti1n8RQlJCQpkgJO", "8jvN2EDLXr4nyY4X", "y4bl17cTVFx9D5lM"]}], "isCustomRegex": true, "letterCase": "U6ZbOjW0GnmXFrcF", "maxLength": 23, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 23, "minCharType": 44, "minLength": 13, "regex": "Is8BrGIjOTCDNAwj", "specialCharacterLocation": "BF5BPmM78wvgYqCe", "specialCharacters": ["LFlJmfmHWMZMRSnQ", "vluc9maBm0B6s8mu", "Rv8EgiInEfY75NwR"]}}, {"field": "2rFmcAWkonBWFj39", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["CVkItbpYXjNnHpRB", "Yhy2fTeUJkQqpDRc", "hWOLHlkhdzv4zy96"], "description": [{"language": "NX0QINdzm9XxJOKf", "message": ["E0qZqJmDJsusZ4XD", "3Y22z3yN37HtZMh6", "NXer7kwRmhvzEdrh"]}, {"language": "cv8T8fmIpdvaVAQA", "message": ["gcbarGDM0HtQa2oy", "mme6Ro7cy2ooPnZP", "saauoa4vOM3EEy7A"]}, {"language": "iHDEKeeaRrDBKanc", "message": ["Q3EWUTCuf8wmrCjk", "ciaMdJNZYlda1eys", "pABvkrP5S9hgbvCo"]}], "isCustomRegex": true, "letterCase": "4DrGtv9iH3V29fdi", "maxLength": 28, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 41, "minCharType": 100, "minLength": 69, "regex": "3Wu7DakUD6qCNEzL", "specialCharacterLocation": "GRRLCWP3Qegjxwet", "specialCharacters": ["NAgVzVHU1DiiXcfW", "GondEOGZ5fw4dJuL", "o6lIUIj3O9yVPUiT"]}}, {"field": "pZqsRnUBYgRzVneA", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["CcJQfqIpOHCsbqfH", "mXUdANFZIvKZ8Y97", "DRTksZW02PSTXkvJ"], "description": [{"language": "K2RSO39ZcjmLoNiC", "message": ["rfc50vaIQwtuJObb", "CnCq5sEITJAsYfLU", "XeqdoTBb4envlB1D"]}, {"language": "VPFtCgiaxHZo0gw6", "message": ["zuZeinfc3FpB5QN8", "kb10yQ9JINOxGoIW", "YHYm9uM62aI0vzEl"]}, {"language": "omTAlkCQ6PiGJuMn", "message": ["LOBDhFIE9AwezKBg", "uh7REknDTDtSSCUb", "KkqjivBCSW5l9LPF"]}], "isCustomRegex": false, "letterCase": "Lla38Bwixn9wjuIC", "maxLength": 6, "maxRepeatingAlphaNum": 19, "maxRepeatingSpecialCharacter": 10, "minCharType": 36, "minLength": 48, "regex": "mKmXTm8y9560OTWb", "specialCharacterLocation": "GTn7GmcmkzH0yabR", "specialCharacters": ["XCCncK3JSDxRKW1P", "Uh9MRDPU4YruBke5", "CAuYxYw9cuzDodMh"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Jflt9htuwkk6cdY1' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'gttGjHzJbf5qOtFa' \
    --before 'iSh4F8KTWwP4zmKQ' \
    --limit '6' \
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
    --body '{"ageRestriction": 39, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'WcCsTeAdpqa3tlJ8' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 58}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'BlOGCAP67G7mK7sb' \
    --limit '35' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "J9efPICHUl99SxE5", "comment": "xYRjrIxNB8YVGY66", "endDate": "z8djW7lYEyoFDaIN", "reason": "H6GewOAfWrUd7j8X", "skipNotif": false, "userIds": ["HrD3Pes4d228U2la", "p7QvAOCiNaMLBMnq", "PXXqaTZdmXHsGO4Y"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "0F9FY214WKcFuhyP", "userId": "Y0EnSndxvRYRGRUf"}, {"banId": "LemoruEcO5Cgawne", "userId": "mAcDoTvLd1XvQQn8"}, {"banId": "APsXfFO1m64ddiWv", "userId": "m82ZpLZAxqdrPbZ2"}]}' \
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
    --clientId '67jswOcc4DZC1y3u' \
    --clientName '492Xl0AQBsoNjzel' \
    --clientType 'dvGgzMia3gmS7jqA' \
    --limit '21' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4ZUq64zphq9w83qC", "66r1FJzmBM04opZr", "xjElkZSAfVvuvWq4"], "baseUri": "ykNZOrrow3ur4SHY", "clientId": "yBu6d7ShgWWhXDpY", "clientName": "KzBB1PXlhAKgeMY2", "clientPermissions": [{"action": 93, "resource": "qq0HqSA2zFi2ptFN", "schedAction": 87, "schedCron": "GBZbgCxLE0NN4L0R", "schedRange": ["nq1ciLOaoqjYzukp", "xGTQkWufihBH5ZtV", "I2uSgAFkAvTEelCL"]}, {"action": 16, "resource": "bKOHNgVznaXX6067", "schedAction": 51, "schedCron": "8m4fh7EUGi5tRffz", "schedRange": ["5jmYUPFy8TCHKdzc", "BM7hPDLx392lhhyH", "AyUQX8Y69hX946pC"]}, {"action": 62, "resource": "o4t0w2MiZJ8zN6EN", "schedAction": 48, "schedCron": "0X4n3YxSHO4bRLBZ", "schedRange": ["cpVVdqV95YmnM6Xd", "Sf27JLsW3sWdeZdc", "djJEuj6CG4Nv9cmi"]}], "clientPlatform": "tw5jTKREnFwezPbu", "deletable": true, "description": "gYqGyryOEOW1mKin", "namespace": "crePiDBMkYWXpLl0", "oauthAccessTokenExpiration": 93, "oauthAccessTokenExpirationTimeUnit": "ecdttxSzjreypT9E", "oauthClientType": "jXXxkgyFPVzvFWua", "oauthRefreshTokenExpiration": 73, "oauthRefreshTokenExpirationTimeUnit": "cBrMYQWWUPdtgGI2", "parentNamespace": "g72BE6r0vXsu1Jwx", "redirectUri": "uwGlFnb18eejpSBM", "scopes": ["G3uUWPD94hoGx4Z2", "hqiQIDvoPWE9cKXm", "6fd9b82yVQws5dIp"], "secret": "62z9g7vHd0R5VtTA", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'BHukREyzbmMMkZOz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'ZfDaUH4hJQEJFPrX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '3AwV4LMJNQYhNxTL' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["9CKiU0Tx0AkT3Ltt", "Os2p76WI2ES9snIZ", "KdVIlCAG8cCRxSGX"], "baseUri": "D50YrURFyy8wDh1I", "clientName": "ymPokHXsPCObfVpR", "clientPermissions": [{"action": 56, "resource": "iGHXo7PjEoEajy5Z", "schedAction": 28, "schedCron": "13O6LrEp05h2PpRS", "schedRange": ["hONkzKDV9ucDPb5K", "xL1yZfr8kHg6z5kk", "8k1jGjCi0wL12SUJ"]}, {"action": 79, "resource": "B4SUU56N1hIDBUGk", "schedAction": 64, "schedCron": "QFIjuk5So9qkRcjI", "schedRange": ["7oAbxrkpyFO7JHtr", "TaXgHKL6dkB9Fyx7", "5Gk60BE1Q9xOXuKM"]}, {"action": 43, "resource": "eDDq4NqnIOSMQAQr", "schedAction": 66, "schedCron": "bhNEEz04qZyPyhGr", "schedRange": ["yIxyvxzwVbD52fyG", "Dfdctp4fPPmDzGNV", "vBcPCdJqG5LnQetO"]}], "clientPlatform": "DAAoTlTzJiGgNKlX", "deletable": false, "description": "rVRp3zqId7BzsPaJ", "namespace": "1SffHXeUeacJ52Go", "oauthAccessTokenExpiration": 7, "oauthAccessTokenExpirationTimeUnit": "vqPfEmaAHg2UnUcJ", "oauthRefreshTokenExpiration": 16, "oauthRefreshTokenExpirationTimeUnit": "rCBKIfE7BQ55ngRy", "redirectUri": "WjRr1G0X7SaipWbl", "scopes": ["jDP2xP32oZxeA5y7", "RHrqeRiHBbZCgLJK", "fm8Y4qyiTcte6POr"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'w3KkVegxnnYPIGsl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 19, "resource": "R56rPaeJq8mCDqIY"}, {"action": 27, "resource": "3JNqEorx3CmHnB8J"}, {"action": 42, "resource": "VoBKbBp3bQaEplW3"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'XnxkL1YIxHyFbxN5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 54, "resource": "WLOGMjf8QACkW3Ue"}, {"action": 26, "resource": "a7jzv7XcpSQH0ddL"}, {"action": 1, "resource": "kTjR7hUKqFnSjzwr"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '21' \
    --clientId '9TDWEpMHwcQrjhEJ' \
    --namespace $AB_NAMESPACE \
    --resource 'RPT3XACV5z7jDnEK' \
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
    --limit '15' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DJ3p2uiHnzcEUWUj' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BE9j4PZcVBxWe5S2' \
    --body '{"ACSURL": "0z3WIvYwRxiNtqEu", "AWSCognitoRegion": "98wENiz3F1oYdTgY", "AWSCognitoUserPool": "HFouCNGGYSNTgE5I", "AllowedClients": ["hw3B5y1fen2uexjr", "E6NSxj6ZUCMoPZUZ", "OZRyltTw9yU2bcTA"], "AppId": "ApicBai64u2C1oz4", "AuthorizationEndpoint": "qbOe83QQQ9ZMgH7y", "ClientId": "xRC1qWP7HrBqA9b6", "Environment": "SiqPVAQsE1UW83Dd", "FederationMetadataURL": "632XnvPdeIxzIPl6", "GenericOauthFlow": true, "IsActive": false, "Issuer": "AdGKo2VJRETi5Ew2", "JWKSEndpoint": "FQxhzp9mR1ngzDMu", "KeyID": "Ib0QjaC2KwIWc9R4", "NetflixCertificates": {"encryptedPrivateKey": "LInfxHyZdhoeTc2M", "encryptedPrivateKeyName": "4rTZsd46LJtCtQ9P", "publicCertificate": "uzUIlJ9j2lhAWMSC", "publicCertificateName": "3LKxfRf4ovJzv1vW", "rootCertificate": "KJ618W4A0n0ANimQ", "rootCertificateName": "J67KmzTUqRUdvugT"}, "OrganizationId": "pA0QFa2GWjZcEB0a", "PlatformName": "agfoDl6nbvyeA6WW", "RedirectUri": "17vpTJUxHDPA0ArJ", "RegisteredDomains": [{"affectedClientIDs": ["ZiqOLMHnc820G1Dx", "TZrE2gFvGM6NHjBD", "Co31miJ1z1JFWWMx"], "domain": "8zBg8m9cT3kuf4iW", "namespaces": ["L1mqqjFwZGqDGxgU", "R1cHX81N5MzLo1la", "yeNmL4PjmHS6UhET"], "roleId": "pROuBUZUuQDgd4rK"}, {"affectedClientIDs": ["36IfN2MmdbtcqNJX", "0D7aZDtx13QmICJg", "42VWGGcdsfCpas4z"], "domain": "WiDH7zkHrlpdJGod", "namespaces": ["HgxY9tcWJiqeqexs", "BbVjEy374TNcxtJt", "baY1DlNWJPqVTJql"], "roleId": "XOvqdfjxgOSK0jTj"}, {"affectedClientIDs": ["ysVniXQ3EHiJsgA8", "esnwytGhKfKysFYU", "VPk6p7HKrxNA4FM9"], "domain": "KKETOdm9cTt8bC7W", "namespaces": ["yaI9Sb2uFRpqP9tT", "xX4hw71D9vY3RvnO", "V6Y89uwAeFMPY780"], "roleId": "USbGIlqEhF0KG8mT"}], "Secret": "QCVZSdonlvpFkVsR", "TeamID": "9gvcKRBKncbA0Np9", "TokenAuthenticationType": "j3wyejc7I3oDPoxb", "TokenClaimsMapping": {"FjQ5FWghwV0L0SkG": "kkjAhNvVySE0XDoG", "Zwo05rziKpAo1bGR": "idlcCpMjsacdH53t", "LY9LPvHM61kAxFFq": "qGPIVevqKzfZwdLm"}, "TokenEndpoint": "3WcUIpqUMfYn11QI", "UserInfoEndpoint": "NeMozbdl6ZtUHQtb", "UserInfoHTTPMethod": "4Vl5Q18eOLt2rHGO", "scopes": ["3O3LdebCsbm3eK1P", "MaqQXUJ17KFL2pLc", "FSNmWzWO813RVyHr"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'citbE1olM3GnHBDf' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'x9FRmT2SACReXDA2' \
    --body '{"ACSURL": "AboZWkTniuqJXga9", "AWSCognitoRegion": "XmXPeb8AQ3UBpo9T", "AWSCognitoUserPool": "n9LCpNSsAVEKS7UF", "AllowedClients": ["6KnnfIVTC50dRq3m", "7YnSX6yxcpJAvVlm", "vRxMFmzWc7sZtvqg"], "AppId": "AsPnNjvg6JZ3aUCH", "AuthorizationEndpoint": "gFp8DQC34Ol2ScEC", "ClientId": "PqCPc9HSG3l6mXnA", "Environment": "aVxWGbAZYIrbvhx7", "FederationMetadataURL": "oLsvGq5pW4YFgHlN", "GenericOauthFlow": true, "IsActive": false, "Issuer": "1O389ZmTOk2cT2bH", "JWKSEndpoint": "AqFHRLApzkxuWrrg", "KeyID": "VBJVbnAafyV2bwI2", "NetflixCertificates": {"encryptedPrivateKey": "wjUFzByy5BJFgorC", "encryptedPrivateKeyName": "RYEZN8ftqsBSLp49", "publicCertificate": "62qj7klSCDOW8fua", "publicCertificateName": "cfOFe6YufkxiHf1G", "rootCertificate": "J7oc2ahEcS6MJg2h", "rootCertificateName": "HudXXPmTizGlyOTN"}, "OrganizationId": "LFA4Ypm9o0AtVigS", "PlatformName": "jX0XPff13rFFGLHU", "RedirectUri": "i4w2FptDWvzByANN", "RegisteredDomains": [{"affectedClientIDs": ["n0DFfMYKq7bievqm", "pSZX0s1gP3xWgmnu", "Uj8sH8tbjeLCXZPH"], "domain": "JhSx817bjWP6G9WU", "namespaces": ["uB53fQROMHnzVR34", "0JpmCeCx8x1r9t7g", "G46Kj8fkI3suxu3G"], "roleId": "RZsJTgU9TqJOB3dZ"}, {"affectedClientIDs": ["0VAlWKxLcsNAgJ73", "zPFBinawDrOilAMo", "sNkElywr6muu7uhy"], "domain": "Li0FjjPCgdHAxPUZ", "namespaces": ["yDHrW23TnHqwQj5I", "rEsMZxZVJZ7a8J5T", "w8poMR1goaK2S6oz"], "roleId": "R9WPdsbG1gndc728"}, {"affectedClientIDs": ["ey4gCEb3EDPsN1Zz", "UPH77ZSdi0OXVZLE", "vMitdAeR25UcgIn4"], "domain": "60DnsbZKEkyCYZ09", "namespaces": ["hkhf7bhNuoY5GQmf", "rf9k2b3IaLWtZBlM", "c1YXDr9kJBmbFEkz"], "roleId": "meLf5PoCqMRHyDn7"}], "Secret": "YkiwlNSJ232qyedX", "TeamID": "tkGpzMUnzGZmbb2k", "TokenAuthenticationType": "lArLNo2LquCJzkiz", "TokenClaimsMapping": {"MQdn0AgcqNM8eti6": "II19lruK8iPhEdKn", "q6qgT1bVziyrSLSD": "1V7viwaOqVEiV3EA", "dPQbmWjqZVMKNNqa": "UD6fjfNgYgGgtHnW"}, "TokenEndpoint": "qqzZTbKflX6ffMl7", "UserInfoEndpoint": "8lLX31UCxA28JxoL", "UserInfoHTTPMethod": "Udza5U48eKsgom38", "scopes": ["w0tYdVuV4i69p23A", "qAUYhcD8ccliBgVX", "gCIACPlqPFf4ZJmt"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rhA9OcZlZ8MB3cNp' \
    --body '{"affectedClientIDs": ["ydq2EagWM7KrZ5sJ", "6ocofL8sfq8mE8Kh", "yLwbHzgqfSsIOF1A"], "assignedNamespaces": ["SaRoPnUbQMv3XNEh", "dGeqewQdEPKkS17k", "DdQ546CISrbk3r41"], "domain": "GFYrzZTShrWl1Qk7", "roleId": "71YlMlAwHpKKAhcS"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dgQHVDgVBUiVAlUW' \
    --body '{"domain": "f660x4TxcGu8hUlY"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bUbq1WMeARKhVRNB' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '3W0qUquPW7lFsaln' \
    --body '{"acsUrl": "opnaqhx3SFnLAiW4", "apiKey": "ghsSojco1u50eg76", "appId": "CBzZRL6rFoelwMSP", "federationMetadataUrl": "pzh5Y5fwop3r7iDV", "isActive": true, "redirectUri": "QLjHFGsjrO9uvV9t", "secret": "79hEnF2jjwbT6RAh", "ssoUrl": "YIXwxkGfxqcnqpVw"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A9gnAVuGSAAYdMyh' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'D1ArOWil5AkGlXnK' \
    --body '{"acsUrl": "Pov35guu3YnnqSqw", "apiKey": "mxMjUauHyQT8rB95", "appId": "IXDaKUz5iBvMjnQ0", "federationMetadataUrl": "ac2TDaAa8cfsgNPw", "isActive": false, "redirectUri": "ymBvAft8V9zOL0VX", "secret": "YBRo50g3lEAUZhJe", "ssoUrl": "4Hmsccuu69yGrE7F"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eDKlhhMIam09jWFV' \
    --platformUserId 'XziFlRKzWmeDudLE' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'lMLtqCk24Xwj3x1M' \
    --after '23' \
    --before '59' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'TCSkdfNn5QGDdxqZ' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1RGedaSbzK0L8FLf", "35aSA5IiS1Zc9kLr", "xkfOJR6UjYJN2Xli"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["zRQtc5ekeSWpDAi3", "1ZlPmbS3JnGuBf8D", "ITSHuThJOLUGbEoD"], "isAdmin": true, "namespace": "McBhaWDAcRySAdKO", "roles": ["nfGqLJ057s4JjQ1X", "c2BYEwuxIjJnIfim", "kRrUy3vvbJxTvEWv"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '54' \
    --platformUserId 'HrqTK4wvsadStEIb' \
    --platformId '4HAKckOCvyqIfjTv' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'BjLg5VieKM3X75PD' \
    --endDate 'FvlIVDffzsw1G59h' \
    --limit '75' \
    --offset '53' \
    --platformBy 'LvOgWalpi7ETq1PJ' \
    --platformId 'fyWXHfeZCP7owpfX' \
    --query 'zTYfUvraHcClgPRt' \
    --startDate 'AeVpK84yEamXupS3' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["AodSKDtlgsuMmzJh", "D10nijiDUkcuJo5P", "93ts2XwOSKqE8D4T"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SciSGYwzMei6NE3I' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sQI6ql3cWPgXxnbz' \
    --body '{"avatarUrl": "w3qkboyVNoLFIiaz", "country": "PEJVAQsfJrAQeck8", "dateOfBirth": "mURXbisZIr4d0S5F", "displayName": "r5aW8gp5qWJVjLpW", "languageTag": "AvO6ZSXDflTzOSl7", "userName": "uk06VpHCjVJd5rTm"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FH6S6sZyNUQ7sTm0' \
    --activeOnly 'true' \
    --after 'W7bAoVWG8laf20M6' \
    --before 'csvlfE6YzvroD5PJ' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PqNR894HOIsZCqxk' \
    --body '{"ban": "fxEHYptP9SdaaLr2", "comment": "ieZ8xglaVrJSSyfN", "endDate": "eO1eIWM7wj0XgfQg", "reason": "QqZlEqSMS0cWM7UO", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'VNfko92tVc8crsIM' \
    --namespace $AB_NAMESPACE \
    --userId 'UlQjWn5NNMm9ev4i' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jf5bxo6xVzPff9d0' \
    --body '{"context": "K6ZyWXCHUm1tb7wp", "emailAddress": "fnSIzXCYKRztG4AM", "languageTag": "n5yMshMeVw9cpLt8"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PJA0dVoPdlYtL5nf' \
    --body '{"Code": "wK3d6q0Ziqzw65s5", "ContactType": "KoJ7gquRqpyv0ibD", "LanguageTag": "RZVIRSogGKR9zQxl", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '8uQXcihVa1X8sbnq' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vleYZvnWE9fxxCcj' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '1cXDEoopv3sulIX4' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FNs5Zid269qtFPgm' \
    --body '{"code": "XlUhPFfjD7vLOUAR", "country": "hCCBGvSAmDoAPPZg", "dateOfBirth": "GEbOnP2NjRgICqS8", "displayName": "LHCc48b7CNRG15Os", "emailAddress": "1HdvYKnsHxBVWZcf", "password": "lEl42OE0PcVuVctH", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '7yFxksbZGQ2vYbMq' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vPIvwTjtCVL5t0oZ' \
    --after '0.3315870294208775' \
    --before '0.03078325345893418' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I2QEo1S7MYUalwI1' \
    --body '{"languageTag": "pFhonNPYe6HeltOI", "newPassword": "C9I9JPK83w3FjV6K", "oldPassword": "x2OeH9CA6MvXTli8"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rrBIIpnMx4vCQMdR' \
    --body '{"Permissions": [{"Action": 13, "Resource": "jkDyVPMdlQ1F9gcB", "SchedAction": 5, "SchedCron": "9SCmycN9iNsRXbXI", "SchedRange": ["H7NtDI3ufQU6H2ph", "myhx3Y5HHfmJvKYd", "4VapWys94rr7LMRs"]}, {"Action": 15, "Resource": "qpxLGaEUcZbS5XwC", "SchedAction": 22, "SchedCron": "3odYbXxEKdGPKsFN", "SchedRange": ["hwa0BHylcq7QWsk0", "Xj0Bln90LvLOsCPP", "cQyiQkuN476aLTSo"]}, {"Action": 45, "Resource": "j2H93AySzzEqpICW", "SchedAction": 45, "SchedCron": "uYAbX4k1OPd1LybO", "SchedRange": ["hhuI8pe85yibJhJi", "I4Sd8XviGEmwYhbn", "6UUozskPWgQQtpeu"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y5QbtCjZRNXdXg6q' \
    --body '{"Permissions": [{"Action": 30, "Resource": "vLuStsMUEPAy6wR9", "SchedAction": 14, "SchedCron": "iljT3ftbwHY92HbU", "SchedRange": ["IcbjZIhgO4pF51bo", "8gJPdQ79TCvtMUDo", "v5J4gS7r3vitUxlG"]}, {"Action": 84, "Resource": "M4ZF57dobU7j7zoi", "SchedAction": 27, "SchedCron": "cMuBvpLTuwoU9ri7", "SchedRange": ["4bSaPK66Znvq53Ii", "DXj5H7lqb4aBlArb", "rus2Kj0oalmFia2O"]}, {"Action": 53, "Resource": "ps1Gs33gwXQcz2Df", "SchedAction": 99, "SchedCron": "oJs9Q2hyraZt7evr", "SchedRange": ["a0X6WeLKs9DsGXQV", "QgoNgKlOtEEgWEWJ", "C4ntUdWAuw1iTDaP"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vq8edk0jZ9p25npx' \
    --body '[{"Action": 19, "Resource": "QgLzICmkoVez6gpJ"}, {"Action": 32, "Resource": "Uc9K8femPVwC3x5R"}, {"Action": 64, "Resource": "tTfda9JpzyFBJlH6"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '9' \
    --namespace $AB_NAMESPACE \
    --resource 'ISx7UWIvl68WO2Mt' \
    --userId 'taHOKycqgfyTMBHX' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kjjPbYauMS2qF2Ur' \
    --after 'End2PskbURYR1wwC' \
    --before 'm2HKZB3ebJRNRgXc' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'ECo9iWZHbBbB8Zom' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'prmJE9WDmFsrzgef' \
    --userId 'JkuOvECHKX761wMF' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'sdoZBDjiwntsAajy' \
    --userId 'ANwmZZvoJBjkWqoT' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '7zhVTaHhwhtszy1v' \
    --body '{"platformId": "iC2SDoBjyNAs8YNf", "platformUserId": "3SQqKB6ORsNUcryX"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i6laeB5ozJcLzhgl' \
    --userId 'TKhClYUlRv7qh2CA' \
    --body '{"platformNamespace": "oUBsRnJ2iTGHuO57"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZKLaQZEKIPP9q71M' \
    --userId 'V9iVrNiBpTxZBTx2' \
    --ticket 'C1ekvDxYV5MibUvx' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QzKlnRuCrFIKbJla' \
    --userId 'b3MuNLXlcJrtBZ9f' \
    --platformToken 'SrCcwQXX3haXs4qb' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wx0AHFEFk3jE7Ezm' \
    --body '["5C8PmlF8HEoxM8Fp", "JZH3cYs1zVXp6HyP", "AB9YP8jQLAtfnpl1"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qx0lMysXEqucWX7I' \
    --body '[{"namespace": "JSEv6FImTake0HxH", "roleId": "KTc5iFsL0wb46oVA"}, {"namespace": "686Y68ZOetac0fRP", "roleId": "kOM9el0eLPI5LiGO"}, {"namespace": "0YWxInrNxDqzweKJ", "roleId": "GGl2D5zhZ5ju0268"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '049PuBWLDpT2rF3P' \
    --userId 'diaQmSM7i38iQBFm' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'T4c9Fhm43f0ZDfCR' \
    --userId 'lS7ThePptN4iGwc6' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BDh9GmFeYZZ0B3Mg' \
    --body '{"enabled": false, "reason": "2upZoL8EKL1Mptsg"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sz7F8HCEKPa5xK9M' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'ly4ApsvbJepaSIv7' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "5l4KGaU2PwBRxA6H"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'W3YDkGxLuCqzmRD3' \
    --before 'nL2dBVmTE2Ms6QIh' \
    --isWildcard 'false' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "GdbJOqkrHOKNYVCM", "namespace": "nRWmlfTGGTqcPMUH", "userId": "8BiFsBZ4OD8mMyF5"}, {"displayName": "po3mVrD7kRAa4Xwi", "namespace": "VLxoiTjEotUmfg4e", "userId": "omJ57v4zX6qyqlBx"}, {"displayName": "7ikjon9udruq6J4O", "namespace": "qmrOQ6FpwsXTRDTR", "userId": "GudKDJWzM59gBPUt"}], "members": [{"displayName": "62iLoXq8CjyVc6IA", "namespace": "n5iYASSMZIO532VB", "userId": "OgjsZGAxjFFb1yxv"}, {"displayName": "doe0ye0N4FRac5uI", "namespace": "yBe1SjEOd2hZfTHs", "userId": "35wSPwkqaIk7Cz5Q"}, {"displayName": "kAJsIcer8tg8FmdU", "namespace": "TB5Gie80laNYpnBY", "userId": "p94O88dW7rLCVEGH"}], "permissions": [{"action": 92, "resource": "O9f0bONAgi2XSSSa", "schedAction": 37, "schedCron": "oIVfcpNFr98WZmyX", "schedRange": ["B3M6fRxhizQQYHN4", "chpomsyVQMx8EwEh", "3CdnVVkjKHxit9NR"]}, {"action": 49, "resource": "qczvBHmjBhpsuKJ2", "schedAction": 73, "schedCron": "RrfFwkftbd79FaXe", "schedRange": ["k6kaIG9hQtiSSddq", "EuDog837wnjGDbst", "AX8fmJ28TzERIYP2"]}, {"action": 7, "resource": "H71hMjg5crkMffUV", "schedAction": 87, "schedCron": "ZKo43U0VBLXCteLc", "schedRange": ["06iphe2asoXeVBaQ", "74phE2cLaSYsWSQ7", "sPwZLcWTn3FfgvVv"]}], "roleName": "WPGwdbB5N3fOLxXG"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'nfopY97P8R4K9dPc' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'zQ6ydjGH1hClVB5s' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'pfFJkkYRBal97zy0' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "fXBit8MaGIkcxG1F"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'JFhIpFlPFx4JXrdD' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'GrXE1uUc8n0kXJWY' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'WDdolZ3jw8bXXdb1' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '2zswEWhZGX862w3q' \
    --after '5J4LKxGSoEnzCJfS' \
    --before '8BIQMaAu2oKiX3BM' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'E5t8kWHIpALO3ScE' \
    --body '{"managers": [{"displayName": "FVLAty7LFF7keKzr", "namespace": "YSvoMK5cJCiqQ5hh", "userId": "nRGFZo2qdf6oAvT1"}, {"displayName": "NYPBcxWEhrVbU2Hp", "namespace": "sph7sUg7lm5HfrUe", "userId": "BGP2YV1azpND23m3"}, {"displayName": "IBZQeRqka8njzOb9", "namespace": "rNN7SBd6Va8Ia5y6", "userId": "TyvdAMziGn6hLwsS"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'ScPOwN7bV2VUeZG4' \
    --body '{"managers": [{"displayName": "TszUrcg6MMcZ017b", "namespace": "EMKTIRbvi3VNLUVP", "userId": "rVMPIBWUc3xaNtwe"}, {"displayName": "HtYIIinRpxoZ6Ndx", "namespace": "WLLvx61EJ9f7o9zr", "userId": "h6GixVLHAuCrmQ7m"}, {"displayName": "uZgmMEWUcp3JgEnZ", "namespace": "Amwc4PzSzAIg9lu7", "userId": "hyruOQZxsyWizveL"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'FKDev5NZVHnSj5V9' \
    --after 'iMAMhXAItU1nQAIa' \
    --before 'b1Smmj9mAKpNTwXL' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'OGBnLO0B3wCHsWbT' \
    --body '{"members": [{"displayName": "dJjDHAesDeuAVmr7", "namespace": "e0HI9U6GLb78WVV1", "userId": "Q7zl45Vt9QCQCXb3"}, {"displayName": "77eURrNVbLQVJnSQ", "namespace": "Q2EmLK3icK7lgZvL", "userId": "BNjjQTJgCEv6ae3Q"}, {"displayName": "1DStRzob9y7LHBIY", "namespace": "aawmDjrfYM7yazoK", "userId": "HhrcsKvzcbhTAAkv"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'bbMDQnp2gkUcWsK6' \
    --body '{"members": [{"displayName": "tu9xlF5B94MSsjh3", "namespace": "GmePiZWJNIfB1f1G", "userId": "Csiq9gNj5IFwshaH"}, {"displayName": "IUuHkhtVGk5KVUfP", "namespace": "BmhKu6MXUozGZ3Go", "userId": "SxdHIp6Knf7mArld"}, {"displayName": "4zOJ0KjkKwMrmrQb", "namespace": "f3D1veks0dKfugKN", "userId": "btwRE1gPotI92mZI"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'W0xIvdslxyj5J8OW' \
    --body '{"permissions": [{"action": 39, "resource": "DPFPtIVY3VFCPjhO", "schedAction": 99, "schedCron": "7L0FK1awykFtPJcK", "schedRange": ["pZiXtFR4Rdf6RFsj", "JSJHHOd5vPUS9o6u", "kwllnR6jfHG4SzdP"]}, {"action": 23, "resource": "sKdMybRotUKjHfy8", "schedAction": 5, "schedCron": "UVF1jqBdb7XWdnXv", "schedRange": ["0thXTE8hHrmLugDR", "akon3X06tQ8pNcww", "ZNZdWjzLX01IfJfx"]}, {"action": 77, "resource": "ZNuH66cdhktNvken", "schedAction": 85, "schedCron": "RVcXxPx4h9khS7us", "schedRange": ["s3HsHUzGZkJ4nRss", "0PSSUqaDJ0qlWybC", "9a5frjMxygDSU2ia"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'oVB1jn4d1PmGkEb7' \
    --body '{"permissions": [{"action": 57, "resource": "RznCQCWUmGydnE3H", "schedAction": 71, "schedCron": "fTGstaFhaABj3lXm", "schedRange": ["V0WQHbJvT3dueo94", "ndS1d33YIAOd81dz", "gx9s4wa0E2w3wiMB"]}, {"action": 42, "resource": "Q3ASK7IcBQ8ebdU5", "schedAction": 16, "schedCron": "AgoHA1bCoKhZqn2M", "schedRange": ["8Cau7UJd2Ft8vZTh", "jYgH5PL6VCPzOntC", "vz0lRccuVPV6KI17"]}, {"action": 83, "resource": "2b4ErJQDEZLRQIER", "schedAction": 90, "schedCron": "C8G5cMhw8QxytDud", "schedRange": ["QRRSlgdrwRimlOLU", "oNlIz3ocXE6qxV9J", "nLSd3syEV3L9BPvN"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Z9v7iz6gvoamliNi' \
    --body '["Tn4mtYoyxFp7ebk2", "XAF045bSaS7K6Yud", "mi9TR8RwDGaeKsYl"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '8' \
    --resource 'ALm2ZCSSEMGJbkhP' \
    --roleId 'Tj4zJEoztc4YrxoQ' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'pBEaq6fKNpbTH5sS' \
    --extendExp 'true' \
    --redirectUri 'jMezXxZF0FGfH8Aj' \
    --password 'IQART9ZQwSTcp202' \
    --requestId 'pEcB6zDrAzgQL8cq' \
    --userName 'Yy926K4DJcg7FpkZ' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'mpfvfFM0y8W1omXz' \
    --linkingToken '9dBdvaCzRLKar4Yg' \
    --password 'dlV4jeMV5vC1R9H6' \
    --username 'L7p1i6I6NFKa9JfH' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'KQdG3x7OBMOAlnbV' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '3BIdF9goTHkBgYeQ' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'cfCvR5vtBNZtSSmq' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'lOmxtnPBpSSSi7Wx' \
    --oneTimeLinkCode 'KqifiiMkhdcDopOR' \
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
    --clientId '57jwbxY4NGBR5nvS' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'riVHiUt7vDOkuNCl' \
    --userId 'tXo9mRZE02joP5u1' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nBRZ7WpERvw0zirr' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'NIjrXHqkFbRuEDKv' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'cTHxyPbUdwlt2CHk' \
    --redirectUri 'ewAKUvZDuJmU3AJi' \
    --scope 'yKaXlGEFnGnQwCzS' \
    --state 'm7RLqlzqzHexCQrY' \
    --targetAuthPage 'mA7doQkzPksMoHiI' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'MQoPWOH3UZTdVdJP' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'SARUNu605DWSMB27' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'iSSgIAFnhWNakNtY' \
    --factor 'UmLAEwgYDhtgCJMZ' \
    --mfaToken 'fkWlAYQIRzck8deN' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'FTJl1Xigge8ppA1B' \
    --mfaToken 'LgLtlWhrdXkTi5LZ' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'UhaBwysBuTRuYEUn' \
    --factor 'fC0q3Ouckf6QHtW9' \
    --mfaToken '0RxvY41QgCggGL7Q' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GWAhd2BH1bRjUUeT' \
    --userId 'muj5pJ8eB0SrcgBk' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'u3DjrMwz09paAEMz' \
    --clientId '2DA4tdLQTg8WcyIA' \
    --redirectUri 'ZziVZqnbOU26N70P' \
    --requestId 'pMzHM05GGqjpCe16' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '5Ap63VsCjwMWcjvV' \
    --clientId '6796QkPMXbnInfdy' \
    --createHeadless 'true' \
    --deviceId 'E1muyhypi68iV8NZ' \
    --macAddress 'bQ9aP3TXFnC7nsTu' \
    --platformToken 'ZGzav7g2x9NsQraH' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'xGjgJrEZAjVtHkmR' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'MQjT3a1OstEVotWo' \
    --code 'hapnAc9AJZTHHJNA' \
    --codeVerifier 'GwF6DPSeZoxcGKDp' \
    --extendExp 'false' \
    --password 'cRYkHHrPKNrHEj9T' \
    --redirectUri 'wrx22C1gHEQ9SI4Q' \
    --refreshToken 'du5zbD5QFVrlzjIj' \
    --username '4YAv8iGWQaPnXgIP' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'nwm5fK361OcfqnCP' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'bxqbJ4PDOUXcWNm5' \
    --code 'Tws7Y0fKAhgV5f7u' \
    --error 'Vt8bZJXLG1YfGDkn' \
    --openidAssocHandle 'E0VvlexcyItCFcHU' \
    --openidClaimedId 'Lw9V4alnevy5NbwN' \
    --openidIdentity 'x2Npdb7u0ArHfSVl' \
    --openidMode '0pIIbiFE1JwrGxdB' \
    --openidNs 'UUJZJSuzwSCRRQNv' \
    --openidOpEndpoint '3MXASqxOw8qQdRzC' \
    --openidResponseNonce 'lakqaOzGtY4lG4Iq' \
    --openidReturnTo 'IJpXfr4IPyAsgnIe' \
    --openidSig '8azoAZdaBJ9JOduo' \
    --openidSigned 'RLS3EP2UYusU1flP' \
    --state 'dpu6lsba9hYbxkoj' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'HnIq4F4ihlbKAnbw' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '0Erv5luSnYt1spKd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'XKFx5lCG8dqwtkwA' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ClyRGNOBjBZAFo1H' \
    --body '{"platformUserIds": ["IdnAVIZzhmZafjNU", "5ujFbqTV2LhdC1xO", "j3GEUk3tyLKyWylx"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hY3J0VwmlOLFsZUu' \
    --platformUserId 'YH5ivkwMx09rYsF8' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'XSWkUzBWQIZtgwik' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5ZZlPqalMYq5q9zd' \
    --limit '73' \
    --offset '91' \
    --query '4IhM0EqNdptPAvTG' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "zp7F6EiOLWyHcU6i", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vAfXjH0ObNXyqPr8", "policyId": "SLkpKB8sIh0Lb5M2", "policyVersionId": "PXJC03VaBZmxcsM5"}, {"isAccepted": true, "localizedPolicyVersionId": "afVKQhlpjNpndgh1", "policyId": "6Gii59YKqn1z04IN", "policyVersionId": "mYvzNmqwWjFtAkmW"}, {"isAccepted": true, "localizedPolicyVersionId": "J04j7DZc8X6jkLIO", "policyId": "t6SCBOr8bqdb87LH", "policyVersionId": "WoiEDCrVVWEHJQdf"}], "authType": "raZScdCUzx5vmJ5l", "code": "EUfp2D1GX5EDIIOl", "country": "4q4Fjvawdcvk564I", "dateOfBirth": "TT3njfIoXqlQuQfP", "displayName": "YQjkvjeTP00rQ8oV", "emailAddress": "UmFg2SU1abcYPkaZ", "password": "OQttfsz8PbyuROhi", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'nYELX3I3PvS9qQBK' \
    --query 'nprEQUlvTpzRIFb4' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Qn1wuh5CnkkZa3yX", "X7WaMqxFlRe34m1C", "zjgySWuEksoCgkcj"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QtzuQkdpzYANyKsv", "languageTag": "ZlgQUY8J4VYdwqmt"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DpzsLOaprazIwTY0", "emailAddress": "WOhSebgUjSYsH5IP"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "IyAxR7aEzEBPmSfO", "languageTag": "bvJnIypixqWuhDz5"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'mdElP02GOLLU1w0z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'f8pZDGtbTzq1SV3Q' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qxaQAjrnpKIvxOiJ", "policyId": "yzc0sm5TXRQxHedW", "policyVersionId": "hkyhOkY3PbkWzZf1"}, {"isAccepted": false, "localizedPolicyVersionId": "UZOJM6oU48z67b1F", "policyId": "dhInDn0y8FYawsl8", "policyVersionId": "yoKVa5jjxEnmD3Gq"}, {"isAccepted": false, "localizedPolicyVersionId": "fNRU71A2qe4MUYiJ", "policyId": "QGEcvKEuziv9XsiU", "policyVersionId": "dFCDQJztFVg2an19"}], "authType": "EMAILPASSWD", "country": "wRKrJQCi0V7y9B0a", "dateOfBirth": "NsQKUllzwnNmR0F0", "displayName": "bp6TyQqQD2B5axRb", "password": "KPwXh1acKxkiccqO", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zyXcqvJ4yJ89KmQx", "country": "OZ4UkyO9xIM51Yxj", "dateOfBirth": "dP50ZdtuYKkZObub", "displayName": "STJktWeDF1Bt8zlB", "languageTag": "EBIz3Pedxx9SSar1", "userName": "mi83DEUkthxHhZuV"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "HAQ2HFl5WXCS2m1N", "country": "1CbK4HlJkxD6y870", "dateOfBirth": "GOHim1scpBuJQMvZ", "displayName": "oDoSWHEV3gZivYLA", "languageTag": "9A9parh2tRY3rcO8", "userName": "MUeqYCAlVMICza82"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "fluZHKQgfq9Zz1nD", "emailAddress": "1RfN0jRDusip1D7v", "languageTag": "pPR6TrjLvLVsSzFu"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JftHR2Mwg7B7TQoc", "contactType": "soko7iNOxMvqtOOJ", "languageTag": "tjpUC86jvxgEEVMJ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7kwnDhAPPV4wvZWx", "country": "ymeJ6HCwXVfNhE54", "dateOfBirth": "owOJ3ZCO8SyyJswa", "displayName": "Ai5Of6hQT1nb1lz5", "emailAddress": "FvhhklME7c5vPHVe", "password": "rYC1tn9Z89c3AozO", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "eHLrwJfqwtZuJscg", "password": "avrks1L4ImNPouki"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "E4lxfi75h4dzevjD", "newPassword": "Cp2ouS77q70NIYJK", "oldPassword": "HyJOyN4kqkELGw2C"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ZZGKozwmXp9Z4K6D' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wkzwOsCaPln3dTJB' \
    --redirectUri 'p600uBLVGXhj2hHY' \
    --ticket 'Xn0cXku3uq0EaBuJ' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'l3fSQsoIjfvNEpmj' \
    --body '{"platformNamespace": "BhEKxhmipUceBrhF"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZXOEpGpM1i66SpQP' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Bz3DTsHMWz0PdZ47' \
    --ticket '5WUJwMUpSbSdyOqQ' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'o2czKHxqT15PRsdh' \
    --clientId '4LOPTHffZufroX1T' \
    --redirectUri 'M8gaZhPPpdohGHf9' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'p26aGXTdvvwjv7Va' \
    --state 'bZy9yxUuAB9PWvgY' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qyMwp8i0UeptWMsu", "emailAddress": "zOEL6upEHYDejW4R", "newPassword": "NfBUVLw3FUaVvOoQ"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bPAQcL5vzwYSPGXC' \
    --activeOnly 'false' \
    --after '6ZVLqMxRlIQ2vQMv' \
    --before 'UD7fLawPx6m8NCVK' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IWxGdqNPu1hqL6gG' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bIOR1bcenuHxtgdf' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OTAYNAv0cFsbWmdE' \
    --after '0.2399134424487367' \
    --before '0.1309928741531583' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wkfhtAgHaMtSahdA' \
    --after 'Ik9sOhRu02Wg3KPq' \
    --before 'B6D0h07Yb0Rr38X3' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '4cKr4pvr4KZ1eyFQ' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'KW1kQtWSeThFGcft' \
    --body '{"platformId": "DTlEGUt7WmpFrXCr", "platformUserId": "G9jIeUQ1eDoKJroH"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '1sV2jQZuxK5aGqwO' \
    --body '{"chosenNamespaces": ["o3aQffmfsz5SSCcC", "LXZKMG2zd62rYIIP", "6mGulcJ1vCbeyahx"], "requestId": "689LE5jjxZK5e2SI"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g7zM76RLE00DyamP' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z6ENIcIBGU6VJQCS' \
    --password 'zWqJmUOT87ylQRlV' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ubwa7lbjrT4Nhsic' \
    --before 'CQF1ZS6u6SIkdKPP' \
    --isWildcard 'true' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'eCTdQVtp8Ev262CF' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '72m3MACFFsPeEQiy' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["poJYYEU0ALPehgmT", "N7LzKWTd14c5Lfzg", "UaRxgm3KwcH53vKp"], "oneTimeLinkCode": "8SEK8SfWcOWTVT65"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "aYpeAozizUCh6D6t"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'RPyqYlPTAIN38Tsv' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'asz9H1DXJKvNM0me' \
    --code 'SQkXJe0UTb8LhW7U' \
    --error 'hEP9LUFDWWMiTnqo' \
    --state 'XEs9Gcvw7iKm1D7Z' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'kOHnVu9RVUxWe7Xx' \
    --payload 'BxXSIRnBkMBXRzCb' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'mqB0t28KstT2BBIg' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'DMr9hkSFqIOcIw5e' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '9KzyGR9qBne1ZJtF' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'LZfQ792HE0aEvxG4' \
    --endDate 'u4Mcv9PsQPO8Barw' \
    --limit '100' \
    --offset '99' \
    --startDate '6dKdcjqU1rx2KGxB' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oYaYjyJZbCyEJS6H' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "oQMCJKZiZRZOjZiD", "deviceId": "hmTWFijyq0vzNwL1", "deviceType": "rJTaCoLgcDZxJYCD", "enabled": true, "endDate": "DtCysvtiUPQOMKSN", "ext": {"IsUUhwdbf0raAUgZ": {}, "b6hgDoU32TLHEw8C": {}, "maUpjn05pOC8jrIU": {}}, "reason": "sNt4dCCQWLxW1Gtq"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '9WONuSDZr5ud0qao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Cz6cc1oXvadBYgeF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'wCvVqD0ZoFEW14jF' \
    --startDate 'o31hszDlAXFMB5JV' \
    --deviceType '7bNFOVxdxswUfd02' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'AsR5onSIJJEUvFE6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '4v63Flb9D0TqC2QT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'VVqkjcESl0APRvsW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'CSner3I6qRdRNx0p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 19}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YEqAneH2oB3u1dfV", "tR3xks9mBHSZ4iRx", "IBOE2LNZv9QZLgJc"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'X9P3SIXOzd0kVXb3' \
    --body '{"avatarUrl": "NAxN9c9Olv6zqEyF", "country": "Olmr77j078ttaJKw", "dateOfBirth": "GHhllfBn7eMa7qx1", "displayName": "2xlGS4ppO3mQ3EnX", "languageTag": "qliUvakCNG3oWL9F", "userName": "u3ugfrzdo6fLr4FJ"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'IgJ4kkaRiaZHEJTm' \
    --body '{"code": "t9UO4xCXgC9ysWjj", "emailAddress": "n5rmwrodQe3Zrhsx"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EDvvcdB2HBcwhPMU' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '0kyjRiYufCNGX16n' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '4OjKsxUkw3LLE4b4' \
    --body '{"assignedNamespaces": ["DsgSXDee7QyzPcOj", "3LCp47YFBYHbFMkx", "OBBP1dxUche7EZSg"], "roleId": "Ff606kzaHkm7wBAu"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '0Rjp9OepwvBORG0V' \
    --body '{"assignedNamespaces": ["0TDNZuHGbvz5rgjI", "6qAeanNcpJfYQV8M", "N6pqabASI4L8w0PR"], "roleId": "vuV7pwuWdn6hYNBI"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HwM2qx2HflBxbaaI' \
    --body '{"assignedNamespaces": ["uZMakYvpnYbENXoM", "Nwp3nQzWnXEbTSEr", "vilLO3rNwePBrlKm"], "roleId": "p0fJwNsmdre60JNP"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '44' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "QZieHQiK6DCYBWhp"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'KyBEJCNmaNmV827e' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'nWrF7dofylHHcTzS' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'XPS8Z9DtmgE5FClu' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "2BWaDwOzHkJNi3xq"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'vDFoZr4MrHepZtQX' \
    --body '{"permissions": [{"action": 24, "resource": "ZoV6JLNodMfjTgDZ", "schedAction": 88, "schedCron": "s5i8PqR7FefTLTdL", "schedRange": ["czE4vTxHdehjCEXG", "H5SWuKpqknVYRZjW", "l8o4KXVua7KWbm9G"]}, {"action": 25, "resource": "RRrh7BKvJoFUT3Mn", "schedAction": 38, "schedCron": "A62DuVjMXDoHupAD", "schedRange": ["hyHZKnMaGohkj4PU", "RgAkP4DidWBnQrmJ", "M4w3tgy69BgVa8Vq"]}, {"action": 72, "resource": "iFWHSEl42yQvK0g2", "schedAction": 95, "schedCron": "2vqtnDg6BxnYHtkq", "schedRange": ["Ojpjz0BCpupUBRAh", "bwr4Qstauh4ZXhZV", "3ei2MJXNNepAr55a"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'QczJO0BW3Tw5B8Gr' \
    --body '{"permissions": [{"action": 3, "resource": "dXFMxS7ruieKJU8g", "schedAction": 62, "schedCron": "kS3KNvFGfS3BHq8E", "schedRange": ["YkptOKH4FX0HSBNG", "UEyIUaGqXx8j8KXa", "6YtrVlhgoAE4r2d2"]}, {"action": 85, "resource": "D6fbCzu4jNC9SLkI", "schedAction": 57, "schedCron": "ugaWoS8LtiSOR3Ah", "schedRange": ["8belmybyHfJYAWOu", "dVtXAsj6FdoTr40G", "hAzExdbpYRdcGCr7"]}, {"action": 19, "resource": "mF5F4IzhTBx2XLSJ", "schedAction": 70, "schedCron": "SnD5maEf8UATc5W3", "schedRange": ["h2ZTxjGEwh6vgWd8", "2pFdByAwPebWykGw", "LTBPKir2ME9w8Hwc"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'TEyHcCgCMGL14clH' \
    --body '["otEYUIfCLLMdPJf7", "SSvaNGAXG36ghuTZ", "D1qUHuBZjp2qR4PX"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '0rWwIscoxWPQGadj' \
    --after '6nR1VSx5J9ugqQly' \
    --before 'aLGfupiDth6nCNwS' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'TJT55qnWex5l3BOo' \
    --body '{"assignedNamespaces": ["cIFNQ6L4aBiaRbWj", "O0jzzTcmgwoZyzPt", "wv2ZSNfXdbRlrXCn"], "namespace": "WvzhlIF3Jj33l1em", "userId": "JZWtzAJMUp9Uerca"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'BXe5oJXLLL9AfPSj' \
    --body '{"namespace": "I5NQ3R2VjETX8N48", "userId": "uTbPheegvByppuDS"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["W3PfhTiU91rcEjOx", "GhWLPRIQDquEnFtE", "QMPtfdU0v3K8cFLP"], "emailAddresses": ["Ir0UMeiVICN54Ddn", "5dGnPV7Ej6vTS6vP", "a8mQ0fEJFG8WS7qU"], "isAdmin": true, "namespace": "qqC9EQufA3EdVR1p", "roleId": "dD4nT3heaO60XD5i"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2pvSnqPczrWTOcu1", "country": "0Dw2hAdlvkcUVBSw", "dateOfBirth": "ZdNaumFPeYgrPzYH", "displayName": "e0sph57Y4N0lqXvM", "languageTag": "z53KJtZaG16QnP8l", "userName": "3Bt61gy1WbYvCsrc"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'vmOURaRYemG64B73' \
    > test.out 2>&1
eval_tap $? 315 'AdminEnableMyAuthenticatorV4' test.out

#- 316 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 317 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyBackupCodesV4' test.out

#- 318 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyBackupCodesV4' test.out

#- 319 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyBackupCodesV4' test.out

#- 320 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDownloadMyBackupCodesV4' test.out

#- 321 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminEnableMyBackupCodesV4' test.out

#- 322 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminSendMyMFAEmailCodeV4' test.out

#- 323 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyEmailV4' test.out

#- 324 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'Cu2lPu8oTyJASobq' \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '3xjPViNh4BtBe2vu' \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "hCmelEXLKvmRdBsX", "policyId": "FMw93JLJGfN7s70z", "policyVersionId": "zbZ3WKIizT9noY7a"}, {"isAccepted": false, "localizedPolicyVersionId": "ta9GYAccxCBEOOqi", "policyId": "PwLjmOdk4OWjvrqF", "policyVersionId": "1z2cEghTWA15147Z"}, {"isAccepted": false, "localizedPolicyVersionId": "t8X4k4PKNf0Fl0ZB", "policyId": "TBnFOuqpWCcM6FlC", "policyVersionId": "xROXhmnWDiNRShec"}], "authType": "EMAILPASSWD", "country": "WIgA6iNiTyN4n2Fx", "dateOfBirth": "vKEnLStYSK4jgZcX", "displayName": "nBAlFlyvsHtQJSxS", "emailAddress": "r21oKU1SLEqpdWm9", "password": "drn64npbBL1zxYYo", "passwordMD5Sum": "9KqgVL5yMl4Hkl2h", "username": "cbEm3bdX4Ljqvnqa", "verified": false}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mhw1ShAYpcRcVA7U", "policyId": "V30CmZia2Ohezz8f", "policyVersionId": "PQk7zdkjDKkpRmK1"}, {"isAccepted": true, "localizedPolicyVersionId": "AflMeMoWGVFryIQO", "policyId": "D5f70GAXkpBmteHt", "policyVersionId": "OURo7d5EXddXBQsW"}, {"isAccepted": true, "localizedPolicyVersionId": "xvpoRjftXr3Zy6IU", "policyId": "6LResruQm8F6mWC4", "policyVersionId": "JtWaHlSiZDwmWbM2"}], "authType": "EMAILPASSWD", "code": "VfiEQwoHvD6wNSzZ", "country": "Elyf9mlOP7PKGD6R", "dateOfBirth": "KwYurqZeMmdachvM", "displayName": "Llo0T4wFKORIxPAv", "emailAddress": "07uG7sn86oa90Qhw", "password": "ptVpR7vSu9BYUq5K", "passwordMD5Sum": "GWLBB2JOYcF1Bchs", "reachMinimumAge": false, "username": "xYRnQwgfWneG5key"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'OkdgiWtoSpz1nKrQ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yxEY1ixl79sokVFj", "policyId": "sZ5XKq0LvyAEH3lS", "policyVersionId": "3q3Q8qwPhnAjDmbZ"}, {"isAccepted": false, "localizedPolicyVersionId": "T0naY3ZDV1lW7MdA", "policyId": "eev6SyFmkHysUFWE", "policyVersionId": "FHSksF7s9AgrH2TB"}, {"isAccepted": true, "localizedPolicyVersionId": "fX7hzOMz0qOBmJe8", "policyId": "w0YD22F3tBzp6Ijp", "policyVersionId": "KmGG7MLY5ddgiVJD"}], "authType": "EMAILPASSWD", "country": "KBmmVc3I6dchqKnx", "dateOfBirth": "R9is1HkvOWMdM7Bt", "displayName": "klHJrkTYqFSJ6sWe", "password": "HgF1RJm6UdkYR333", "reachMinimumAge": false, "username": "UR5q8eDivOdttVH1"}' \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "I4p332Lh8mWf3oVH", "country": "mN4fmzNEffaJyGP0", "dateOfBirth": "13dMI0HeapK6R2XZ", "displayName": "xUqzTsQVm082SVV3", "languageTag": "tiu1mTxH7QKasrPt", "userName": "RlefgjzqJLKijmue"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yAtRZbDh2BMo7fFF", "emailAddress": "nHRTkTtas2jtw88M"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JaRFPN33TQXY83MF", "country": "NUGKtDGOibXiNcLr", "dateOfBirth": "6BVB0u11VrRfTzRK", "displayName": "BqjIb98QD0V4vZWc", "emailAddress": "6Na5PERysOhqGrao", "password": "I0aq657FBAimHHzl", "reachMinimumAge": true, "username": "fbpVQ81v2CtG1Zwv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "fKq3P8mHcCLC94V7", "password": "cqmupyr60TIHflvf", "username": "kHVlhgyMkuSQVrQf"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountV4' test.out

#- 335 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicDisableMyAuthenticatorV4' test.out

#- 336 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'h6DaMybydAkFxg9q' \
    > test.out 2>&1
eval_tap $? 336 'PublicEnableMyAuthenticatorV4' test.out

#- 337 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 338 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyBackupCodesV4' test.out

#- 339 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyBackupCodesV4' test.out

#- 340 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyBackupCodesV4' test.out

#- 341 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDownloadMyBackupCodesV4' test.out

#- 342 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicEnableMyBackupCodesV4' test.out

#- 343 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 343 'PublicRemoveTrustedDeviceV4' test.out

#- 344 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicSendMyMFAEmailCodeV4' test.out

#- 345 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyEmailV4' test.out

#- 346 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'D0f2BcfkpUAGYWWe' \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyEmailV4' test.out

#- 347 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyEnabledFactorsV4' test.out

#- 348 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'OLEkDIOHNtyffX9Q' \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "FcDyPH5BlOoDGzUf", "namespace": "54D4csx03M2QeXQH", "namespaceDisplayName": "Czb7IsA5UJS8xTCg"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE