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

// ExportStatsCmd represents the ExportStats command
var ExportStatsCmd = &cobra.Command{
	Use:   "exportStats",
	Short: "Export stats",
	Long:  `Export stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &stat_configuration.ExportStatsParams{
			Namespace: namespace,
		}
		errInput := statConfigurationService.ExportStatsShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ExportStatsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ExportStatsCmd.MarkFlagRequired("namespace")
}
