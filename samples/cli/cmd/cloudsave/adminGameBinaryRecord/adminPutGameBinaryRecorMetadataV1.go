// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPutGameBinaryRecorMetadataV1Cmd represents the AdminPutGameBinaryRecorMetadataV1 command
var AdminPutGameBinaryRecorMetadataV1Cmd = &cobra.Command{
	Use:   "adminPutGameBinaryRecorMetadataV1",
	Short: "Admin put game binary recor metadata V1",
	Long:  `Admin put game binary recor metadata V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameBinaryRecordService := &cloudsave.AdminGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsGameBinaryRecordMetadataRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_binary_record.AdminPutGameBinaryRecorMetadataV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminGameBinaryRecordService.AdminPutGameBinaryRecorMetadataV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutGameBinaryRecorMetadataV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutGameBinaryRecorMetadataV1Cmd.MarkFlagRequired("body")
	AdminPutGameBinaryRecorMetadataV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutGameBinaryRecorMetadataV1Cmd.MarkFlagRequired("key")
	AdminPutGameBinaryRecorMetadataV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutGameBinaryRecorMetadataV1Cmd.MarkFlagRequired("namespace")
}
