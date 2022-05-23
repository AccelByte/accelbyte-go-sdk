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

// AdminPostGameRecordHandlerV1Cmd represents the AdminPostGameRecordHandlerV1 command
var AdminPostGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminPostGameRecordHandlerV1",
	Short: "Admin post game record handler V1",
	Long:  `Admin post game record handler V1`,
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
		input := &admin_game_record.AdminPostGameRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		errInput := adminGameRecordService.AdminPostGameRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminPostGameRecordHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	AdminPostGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPostGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminPostGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
