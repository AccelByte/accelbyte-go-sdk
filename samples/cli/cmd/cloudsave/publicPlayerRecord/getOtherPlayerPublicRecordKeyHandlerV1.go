// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetOtherPlayerPublicRecordKeyHandlerV1Cmd represents the GetOtherPlayerPublicRecordKeyHandlerV1 command
var GetOtherPlayerPublicRecordKeyHandlerV1Cmd = &cobra.Command{
	Use:   "getOtherPlayerPublicRecordKeyHandlerV1",
	Short: "Get other player public record key handler V1",
	Long:  `Get other player public record key handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_player_record.GetOtherPlayerPublicRecordKeyHandlerV1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicPlayerRecordService.GetOtherPlayerPublicRecordKeyHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetOtherPlayerPublicRecordKeyHandlerV1Cmd.MarkFlagRequired("namespace")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = GetOtherPlayerPublicRecordKeyHandlerV1Cmd.MarkFlagRequired("userId")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().Int64("offset", 0, "Offset")
}
