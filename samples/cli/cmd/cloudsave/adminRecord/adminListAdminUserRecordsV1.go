// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListAdminUserRecordsV1Cmd represents the AdminListAdminUserRecordsV1 command
var AdminListAdminUserRecordsV1Cmd = &cobra.Command{
	Use:   "adminListAdminUserRecordsV1",
	Short: "Admin list admin user records V1",
	Long:  `Admin list admin user records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
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
		input := &admin_record.AdminListAdminUserRecordsV1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
			Tags:      tags,
		}
		ok, errOK := adminRecordService.AdminListAdminUserRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListAdminUserRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListAdminUserRecordsV1Cmd.MarkFlagRequired("namespace")
	AdminListAdminUserRecordsV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminListAdminUserRecordsV1Cmd.MarkFlagRequired("userId")
	AdminListAdminUserRecordsV1Cmd.Flags().Int64("limit", 20, "Limit")
	AdminListAdminUserRecordsV1Cmd.Flags().Int64("offset", 0, "Offset")
	AdminListAdminUserRecordsV1Cmd.Flags().String("query", "", "Query")
	AdminListAdminUserRecordsV1Cmd.Flags().String("tags", "", "Tags")
}
