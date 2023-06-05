// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		isGlobal, _ := cmd.Flags().GetBool("isGlobal")
		isPublic, _ := cmd.Flags().GetBool("isPublic")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &stat_configuration.QueryStatsParams{
			Namespace: namespace,
			IsGlobal:  &isGlobal,
			IsPublic:  &isPublic,
			Limit:     &limit,
			Offset:    &offset,
			Keyword:   keyword,
		}
		ok, errOK := statConfigurationService.QueryStatsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryStatsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryStatsCmd.MarkFlagRequired("namespace")
	QueryStatsCmd.Flags().Bool("isGlobal", false, "Is global")
	QueryStatsCmd.Flags().Bool("isPublic", false, "Is public")
	QueryStatsCmd.Flags().Int32("limit", 20, "Limit")
	QueryStatsCmd.Flags().Int32("offset", 0, "Offset")
	QueryStatsCmd.Flags().String("keyword", "", "Keyword")
	_ = QueryStatsCmd.MarkFlagRequired("keyword")
}
