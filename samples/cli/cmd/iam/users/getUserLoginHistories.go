// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserLoginHistoriesCmd represents the getUserLoginHistories command
var getUserLoginHistoriesCmd = &cobra.Command{
	Use:   "getUserLoginHistories",
	Short: "Get user login histories",
	Long:  `Get user login histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		after, _ := cmd.Flags().GetFloat64("after")
		before, _ := cmd.Flags().GetFloat64("before")
		limit, _ := cmd.Flags().GetFloat64("limit")
		input := &users.GetUserLoginHistoriesParams{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserLoginHistories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserLoginHistoriesCmd)
	getUserLoginHistoriesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserLoginHistoriesCmd.MarkFlagRequired("namespace")
	getUserLoginHistoriesCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserLoginHistoriesCmd.MarkFlagRequired("userId")
	getUserLoginHistoriesCmd.Flags().Float64P("after", "a", 0, "After")
	getUserLoginHistoriesCmd.Flags().Float64P("before", "b", 0, "Before")
	getUserLoginHistoriesCmd.Flags().Float64P("limit", "l", 20, "Limit")
}
