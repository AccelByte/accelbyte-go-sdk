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

// PublicGetUserByPlatformUserIDV3Cmd represents the PublicGetUserByPlatformUserIDV3 command
var PublicGetUserByPlatformUserIDV3Cmd = &cobra.Command{
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
		ok, err := usersService.PublicGetUserByPlatformUserIDV3Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicGetUserByPlatformUserIDV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserByPlatformUserIDV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformId")
	PublicGetUserByPlatformUserIDV3Cmd.Flags().String("platformUserId", "", "Platform user id")
	_ = PublicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformUserId")
}
