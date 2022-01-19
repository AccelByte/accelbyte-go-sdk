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

// publicGetUserByPlatformUserIDV3Cmd represents the publicGetUserByPlatformUserIDV3 command
var publicGetUserByPlatformUserIDV3Cmd = &cobra.Command{
	Use:   "publicGetUserByPlatformUserIDV3",
	Short: "Public get user by platform user IDV3",
	Long:  `Public get user by platform user IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		input := &users.PublicGetUserByPlatformUserIDV3Params{
			Namespace:      namespace,
			PlatformID:     platformId,
			PlatformUserID: platformUserId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserByPlatformUserIDV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserByPlatformUserIDV3Cmd)
	publicGetUserByPlatformUserIDV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("namespace")
	publicGetUserByPlatformUserIDV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = publicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformId")
	publicGetUserByPlatformUserIDV3Cmd.Flags().StringP("platformUserId", "p", " ", "Platform user id")
	_ = publicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformUserId")
}
