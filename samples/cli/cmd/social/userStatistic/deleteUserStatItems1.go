// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserStatItems1Cmd represents the deleteUserStatItems1 command
var deleteUserStatItems1Cmd = &cobra.Command{
	Use:   "deleteUserStatItems1",
	Short: "Delete user stat items 1",
	Long:  `Delete user stat items 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.DeleteUserStatItems1Params{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := userStatisticService.DeleteUserStatItems1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserStatItems1Cmd)
	deleteUserStatItems1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteUserStatItems1Cmd.MarkFlagRequired("namespace")
	deleteUserStatItems1Cmd.Flags().StringP("statCode", "se", " ", "Stat code")
	_ = deleteUserStatItems1Cmd.MarkFlagRequired("statCode")
	deleteUserStatItems1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = deleteUserStatItems1Cmd.MarkFlagRequired("userId")
}
