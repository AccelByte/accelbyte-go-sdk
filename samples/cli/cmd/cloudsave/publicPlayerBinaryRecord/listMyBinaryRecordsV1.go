// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerBinaryRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListMyBinaryRecordsV1Cmd represents the ListMyBinaryRecordsV1 command
var ListMyBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "listMyBinaryRecordsV1",
	Short: "List my binary records V1",
	Long:  `List my binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		input := &public_player_binary_record.ListMyBinaryRecordsV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
		}
		ok, errOK := publicPlayerBinaryRecordService.ListMyBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListMyBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListMyBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	ListMyBinaryRecordsV1Cmd.Flags().Int64("limit", 20, "Limit")
	ListMyBinaryRecordsV1Cmd.Flags().Int64("offset", 0, "Offset")
	ListMyBinaryRecordsV1Cmd.Flags().String("query", "", "Query")
}
