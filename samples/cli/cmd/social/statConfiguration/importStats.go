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
	"os"
)

// importStatsCmd represents the importStats command
var importStatsCmd = &cobra.Command{
	Use:   "importStats",
	Short: "Import stats",
	Long:  `Import stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		replaceExisting, _ := cmd.Flags().GetBool("replaceExisting")
		input := &stat_configuration.ImportStatsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: &replaceExisting,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := statConfigurationService.ImportStats(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(importStatsCmd)
	importStatsCmd.Flags().StringP("file", "f", " ", "File")
	importStatsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = importStatsCmd.MarkFlagRequired("namespace")
	importStatsCmd.Flags().BoolP("replaceExisting", "r", false, "Replace existing")
}
