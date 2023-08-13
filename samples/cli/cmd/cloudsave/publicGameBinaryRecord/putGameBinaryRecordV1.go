// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PutGameBinaryRecordV1Cmd represents the PutGameBinaryRecordV1 command
var PutGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "putGameBinaryRecordV1",
	Short: "Put game binary record V1",
	Long:  `Put game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameBinaryRecordService := &cloudsave.PublicGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBinaryRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_binary_record.PutGameBinaryRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := publicGameBinaryRecordService.PutGameBinaryRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PutGameBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = PutGameBinaryRecordV1Cmd.MarkFlagRequired("body")
	PutGameBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = PutGameBinaryRecordV1Cmd.MarkFlagRequired("key")
	PutGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PutGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
