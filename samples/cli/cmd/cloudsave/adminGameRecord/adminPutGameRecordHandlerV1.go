// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPutGameRecordHandlerV1Cmd represents the AdminPutGameRecordHandlerV1 command
var AdminPutGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutGameRecordHandlerV1",
	Short: "Admin put game record handler V1",
	Long:  `Admin put game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameRecordService := &cloudsave.AdminGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsGameRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_record.AdminPutGameRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminGameRecordService.AdminPutGameRecordHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutGameRecordHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
