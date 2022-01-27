// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package statConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryStatsCmd represents the QueryStats command
var QueryStatsCmd = &cobra.Command{
	Use:   "QueryStats",
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
	QueryStatsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = QueryStatsCmd.MarkFlagRequired("namespace")
	QueryStatsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	QueryStatsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	QueryStatsCmd.Flags().StringP("keyword", "kd", " ", "Keyword")
	_ = QueryStatsCmd.MarkFlagRequired("keyword")
}
