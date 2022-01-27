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

// adminGetUserBanV2Cmd represents the adminGetUserBanV2 command
var adminGetUserBanV2Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserBanV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserBanV2Cmd)
	adminGetUserBanV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetUserBanV2Cmd.MarkFlagRequired("namespace")
	adminGetUserBanV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminGetUserBanV2Cmd.MarkFlagRequired("userId")
	adminGetUserBanV2Cmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
}
