// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package export

import (
	"bytes"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/export"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExportSeasonCmd represents the ExportSeason command
var ExportSeasonCmd = &cobra.Command{
	Use:   "exportSeason",
	Short: "Export season",
	Long:  `Export season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		exportService := &seasonpass.ExportService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		file, errFile := os.Create("file")
		logrus.Infof("Output %v", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &export.ExportSeasonParams{
			Namespace: namespace,
		}
		ok, errOK := exportService.ExportSeasonShort(input, writer)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ExportSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportSeasonCmd.MarkFlagRequired("namespace")
}
