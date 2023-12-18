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

// PublicGetMyUserV3Cmd represents the PublicGetMyUserV3 command
var PublicGetMyUserV3Cmd = &cobra.Command{
	Use:   "publicGetMyUserV3",
	Short: "Public get my user V3",
	Long:  `Public get my user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		includeAllPlatforms, _ := cmd.Flags().GetBool("includeAllPlatforms")
		input := &users.PublicGetMyUserV3Params{
			IncludeAllPlatforms: &includeAllPlatforms,
		}
		ok, errOK := usersService.PublicGetMyUserV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetMyUserV3Cmd.Flags().Bool("includeAllPlatforms", false, "Include all platforms")
}
