// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statCycleConfiguration

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_cycle_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportStatCycleCmd represents the ImportStatCycle command
var ImportStatCycleCmd = &cobra.Command{
	Use:   "importStatCycle",
	Short: "Import stat cycle",
	Long:  `Import stat cycle`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		replaceExisting, _ := cmd.Flags().GetBool("replaceExisting")
		input := &stat_cycle_configuration.ImportStatCycleParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: &replaceExisting,
		}
		created, errCreated := statCycleConfigurationService.ImportStatCycleShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	ImportStatCycleCmd.Flags().String("file", "", "File")
	ImportStatCycleCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStatCycleCmd.MarkFlagRequired("namespace")
	ImportStatCycleCmd.Flags().Bool("replaceExisting", false, "Replace existing")
}
