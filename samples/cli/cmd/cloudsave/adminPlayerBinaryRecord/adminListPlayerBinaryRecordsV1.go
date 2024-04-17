// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListPlayerBinaryRecordsV1Cmd represents the AdminListPlayerBinaryRecordsV1 command
var AdminListPlayerBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "adminListPlayerBinaryRecordsV1",
	Short: "Admin list player binary records V1",
	Long:  `Admin list player binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &admin_player_binary_record.AdminListPlayerBinaryRecordsV1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
			Tags:      tags,
		}
		ok, errOK := adminPlayerBinaryRecordService.AdminListPlayerBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListPlayerBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListPlayerBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	AdminListPlayerBinaryRecordsV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminListPlayerBinaryRecordsV1Cmd.MarkFlagRequired("userId")
	AdminListPlayerBinaryRecordsV1Cmd.Flags().Int64("limit", 20, "Limit")
	AdminListPlayerBinaryRecordsV1Cmd.Flags().Int64("offset", 0, "Offset")
	AdminListPlayerBinaryRecordsV1Cmd.Flags().String("query", "", "Query")
	AdminListPlayerBinaryRecordsV1Cmd.Flags().String("tags", "", "Tags")
}
