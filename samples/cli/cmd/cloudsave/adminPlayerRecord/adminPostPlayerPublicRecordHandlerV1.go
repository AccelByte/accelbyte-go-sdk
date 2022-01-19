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

// adminPostPlayerPublicRecordHandlerV1Cmd represents the adminPostPlayerPublicRecordHandlerV1 command
var adminPostPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminPostPlayerPublicRecordHandlerV1",
	Short: "Admin post player public record handler V1",
	Long:  `Admin post player public record handler V1`,
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
		input := &admin_player_record.AdminPostPlayerPublicRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminPlayerRecordService.AdminPostPlayerPublicRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminPostPlayerPublicRecordHandlerV1Cmd)
	adminPostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminPostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	adminPostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = adminPostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminPostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminPostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	adminPostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminPostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
