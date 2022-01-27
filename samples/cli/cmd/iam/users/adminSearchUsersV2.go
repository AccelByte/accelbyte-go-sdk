// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "AdminSearchUsersV2",
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
		limit, _ := cmd.Flags().GetString("limit")
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminSearchUsersV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminSearchUsersV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminSearchUsersV2Cmd.MarkFlagRequired("namespace")
	AdminSearchUsersV2Cmd.Flags().StringP("after", "ar", "0", "After")
	AdminSearchUsersV2Cmd.Flags().StringP("before", "be", "0", "Before")
	AdminSearchUsersV2Cmd.Flags().StringP("displayName", "de", " ", "Display name")
	AdminSearchUsersV2Cmd.Flags().StringP("limit", "lt", "20", "Limit")
	AdminSearchUsersV2Cmd.Flags().StringP("loginId", "ld", " ", "Login id")
	AdminSearchUsersV2Cmd.Flags().StringP("platformUserId", "pd", " ", "Platform user id")
	AdminSearchUsersV2Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	AdminSearchUsersV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	AdminSearchUsersV2Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = AdminSearchUsersV2Cmd.MarkFlagRequired("platformId")
}
