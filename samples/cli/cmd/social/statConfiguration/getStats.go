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

// GetStatsCmd represents the GetStats command
var GetStatsCmd = &cobra.Command{
	Use:   "getStats",
	Short: "Get stats",
	Long:  `Get stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		cycleIds, _ := cmd.Flags().GetString("cycleIds")
		isGlobal, _ := cmd.Flags().GetBool("isGlobal")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &stat_configuration.GetStatsParams{
			Namespace: namespace,
			CycleIds:  &cycleIds,
			IsGlobal:  &isGlobal,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := statConfigurationService.GetStatsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetStatsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetStatsCmd.MarkFlagRequired("namespace")
	GetStatsCmd.Flags().String("cycleIds", "", "Cycle ids")
	GetStatsCmd.Flags().Bool("isGlobal", false, "Is global")
	GetStatsCmd.Flags().Int32("limit", 20, "Limit")
	GetStatsCmd.Flags().Int32("offset", 0, "Offset")
}
