// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// bulkFetchStatItems1Cmd represents the bulkFetchStatItems1 command
var bulkFetchStatItems1Cmd = &cobra.Command{
	Use:   "bulkFetchStatItems1",
	Short: "Bulk fetch stat items 1",
	Long:  `Bulk fetch stat items 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &user_statistic.BulkFetchStatItems1Params{
			Namespace: namespace,
			StatCode:  statCode,
			UserIds:   userIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkFetchStatItems1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkFetchStatItems1Cmd)
	bulkFetchStatItems1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = bulkFetchStatItems1Cmd.MarkFlagRequired("namespace")
	bulkFetchStatItems1Cmd.Flags().StringP("statCode", "s", " ", "Stat code")
	_ = bulkFetchStatItems1Cmd.MarkFlagRequired("statCode")
	bulkFetchStatItems1Cmd.Flags().StringP("userIds", "u", " ", "User ids")
	_ = bulkFetchStatItems1Cmd.MarkFlagRequired("userIds")
}
