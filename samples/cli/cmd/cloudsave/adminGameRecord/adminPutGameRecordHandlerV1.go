// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminPutGameRecordHandlerV1Cmd represents the adminPutGameRecordHandlerV1 command
var adminPutGameRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminGameRecordService.AdminPutGameRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminPutGameRecordHandlerV1Cmd)
	adminPutGameRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminPutGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	adminPutGameRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = adminPutGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminPutGameRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminPutGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
