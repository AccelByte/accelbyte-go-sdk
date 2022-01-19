// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listGameRecordsHandlerV1Cmd represents the listGameRecordsHandlerV1 command
var listGameRecordsHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGameRecordService.ListGameRecordsHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listGameRecordsHandlerV1Cmd)
	listGameRecordsHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listGameRecordsHandlerV1Cmd.MarkFlagRequired("namespace")
	listGameRecordsHandlerV1Cmd.Flags().StringP("query", "q", " ", "Query")
	listGameRecordsHandlerV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	_ = listGameRecordsHandlerV1Cmd.MarkFlagRequired("limit")
	listGameRecordsHandlerV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
	_ = listGameRecordsHandlerV1Cmd.MarkFlagRequired("offset")
}
