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

// getUserByPlatformUserIDCmd represents the getUserByPlatformUserID command
var getUserByPlatformUserIDCmd = &cobra.Command{
	Use:   "getUserByPlatformUserID",
	Short: "Get user by platform user ID",
	Long:  `Get user by platform user ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformID, _ := cmd.Flags().GetString("platformID")
		platformUserID, _ := cmd.Flags().GetString("platformUserID")
		input := &users.GetUserByPlatformUserIDParams{
			Namespace:      namespace,
			PlatformID:     platformID,
			PlatformUserID: platformUserID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserByPlatformUserID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserByPlatformUserIDCmd)
	getUserByPlatformUserIDCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUserByPlatformUserIDCmd.MarkFlagRequired("namespace")
	getUserByPlatformUserIDCmd.Flags().StringP("platformID", "pD", " ", "Platform ID")
	_ = getUserByPlatformUserIDCmd.MarkFlagRequired("platformID")
	getUserByPlatformUserIDCmd.Flags().StringP("platformUserID", "pD", " ", "Platform user ID")
	_ = getUserByPlatformUserIDCmd.MarkFlagRequired("platformUserID")
}
