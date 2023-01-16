// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPlayerRecordsBulkHandlerV1Cmd represents the GetPlayerRecordsBulkHandlerV1 command
var GetPlayerRecordsBulkHandlerV1Cmd = &cobra.Command{
	Use:   "getPlayerRecordsBulkHandlerV1",
	Short: "Get player records bulk handler V1",
	Long:  `Get player records bulk handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_player_record.GetPlayerRecordsBulkHandlerV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := publicPlayerRecordService.GetPlayerRecordsBulkHandlerV1Short(input)
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
	GetPlayerRecordsBulkHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = GetPlayerRecordsBulkHandlerV1Cmd.MarkFlagRequired("body")
	GetPlayerRecordsBulkHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlayerRecordsBulkHandlerV1Cmd.MarkFlagRequired("namespace")
}
