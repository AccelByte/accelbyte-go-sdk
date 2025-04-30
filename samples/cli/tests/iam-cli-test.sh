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
echo "1..435"

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

#- 108 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "1Kn9VJxEO6CKjBv2", "groups": [{"group": "nyNQxl9pdonv0Tqh", "groupId": "OvKNx11gRMaMXOIT", "permissions": [{"allowedActions": [62, 49, 6], "resource": "NQi0gOJTcngQyCly"}, {"allowedActions": [22, 37, 95], "resource": "48oES3iXxeXcPGkj"}, {"allowedActions": [64, 89, 4], "resource": "5BL6lGLmS8cnvGZB"}]}, {"group": "kz9lCje1dEPIgavX", "groupId": "BcECs1Vs5CBHBk3X", "permissions": [{"allowedActions": [0, 13, 40], "resource": "Kag3N1ZFZDJa7M7H"}, {"allowedActions": [4, 100, 19], "resource": "kPihfb8CvzKKIYS3"}, {"allowedActions": [72, 15, 14], "resource": "hKecwIDHrkmJvSvd"}]}, {"group": "gyY907dzpO3qSj6Y", "groupId": "fcjF2nqETPNebJCt", "permissions": [{"allowedActions": [90, 61, 71], "resource": "aHWBawUIz8JrtnBo"}, {"allowedActions": [29, 51, 91], "resource": "fcQZPG3O5WNw6Jz0"}, {"allowedActions": [80, 77, 15], "resource": "0RPX5j8jo0rfWiK9"}]}], "module": "z3v5jbG3gE3JPZZa", "moduleId": "5MKMuUaBAgNwqIyW"}, {"docLink": "QFtFVejFidgUOQCT", "groups": [{"group": "1bCqr2jlivZGxks1", "groupId": "t4TWzYYzjidPbyxf", "permissions": [{"allowedActions": [38, 30, 53], "resource": "6dHVMdwnjXtlDFEl"}, {"allowedActions": [75, 100, 14], "resource": "42sG7RI2ZWT3gFd6"}, {"allowedActions": [30, 5, 68], "resource": "PH9cxpT4fbY6Tc1H"}]}, {"group": "LtDi2rQSrmpTChVt", "groupId": "ODToDvyFgak7UfZf", "permissions": [{"allowedActions": [58, 89, 3], "resource": "T4frJdJ4WGmjZgqE"}, {"allowedActions": [82, 18, 99], "resource": "XdYq4YzP8X2FKkQd"}, {"allowedActions": [1, 0, 3], "resource": "seUFhzT84qGhtHvn"}]}, {"group": "2X9eWPEJTOLh4RTL", "groupId": "UPsN6PBcVAeNmN3N", "permissions": [{"allowedActions": [74, 89, 87], "resource": "OYKw7xcDCRsubc52"}, {"allowedActions": [1, 31, 34], "resource": "dsvc8REwAwY5m34l"}, {"allowedActions": [67, 81, 12], "resource": "gk0BdQYZZg3ltCE7"}]}], "module": "XUPAUJW30IyzEikZ", "moduleId": "aZWSR4PlrrwNxs2X"}, {"docLink": "fzWtQH4fYUgjOluu", "groups": [{"group": "4jlnswjDb48y1EOy", "groupId": "b4f9yrjfkRqcIlOg", "permissions": [{"allowedActions": [10, 25, 76], "resource": "3j6wtGF8arxM5B4c"}, {"allowedActions": [92, 80, 79], "resource": "Z0kHBiDq7Y8GKadL"}, {"allowedActions": [14, 43, 98], "resource": "X2MwZjpKFdImzXpn"}]}, {"group": "fuuY8dlwtcdGnQp5", "groupId": "RHcOvQ5xTXYBLwpp", "permissions": [{"allowedActions": [76, 25, 83], "resource": "eT1S3vEcWrAA3pLK"}, {"allowedActions": [58, 38, 87], "resource": "teGkswWtKJn1ByK1"}, {"allowedActions": [13, 11, 33], "resource": "yzSpYzwZB499rmAf"}]}, {"group": "ZVrxpCmhUXqfEUE2", "groupId": "1oL7tnqbO1pHtQTr", "permissions": [{"allowedActions": [8, 13, 34], "resource": "62Es6t3KefGsfw8h"}, {"allowedActions": [18, 69, 0], "resource": "wkBLlxNzfHHwaLPB"}, {"allowedActions": [90, 86, 27], "resource": "GxENruIie9W0DNi5"}]}], "module": "mvpoLFYKjJUeK2BS", "moduleId": "65y12ghS0N0DmFR0"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "5q6CpQPt2khvLOOx", "moduleId": "02BTq9w0XKS3oUcQ"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteConfigPermissionsByGroup' test.out

#- 111 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 111 'AdminListClientTemplates' test.out

#- 112 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 112 'AdminGetInputValidations' test.out

#- 113 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "VRqfYhrQt1i6ktPr", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["g6oqztMIDivfvp8B", "V0bNJFENPEvLnaia", "OEyEa9PX3OOdz2id"], "preferRegex": true, "regex": "HADRZltFRl6gvBEX"}, "blockedWord": ["yAeOQrsjB0GtgxkT", "wm0SK8gUEUo3jQyX", "DUJ2Y1kcUah6Wi6H"], "description": [{"language": "P0g9npJYs0DOpMkT", "message": ["ccXsyUi46WzaOHbs", "W5k4WYOHsAYnIU8s", "MRiQRyyFDDScv6F0"]}, {"language": "odISOoo822FKv5Py", "message": ["g9UEwQFKyWHLo6AV", "2ibYgI8TzK3nQE1b", "kUWIEz2mZDZvjGI8"]}, {"language": "MNZwIVvf3SR78Sza", "message": ["fiVAQ03JsdDQdh9U", "N8g1mPPDvyvuE8Ru", "Oxx2XKvWJxGpONTk"]}], "isCustomRegex": true, "letterCase": "3Jw3v1Zh9UaHw1Ki", "maxLength": 17, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 62, "minCharType": 47, "minLength": 14, "profanityFilter": "ZMNasAYZERBYBsXJ", "regex": "r8HZxweI6Ow92nW4", "specialCharacterLocation": "IMuSMSrC9BhwbxA6", "specialCharacters": ["PIxp9fDVA3Sw8s9k", "K6egVnq1BA04XTAV", "kVttKIJaYIUqs0Nr"]}}, {"field": "X49WTBHd4XOvaFkJ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["WWhoiOlSYXHVpXtL", "CDElKBhwLPGHxY2H", "mGvVMbU9uwXe3rmn"], "preferRegex": false, "regex": "9lTt6Xk2xL0nKr90"}, "blockedWord": ["6Grlrw5QmYLzHBzb", "EYXwXohWhFZqoLvK", "9GlBONEqxvRJYMXF"], "description": [{"language": "xff7Sa8o7pQE2tTf", "message": ["uGOQkkTMZDfDotPT", "UYkQTmTWqaV680o7", "8OMJqOgMuSj4JH6m"]}, {"language": "mD4tKDlgMpadOkza", "message": ["2Zu9IRZrgvjYTu7A", "dhHfMAFCQR3dQLXA", "JUgZgfxSOD0TwfuG"]}, {"language": "xWJ7zGR8k5f0beKQ", "message": ["hC4Qaak34ABgyh06", "4EHauhRyLauqBooi", "u9NXEdMKJtarGYQe"]}], "isCustomRegex": true, "letterCase": "LRDor0KUFyh2uPZi", "maxLength": 18, "maxRepeatingAlphaNum": 77, "maxRepeatingSpecialCharacter": 30, "minCharType": 40, "minLength": 61, "profanityFilter": "ZOwUuJcbLFGR21Wb", "regex": "aV1oXbHLMmeRcIb2", "specialCharacterLocation": "gIY6YhQtBkZEj75p", "specialCharacters": ["DvEeZ9WFAjOmk0R6", "Biwy7cs7XkuJKnNr", "v28p9yFClIpBFN2i"]}}, {"field": "DPlENQXNljLVaSjd", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["1av9O1tiSswBjRWq", "pik58iH8gKGrrxYQ", "xdY3NRr5vD6eQNoT"], "preferRegex": false, "regex": "VJVTWu7cHUJWke5F"}, "blockedWord": ["qXnjBrIKvM6nr4oz", "W0bpGIM6WLgmTdZx", "ar55jVHX5kDJB7Hy"], "description": [{"language": "X5c2urGyYmINATEE", "message": ["Yt3M8P1WiVVXdpIB", "5BRRCjqLo1QxNdeV", "tdupJSUEYS1xKelM"]}, {"language": "WkeO9Tc1KDnEyOYO", "message": ["WpyJNt2owGVvrsQd", "hWkJzst9LvphDE8O", "qP7K0Jr9wcam1hOZ"]}, {"language": "mcAlZfMTUL2EjG37", "message": ["FBsbi1xmULTXdDxK", "tSOHZFspiQgTr9T5", "ITVflGHA9uYZi7t1"]}], "isCustomRegex": false, "letterCase": "IgwEQ0TsYydcKpfc", "maxLength": 76, "maxRepeatingAlphaNum": 85, "maxRepeatingSpecialCharacter": 12, "minCharType": 99, "minLength": 26, "profanityFilter": "sYDdeizLSQRV8wRW", "regex": "Hnep3alF2KTz9JxD", "specialCharacterLocation": "OMxMkFP3AJdUDXfI", "specialCharacters": ["XtH0FFzUOzxPzEfy", "DRA5GUD2vDHgsYr0", "aJAs79TG6d3XWvF9"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'eU2lqsPQhWdaWyMD' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'vKDLFnAXzNlmyJFc' \
    --before 'KpiPZlWMLsaq06OT' \
    --endDate 'ymKgS6EqpnuSGky5' \
    --limit '54' \
    --query 'OWrT2dzWIl3hy5n5' \
    --roleId 'd3rZZrxxFyPLYuFQ' \
    --startDate 'GpHRcs2vlCzt2WjG' \
    > test.out 2>&1
eval_tap $? 115 'ListAdminsV3' test.out

#- 116 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetAgeRestrictionStatusV3' test.out

#- 117 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 92, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'as4L3n0KSKBrTDDR' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 75}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'tsIbpJnTm72DXeGw' \
    --limit '97' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "wXkiN9MqCY2aizMs", "comment": "BD7mQlQLb2QfsapL", "endDate": "vnJlDmYzGbY4Fewi", "reason": "TukLce2iJTvtJLF1", "skipNotif": false, "userIds": ["uLTVq2wouP7d9TgV", "Qwox974v1irqIrMC", "QvXoEkf2aRRKBc1h"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "OSpdBsLGUS4rAHUS", "userId": "eXn5b8olEr0GBdgW"}, {"banId": "eOkoi0Gx36jDTZVy", "userId": "autkus1VbVnokY6t"}, {"banId": "ZLii01sJXFnj3Ers", "userId": "40FEmO0BLE5R2DX1"}]}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUnbanUserBulkV3' test.out

#- 123 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetBansTypeWithNamespaceV3' test.out

