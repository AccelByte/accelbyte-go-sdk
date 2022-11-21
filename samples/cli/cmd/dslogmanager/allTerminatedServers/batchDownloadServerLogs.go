// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package allTerminatedServers

import (
	"bytes"
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BatchDownloadServerLogsCmd represents the BatchDownloadServerLogs command
var BatchDownloadServerLogsCmd = &cobra.Command{
	Use:   "batchDownloadServerLogs",
	Short: "Batch download server logs",
	Long:  `Batch download server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		allTerminatedServersService := &dslogmanager.AllTerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dslogmanagerclientmodels.ModelsBatchDownloadLogsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &all_terminated_servers.BatchDownloadServerLogsParams{
			Body: body,
		}
		writer := bytes.NewBuffer(nil)
		ok, err := allTerminatedServersService.BatchDownloadServerLogsShort(input, writer)
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
	BatchDownloadServerLogsCmd.Flags().String("body", "", "Body")
	_ = BatchDownloadServerLogsCmd.MarkFlagRequired("body")
}
