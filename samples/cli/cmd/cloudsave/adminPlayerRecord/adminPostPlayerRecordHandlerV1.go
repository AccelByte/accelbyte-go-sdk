// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminPostPlayerRecordHandlerV1Cmd represents the adminPostPlayerRecordHandlerV1 command
var adminPostPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminPostPlayerRecordHandlerV1",
	Short: "Admin post player record handler V1",
	Long:  `Admin post player record handler V1`,
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
		input := &admin_player_record.AdminPostPlayerRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminPlayerRecordService.AdminPostPlayerRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminPostPlayerRecordHandlerV1Cmd)
	adminPostPlayerRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("body")
	adminPostPlayerRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = adminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminPostPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	adminPostPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
