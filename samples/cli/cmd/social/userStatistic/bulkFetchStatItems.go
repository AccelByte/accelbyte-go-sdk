// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkFetchStatItemsCmd represents the BulkFetchStatItems command
var BulkFetchStatItemsCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	BulkFetchStatItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkFetchStatItemsCmd.MarkFlagRequired("namespace")
	BulkFetchStatItemsCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = BulkFetchStatItemsCmd.MarkFlagRequired("statCode")
	BulkFetchStatItemsCmd.Flags().StringP("userIds", "", "", "User ids")
	_ = BulkFetchStatItemsCmd.MarkFlagRequired("userIds")
}
