// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statConfiguration

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportStatsCmd represents the ImportStats command
var ImportStatsCmd = &cobra.Command{
	Use:   "importStats",
	Short: "Import stats",
	Long:  `Import stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		replaceExisting, _ := cmd.Flags().GetBool("replaceExisting")
		input := &stat_configuration.ImportStatsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: &replaceExisting,
		}
		created, errCreated := statConfigurationService.ImportStatsShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	ImportStatsCmd.Flags().String("file", "", "File")
	ImportStatsCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStatsCmd.MarkFlagRequired("namespace")
	ImportStatsCmd.Flags().Bool("replaceExisting", false, "Replace existing")
}
