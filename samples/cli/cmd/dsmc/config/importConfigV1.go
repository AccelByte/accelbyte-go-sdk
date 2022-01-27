// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// ImportConfigV1Cmd represents the ImportConfigV1 command
var ImportConfigV1Cmd = &cobra.Command{
	Use:   "ImportConfigV1",
	Short: "Import config V1",
	Long:  `Import config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		input := &config.ImportConfigV1Params{
			File:      file,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configService.ImportConfigV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	ImportConfigV1Cmd.Flags().StringP("file", "fe", " ", "File")
	ImportConfigV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = ImportConfigV1Cmd.MarkFlagRequired("namespace")
}
