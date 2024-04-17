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

// AdminListAdminGameRecordV1Cmd represents the AdminListAdminGameRecordV1 command
var AdminListAdminGameRecordV1Cmd = &cobra.Command{
	Use:   "adminListAdminGameRecordV1",
	Short: "Admin list admin game record V1",
	Long:  `Admin list admin game record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
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
		input := &admin_record.AdminListAdminGameRecordV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
			Tags:      tags,
		}
		ok, errOK := adminRecordService.AdminListAdminGameRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListAdminGameRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListAdminGameRecordV1Cmd.MarkFlagRequired("namespace")
	AdminListAdminGameRecordV1Cmd.Flags().Int64("limit", 20, "Limit")
	AdminListAdminGameRecordV1Cmd.Flags().Int64("offset", 0, "Offset")
	AdminListAdminGameRecordV1Cmd.Flags().String("query", "", "Query")
	AdminListAdminGameRecordV1Cmd.Flags().String("tags", "", "Tags")
}
