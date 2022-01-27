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

// bulkFetchStatItemsCmd represents the bulkFetchStatItems command
var bulkFetchStatItemsCmd = &cobra.Command{
	Use:   "bulkFetchStatItems",
	Short: "Bulk fetch stat items",
	Long:  `Bulk fetch stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &user_statistic.BulkFetchStatItemsParams{
			Namespace: namespace,
			StatCode:  statCode,
			UserIds:   userIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkFetchStatItems(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkFetchStatItemsCmd)
	bulkFetchStatItemsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = bulkFetchStatItemsCmd.MarkFlagRequired("namespace")
	bulkFetchStatItemsCmd.Flags().StringP("statCode", "se", " ", "Stat code")
	_ = bulkFetchStatItemsCmd.MarkFlagRequired("statCode")
	bulkFetchStatItemsCmd.Flags().StringP("userIds", "us", " ", "User ids")
	_ = bulkFetchStatItemsCmd.MarkFlagRequired("userIds")
}
