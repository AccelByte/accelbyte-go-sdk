// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListOtherPlayerPublicBinaryRecordsV1Cmd represents the ListOtherPlayerPublicBinaryRecordsV1 command
var ListOtherPlayerPublicBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "listOtherPlayerPublicBinaryRecordsV1",
	Short: "List other player public binary records V1",
	Long:  `List other player public binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &public_player_binary_record.ListOtherPlayerPublicBinaryRecordsV1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			Tags:      tags,
		}
		ok, errOK := publicPlayerBinaryRecordService.ListOtherPlayerPublicBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListOtherPlayerPublicBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListOtherPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	ListOtherPlayerPublicBinaryRecordsV1Cmd.Flags().String("userId", "", "User id")
	_ = ListOtherPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("userId")
	ListOtherPlayerPublicBinaryRecordsV1Cmd.Flags().Int64("limit", 20, "Limit")
	ListOtherPlayerPublicBinaryRecordsV1Cmd.Flags().Int64("offset", 0, "Offset")
	ListOtherPlayerPublicBinaryRecordsV1Cmd.Flags().String("tags", "", "Tags")
}
