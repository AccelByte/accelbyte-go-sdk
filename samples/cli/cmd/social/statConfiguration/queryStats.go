// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryStatsCmd represents the queryStats command
var queryStatsCmd = &cobra.Command{
	Use:   "queryStats",
	Short: "Query stats",
	Long:  `Query stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &stat_configuration.QueryStatsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Keyword:   keyword,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := statConfigurationService.QueryStats(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryStatsCmd)
	queryStatsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryStatsCmd.MarkFlagRequired("namespace")
	queryStatsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryStatsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryStatsCmd.Flags().StringP("keyword", "k", " ", "Keyword")
	_ = queryStatsCmd.MarkFlagRequired("keyword")
}
