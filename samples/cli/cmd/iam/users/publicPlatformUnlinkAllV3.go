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

// PublicPlatformUnlinkAllV3Cmd represents the PublicPlatformUnlinkAllV3 command
var PublicPlatformUnlinkAllV3Cmd = &cobra.Command{
	Use:   "publicPlatformUnlinkAllV3",
	Short: "Public platform unlink all V3",
	Long:  `Public platform unlink all V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &users.PublicPlatformUnlinkAllV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		errNoContent := usersService.PublicPlatformUnlinkAllV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicPlatformUnlinkAllV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPlatformUnlinkAllV3Cmd.MarkFlagRequired("namespace")
	PublicPlatformUnlinkAllV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicPlatformUnlinkAllV3Cmd.MarkFlagRequired("platformId")
}