#- 124 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'uE5heiWovm6QUR2A' \
    --clientName 'OBN5YCyXokPOPwBc' \
    --clientType '5jeb5I0g08wMqr1g' \
    --limit '98' \
    --offset '67' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["SxRUilanvOXn5URo", "W9w3pDmHoNVFCW4W", "Hg0ELf1LWmISDif4"], "clientUpdateRequest": {"audiences": ["urWYvclaLXSTLFKz", "F0SUDMD8IbQRpfyk", "TaipQ09mNefQkAKu"], "baseUri": "fBxGVEtNYfgbkT9f", "clientName": "6lmYT0NYz6rUUMp7", "clientPermissions": [{"action": 72, "resource": "jUJEF0Jeg8ItnJs5", "schedAction": 12, "schedCron": "KtMJPq5jAdYKYEQt", "schedRange": ["zgUD33bItkEmrOk6", "6PM8J7oFHcCE09V7", "qf7DW4YxfzgxVLmM"]}, {"action": 0, "resource": "WV4CKUB112qjbJbV", "schedAction": 60, "schedCron": "fYk7e3WF05xJ1Oxj", "schedRange": ["sOnhr5GgK5UEjyYM", "3R7ubUQA5HiSWZuC", "KU8FKZuCM8jUTqUv"]}, {"action": 16, "resource": "Ygvd28BTQx2Km9RA", "schedAction": 15, "schedCron": "ShM5rZfDsLsgjhm3", "schedRange": ["1XWZZIV5ghclMJxg", "orpabeZyiTL7IGlo", "l5B1rHDghXyG1Ebm"]}], "clientPlatform": "ZokwIwnQTCE5w4xQ", "deletable": true, "description": "54YPkNjB8Potwb2R", "modulePermissions": [{"moduleId": "lhhosak1ho58cef5", "selectedGroups": [{"groupId": "LHGzHdXIh8E89RNU", "selectedActions": [46, 48, 19]}, {"groupId": "CENj9mAkBCoBxSHD", "selectedActions": [50, 28, 78]}, {"groupId": "5hOTQFWrEKx4yqF4", "selectedActions": [37, 11, 90]}]}, {"moduleId": "Qhboiq7dT51JUzbw", "selectedGroups": [{"groupId": "63WPxr4wfttoyF2m", "selectedActions": [60, 41, 15]}, {"groupId": "Fd1iZ53OjDwt6aSp", "selectedActions": [6, 24, 4]}, {"groupId": "OGF4gwu5a363oHFi", "selectedActions": [57, 43, 66]}]}, {"moduleId": "LPxUK9TVtenrLBUg", "selectedGroups": [{"groupId": "YrE28TDMmuJDztcs", "selectedActions": [10, 26, 27]}, {"groupId": "MPnaEB6khhpe7Ukl", "selectedActions": [51, 84, 84]}, {"groupId": "G9skRcTLztnwX2sL", "selectedActions": [26, 82, 85]}]}], "namespace": "L44bFRfiaRuiz01A", "oauthAccessTokenExpiration": 90, "oauthAccessTokenExpirationTimeUnit": "mKQtTMhwLLBMsEGn", "oauthRefreshTokenExpiration": 68, "oauthRefreshTokenExpirationTimeUnit": "HYG7GpJrMu5oV84I", "redirectUri": "1rN9s0QSJJ2zCcaF", "scopes": ["yFX8X7qZg1iHo0xu", "spNgf8D9ko98COP8", "JZqELfyGOYESHEAe"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["csHVMEt8vyVkAvLE", "SPHWF8MDdEdlXizW", "F00GywZ4np3oAEsR"], "baseUri": "iLlLVcy6m1ZFIgfI", "clientId": "XIyIytkfFJzszniL", "clientName": "lWBIY5tpC9KXoEM7", "clientPermissions": [{"action": 43, "resource": "yosJqSbpXqFRjTik", "schedAction": 5, "schedCron": "Unudv9mXiXmdT4Vm", "schedRange": ["5CzwzGLYFbKHmOC2", "9Iay4zWAUD9M6kGK", "VI8yhHU92s6zYhzD"]}, {"action": 66, "resource": "QAhbFFwlzmF6tsH9", "schedAction": 53, "schedCron": "i3Jm76OHXwMdShkZ", "schedRange": ["01n6dqjr9ofF04xS", "0A2KXyUghMANGV8C", "CFEctyLG3ffAnvQk"]}, {"action": 32, "resource": "1R1iMvdoRMX1q1yF", "schedAction": 74, "schedCron": "vssWGLXzQSoamwKT", "schedRange": ["hMev8QyEjLM1M9pr", "syLDqql79NN456iD", "M1Z65oBgZRv2FPhp"]}], "clientPlatform": "gQuVfEuMb0LpKXgp", "deletable": false, "description": "t1xVeljt42JyMNu1", "modulePermissions": [{"moduleId": "DupWqP5No9fI0scW", "selectedGroups": [{"groupId": "2NpvocILn6K9f2Hb", "selectedActions": [17, 88, 83]}, {"groupId": "qoX1Vv4pZThU7tz0", "selectedActions": [24, 34, 64]}, {"groupId": "09FMBagrAus0S6kt", "selectedActions": [89, 32, 6]}]}, {"moduleId": "iYiP22PRU8ut1BRT", "selectedGroups": [{"groupId": "mUzMBDtSyfymBEkD", "selectedActions": [45, 20, 63]}, {"groupId": "tWcXrqS9UwVQrCUz", "selectedActions": [65, 8, 68]}, {"groupId": "AHSFrTZ07QGwWKDe", "selectedActions": [49, 40, 84]}]}, {"moduleId": "y7NL9xaTXSlooNdM", "selectedGroups": [{"groupId": "1G3Q6LHAOiYk67uv", "selectedActions": [38, 64, 39]}, {"groupId": "aDavn8vHBV0uHDV3", "selectedActions": [92, 100, 62]}, {"groupId": "WsiCcWegP8JqDCQw", "selectedActions": [52, 51, 42]}]}], "namespace": "GXv9lJY5i3DnIx4I", "oauthAccessTokenExpiration": 88, "oauthAccessTokenExpirationTimeUnit": "0EKN9bbJmHLadlzJ", "oauthClientType": "qkH1VjJARgrKiFcE", "oauthRefreshTokenExpiration": 49, "oauthRefreshTokenExpirationTimeUnit": "XiFJJUAqdbUlnQQy", "parentNamespace": "6mQmNNoCaDGQ17Y0", "redirectUri": "bATjBBIEhIaaCFVY", "scopes": ["Tbj3vKZlGiAmkp9c", "Oj1Xzu3WaxafOxzw", "aehz5FrNdb4bV5MK"], "secret": "87Co4egSNIOdvT33", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'QTy7blUkdYRsfJa4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'lWiDrMhGXp7OglVd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'FIKXBuXnfQ4gtRLy' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["daV8zprfVrXofBuY", "fPQhgYMqz2dnpYpD", "fos06OjR3rwMjV3g"], "baseUri": "9OUa9HjasJrOtrB8", "clientName": "G2rSDX0nBs8YuVLl", "clientPermissions": [{"action": 15, "resource": "ojtv4Ro4MdHCu5hA", "schedAction": 71, "schedCron": "Jmf7BXsKnWN3LpSA", "schedRange": ["i6gODxQo0p2uPIfQ", "2sYuc27zV3eQdmG1", "bt4xXEDfd4tbb3Jp"]}, {"action": 43, "resource": "IR5zhhwVHsyvY9nF", "schedAction": 17, "schedCron": "diJWeZhTlYYwsDAb", "schedRange": ["2XtU9UX19duxgDMm", "MMavSdZCAjgBjlHI", "Q4vzL1VE5aEKV2a3"]}, {"action": 8, "resource": "Q1XiuNQ7SwNGp6X5", "schedAction": 31, "schedCron": "kPxstBEWF94G7HOH", "schedRange": ["ETGfvnO9sJjDEznt", "R62w8queS28whJia", "JSizeGOHvZLPcPfA"]}], "clientPlatform": "Z0784ZJk8O8PhNLf", "deletable": false, "description": "6P0J2AZzJeuAz8o5", "modulePermissions": [{"moduleId": "8NdYmCz4OMSG87J7", "selectedGroups": [{"groupId": "dCwW8TeRD5LFo2ft", "selectedActions": [87, 9, 45]}, {"groupId": "UoE1dfRzXVkTckfz", "selectedActions": [1, 17, 17]}, {"groupId": "RaxIavLuLX0fGASN", "selectedActions": [4, 91, 65]}]}, {"moduleId": "KPElNangWE3cMnDJ", "selectedGroups": [{"groupId": "KjBdFUQ9HQ7t5OEL", "selectedActions": [54, 0, 87]}, {"groupId": "izug0M9Ro6DMWkzB", "selectedActions": [50, 79, 72]}, {"groupId": "YSUBlJNEQfbBDdr6", "selectedActions": [28, 26, 40]}]}, {"moduleId": "rQ7BDGsN93n9cyYL", "selectedGroups": [{"groupId": "N4DF6w7aMNGWyLE3", "selectedActions": [61, 12, 37]}, {"groupId": "ogO4k12HbYjbIdFJ", "selectedActions": [100, 44, 55]}, {"groupId": "4w3KYjPdJHzsWAhy", "selectedActions": [8, 62, 66]}]}], "namespace": "Cn4GuubXoZ6to52h", "oauthAccessTokenExpiration": 100, "oauthAccessTokenExpirationTimeUnit": "9NPFCCWYc3tvUe9N", "oauthRefreshTokenExpiration": 20, "oauthRefreshTokenExpirationTimeUnit": "oTFAQy7BSNHWMWaa", "redirectUri": "2RiVGJ5DQjc9FBMp", "scopes": ["Hr0fW06DIxsIqByh", "1CuxGPUkLNBHALSa", "fajKtqmL3YIgfXax"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'G6FvcdKLUdVAapia' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 54, "resource": "l8qfbYc51ThDBrUg"}, {"action": 78, "resource": "Dn0pHCFdMjTGdhO3"}, {"action": 1, "resource": "NeMvR7F43DDBbNhQ"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '4pPRZ9AA1kfAZt29' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 8, "resource": "OEcCY2XGR6tBaL63"}, {"action": 63, "resource": "tBjbg8MUP4K6WnyK"}, {"action": 53, "resource": "T0mWTeFvtsjJBiqM"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '92' \
    --clientId '87537kdo3qnke1xa' \
    --namespace $AB_NAMESPACE \
    --resource 'iAJWhk5K9tIZeoRP' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'RyLoCuUKXwyJ5Frj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryListV3' test.out

#- 135 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetCountryBlacklistV3' test.out

#- 136 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["CdayImmD1ZbWO8Tg", "U5sD9DYzT8YHTYJE", "DJiwKa21PqTHh3Pt"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetLoginAllowlistV3' test.out

#- 138 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "roleIds": ["lFUUuzBOK7ez1okv", "qArBtQSy1UH6Oq7E", "84BQYXDL1JbUn1hm"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminUpdateLoginAllowlistV3' test.out

#- 139 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 140 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pLW3qGTa5dXgySia' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Lmgi4RvuQaUMx5Re' \
    --body '{"ACSURL": "T4QDPfIj9BuNKkgq", "AWSCognitoRegion": "ESorxYjBd9W6XfGw", "AWSCognitoUserPool": "zYD0ptuWQFaSH2up", "AllowedClients": ["IEQjZyauCJLQEPG6", "UaHZ1TQnOS0Z3ouy", "v1mvZKQOF63ZYbaY"], "AppId": "azVXWS4j00EjXZWI", "AuthorizationEndpoint": "sWeSlasuLnyPhWek", "ClientId": "FiozS5TSh7SdQbwu", "EmptyStrFieldList": ["FrOm8KIco6k65QwX", "c1wRHg2TrmLRshpU", "No1WhFDn5hAXjNvv"], "EnableServerLicenseValidation": false, "Environment": "UefNi5u5SxLUyq2h", "FederationMetadataURL": "02dklndKJcmwcWkl", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "PYMz3qAQ42DlyVWC", "JWKSEndpoint": "TCGaOMXJVkEasPCK", "KeyID": "PlMHrZQ385Te7osN", "LogoURL": "h1nzg7GfrmzYyvUX", "NetflixCertificates": {"encryptedPrivateKey": "KtXahpbkrQyHTR4b", "encryptedPrivateKeyName": "TZDW6wxIKL7VvrD8", "publicCertificate": "tzbyxbuczNVBcEyl", "publicCertificateName": "ydOtCiU9h7Cwsnbh", "rootCertificate": "YkuU4EvkEwUx0xT5", "rootCertificateName": "GHMnKmL5p1kExiqX"}, "OrganizationId": "SWUS8jW3GJVnWLMu", "PlatformName": "c712cDe8K5wL4Ede", "RedirectUri": "ZuI9QsSn11PwOHD5", "RegisteredDomains": [{"affectedClientIDs": ["SV4tXf7Gx0u84ESp", "2Ml9IFltMUQigAaE", "379q1w3UxAJTRJa4"], "domain": "XeF9Jlv31sCIE9Dg", "namespaces": ["zacAtK5Bz0emLm1o", "Xbb14IKnVXiJsaWj", "pKUUALTnxgKVlxXz"], "roleId": "Bgyhv6Fx6aqoSNRn", "ssoCfg": {"googleKey": {"eKq983O2RFUDkyk3": {}, "TRZIbcHOCC1rpRbN": {}, "7XrOc9m2WzR4h21r": {}}, "groupConfigs": [{"assignNamespaces": ["n9MvIjbhV3thGnmM", "9XlDCxE1QFxNHIGQ", "CC8qkRxrBoOpbPA8"], "group": "IqoGe1yR5b1ytzI1", "roleId": "e88yiz9G00mZAxtU"}, {"assignNamespaces": ["lixd0BR7p4ZvtS9v", "hnWL0R2BOjWQX9fj", "COmGjwwik7c58HoZ"], "group": "zatLIcHWivXCmVDJ", "roleId": "FudqLzARMGo80zqr"}, {"assignNamespaces": ["Fj2Cg7ng2VmktBTz", "26TvH4KXIcqgMXL6", "0793g39qfcIrzHLu"], "group": "NyNCwyOuBPNVijD5", "roleId": "qXOg6GpLltatVw4d"}]}}, {"affectedClientIDs": ["VfvpB1yqiky3gTvr", "NKsEpkbj1PTf7zKl", "xCwqDE909O2NQNJn"], "domain": "5AP3wIbpsoAxDAos", "namespaces": ["6SD31Mq3p1bG8kFQ", "O280HBCSrgYnKRHq", "qmYbzddY3zzxK4l2"], "roleId": "ZeHq5ZmhZmNyAkdR", "ssoCfg": {"googleKey": {"Sh1ABpizLtd1xK98": {}, "TmNdq5xjNLd4wnKZ": {}, "Z4hIvYIESvQLTnbD": {}}, "groupConfigs": [{"assignNamespaces": ["TDSrcSJR8BN5QW8h", "ypKiW6fenghOvnTi", "4P2fbb2lUnRW64Nb"], "group": "ExondYBVdW9w9rWz", "roleId": "UNwJdPqkUJsowqeF"}, {"assignNamespaces": ["Q1KIj2oYqDoXjRJn", "xhDMyepcPUHG2jxz", "KThQ69037jGz4pp7"], "group": "9ttO6i03ZHaeah7H", "roleId": "QVflZync49uKyLd4"}, {"assignNamespaces": ["enAKmLGAhjTIlGs2", "jlCdgozC4NTi4IGX", "tcMhFBENzDwOUGSM"], "group": "NrMpDppIcAehOOBY", "roleId": "sQK5oZADyzodA7QY"}]}}, {"affectedClientIDs": ["A9FYEpK4ouC3cJam", "ef1HE5ZtzPgE3vLZ", "5LNuJG4cWdvOIHtT"], "domain": "BjJpe0jiZiBMz4Bp", "namespaces": ["dizHHnSaTF8eR5ds", "xVkd1hS1hSA0fawv", "dI6ibDBPUeAoUUYN"], "roleId": "KNjCA0akK4jWF7Wu", "ssoCfg": {"googleKey": {"j4fNJWBoREO1hKOb": {}, "8Ez9QwLAS3BaMhE5": {}, "oPNZBeq6lAmCuwLu": {}}, "groupConfigs": [{"assignNamespaces": ["LFAYvMi9VMtaLLhe", "VfA7CaenEvg9Suwu", "KiFMkZXs2m2OcjRY"], "group": "xEMfvTxvqV2bCCtA", "roleId": "BIh5uSuJlMsrp5nI"}, {"assignNamespaces": ["D6gDCHRJBfTU8Nzg", "a9br2zzS1kSKzdxv", "IcP7XiOlJnyOT5rR"], "group": "8juvrKkXkYHSTpk5", "roleId": "Ifl6uP5wwYUYQUaK"}, {"assignNamespaces": ["7PnygPH3bK3ikCyi", "Y8Jl08WPYZ9JJp3e", "RYE6aXiyxWYCc7l7"], "group": "fLrQShewGsg1IJuD", "roleId": "a7cAoWDV295ccNbE"}]}}], "Secret": "IyulGBSJ3Upgfmyb", "TeamID": "yyNPpTLUH5iobtPI", "TokenAuthenticationType": "KpWJgfmYR8jV549t", "TokenClaimsMapping": {"0YgKmrqwsFIKsAFX": "V3hZnJRaCH6P4Rq3", "pGWlV74YS0zu9CT4": "oGyDvHh5tsLD0Kjr", "otRJPq0lIocGpR9y": "c9g97VGeO60FOat6"}, "TokenEndpoint": "mrr4o0HCNWsTnZGw", "UserInfoEndpoint": "h8wVj1T4kq7IJw4l", "UserInfoHTTPMethod": "yzUN6B9mQ9eIAqHR", "googleAdminConsoleKey": "OWbrmcJvcB8n8Af3", "scopes": ["ySmXTL1ZrwTKVAQe", "Dwqa2UJcPpmfITLf", "1Y5R9PCy3w3HSzAC"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Sl1KemXLDvQKABas' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DHdx8Q35n6p1TSe9' \
    --body '{"ACSURL": "lNRyJEfFhcHkfsCw", "AWSCognitoRegion": "oJFa5m8fLE94oKwR", "AWSCognitoUserPool": "QisiQEHyh7Hsld8n", "AllowedClients": ["u8c7BnIaPxlptCbg", "tysTrwssQyxwrpUG", "4He9G227Xt85xXqF"], "AppId": "zZi2vLKDbO7FQfhF", "AuthorizationEndpoint": "PuCKqPbXJNqNddOV", "ClientId": "JQtYTV5yXIOMCXtH", "EmptyStrFieldList": ["1ASHTnmYymQCmcHH", "AKQUaGEjQ5Y4jWYY", "0inZjHjc9oVfeQvk"], "EnableServerLicenseValidation": true, "Environment": "ypFvelROZR3C1hVv", "FederationMetadataURL": "PJDiEP70KMWOdJOZ", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "fwdwJdu3R4o66IBM", "JWKSEndpoint": "alXSn5gwDLtSi04B", "KeyID": "eByXRL40VpMTy4Op", "LogoURL": "zxyPoMSh6zjvESn0", "NetflixCertificates": {"encryptedPrivateKey": "8oVFCtgxgbUS3Iiw", "encryptedPrivateKeyName": "qsXASbK2i5zStx9C", "publicCertificate": "TS9d1lsPn05qgnKI", "publicCertificateName": "1lMKjL1xQMcvRsjI", "rootCertificate": "VelavV52d3mXmWzg", "rootCertificateName": "S17Um2vnfoXShKgl"}, "OrganizationId": "YMHxoR2YVdOX91LL", "PlatformName": "QZDTrv8xY7MqMKLS", "RedirectUri": "GOGvvSUWbpkdbM0W", "RegisteredDomains": [{"affectedClientIDs": ["pKI4L1MG1vcHhIwe", "vLmSPOCroScjjdeA", "POo0SZwk9C4mi0FI"], "domain": "EIa0A2qQMDdVqq9H", "namespaces": ["4lineLadGZSKOQvl", "LupV8tJtrAPiH7Bg", "qQt64QtAEpTOhENN"], "roleId": "isbpM8j0yJjPUh67", "ssoCfg": {"googleKey": {"WgIeJw8SuUOGJEgQ": {}, "SktbMWlcamfXRU0u": {}, "ti8glJvBqeFANbF8": {}}, "groupConfigs": [{"assignNamespaces": ["NP6xFr1S6hIcT74u", "cMxAQmWSLPvMj6dA", "jkzA1yWo6EG1Vowj"], "group": "sLfgl7Kb5Oviwgfg", "roleId": "Jvaf4u1OEjWNZKra"}, {"assignNamespaces": ["suv6Xfj5NIL5EDKO", "CiHsibQpdrWMsfa8", "IvVLvwZbNO5MYhRW"], "group": "3FlND0AXaJOypoq5", "roleId": "sDSbxcafmDK0mhox"}, {"assignNamespaces": ["Vt3xDw7H2xcxDZaq", "2nR4mZPLMiqL0IxX", "IaVorkNNSy7LMRrU"], "group": "8BAJsjOIXJ4FhFQX", "roleId": "XBJRJQWsuyFOMOI6"}]}}, {"affectedClientIDs": ["exnXQ7nB9h27EVqJ", "2kSAutuk0eJK04Mi", "lZvQWL5lW75gRqF5"], "domain": "zdbfsb6qJq0Bkmio", "namespaces": ["MjgOEX9h5d78ruAb", "ijN04BoSlvoWxIyw", "4iLvTxdrzYy606Rg"], "roleId": "oNX1oiHgAGFxiZ3U", "ssoCfg": {"googleKey": {"D1RVYrcdW9J69cq3": {}, "UP0lNBcrF7QsvjKA": {}, "XMhQSy6Slx0cMUzI": {}}, "groupConfigs": [{"assignNamespaces": ["s1dWis5qZHD5pEZc", "NgVrxjib8WRQfouP", "F5Y0XJAUTnhz4EuN"], "group": "8ZyWZSUtmgJMf3Gl", "roleId": "rgyrqoUH2hbtJlgN"}, {"assignNamespaces": ["ZGtBmoHdC8MtnrAF", "o3ktJPSK6gXO1MvP", "7PO3mp2kBCo6nT6I"], "group": "EvutMnmJyV2n96Vq", "roleId": "WKkuwG8rtdOoYafO"}, {"assignNamespaces": ["zcxE6i8XjmnI3OQE", "CSd741Tqg7aJERK0", "WiR6WB9nG5bdeo6L"], "group": "gCvf1anh1azbZZ1P", "roleId": "PvgnX19gr9NaMyrS"}]}}, {"affectedClientIDs": ["KHcvD7b7p8bnz9sv", "YStfFiQZLRJC5OJH", "0vd8WZGuXr2Loka2"], "domain": "hcmpNDep7cQLaPcH", "namespaces": ["n3rIXQiksLUHjTnP", "ydNg9dqx2GcniBoA", "QZkcjGNKPx0gPNft"], "roleId": "EvLFgXNX5FU7zNEd", "ssoCfg": {"googleKey": {"m8hS2sFOieMXI5Rv": {}, "VqWukDqfC7Ru7A2C": {}, "4xt1892uyhmGgkzu": {}}, "groupConfigs": [{"assignNamespaces": ["NxAODpHU0CcBU9HD", "zt57lybmzgzraNEG", "uUfDncrkbcbZCtR9"], "group": "jmykzRbjG4M3XgJa", "roleId": "SUJcBGhkuf32xY55"}, {"assignNamespaces": ["1A8CjpedsAkOGVMY", "YJSornV0wfQJJass", "3T7zigBkXNhN3tEc"], "group": "i091xgytmw56tsBr", "roleId": "VTF5TleyUPVWPHlH"}, {"assignNamespaces": ["NONOWs0e4kxbDge1", "QVhXusqWYqrnnrTf", "GfMMzQI1Ocrj3hfn"], "group": "hHuhSlQRmKyGeKNj", "roleId": "2FKaRob7K6yafxlP"}]}}], "Secret": "RYKZdpghQL9RVQMA", "TeamID": "XCzBYW0ZObo6gEd6", "TokenAuthenticationType": "N1oo1jYdsOmRy4na", "TokenClaimsMapping": {"8JF5QenjSJbtwLAE": "ThsFChNMWNabxZlC", "BKNjdQm2srsEd9Lp": "Hdaq1jNn6z1teuYI", "XEc3SUEBN25QG4mC": "pA6cojoFkT55Zi5i"}, "TokenEndpoint": "e41OtkmrzRxjKKWG", "UserInfoEndpoint": "cJARdZ1GZHpm1gj8", "UserInfoHTTPMethod": "xgvT0qtRSw6Q4cx1", "googleAdminConsoleKey": "cqhyMW2HRX1jX9TR", "scopes": ["IG3nT5EYIoGGTWDL", "CYBARdGkllArQmE4", "229va3H2p1TT1XuL"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3TBowpe90O1Pwr6C' \
    --body '{"affectedClientIDs": ["fTDfQ8xq16XXxEOt", "nJoELrFRtOtilUlm", "6tjF5LEvsT5H6fhB"], "assignedNamespaces": ["MdCBW3HUHovu8Lde", "Y39zVqyIamZaTpRi", "q62bCaYxk5TXQGi6"], "domain": "bWoE7cH2ZlyEAX1Z", "roleId": "wyXSn1st6CKbGbTW", "ssoCfg": {"googleKey": {"g7CCnZRgU1iCQAgQ": {}, "TZ3pEFzeSmVj4Kxo": {}, "gtHeiAMF3wlCTh1q": {}}, "groupConfigs": [{"assignNamespaces": ["dF5RlkFxy2tCQCYI", "p4UV6Y0MrNglyJde", "ilfoPMpt76jKKVgw"], "group": "4Vah2SJFuOMTfJ2m", "roleId": "lQTz9fLKFWM49rxF"}, {"assignNamespaces": ["mFsv7yzNrq6u4kcY", "gAV7jH09hxZYwQXt", "6YVldYRm4tLApCzV"], "group": "PULDwOMOtuhGzlbG", "roleId": "dtuaq2vyuwXGAPaK"}, {"assignNamespaces": ["yISb7AvD4SCbENkl", "R759LDN4ZzRKVNCv", "6UrQGMYclyr29LXx"], "group": "OMuCGS8ijqs1tK1E", "roleId": "DKcybbLJbC9EsqRh"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Tqb0BFYVZtE5VCWe' \
    --body '{"domain": "RUNfatDHc20xlJ5C", "ssoGroups": ["8CfCgwTD7agigd1m", "D1c4RcTH1RDRCZRW", "ElcaKwCJgK2HYEZj"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zvdN1b6L2FvGeP1A' \
    --body '{"affectedClientIDs": ["F3TVSqNoc7BFfYat", "sQFGX5gKcjAvkbm0", "eRB0CmvdLSNIO8Hv"], "assignedNamespaces": ["bTwZCFBu4HKHvcsG", "WiHdey52FnZP6sFc", "w9bAej1Dpji52owi"], "domain": "FLbYiNlfCtLDKBRy", "roleId": "gXm5MWgNVJSJZ1pW", "ssoCfg": {"googleKey": {"KmKbpoaF6EIJCCZc": {}, "xls2Sd6tX6BwWRGk": {}, "PLwfEddg3mIwCiq6": {}}, "groupConfigs": [{"assignNamespaces": ["NrmdKpE3jiLp1YIF", "4jkW5WPWyRPacVqF", "q9hwUgwwN9NwOizQ"], "group": "tU7pNOGJnyfdsWzz", "roleId": "JpSFhYtw5i16F3nJ"}, {"assignNamespaces": ["4zQXhV4eczFmvaPo", "g7MD24Zh5XZCevoj", "HIekkNVTiLAyB7nO"], "group": "lZFVFjOrbbmJfTaC", "roleId": "tfU5ww8oVGxX9Ei2"}, {"assignNamespaces": ["G5bWIYAl9rhvNzRu", "AkHBE5luPJZKRPzN", "ydOo3oDFottGTr5p"], "group": "zjyxZSfpt9v77rVZ", "roleId": "E0Ku2JQIXnNv1ty6"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'd1YiRoyaAZg3s43f' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Z3BhYnG02qQWjYRp' \
    --body '{"acsUrl": "rDxDmUiWStanoBOu", "apiKey": "NeI7cQ0O5gGaZWs3", "appId": "nYk8aWwAMxWqs5es", "federationMetadataUrl": "VSvoAbTmRvNPuNWW", "isActive": false, "redirectUri": "99u20wiohGXbkwmO", "secret": "wj28dFmbKWqNExwT", "ssoUrl": "DWYsF2HU77CCi7rM"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DcFcYFJf5AckQokj' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'hnGmsupZhZfwWQBB' \
    --body '{"acsUrl": "sRdpOhFHbXiV9szz", "apiKey": "YUEP912XrTUjqaJ8", "appId": "Mogc9Qv09D2P67GC", "federationMetadataUrl": "IkIz3uC3MgpGUfI3", "isActive": false, "redirectUri": "tvCRDxfQxxkOqq3i", "secret": "nUFSDRHXqHrigPih", "ssoUrl": "06FRYRdZ2OSMYr1G"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HKz48dYJdqhcJXaP' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["XAAjt7mNIuPxpeTr", "P4nWeNHzAjIFkaYR", "Lhl8HD2EffVDpf2e"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Fuao8gSZXMFpcrKp' \
    --platformUserId '6c2qCdse4JXKRdnq' \
    --pidType 'Ne8uq8FJJLew6yPY' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    --body '{"config": {"minimumAllowedInterval": 19}, "type": "TVCsMhKFzd693rvI"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [88, 7, 26], "resource": "lyDARjiqyDTtyXAr"}, {"actions": [96, 53, 89], "resource": "zPB4MgFeNACU2eNh"}, {"actions": [46, 75, 47], "resource": "0os4mJ12nj5jRqX5"}], "exclusions": [{"actions": [35, 82, 91], "resource": "0JS6qyZvIiA81sIu"}, {"actions": [76, 34, 40], "resource": "dezGtRkZbqkw20y1"}, {"actions": [73, 18, 43], "resource": "j9Vyt5mpRgctbVyc"}], "overrides": [{"actions": [98, 46, 16], "resource": "G4m5LviSWqap81d8"}, {"actions": [1, 18, 10], "resource": "R8jvBgmgtOj98ION"}, {"actions": [34, 31, 69], "resource": "zU9iTDcNhGXTChJ1"}], "replacements": [{"replacement": {"actions": [51, 100, 88], "resource": "0GS1Xt7IGbSqQUIK"}, "target": "0zr7qfkOGOJCExFn"}, {"replacement": {"actions": [29, 39, 97], "resource": "5PZIbfSBiBdhsJ8n"}, "target": "WPuuVFYTnfvKiIBn"}, {"replacement": {"actions": [14, 27, 10], "resource": "HPgiWdhkgECZcO0O"}, "target": "6DEsaDskX5ioAF6k"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId '3hdjBxoPS88fkX4G' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'v4GxQKdKsDiNfy2q' \
    --after '66' \
    --before '26' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '79' \
    --tagName 'znRI5KBb2gP8roil' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "HaVqeXabHUug40Wd"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId '8gy4JY3xWUPYz7h8' \
    --body '{"tagName": "lmnQ9LYCjZVKgIAL"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'BX5cg97uL9cPlkvG' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'EM64lzqaX6FZKA60' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["Z8HXMj4SrJ07DPvN", "6BbOZe5lE78Sfhdd", "04a5h69m1OmKVoFI"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '8Tdkcdl2DKDrRcZs' \
    --body '{"bulkUserId": ["PFJ1AmZakZPH8s0R", "dUCDmI3iRFJWh2VW", "g3hdxO3V1D7uCoAK"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["6aGGqKYlq4jsiLzZ", "ShriVzW21psMe3sH", "OjvbFEyaMIeC5qyi"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3o42ESJ9lSeKqH9n", "o0tNx3igqMzpOHaV", "txb7QSz9BXy6KYZe"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "WFayyyjbzBFjDtYy", "userId": "ueOqA18UGHne3siU"}, "fields": ["2cUEbzvFjGSMhn0y", "u0kcofOSORIcnT4T", "p7Qr3JynThefJi5N"], "limit": 38}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["d7TzqVhtrxe4AEGo", "aqzKFiehLHcvLoUC", "i9ZFqVxmPowHyDgr"], "isAdmin": false, "languageTag": "ESnWCp2qsBA6KiiX", "namespace": "GB4xtjmsJY6eYY7n", "roles": ["xyXYDAYl5IbZG2H6", "AyKvJCxutfzPX9ex", "BaUB1VLifwHWcJI9"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '17' \
    --platformUserId 'uS0DScB0W10ygEjK' \
    --platformId 'c0V6K7owA55PcFer' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ERCjPUNxx58psCN3' \
    --endDate 'k5C8RsXdggMdfUtJ' \
    --includeTotal 'false' \
    --limit '65' \
    --offset '37' \
    --platformBy 'urPaDKbVna8H2Ofo' \
    --platformId 'x1JPjYWTVHtr5Uck' \
    --query 'INTYMfCG2QqrCBPb' \
    --roleIds 'eFWbfUuPcPOdginf' \
    --skipLoginQueue 'true' \
    --startDate 'WUqUwuZIBimCz5Jh' \
    --tagIds 'DtIMhOyplnAbuM3Z' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ESMDYpAtTrtd0cIf", "WlPTsrZk8VZFBA0F", "uKsE8xl8vDLsMPkl"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '8a9XgyMtQyQC5kGA' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j370B8gfeBQ0rvDi' \
    --body '{"avatarUrl": "hQs6abm9iIbgvABX", "country": "5w3gnwLjZcoVBwoR", "dateOfBirth": "CQ2SwobHZRKKIcVO", "displayName": "KTzD0acx9SV57SF8", "languageTag": "mcxelLfPT9NBolUR", "skipLoginQueue": false, "tags": ["ZjvLgAXl8ZLZBEIg", "XB5uI25sGVnvlNKI", "uDdN130jAR2U0mqI"], "uniqueDisplayName": "e1xAaUK1lrstqGnC", "userName": "Yc6tjUQVc3YCW1eY"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nWou4z4JrV2m62qX' \
    --activeOnly 'true' \
    --after 'dsFn0ReLNzLPSUPQ' \
    --before 'PTBcfOZckqwrHN22' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lLS45ZbNpMFIywBg' \
    --body '{"ban": "0Iv1m8e3UmjgIOdA", "comment": "AXl63gb0jJJIh8ai", "endDate": "hcm87xA0nRaFQB5z", "reason": "eQtfKxHNQakgZ8yE", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '1MQs9ZvD9FPnbOff' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'MAulUY79Bsk49G4e' \
    --namespace $AB_NAMESPACE \
    --userId '2w5TRREJI0tJVpD9' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b1VpQlCaq5YeFAag' \
    --body '{"context": "bggAkKz7V1HXeSYp", "emailAddress": "KLCyRuh5JMOeQMhj", "languageTag": "BRTWhcs7TPrnPPON", "upgradeToken": "psWAmGR2YPj9k0UL"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'abv4faNCUPZm636J' \
    --body '{"Code": "cV8MHPjPtFzCXoik", "ContactType": "8D2elT5WFfj8s4pZ", "LanguageTag": "3XW1YwrOuLYX1nUr", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'DKvKDrZLrUCoeuvd' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'amGzgcI090bJ5xpk' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '9q7mDSODg7llYJSS' \
    --body '{"deletionDate": 21, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eulrEFZNZ4k5D2jq' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aMco6z9ufX6rvwsH' \
    --body '{"code": "IptA4hlJhQz9HmRS", "country": "cdlRQLOauBeKGnTf", "dateOfBirth": "BygNlSRaGIgTYWLv", "displayName": "0Cnf1AfDiafhXAsY", "emailAddress": "7mZC2GmYw1c0x85g", "password": "mdgepNYC1eDWJTtl", "uniqueDisplayName": "waM6PAQlHXm96Bmc", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nLckvgbWHJM4ZgqF' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PjgWfXbpCwAkBxkk' \
    --after '0.41017578554398626' \
    --before '0.6242469675780543' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MYvzshbG859m1ziT' \
    --body '{"languageTag": "6H0dk2U2zYzjdsnq", "mfaToken": "GWcQt4aRpCiX8hrE", "newPassword": "uOr3mI72OTSJ4VY1", "oldPassword": "XgSHVAVS3ecMcM6G"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y4uSmBrkL8S0i776' \
    --body '{"Permissions": [{"Action": 84, "Resource": "8cesEgPfXUXHe41z", "SchedAction": 48, "SchedCron": "oVfokDpRqrxH1kg9", "SchedRange": ["CVBKLSQbZmHKOn4r", "VxaZsQ48ce68ngUx", "L56pa4RKVPUC7L1U"]}, {"Action": 67, "Resource": "mRPiBrwfrdXRioal", "SchedAction": 44, "SchedCron": "JU885hZB5ILTI6HQ", "SchedRange": ["EYKDkhLdqxZqq7vY", "brbm7tp2adX8di15", "jMwneC9EXr7XyHC9"]}, {"Action": 25, "Resource": "gl0FguXCzv9lZiQ7", "SchedAction": 29, "SchedCron": "zAkdAEtDsx5SAl65", "SchedRange": ["uH5DEBvv8B5uxE0L", "EzvsM2lych2q1hEz", "qGSuCOYiqywM0LRS"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'knjuswmy5LyZZTaM' \
    --body '{"Permissions": [{"Action": 18, "Resource": "fmrLssDCj9dTdwPd", "SchedAction": 75, "SchedCron": "TnVCrKUeNnY1G9l8", "SchedRange": ["T2uDegsFs01SeRZA", "Ede4s5Ky0tBD4OaB", "OXrb0ZSPCOXAhRsS"]}, {"Action": 53, "Resource": "vFSKFJvvZrYIHgan", "SchedAction": 0, "SchedCron": "wQ44t9rvNDUpgO7b", "SchedRange": ["ZKKj54p67IwftxN0", "M79P3TYT8KgVvWBe", "dxYjGzS3O1uN9DQs"]}, {"Action": 97, "Resource": "YSYZKoYnibUpTPmt", "SchedAction": 27, "SchedCron": "tacKy5wT3aS7jPxO", "SchedRange": ["bu2QC5SPC186W3jP", "4hzxAocbwwKVijiY", "IKY2R2AaUUMF9yeB"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WBQ9wLZxIh8Z8NMG' \
    --body '[{"Action": 5, "Resource": "InsTmXVfjdlk0eWa"}, {"Action": 45, "Resource": "Dt5OI0oSAxRcEVD9"}, {"Action": 45, "Resource": "rttdWacoMaXb2xEn"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '90' \
    --namespace $AB_NAMESPACE \
    --resource '5HLP3tMSFEPJgInB' \
    --userId 'snwZ0BthvBrNCTec' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ktBZ9MODnh4JhmCX' \
    --after 'hxRabtYkSo3Y58lX' \
    --before 'RIEx8AWBoID2EAKS' \
    --limit '14' \
    --platformId '5ouuK93499V6rxWC' \
    --targetNamespace 'VwFfiVo6hbpcrSN1' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FFW4eOATjOAYJBxc' \
    --status 'DHQIwqr1rVAdrDKO' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kEheXyCdFfCeOiiN' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'rdBuYHhtnwAYLLVD' \
    --userId 'zFo0R7iG8Gj9tR7B' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Y7HJ2nXDhbaVZrZ7' \
    --userId '08tirNQodIct9K1A' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'VpkfKy5SxDLWiDqb' \
    --skipConflict 'true' \
    --body '{"platformId": "PREQvWs70ZzxnNL8", "platformUserId": "CAj6XkIhUrleKVK6"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 's9wxoD7DT66eLj4I' \
    --platformId 'mGNMCFuZXamYL2uv' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F7BWbWWeZ1P2Q5TA' \
    --userId 'LyMnBd24WOavhmOv' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ie6aM85NI9SXgBye' \
    --userId 'glCT5bMec5N0Hy8C' \
    --ticket 'IjHxFO4ctJtBfFit' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 's1fkkwWVgmcAelgq' \
    --userId 'HMiAUwIR9B7hJjjx' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nki2TGjQvemrVSEL' \
    --userId 'XCXJQp4Tn5SmEjaT' \
    --platformToken 'dB7Y6GVL3ZHVOw0V' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'NIcE8P23KII6eTDb' \
    --userId 'ttRYGE7Y6Q7J4SAa' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CQi5QIRVBEurFr47' \
    --body '["IVaxDtLp7UHKfEkL", "G1Qc8luAThHkW9D5", "8sVn6q4Tyru8xqeg"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PlkhpPFRntkk2Z9H' \
    --body '[{"namespace": "PuoytSM81ILlAQoR", "roleId": "zM0GQPoDi6cOAJMO"}, {"namespace": "xxJpBFT5P5MbavXL", "roleId": "LpWKTlFkcA7Asz5T"}, {"namespace": "YkQ1zkaXZoQuUiEz", "roleId": "UBaiTiVddu1bQgMX"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bfckb5vOpv2yWhU0' \
    --userId 'B9S1mVzlmvWBwTpJ' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'BwiXc44gO3xbxa4Q' \
    --userId 'v0dLHUKyjSqLOtxd' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LTJzMhYSxEHVElxO' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lQP9h3FR72iowS6j' \
    --body '{"enabled": true, "reason": "XzwGNFkWPI8yulkE"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '6mKuqdcISOdph7ii' \
    --body '{"emailAddress": "X6z95M5i5sEU3uH5", "password": "Rb1iVePxmBcyhYSe"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jhfSHsLSCRiH8oYY' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'FN6JMpjWZqawDWEx' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "qqn2bKhyK0NufMHP"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'gTMI6u6i0bLMGQ0x' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'b8aK4C5mdq4i71OD' \
    --before 'IZnSq1PnDFJ8bFlf' \
    --isWildcard 'true' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "MjBNM60BvZiB5SUu", "namespace": "zhNTHOVjfPfaoyRh", "userId": "wWtpMzWIzISvZGNT"}, {"displayName": "RsbQsYpvCs7VIgIi", "namespace": "krLVEBVuzrO6qAg2", "userId": "lPjCzIYZ4zwtBrcI"}, {"displayName": "lqBMZTpXcynZ6yQS", "namespace": "dgI0rSCTySmIUNjT", "userId": "9aI8CzleRz3b5HQk"}], "members": [{"displayName": "fuRAsKTC43x1Wkto", "namespace": "PNNEV9EzjlwG4fTz", "userId": "BGmggkNAQiNbIlO7"}, {"displayName": "Lepq0rTVQ56W0y8k", "namespace": "GTplaL6Mhqmah9iz", "userId": "AQQL1S6cMFellR3s"}, {"displayName": "lsCjZeHlBJ7qVTOl", "namespace": "cszvxxqtHQgm4QdY", "userId": "qH4TklXxLNfkaOHx"}], "permissions": [{"action": 32, "resource": "XwZrQja0KY66kfmW", "schedAction": 81, "schedCron": "1RIAiUjjRM8uEcvI", "schedRange": ["widubw6Jq1SOjGga", "Wqn81mTcwtv2wttT", "zzkvYH1n9JZCx6U5"]}, {"action": 70, "resource": "lHXWXLKqG0Wn2Fnn", "schedAction": 1, "schedCron": "SgquuRq4hUWTtUNR", "schedRange": ["g6kn9OsdvLMd5OEj", "pvvUm7wE1d12WQEx", "26a7M4oKOKk1Z0f2"]}, {"action": 44, "resource": "Db1WGJzeHK084oV6", "schedAction": 54, "schedCron": "AkusqvoFOP7iKMnq", "schedRange": ["t3RDJbe1LZpwdVmY", "XxF0w0NM9jlxFQZ3", "yeWcCjxwzDHhzAro"]}], "roleName": "nCzfWHNNR7JDXnHu"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'HwibLTd6Gy5mquNR' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'LeDkrvrSWD2NAE5W' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'qWThA5tyWcGgjwVe' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "KSnSZT1UX1ho8EJo"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'i7b49rdZQwkntHSY' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '8EETSYK68uQbbEK0' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'oaBJFpBKZ3O6glOg' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'RZEudnTTobCHP1b8' \
    --after '4xbPzHrfuOOA8Hzt' \
    --before 'BN4xlUDv2s88Ob8y' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'VnUpqoRXj8LGyOzW' \
    --body '{"managers": [{"displayName": "zz2Z9kgVlqldGfeO", "namespace": "ySfeKB5hbkohFMgf", "userId": "pnYhOHpji1kwEq82"}, {"displayName": "gt429czSkwucvZfU", "namespace": "yrXTmHOnJa2gmei5", "userId": "f6G5inOdmFBHSIA3"}, {"displayName": "zVPjJtOyuzZ82rrt", "namespace": "pms4GuLVVZdJ3OZ0", "userId": "d68nb0pHWHJnI8Wg"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'TYq30I72i4C6uWrW' \
    --body '{"managers": [{"displayName": "zzIGaahxubmPw68N", "namespace": "XHjwPICbfTxrM4v4", "userId": "5Fqcb1KAEqYTjkv1"}, {"displayName": "Xd78b7HT7PpwhNEy", "namespace": "yEbN0KLnjxitEKx3", "userId": "orCJRRHpG3VsA8ik"}, {"displayName": "eq1jLUieSsGz8jyd", "namespace": "NkUoV85tJ3INFoWa", "userId": "DLgdc6p7FtS2agnC"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'kQVNY95hvbDcrPtN' \
    --after 'Ztps8UoYjE9zerRl' \
    --before 'jZFB3xMUBMJb1bIe' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'fRMNl59B6Pyn5UGk' \
    --body '{"members": [{"displayName": "oE59Xe5ktGbKu9rA", "namespace": "MK96LiBpUUCPnpaP", "userId": "r4w6RzS1aIjPokDN"}, {"displayName": "HFUXGLUfUYv25jgX", "namespace": "O5wxwlI8hn9Kb8X8", "userId": "H4kJuXcax2wX4LGF"}, {"displayName": "rK6h19tRpLM4VHl5", "namespace": "UWcBSOUuSL9poXMa", "userId": "ZURDi0Dhj5MIhlsX"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'Pfa2cIlCqOzoT6jO' \
    --body '{"permissions": [{"action": 56, "resource": "ORX28q8uszI6qxTy", "schedAction": 79, "schedCron": "fWWJtFdaJcI0ofg2", "schedRange": ["RvvUSguSrwSMMuTT", "6gGxxgnurbuBBxnv", "aSLGXExLBETOzyWP"]}, {"action": 20, "resource": "sQvQt2CTgAeEGVbg", "schedAction": 56, "schedCron": "Klcz2Z2sHBwOjWv0", "schedRange": ["frXAb3Tdl4GwKlnP", "1owv7VPkTKE7ybVk", "dBYCm78Jw70cMCDg"]}, {"action": 47, "resource": "G0zWuRrjQcCYbw62", "schedAction": 49, "schedCron": "5TYNJpZMndyhu7bo", "schedRange": ["R2gOSPEE2kw3Ara6", "Zaz3Zdjr2GIsEgP8", "5cALTawizkyrQ4qz"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '8AjD8kGfkOtlklti' \
    --body '{"permissions": [{"action": 41, "resource": "aWjeuUXsoQr1hH54", "schedAction": 53, "schedCron": "Av0sW3TRxwXKa5rK", "schedRange": ["UkbRQIdAGxLXoflo", "OrUmCztr3XjuGpkJ", "2nOX5FJoGeq9xwa9"]}, {"action": 83, "resource": "qzK0ulia94QsXjAK", "schedAction": 5, "schedCron": "uZT2ZOf2yD6ccgkR", "schedRange": ["IGpxHM0CTpFdszOL", "xJ1rJYbgWqa566Xe", "ZSvzibELThauJtSh"]}, {"action": 2, "resource": "9SoNreslyV0xnpwr", "schedAction": 77, "schedCron": "pwe9hLWf9pU3oMjp", "schedRange": ["672kvuAP6v1wAnzU", "9FhVc3ZVfgt6LPeZ", "s1boiKVb2FZ0ilMa"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'yHM4Nbmh9LMorJ1d' \
    --body '["BclFBSTndV958tCG", "Tc5DOPzTpea4WqOw", "eQepUj5hlJlK7NWt"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '38' \
    --resource 'HCfeN7AcTPtmdMIy' \
    --roleId '5m4Lx82AyxHl8KDj' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'cNvroJtz3qOkWmI4' \
    --extendExp 'false' \
    --redirectUri 'llg4hnhm7gV6S8Hw' \
    --password 'PecacER2hhdvbZK1' \
    --requestId 'ajICf5HFZVLbFcPv' \
    --userName 'TZlwtMi0Xy0YN8bj' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'z8k2rRfblJI1c2pG' \
    --linkingToken '3QGnOEYEFN367CZL' \
    --password 'qU8GaZ3eRey2q05d' \
    --username 'L8goHpdaAvq0wcxt' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'HmsGNjdtym7DWQ4E' \
    --linkingToken 'OjBa3P912mKs8HhX' \
    --password 'RrYAv5KRsR0ex2Tx' \
    --username 'gTleDW8G2UNpwObQ' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'M51gnszEJRGZQoeU' \
    --extendExp 'true' \
    --linkingToken 'dQJLQWJXZgzfq6cw' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'KIeRWZcXaKwgxjzS' \
    --state 'JO32HG9nBZXHy9wt' \
    --platformId 'z5ySvgSTTV8qs4cB' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'YXWsd2VpwBSiAGsY' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'T0mMpPej8eKUjWLt' \
    --isTransient 'true' \
    --clientId 'Xeh7UGB9gmAOjFNa' \
    --oneTimeLinkCode 'LmIBkjL25RCwfxzT' \
    > test.out 2>&1
eval_tap $? 248 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 249 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 249 'GetCountryLocationV3' test.out

#- 250 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 250 'Logout' test.out

#- 251 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge '4Hevf5FS4ak2qABe' \
    --codeChallengeMethod 'plain' \
    --clientId 'EwQGJWEcbbV0yUci' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1fkIwDKrfimIEsBm' \
    --userId 'SfFhQosKGo3uCUIz' \
    --platformUserId '5fMSTojOkTdRucI6' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J6AoPjDFECVVbDgJ' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'gmagljS1clTX0dWp' \
    --codeChallenge 'JYGYLYEmpCQQnRse' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'kOWXbhdSF2CrEUjp' \
    --oneTimeLinkCode 'Zx566cs3NP8uEe7z' \
    --redirectUri '9gW1SAb8DIvmNuOv' \
    --scope 'tKlL6npGa4pjsUCN' \
    --state 'wGJ3SndTny3mdfVo' \
    --targetAuthPage 'GcMekcCyHLThZKBG' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'EJMitraOVVGDlMBJ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'RqcAy6Ay4dHoZCmW' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'mbJuh8KHbEQT2854' \
    --factor 'TKYD5Jk9104uJCX8' \
    --mfaToken 'k6XNqxd671HkurtE' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'uslcder4aHK1r207' \
    --mfaToken 'nPBDUi5Ryv64sgbh' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '0CrBcEO1Nh0CDVzu' \
    --factor 's3t4Hfwh7NStPnAi' \
    --mfaToken 'OuVRDgNXMLj6FxQp' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'zimHN7hjHb1QVWpN' \
    --factors 'RVfyBMGkaz91kGoV' \
    --rememberDevice 'true' \
    --clientId 'UoJd1UgWAm1BWWPU' \
    --code 'RUXAUUQ4XGexam5F' \
    --factor 'WWc1tKn7zZtBo93s' \
    --mfaToken 'PmGCRhJrcoL8xbd8' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '756tcgOWHvRT6Fuw' \
    --userId 'k1lq2svfgIHy5yRI' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'x4RU7GE3gKsl3lYW' \
    --clientId 'jRhTRid74Rh5crFp' \
    --redirectUri 'HdtfrxtlsX3mYY6b' \
    --requestId 'LmtgWB0Be74rDf7m' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '2yurpRrvdPjpylMn' \
    --additionalData 'KttHG2s4sUeOQWFS' \
    --clientId 'xvgcjzsl6ipAs8zi' \
    --createHeadless 'true' \
    --deviceId 'IoI0k7UsXlRSF1rL' \
    --macAddress 'snROVlY4SXMsFEci' \
    --platformToken 'C6PbAU0eZPAb0ssr' \
    --serviceLabel '0.8293116440833667' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'AFnXF5Snfe1jrUZy' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'sAnWWnf8qu2dzOpB' \
    --simultaneousTicket 'pa040vtmE1JvMKi9' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'KWrPvFQPmaMiRGez' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'gDuVhP3tpIPDJ0Ht' \
    --clientId 'Ot9nnGXUCN0tTLPK' \
    --clientSecret 'QCOAWwBTJKQfNyFj' \
    --code '3gbMMAtJZTlH6WZs' \
    --codeVerifier 'iLHQ51PqIqZozNgt' \
    --extendNamespace 'bL8824zQhts9j7zt' \
    --extendExp 'true' \
    --password 'Nz0V5RLUX0u6IZOV' \
    --redirectUri 'AfCQuQExUTXO46ge' \
    --refreshToken 'zOkPAXRBoKNCvDLW' \
    --scope 'LbwNSaaJ6IY4iuad' \
    --username 'cDbWp3uwWQIBY0Ya' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '3Nhnh1Q06zTth1ZW' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'ivRRBkGqgKDDhkI2' \
    --code 'CbxXREdAHZuV8S9d' \
    --error '7Cjq5YKddR67z4IW' \
    --openidAssocHandle 'F3822s2c3Hg1FjCT' \
    --openidClaimedId 'wfLY0J1QHy0OffwC' \
    --openidIdentity '94SU4GzNEArPpiGE' \
    --openidMode 'DJirBFlTvRVs8A4V' \
    --openidNs '75VVDZ5z0Pb9IsLe' \
    --openidOpEndpoint 'qzGtHT6KtCJU7VpH' \
    --openidResponseNonce 'kq2Hj51FAQ67FDQz' \
    --openidReturnTo 'RMOTP4cRiNk0dbPa' \
    --openidSig 'K4MBaTiaQTm94bsx' \
    --openidSigned 'ud1zADN7r08aTGi1' \
    --state 'zAVLIjBFXLevixP8' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'wPdHM88YCzUWdxwJ' \
    --platformToken '9WPxHglrZfX77h82' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'TcIOwYhktAZSXQpd' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'BPHWay7sQu8Rubn2' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'eCykEkobQje5AzTl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'd9aIHO3Ri3isbrJC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'PublicGetConfigValueV3' test.out

#- 275 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'PublicGetCountryListV3' test.out

#- 276 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 277 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 't7YZ2u7SQEWC9eTV' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '5qX7gCxFrcYBbozq' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'XtHehrqSgNCKGxOZ' \
    --limit '53' \
    --offset '85' \
    --platformBy 'cpzKa9tPmHSDjsiE' \
    --platformId 'thvHohWwuWo7TmjN' \
    --query 'nZh9xAIwmm21m12A' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "tC3lrqKiQayCXsdt", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vqzpIpoXPrZmIGNp", "policyId": "uAKP0QwBf9rebPzr", "policyVersionId": "L1vbmp4o5ZQk5ZKB"}, {"isAccepted": true, "localizedPolicyVersionId": "iX2xPgHyZpcjXkAv", "policyId": "nRyScMB3F6xMzeRQ", "policyVersionId": "YP86GnjRwVFaeA5i"}, {"isAccepted": true, "localizedPolicyVersionId": "9xsfxrSnnwPWcgxF", "policyId": "ebq6gxE7dDNjZVmD", "policyVersionId": "OPfVgOL1fJUP0d7w"}], "authType": "hd9QTIunVmaZ3xp2", "code": "pvwog2pRktzckdiX", "country": "p5kOxEpMyYd9kubk", "dateOfBirth": "in8dagoJ2COkLjIV", "displayName": "AnFUSD3QQW69sME5", "emailAddress": "wU384XqW5bh2Diop", "password": "DCqoWr63TX2cF2fS", "reachMinimumAge": true, "uniqueDisplayName": "IpOCcPO7BaC0gZ2m"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '7Vit4zArBubZxPXn' \
    --query 'Kz3T1TzuJf51wL35' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "koaFKEGvYUW2XBuq", "languageTag": "qSo0S8BkxBESFNWu"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "T5H07ZuqqjLgCNZV", "emailAddress": "R1Xcgr1sCPiezUr0"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "7434pz7EHn8fkM6c", "languageTag": "0dJzjheExBlnnwdV"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "Wm5GFMpV426ambxp", "password": "guHORnU36Ubo4pzH", "uniqueDisplayName": "gvBDeBeGcFC6weLT", "username": "abuzxy1GTdm0yF9b"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '56uPYOQbaVHQ8OV1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'KoCAXZUPKSuca3Fu' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "ZDaNEmqQaHY4h9CX", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "mCt4XlSD3Xn5xDzA", "policyId": "HBADjO4hEFgg84UC", "policyVersionId": "Ph6nbOa0hFMvqQVG"}, {"isAccepted": false, "localizedPolicyVersionId": "3OJyNamQ2kaBQp4e", "policyId": "0j0xA4WpKC6JXCbL", "policyVersionId": "7apMqprqHR90DD76"}, {"isAccepted": true, "localizedPolicyVersionId": "YtQFXonP5bACfPoQ", "policyId": "B5AhVT4G0icoSvdo", "policyVersionId": "owxlQhG29fSQf07R"}], "authType": "sQzV3wjtlJQ6eLKF", "code": "5kFPpunDzwKI0O9n", "country": "qSjsCmAEEXjkO0lI", "dateOfBirth": "h0OE2t1nNIqn9aG1", "displayName": "waUgvp3HeN7b1VXL", "emailAddress": "cxi1Q2PBNUR4992u", "password": "M9Q5hi4lVtGinJ1K", "reachMinimumAge": true, "uniqueDisplayName": "i3dYaZrhWNVdvmvq"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "gjotVvzKF6MZtcQz", "country": "bFkQpEXdfAOcq5eM", "dateOfBirth": "98iHnGFVuGxY7PDx", "displayName": "cXgk2abMkXR7nK9S", "languageTag": "uoTIFjdyVaezx76H", "uniqueDisplayName": "vcbLgTFxqqMgK92d", "userName": "3tOUkhGd8Et5eyKR"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "VGwh6tqTad3gGvNI", "country": "3ZBfZBAK2rmc4oB2", "dateOfBirth": "GzbNcZhYFjZkkpzc", "displayName": "QX75JJIZyoLVOkou", "languageTag": "TYZCsNS5K0vvko8C", "uniqueDisplayName": "NrGT07VO4s5MLn06", "userName": "pPNdVSGz6bjmD4x8"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "m9Hdc0WGSBw8Mmek", "emailAddress": "1rSRq92rDnMXNPcA", "languageTag": "QP2rWZES3aV0h260", "upgradeToken": "vYbxICsx08YThnAe"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "FDwSjGnli98sAimC", "contactType": "joSBc6ClHIsJaUmR", "languageTag": "K782jkJLyxFf194m", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "b0gimyZk7pOnLcIL", "country": "AkKCFX9anRVu4fgh", "dateOfBirth": "aiayNlZA8hxEW0zj", "displayName": "rbNBhjTiyYL3HYHW", "emailAddress": "2oB5xhZMYQsi3Upr", "password": "a9xD2JsCPmDK4MlI", "uniqueDisplayName": "Qky3ntqAWTpadXyi", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "qAgDqbxZD4lHQRQb", "password": "2Xr9zCOKjOGUPRd4"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "5mQMRHxIgK65ds0c", "mfaToken": "kzx8PAf9yQ4ppWkY", "newPassword": "4yASOJo4roHb8wvt", "oldPassword": "HgbnDbDnbUkz2p5Y"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'cGrMeEqJTL90bxmh' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OB7MbZ0M4FF6pnB2' \
    --redirectUri 'nBu5IhGts69HgHji' \
    --ticket 'VUEtiMyiWGUE800s' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'seth31W0FCqhqjsj' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8QOfCpwSoCLB4OJs' \
    --ticket 'rmpd0DJ1CMk5QjaN' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'EhrPLQgphj4ndSSb' \
    --clientId 'v3WNL0H3XYz9VKBT' \
    --redirectUri 'TKM4NRHLFddp4LOt' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '9hJz7L0mYNS0Ua2Q' \
    --code 'YhGtchKGNYLA8xJf' \
    --state '7TAC8aElViUHdOWl' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RwPmYrOB9j8bkNdv' \
    --code 'AmQllSDva7L49GSe' \
    --state '1I9rLmdj4kexJxzP' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "dABla6EUBEf3FDQj", "userIds": ["1bqlKCu0E7uucVUM", "sDcgTU4nl9sS2kek", "9QSlbdOQEl6YTYvz"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "5utctgbb4fGsWBer", "code": "nDGHIEYRdxKu7Zcq", "emailAddress": "Bq2yGAa73DgFXxey", "languageTag": "I9Lo2BVSTXQjqEvI", "newPassword": "790YQDiqoqfmJvf1"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RhpHu2rdM1w6PgHR' \
    --activeOnly 'false' \
    --after 'VX3bJn1wWMisazRH' \
    --before 'DcfRknmJyfAYGztY' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ro0Krr1lMgK7i05s' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KITBnFia31B8Lh8O' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mg3GG483uuHF5fj8' \
    --after '0.9385550789892285' \
    --before '0.7705158048211007' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'giN3bCvbnZ2u7N72' \
    --after '0JJwIvgBwCy5DDkU' \
    --before 'ufILQDrYiJw6Ak2J' \
    --limit '87' \
    --platformId 'zQFUUCxymAnKj01i' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b0RWEesYsBXptt5j' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'tzg5hW5fqCwF4mli' \
    --body '{"platformId": "U5P5oWNI9Kh654PG", "platformUserId": "0W3CfNR0oFQeTKA8"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'f9YYa1WitY4DzVLT' \
    --body '{"chosenNamespaces": ["RiZ5hI8J9eUDFHZ9", "WaqaSSyIKGNdDrrv", "fBwOiddWRyswwngf"], "requestId": "ab9jmD3sRNRiui6y"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FCLeCQCaUzKGc9og' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lDmO8VyKkc4MhIxr' \
    --password 'BmgzI91EBcsF2tKi' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'mNsCE421WLpZf2M5' \
    --before '05wI4rPk2eJ9977T' \
    --isWildcard 'true' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'tGqufMnN2pelPZWN' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "qw27fxeCcYPcQSLf", "emailAddress": "SQMpN4CCW1CWsiXy", "languageTag": "DwhS7WUzVI5kV3ja"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "520EyQvsWJ6vmB6W", "emailAddress": "Xyhbd5YgINn3nykA", "languageTag": "q6Ko2oYsXRJDyDEU", "upgradeToken": "vnxReT2s1hhRW18T"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'JlztzU4zbEOP992u' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["B0MwAU9jAaTIprWU", "YCB3XEIG4sJue2yK", "vTOG7M6e5iFEHEkY"], "oneTimeLinkCode": "NzEjZrzVYCXyi2mQ"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'HxjBjlQf85XKihab' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "qQ2uIUgVH1tsXeM3"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'BkHYH7IwST3iLviy' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '6Ib2C0T9s6No5qaa' \
    --code 'NIuCDnCNKMIPzcnw' \
    --error 'o7L3tK39peyUNxID' \
    --state 'Q4iZe25qyN6cub9F' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'wdl9B2wI3SBzdOQ2' \
    --payload 'E5hrIpawdlg46y58' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'musJHib6szy8gaIT' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'l46ALzUPRCQ5dRjH' \
    --code 'ujs46HaFPRK3g5VW' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'KjBH38tcJhEdwfTO' \
    --upgradeSuccessToken 'zCcTjfo3ysrCSt3J' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '23' \
    --namespace 'rUcRXOLmAlEcYs1q' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZYp8JeNIm2kna0xt' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'mK9aSKgECRKa6lnJ' \
    --endDate 'v2chVVWdMJIja7i7' \
    --limit '26' \
    --offset '74' \
    --startDate 'xOT1Y7gcU6yLhu7F' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nZa1dzaIuAesOATZ' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "e6bQL8NxOgScw2GI", "deviceId": "LO6NruRtNQm9wNZR", "deviceType": "Igj6izrvwpXdArMU", "enabled": true, "endDate": "1Uvq1afK8Erwbak9", "ext": {"AwngSPeEoLGtZPPx": {}, "lUFQTffQ1E7Evuej": {}, "g7GZ3Da8i9PsEGKj": {}}, "reason": "U8je4d4tlvxxitOr"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'TD9VANdAwRVWxIrr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Diic0DCk4exJgZav' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '2l4AMhDblhL9JmYy' \
    --startDate 'CHF98MgapPQgXdFN' \
    --deviceType 'I3uv7i6WST5AAwBG' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'JTvoSmSqOiaq83Ag' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'JnG0NXFwi2TWZk9h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'UK6syuY20upSYP03' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUsersByDeviceV4' test.out

#- 350 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 351 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 57, "userInfo": {"country": "BgIjwIjenRQnwCcS"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7Yr8krW0hwWs3PJN", "policyId": "CSt1R9RPsR40PWeJ", "policyVersionId": "QTlQoXJrQPMTs0Mh"}, {"isAccepted": false, "localizedPolicyVersionId": "wzZ39JcbwbTfPexj", "policyId": "TbppXR2vLR4JOPcH", "policyVersionId": "b0F28Dvl7SBIEX05"}, {"isAccepted": false, "localizedPolicyVersionId": "SqkQpG5vBMfDCQHP", "policyId": "dvLOg8tJIIO4a8oS", "policyVersionId": "3ReyTw4tkTHXlFrG"}], "authType": "EMAILPASSWD", "code": "f17IxSFwMUQJ7cGo", "country": "wQjdNy5Lf4fIO59V", "dateOfBirth": "nh6cB9ixpAQGu2kS", "displayName": "9tXsuUOQriaiMHle", "emailAddress": "7fDGMSh5zABGtesG", "password": "cRFcdfukHOGmOQLj", "passwordMD5Sum": "Vl5EJMe51710hjCa", "reachMinimumAge": false, "uniqueDisplayName": "HpyPcOLRMDoMz8xy", "username": "OQ0lx6rPXXmDJ4P5"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["9paUpisLUN7UCqMm", "QbAOccsRaBycjabZ", "KM9egm5zgb2Eu761"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0GqHHm3n5N7bXwiy", "pCtBTqVnIeJsdzSt", "nVHsjp8O3MPzE0pj"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'a4rbxaOKWTfUeSGm' \
    --body '{"avatarUrl": "uQCrrDSkidXzoUsF", "country": "VhvREIhdsjdqMq0p", "dateOfBirth": "bT6kN7WHdJu8FrAc", "displayName": "wSLBPb5Xi8ShNd9r", "languageTag": "gq7ZSJ5mUaQxmSmy", "skipLoginQueue": false, "tags": ["zGOCKVxJ02ZAolZh", "kXuhn6ToiNmse6PJ", "9k3Kr5FkVdEQTUl6"], "uniqueDisplayName": "QpPCD87oiCf6AAv3", "userName": "EdpcDFicgn2H18Kt"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '1tN5VlXFkA0YmbZ7' \
    --body '{"code": "NAD10Nz4MWqp6f5N", "emailAddress": "9IckDdacleb0bTa9"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'swFIHEVuv7cXoW9A' \
    --body '{"factor": "a8tMXJ5a4vryb0X6", "mfaToken": "vPJBKWrMWn5fjYkt"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '8laq50scCpLajn4H' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Q7ikB0OTipQ1JkWX' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'u9CuQ8ZW2IGM1tsA' \
    --body '{"assignedNamespaces": ["XmUvdr5U8eUgnpVj", "oauVcpAPWMq1swhr", "C8cj1lS7kKT5hl2g"], "roleId": "2chte9urBq9uAmvr"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VIqXJFz2zTUfh4Cd' \
    --body '{"assignedNamespaces": ["YPCqFU6xsmsf5JGs", "0zkL2xWExybbVFGY", "6OoIgQFKLUrq5uKl"], "roleId": "uaiCsO0oOJqa4ZJB"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KpAzVKsQZ3dmeIS7' \
    --body '{"assignedNamespaces": ["wh44We3rsR2MCCbp", "pd0T0kwCS7xk7bwb", "CiWT7QsN8vY181wc"], "roleId": "O2vcb9X2sp4ytp23"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '41' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "a6SjSXNlL4cWS8kJ"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'R23OT6jbQHZUslAU' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'MZraFvACA9jBe2qN' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'DjMQubsqlbYPGeCg' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "Ef6Uh2YxUvdIDkP6"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'CwCH8hscUhjLG8vm' \
    --body '{"permissions": [{"action": 85, "resource": "CTUiOcKaXNUaMAq4", "schedAction": 76, "schedCron": "ssIPUL1NdnxqBHDY", "schedRange": ["CQnyFruQsWnASOsw", "V42jIr9bskhO6RFq", "3oNlKa4H9epTyM0Q"]}, {"action": 95, "resource": "EUwut25yMTEvQy9P", "schedAction": 94, "schedCron": "ytmLYWLCQc82mRIU", "schedRange": ["rlexrp4f8e9k8BuZ", "u9lQHibCOpUK3jhM", "EFgGNQBBch8uVfLH"]}, {"action": 42, "resource": "h6WxxjEZCtlFH6Fo", "schedAction": 33, "schedCron": "XakviAnNjztGzJ3b", "schedRange": ["Mcwo0IOdO12IFHvQ", "BL6JOl2HqAV2zIS5", "wNBpdkVT077YxERb"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'fb0kmjKihlB6117Y' \
    --body '{"permissions": [{"action": 39, "resource": "UnFJRi6HB5nxOl11", "schedAction": 24, "schedCron": "J0d4rEORa1lWzoxt", "schedRange": ["9kXLT7pKHq9MlyqT", "ifd4StYmiX3iNUC9", "9KCwU1KF4xZUzPDo"]}, {"action": 19, "resource": "3vVOV4yNMjR6REL6", "schedAction": 44, "schedCron": "LdogZYt4V3UIY0P8", "schedRange": ["SAtckDD4Lu5d4lZe", "fW8KiWhRcTzgDMWF", "bODNdjlGePNX5zg2"]}, {"action": 54, "resource": "hsVeOar6LxLu8gTN", "schedAction": 79, "schedCron": "wlBhmxBljk5lWwrv", "schedRange": ["9gjyVngmhebRid6N", "7Kwwxg0P0OdXfMM0", "6NwsM6hchtVBlNNl"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'LY3gGkkwZBkx4HUC' \
    --body '["ZGhGI1iQYU5ofgsC", "KTzTEgZmn3SfpL8Z", "BNSeBPFKTeJLYEJk"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'nhQVOyORaq02uIMF' \
    --after 'Vw3F1Rvj2VaIK8fW' \
    --before '7B9GmziT1zwsZQk4' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'RiDjaIrdBPBwNtkr' \
    --body '{"assignedNamespaces": ["noLI8Gvqd42AQTUu", "potTHXkTg6T2aitx", "8CJVKsSuCI9jSsHy"], "namespace": "119nYsq498EPRcO4", "userId": "JxD48qmQFrKaHLiN"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'a9j5D5pUiG8yOBb7' \
    --body '{"namespace": "7pwGCGZTraQbMc8V", "userId": "26Ynyp3zetTKW4G7"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["3FZndvepL8wniDPv", "pHcSXDAvpgM8vmtT", "0LD5XOVHdJCEsteE"], "emailAddresses": ["Nw3Z2KqxPfKLU2TZ", "NFPusyr0k7TYVOpM", "TlUMM060YdOzrjj2"], "isAdmin": true, "isNewStudio": true, "languageTag": "o7BYXLWNdvL0vvkw", "namespace": "KOzfigYCICk74G6g", "roleId": "wH2nJiMdGq3Rvq7A"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "Wdr81ll7cHHI7UzQ", "country": "d5W5UG21nBhxFBKt", "dateOfBirth": "amvzqGu4SxV3DPbF", "displayName": "bOliy2JUR85vpKAt", "languageTag": "6j7l05OVYD35CFDV", "skipLoginQueue": false, "tags": ["dOyjw3K4x7aM4ZD9", "3H8LCFTPmrjVYw5A", "8vS6WN3n7dioB8qi"], "uniqueDisplayName": "Uxh3kZEdCZqtmNEu", "userName": "iyprgqEVTILiIIkd"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "ATKZg3DR9ivnKqPg", "mfaToken": "AG6WLn7GCDXiuCet"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Ql8qUfjFOKhVVCu2' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableMyAuthenticatorV4' test.out

#- 379 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 380 AdminGetMyBackupCodesV4
eval_tap 0 380 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminGenerateMyBackupCodesV4
eval_tap 0 381 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "cqKeGvRligFxuTLq", "mfaToken": "DE5jRG8GuHIOxtMg"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'CU8RAzYleTZDX1Ch' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'WxXBJcFdANJRrSui' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'Hz7DcyXKobSEzbyZ' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'cKMxfb8L2E7RgH2b' \
    --factor '9ikZD52vYL8ntWnc' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'NL76x9TdymDUjuhM' \
    --languageTag '6fyG0BOzDFGsTwiZ' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "Wmf8Y5wOaF9fEMiC", "mfaToken": "T3c15Cm8nBGrjK5V"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'Du1cSRCeUQb3mS8a' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'QXp8jVNxE0eraYqp' \
    > test.out 2>&1
eval_tap $? 393 'AdminMakeFactorMyDefaultV4' test.out

#- 394 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 394 'AdminGetMyOwnMFAStatusV4' test.out

#- 395 AdminGetMyMFAStatusV4
eval_tap 0 395 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 396 AdminInviteUserV4
eval_tap 0 396 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 397 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'u2x41J8tX8qdLdAw' \
    --linkingToken 'FQRQUEY4MeOKTt2N' \
    --password 'Zuhhs3EdHHgtWSRV' \
    --username 'Rmq91ZWbyxzKs6cn' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'ySLLgTyNqVSA26Ti' \
    --extendExp 'true' \
    --linkingToken 'g0mdOXV2ZeT4sFeO' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'sjYWLRnmy52Pa3ZF' \
    --factor 'rWwaccYIfwiF5FNr' \
    --mfaToken 'MB0MDphNPLMqF5ns' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'UxTi7VnvHVkFJrno' \
    --codeChallenge 'zlB2wGucywqQHoaq' \
    --codeChallengeMethod 'plain' \
    --additionalData 'H1GOYMIx3yw6Qd6d' \
    --clientId 'HxbPB2rdClijbUGI' \
    --createHeadless 'false' \
    --deviceId '6Qkml3lHjLYWJRrf' \
    --macAddress 'GJfJpT9WouFMs2q4' \
    --platformToken 'X8PNlKPHmHbu4pju' \
    --serviceLabel '0.3881096434052531' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 's8Z79rdishYvPzQ3' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'RziqpbYCdrEl6JmU' \
    --simultaneousTicket 'y5Kx93sh2QFY9z7j' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'PX2O0AGvvTTpESzJ' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'KcrYW46K3kxO17l0' \
    --codeChallengeMethod 'plain' \
    --additionalData 'zEIiAuxdAS506Kdt' \
    --clientId 'WFH1mP04cWY4Hezx' \
    --clientSecret 'dnHXL1FDuJc3klDF' \
    --code 'zyZKq4Id9JCklw1K' \
    --codeVerifier 'e4kzt0hPklD5d7dX' \
    --extendNamespace 'ojpq5gofX2RhGtKo' \
    --extendExp 'false' \
    --loginQueueTicket 'XUb9Hg7ZPfA8qxTm' \
    --password 'pgVsCsu6v77UuyGp' \
    --redirectUri 'QUS7cbuIGBCnNH0I' \
    --refreshToken '3AzI1LMc8Fs9MbeS' \
    --scope 'YLuMbTF7x1oEkHWv' \
    --username 'X3yEpU5hdEW1V2eU' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'qpXeZNKpJNxD9TPB' \
    --code 'nyPAjastfiIEKWT2' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'hmLWXzKfxnDREmzs' \
    --rawPUID 'false' \
    --body '{"pidType": "v9X1xQmgtYtiyKIW", "platformUserIds": ["rHrzrViH3hqT8j38", "JTN8B6AgcwpSs4CJ", "LvLCahro68RcQcUy"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'wnNPvKxMxbVBTeXc' \
    --platformUserId 'BdFWORVsufZSVXxg' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "NQTxGQUl3YunxRfa", "policyId": "I1jIdOIYXlMhCuw4", "policyVersionId": "Kye1mjAe6tJqIIZU"}, {"isAccepted": true, "localizedPolicyVersionId": "LEZj2Uj1dQf3xcYJ", "policyId": "91WFuwzsCn2arbVB", "policyVersionId": "XUCHPmvTK5xHNaCX"}, {"isAccepted": false, "localizedPolicyVersionId": "yL6SkviS14ult9aE", "policyId": "7cxRJE8WShQy07GT", "policyVersionId": "sYPEUx4NS61DFG0p"}], "authType": "EMAILPASSWD", "country": "lI2oWvglVQmucH9C", "dateOfBirth": "BrUwNNjpydYrB2aK", "displayName": "9Xunlbr17SXqfc2a", "emailAddress": "qOAezF0Kx2gzCvyg", "password": "LUquGQOyTNH1PXZR", "passwordMD5Sum": "17zMCBEeSU1SlAvc", "uniqueDisplayName": "uyBcYPQx5Qp5g4YR", "username": "rK0mYzTcjDJWIYww", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ttZqoknNQPziYfp4", "policyId": "Lyh3c6fJ4z3v7Mtw", "policyVersionId": "Jo4ir3i92c4O9XuW"}, {"isAccepted": false, "localizedPolicyVersionId": "KvoH39EgFL7ZHxKp", "policyId": "iZX5UXQoUanYhFn3", "policyVersionId": "lJz57ZUFaVDW7Bsm"}, {"isAccepted": true, "localizedPolicyVersionId": "iFET5ccpI4EHxzGN", "policyId": "AAISKKig6WwqZPm3", "policyVersionId": "DsH4Hld6OpEn0r0Q"}], "authType": "EMAILPASSWD", "code": "yqrlaHcRWZRkrD3d", "country": "glDIQGsJNWnfcVGn", "dateOfBirth": "Jy34MA7Cqe0K1dqF", "displayName": "JSdfx6RsncD2euuD", "emailAddress": "KRDKIgnK7BT7WPg5", "password": "Z8P5qtwcUupYzEyB", "passwordMD5Sum": "FlkfBEAjDGDUN2Ic", "reachMinimumAge": false, "uniqueDisplayName": "L59gGV1ig1TTwB68", "username": "B0uJ0IZENHttB4z8"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'JdCyIVrMoy1guT0T' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "crKPCWJ6jMJI92DD", "policyId": "3FIXYhcJqE8mNbGx", "policyVersionId": "eRtjfTAJaU4qrSn9"}, {"isAccepted": false, "localizedPolicyVersionId": "9zc9aBC7MegAZDGv", "policyId": "kK9PD18PA53bXF9i", "policyVersionId": "WC4xnOLfeeMWBR7U"}, {"isAccepted": false, "localizedPolicyVersionId": "ONGcmLXUOPdg13Fj", "policyId": "qA6tDblrt7sGfYU1", "policyVersionId": "pblOdKDgAle8xkg6"}], "authType": "EMAILPASSWD", "code": "95KQznDvtvafro4i", "country": "oArB6ZUtVoaqyiRp", "dateOfBirth": "0tXFdR5axIwhWNyx", "displayName": "eBdwpw8S1CplAmti", "emailAddress": "yuvVhuKmQ6LcP8VP", "password": "1PqFKgTNCEv1aQqK", "passwordMD5Sum": "40vz87Zi6JR0PERC", "reachMinimumAge": false, "uniqueDisplayName": "hJczxI4QBGlCswEi", "username": "v0PzAjN9dEOceMJk"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "gKBX6vEhB5kadX6A", "country": "7ws8eQYSZ6x1FUAl", "dateOfBirth": "Vu93B4yAHifd6c9E", "displayName": "QVhMOxUTJBaXSA9c", "languageTag": "vUdXRx6St879EDah", "uniqueDisplayName": "7WYURw7IwwOlvBVw", "userName": "R9AtdOdxnUtieO4t"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NVjTILoQxC7pKyXP", "emailAddress": "xKnwI43U2vQ1u9xu"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "oG3GyJeCxcDfZp7v", "country": "hIE9H072zVsuIYeh", "dateOfBirth": "J9uTlBT5yQSchrov", "displayName": "apNCzybWF98KqzlN", "emailAddress": "HofSz9ZLWNWHs43o", "password": "yvpJ8YRt88Pf03sL", "reachMinimumAge": false, "uniqueDisplayName": "uw6ESkYGyosbWjbC", "username": "Pe7a1dwkBgYED1Jv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "6hwNRp1h8fAICXLM", "displayName": "HmcFfEMBp4FuSmWY", "emailAddress": "FVCvvVFzJNHg9J6K", "password": "KjyCQaoGurQZ3rjZ", "uniqueDisplayName": "CFwL7OgGiyrocCsX", "username": "t75DfAA6j47628cS"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "fkRsIDAcMcpP5mVJ", "mfaToken": "rPD3YscVp4c6Kz5u"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'qe5vb1UCmgfD7rQm' \
    > test.out 2>&1
eval_tap $? 414 'PublicEnableMyAuthenticatorV4' test.out

#- 415 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 416 PublicGetMyBackupCodesV4
eval_tap 0 416 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicGenerateMyBackupCodesV4
eval_tap 0 417 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "G9t09tfZEIoAvKXP", "mfaToken": "PCCs5EkuVmodRez7"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'fyPdYsUnbdbqC8UT' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'etDotxflHEdCDKGy' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'U9Wi13lfeBRVavkF' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'KlmsczL4z1w64bTF' \
    --factor 'JdbMU30sBhGPTLw9' \
    > test.out 2>&1
eval_tap $? 424 'PublicChallengeMyMFAV4' test.out

#- 425 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 425 'PublicRemoveTrustedDeviceV4' test.out

#- 426 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'CHDqRgdEKi3J5Uy6' \
    --languageTag 'a1lnObUMt9ktUjUo' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "8mWIiEIiXoGHzyl8", "mfaToken": "QphibJSVNL7qP24I"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '74giGn6bnCwSOBCm' \
    > test.out 2>&1
eval_tap $? 428 'PublicEnableMyEmailV4' test.out

#- 429 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 429 'PublicGetMyEnabledFactorsV4' test.out

#- 430 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'uGSuGI9KoCXgmn7l' \
    > test.out 2>&1
eval_tap $? 430 'PublicMakeFactorMyDefaultV4' test.out

#- 431 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicGetMyOwnMFAStatusV4' test.out

#- 432 PublicGetMyMFAStatusV4
eval_tap 0 432 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 433 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lRQGnh27qTaGFIPk' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "TZrACfiGVRIr8o0g", "emailAddress": "oB12YtKkP9u3tWBm", "languageTag": "MyUk0Fw9X85K0n7U", "namespace": "sTr7ZyufxUZ7biEi", "namespaceDisplayName": "hilR5mNcJbudhjb0"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zJqJOS1VT7rgt6Ou", "policyId": "tsow8vAGSziueD1b", "policyVersionId": "Q2gTrlGG3RWl6vGO"}, {"isAccepted": false, "localizedPolicyVersionId": "2bLmOKLKTTli4XlK", "policyId": "QkwoyWonqHZdowuM", "policyVersionId": "sJdAyjBTLl1LhOPT"}, {"isAccepted": false, "localizedPolicyVersionId": "zNjvPSRYb0tjmAwm", "policyId": "RV9g3oC89NDLiyqP", "policyVersionId": "6hNklweutUc2oOeV"}], "code": "sgSzcuUcC2RWQxm9", "country": "D7qsTvdPF3LuNWaY", "dateOfBirth": "iTnkF3SETSUkeqHA", "displayName": "NsG72lNAlDThp379", "emailAddress": "0FsQNNRGp7lU4pzr", "password": "AR9TlF2G90ovYqAY", "reachMinimumAge": false, "uniqueDisplayName": "iu1XRe1h2z6yBlgj", "username": "5n7Q5ji5N3Q3QMNq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE