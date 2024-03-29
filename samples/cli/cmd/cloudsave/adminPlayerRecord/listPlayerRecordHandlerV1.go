// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListPlayerRecordHandlerV1Cmd represents the ListPlayerRecordHandlerV1 command
var ListPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "listPlayerRecordHandlerV1",
	Short: "List player record handler V1",
	Long:  `List player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		input := &admin_player_record.ListPlayerRecordHandlerV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
		}
		ok, errOK := adminPlayerRecordService.ListPlayerRecordHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListPlayerRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	ListPlayerRecordHandlerV1Cmd.Flags().Int64("limit", 20, "Limit")
	ListPlayerRecordHandlerV1Cmd.Flags().Int64("offset", 0, "Offset")
	ListPlayerRecordHandlerV1Cmd.Flags().String("query", "", "Query")
}
