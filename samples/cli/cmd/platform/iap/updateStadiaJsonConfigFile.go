// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// updateStadiaJsonConfigFileCmd represents the updateStadiaJsonConfigFile command
var updateStadiaJsonConfigFileCmd = &cobra.Command{
	Use:   "updateStadiaJsonConfigFile",
	Short: "Update stadia json config file",
	Long:  `Update stadia json config file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		input := &i_a_p.UpdateStadiaJSONConfigFileParams{
			File:      file,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := iapService.UpdateStadiaJSONConfigFile(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateStadiaJsonConfigFileCmd)
	updateStadiaJsonConfigFileCmd.Flags().StringP("file", "f", " ", "File")
	updateStadiaJsonConfigFileCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateStadiaJsonConfigFileCmd.MarkFlagRequired("namespace")
}