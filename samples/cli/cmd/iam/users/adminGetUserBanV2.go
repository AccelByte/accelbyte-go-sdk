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

// AdminGetUserBanV2Cmd represents the AdminGetUserBanV2 command
var AdminGetUserBanV2Cmd = &cobra.Command{
	Use:   "adminGetUserBanV2",
	Short: "Admin get user ban V2",
	Long:  `Admin get user ban V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &users.AdminGetUserBanV2Params{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
		}
		ok, errOK := usersService.AdminGetUserBanV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserBanV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserBanV2Cmd.MarkFlagRequired("namespace")
	AdminGetUserBanV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserBanV2Cmd.MarkFlagRequired("userId")
	AdminGetUserBanV2Cmd.Flags().Bool("activeOnly", false, "Active only")
}
