// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminEnableUserV2Cmd represents the AdminEnableUserV2 command
var AdminEnableUserV2Cmd = &cobra.Command{
	Use:   "AdminEnableUserV2",
	Short: "Admin enable user V2",
	Long:  `Admin enable user V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminEnableUserV2Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminEnableUserV2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminEnableUserV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminEnableUserV2Cmd.MarkFlagRequired("namespace")
	AdminEnableUserV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminEnableUserV2Cmd.MarkFlagRequired("userId")
}
