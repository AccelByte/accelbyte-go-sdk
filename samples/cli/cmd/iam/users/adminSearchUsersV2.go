// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminSearchUsersV2Cmd represents the adminSearchUsersV2 command
var adminSearchUsersV2Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminSearchUsersV2Cmd)
	adminSearchUsersV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminSearchUsersV2Cmd.MarkFlagRequired("namespace")
	adminSearchUsersV2Cmd.Flags().StringP("after", "ar", "0", "After")
	adminSearchUsersV2Cmd.Flags().StringP("before", "be", "0", "Before")
	adminSearchUsersV2Cmd.Flags().StringP("displayName", "de", " ", "Display name")
	adminSearchUsersV2Cmd.Flags().StringP("limit", "lt", "20", "Limit")
	adminSearchUsersV2Cmd.Flags().StringP("loginId", "ld", " ", "Login id")
	adminSearchUsersV2Cmd.Flags().StringP("platformUserId", "pd", " ", "Platform user id")
	adminSearchUsersV2Cmd.Flags().StringP("roleId", "rd", " ", "Role id")
	adminSearchUsersV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	adminSearchUsersV2Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = adminSearchUsersV2Cmd.MarkFlagRequired("platformId")
}
