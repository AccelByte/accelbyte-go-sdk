// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// PutPlayerRecordHandlerV1Cmd represents the PutPlayerRecordHandlerV1 command
var PutPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "putPlayerRecordHandlerV1",
	Short: "Put player record handler V1",
	Long:  `Put player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPlayerRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.PutPlayerRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := publicPlayerRecordService.PutPlayerRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PutPlayerRecordHandlerV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("body")
	PutPlayerRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	PutPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	PutPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
