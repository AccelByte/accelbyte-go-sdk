// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetUserByPlatformUserIDV3Cmd represents the adminGetUserByPlatformUserIDV3 command
var adminGetUserByPlatformUserIDV3Cmd = &cobra.Command{
	Use:   "adminGetUserByPlatformUserIDV3",
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
	cmd.RootCmd.AddCommand(adminGetUserByPlatformUserIDV3Cmd)
	adminGetUserByPlatformUserIDV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("namespace")
	adminGetUserByPlatformUserIDV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = adminGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformId")
	adminGetUserByPlatformUserIDV3Cmd.Flags().StringP("platformUserId", "p", " ", "Platform user id")
	_ = adminGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformUserId")
}
