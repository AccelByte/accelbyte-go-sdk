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

// AdminPutPlayerBinaryRecordV1Cmd represents the AdminPutPlayerBinaryRecordV1 command
var AdminPutPlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminPutPlayerBinaryRecordV1",
	Short: "Admin put player binary record V1",
	Long:  `Admin put player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBinaryRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminPutPlayerBinaryRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminPlayerBinaryRecordService.AdminPutPlayerBinaryRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutPlayerBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutPlayerBinaryRecordV1Cmd.MarkFlagRequired("body")
	AdminPutPlayerBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutPlayerBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminPutPlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutPlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	AdminPutPlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutPlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
