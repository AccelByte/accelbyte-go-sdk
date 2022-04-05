// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// AdminPostPlayerRecordHandlerV1Cmd represents the AdminPostPlayerRecordHandlerV1 command
var AdminPostPlayerRecordHandlerV1Cmd = &cobra.Command{
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
		errInput := adminPlayerRecordService.AdminPostPlayerRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminPostPlayerRecordHandlerV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("body")
	AdminPostPlayerRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = AdminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminPostPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminPostPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminPostPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
