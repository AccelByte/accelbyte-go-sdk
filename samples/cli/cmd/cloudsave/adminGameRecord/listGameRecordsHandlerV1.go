// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListGameRecordsHandlerV1Cmd represents the ListGameRecordsHandlerV1 command
var ListGameRecordsHandlerV1Cmd = &cobra.Command{
	Use:   "listGameRecordsHandlerV1",
	Short: "List game records handler V1",
	Long:  `List game records handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameRecordService := &cloudsave.AdminGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		input := &admin_game_record.ListGameRecordsHandlerV1Params{
			Namespace: namespace,
			Query:     &query,
			Limit:     limit,
			Offset:    offset,
		}
		ok, err := adminGameRecordService.ListGameRecordsHandlerV1Short(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	ListGameRecordsHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ListGameRecordsHandlerV1Cmd.MarkFlagRequired("namespace")
	ListGameRecordsHandlerV1Cmd.Flags().StringP("query", "", "", "Query")
	ListGameRecordsHandlerV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	_ = ListGameRecordsHandlerV1Cmd.MarkFlagRequired("limit")
	ListGameRecordsHandlerV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
	_ = ListGameRecordsHandlerV1Cmd.MarkFlagRequired("offset")
}
