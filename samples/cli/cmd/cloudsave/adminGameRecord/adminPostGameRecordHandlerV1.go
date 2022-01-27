// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminGameRecord

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

// adminPostGameRecordHandlerV1Cmd represents the adminPostGameRecordHandlerV1 command
var adminPostGameRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminGameRecordService.AdminPostGameRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminPostGameRecordHandlerV1Cmd)
	adminPostGameRecordHandlerV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminPostGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	adminPostGameRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = adminPostGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminPostGameRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminPostGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
