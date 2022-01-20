// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/global_statistic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGlobalStatItemsCmd represents the getGlobalStatItems command
var getGlobalStatItemsCmd = &cobra.Command{
	Use:   "getGlobalStatItems",
	Short: "Get global stat items",
	Long:  `Get global stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalStatisticService := &social.GlobalStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &global_statistic.GetGlobalStatItemsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := globalStatisticService.GetGlobalStatItems(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGlobalStatItemsCmd)
	getGlobalStatItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getGlobalStatItemsCmd.MarkFlagRequired("namespace")
	getGlobalStatItemsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	getGlobalStatItemsCmd.Flags().Int32P("offset", "o", 0, "Offset")
}