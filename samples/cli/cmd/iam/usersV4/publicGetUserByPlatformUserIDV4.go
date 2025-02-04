// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserByPlatformUserIDV4Cmd represents the PublicGetUserByPlatformUserIDV4 command
var PublicGetUserByPlatformUserIDV4Cmd = &cobra.Command{
	Use:   "publicGetUserByPlatformUserIDV4",
	Short: "Public get user by platform user IDV4",
	Long:  `Public get user by platform user IDV4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		input := &users_v4.PublicGetUserByPlatformUserIDV4Params{
			Namespace:      namespace,
			PlatformID:     platformId,
			PlatformUserID: platformUserId,
		}
		ok, errOK := usersV4Service.PublicGetUserByPlatformUserIDV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserByPlatformUserIDV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserByPlatformUserIDV4Cmd.MarkFlagRequired("namespace")
	PublicGetUserByPlatformUserIDV4Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicGetUserByPlatformUserIDV4Cmd.MarkFlagRequired("platformId")
	PublicGetUserByPlatformUserIDV4Cmd.Flags().String("platformUserId", "", "Platform user id")
	_ = PublicGetUserByPlatformUserIDV4Cmd.MarkFlagRequired("platformUserId")
}
