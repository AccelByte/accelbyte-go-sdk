// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSearchUsersV2Cmd represents the AdminSearchUsersV2 command
var AdminSearchUsersV2Cmd = &cobra.Command{
	Use:   "adminSearchUsersV2",
	Short: "Admin search users V2",
	Long:  `Admin search users V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		displayName, _ := cmd.Flags().GetString("displayName")
		limit, _ := cmd.Flags().GetInt64("limit")
		loginId, _ := cmd.Flags().GetString("loginId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminSearchUsersV2Params{
			Namespace:      namespace,
			After:          &after,
			Before:         &before,
			DisplayName:    &displayName,
			Limit:          &limit,
			LoginID:        &loginId,
			PlatformUserID: &platformUserId,
			RoleID:         &roleId,
			UserID:         &userId,
			PlatformID:     platformId,
		}
		ok, errOK := usersService.AdminSearchUsersV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSearchUsersV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSearchUsersV2Cmd.MarkFlagRequired("namespace")
	AdminSearchUsersV2Cmd.Flags().String("after", "0", "After")
	AdminSearchUsersV2Cmd.Flags().String("before", "0", "Before")
	AdminSearchUsersV2Cmd.Flags().String("displayName", "", "Display name")
	AdminSearchUsersV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminSearchUsersV2Cmd.Flags().String("loginId", "", "Login id")
	AdminSearchUsersV2Cmd.Flags().String("platformUserId", "", "Platform user id")
	AdminSearchUsersV2Cmd.Flags().String("roleId", "", "Role id")
	AdminSearchUsersV2Cmd.Flags().String("userId", "", "User id")
	AdminSearchUsersV2Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminSearchUsersV2Cmd.MarkFlagRequired("platformId")
}
