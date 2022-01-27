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

// getUserBanHistoryCmd represents the getUserBanHistory command
var getUserBanHistoryCmd = &cobra.Command{
	Use:   "getUserBanHistory",
	Short: "Get user ban history",
	Long:  `Get user ban history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserBanHistoryParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserBanHistory(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserBanHistoryCmd)
	getUserBanHistoryCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUserBanHistoryCmd.MarkFlagRequired("namespace")
	getUserBanHistoryCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getUserBanHistoryCmd.MarkFlagRequired("userId")
}
