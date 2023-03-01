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

// GetUserByPlatformUserIDCmd represents the GetUserByPlatformUserID command
var GetUserByPlatformUserIDCmd = &cobra.Command{
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
		ok, errOK := usersService.GetUserByPlatformUserIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserByPlatformUserIDCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserByPlatformUserIDCmd.MarkFlagRequired("namespace")
	GetUserByPlatformUserIDCmd.Flags().String("platformID", "", "Platform ID")
	_ = GetUserByPlatformUserIDCmd.MarkFlagRequired("platformID")
	GetUserByPlatformUserIDCmd.Flags().String("platformUserID", "", "Platform user ID")
	_ = GetUserByPlatformUserIDCmd.MarkFlagRequired("platformUserID")
}
