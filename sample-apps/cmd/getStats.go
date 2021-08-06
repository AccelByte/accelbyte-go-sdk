// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getStatsCmd represents the getStats command
var getStatsCmd = &cobra.Command{
	Use:   "getStats",
	Short: "Get stats",
	Long:  `Get stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getStats called")
		socialService := &service.StatisticConfigService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		offset, err := cmd.Flags().GetInt32("offset")
		if err != nil {
			return err
		}
		limit, err := cmd.Flags().GetInt32("limit")
		if err != nil {
			return err
		}
		stats, err := socialService.GetStats(namespace, &limit, &offset)
		response, err := json.MarshalIndent(stats, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getStatsCmd)
	getStatsCmd.Flags().StringP("namespace", "n", "", "User namespace")
	getStatsCmd.MarkFlagRequired("namespace")
	getStatsCmd.Flags().Int32P("offset", "o", 0, "Pagination offset")
	getStatsCmd.Flags().Int32P("limit", "l", 20, "Pagination limit")
}
