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

// AdminGetUserLinkHistoriesV3Cmd represents the AdminGetUserLinkHistoriesV3 command
var AdminGetUserLinkHistoriesV3Cmd = &cobra.Command{
	Use:   "adminGetUserLinkHistoriesV3",
	Short: "Admin get user link histories V3",
	Long:  `Admin get user link histories V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &users.AdminGetUserLinkHistoriesV3Params{
			Namespace:  namespace,
			UserID:     userId,
			PlatformID: platformId,
		}
		ok, errOK := usersService.AdminGetUserLinkHistoriesV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserLinkHistoriesV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserLinkHistoriesV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserLinkHistoriesV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserLinkHistoriesV3Cmd.MarkFlagRequired("userId")
	AdminGetUserLinkHistoriesV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminGetUserLinkHistoriesV3Cmd.MarkFlagRequired("platformId")
}
