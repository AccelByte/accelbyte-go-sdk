// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"bytes"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExportConfigV1Cmd represents the ExportConfigV1 command
var ExportConfigV1Cmd = &cobra.Command{
	Use:   "exportConfigV1",
	Short: "Export config V1",
	Long:  `Export config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		logrus.Infof("Output %v", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &config.ExportConfigV1Params{
			Namespace: namespace,
		}
		ok, errOK := configService.ExportConfigV1Short(input, writer)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ExportConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ExportConfigV1Cmd.MarkFlagRequired("namespace")
}
