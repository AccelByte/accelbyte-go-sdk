// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PutPlayerBinaryRecordV1Cmd represents the PutPlayerBinaryRecordV1 command
var PutPlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "putPlayerBinaryRecordV1",
	Short: "Put player binary record V1",
	Long:  `Put player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_binary_record.PutPlayerBinaryRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicPlayerBinaryRecordService.PutPlayerBinaryRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PutPlayerBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = PutPlayerBinaryRecordV1Cmd.MarkFlagRequired("body")
	PutPlayerBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = PutPlayerBinaryRecordV1Cmd.MarkFlagRequired("key")
	PutPlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PutPlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	PutPlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = PutPlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
