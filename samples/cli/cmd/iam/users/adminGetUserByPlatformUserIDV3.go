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

// AdminGetUserByPlatformUserIDV3Cmd represents the AdminGetUserByPlatformUserIDV3 command
var AdminGetUserByPlatformUserIDV3Cmd = &cobra.Command{
	Use:   "AdminGetUserByPlatformUserIDV3",
	Short: "Admin get user by platform user IDV3",
	Long:  `Admin get user by platform user IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		input := &users.AdminGetUserByPlatformUserIDV3Params{
			Namespace:      namespace,
			PlatformID:     platformId,
			PlatformUserID: platformUserId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserByPlatformUserIDV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetUserByPlatformUserIDV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserByPlatformUserIDV3Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = AdminGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformId")
	AdminGetUserByPlatformUserIDV3Cmd.Flags().StringP("platformUserId", "pd", " ", "Platform user id")
	_ = AdminGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformUserId")
}
