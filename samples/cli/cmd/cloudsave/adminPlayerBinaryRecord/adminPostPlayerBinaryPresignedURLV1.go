// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPostPlayerBinaryPresignedURLV1Cmd represents the AdminPostPlayerBinaryPresignedURLV1 command
var AdminPostPlayerBinaryPresignedURLV1Cmd = &cobra.Command{
	Use:   "adminPostPlayerBinaryPresignedURLV1",
	Short: "Admin post player binary presigned URLV1",
	Long:  `Admin post player binary presigned URLV1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminPostPlayerBinaryPresignedURLV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := adminPlayerBinaryRecordService.AdminPostPlayerBinaryPresignedURLV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminPostPlayerBinaryPresignedURLV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("body")
	AdminPostPlayerBinaryPresignedURLV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("key")
	AdminPostPlayerBinaryPresignedURLV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("namespace")
	AdminPostPlayerBinaryPresignedURLV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("userId")
}
