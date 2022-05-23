// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPutPlayerPublicRecordHandlerV1Cmd represents the AdminPutPlayerPublicRecordHandlerV1 command
var AdminPutPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutPlayerPublicRecordHandlerV1",
	Short: "Admin put player public record handler V1",
	Long:  `Admin put player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
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
		input := &admin_player_record.AdminPutPlayerPublicRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := adminPlayerRecordService.AdminPutPlayerPublicRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminPutPlayerPublicRecordHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutPlayerPublicRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutPlayerPublicRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminPutPlayerPublicRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
