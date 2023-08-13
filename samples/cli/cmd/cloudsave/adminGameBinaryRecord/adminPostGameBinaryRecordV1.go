// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPostGameBinaryRecordV1Cmd represents the AdminPostGameBinaryRecordV1 command
var AdminPostGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminPostGameBinaryRecordV1",
	Short: "Admin post game binary record V1",
	Long:  `Admin post game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameBinaryRecordService := &cloudsave.AdminGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsGameBinaryRecordCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_binary_record.AdminPostGameBinaryRecordV1Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := adminGameBinaryRecordService.AdminPostGameBinaryRecordV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminPostGameBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostGameBinaryRecordV1Cmd.MarkFlagRequired("body")
	AdminPostGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
