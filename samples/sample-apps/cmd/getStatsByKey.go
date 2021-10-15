// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getStatsByKeywordCmd represents the getStatsByKeyword command
var getStatsByKeywordCmd = &cobra.Command{
	Use:   "getStatsByKeyword",
	Short: "Get stats by keyword",
	Long:  `Get stats by keyword`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getStatsByKeyword called")
		socialService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		keyword := cmd.Flag("keyword").Value.String()
		offset, err := cmd.Flags().GetInt32("offset")
		if err != nil {
			return err
		}
		limit, err := cmd.Flags().GetInt32("limit")
		if err != nil {
			return err
		}
		input := &stat_configuration.QueryStatsParams{
			Keyword:   keyword,
			Limit:     &limit,
			Namespace: namespace,
			Offset:    &offset,
		}
		stats, err := socialService.QueryStats(input)
		response, err := json.MarshalIndent(stats, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getStatsByKeywordCmd)
	getStatsByKeywordCmd.Flags().StringP("namespace", "n", "", "User namespace")
	getStatsByKeywordCmd.MarkFlagRequired("namespace")
	getStatsByKeywordCmd.Flags().StringP("keyword", "k", "", "Keyword")
	getStatsByKeywordCmd.Flags().Int32P("offset", "o", 0, "Pagination offset")
	getStatsByKeywordCmd.Flags().Int32P("limit", "l", 20, "Pagination limit")
}
