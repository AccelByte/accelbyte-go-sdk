// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListGameBinaryRecordsV1Cmd represents the AdminListGameBinaryRecordsV1 command
var AdminListGameBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "adminListGameBinaryRecordsV1",
	Short: "Admin list game binary records V1",
	Long:  `Admin list game binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameBinaryRecordService := &cloudsave.AdminGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &admin_game_binary_record.AdminListGameBinaryRecordsV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
			Tags:      tags,
		}
		ok, errOK := adminGameBinaryRecordService.AdminListGameBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListGameBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListGameBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	AdminListGameBinaryRecordsV1Cmd.Flags().Int64("limit", 20, "Limit")
	AdminListGameBinaryRecordsV1Cmd.Flags().Int64("offset", 0, "Offset")
	AdminListGameBinaryRecordsV1Cmd.Flags().String("query", "", "Query")
	AdminListGameBinaryRecordsV1Cmd.Flags().String("tags", "", "Tags")
}
