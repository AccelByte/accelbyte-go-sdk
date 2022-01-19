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

// updateXblBPCertFileCmd represents the updateXblBPCertFile command
var updateXblBPCertFileCmd = &cobra.Command{
	Use:   "updateXblBPCertFile",
	Short: "Update xbl BP cert file",
	Long:  `Update xbl BP cert file`,
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
		password, _ := cmd.Flags().GetString("password")
		input := &i_a_p.UpdateXblBPCertFileParams{
			File:      file,
			Password:  &password,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := iapService.UpdateXblBPCertFile(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateXblBPCertFileCmd)
	updateXblBPCertFileCmd.Flags().StringP("file", "f", " ", "File")
	updateXblBPCertFileCmd.Flags().StringP("password", "p", " ", "Password")
	updateXblBPCertFileCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateXblBPCertFileCmd.MarkFlagRequired("namespace")
}
