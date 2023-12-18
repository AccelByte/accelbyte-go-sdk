// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListContentV2Cmd represents the AdminListContentV2 command
var AdminListContentV2Cmd = &cobra.Command{
	Use:   "adminListContentV2",
	Short: "Admin list content V2",
	Long:  `Admin list content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		isOfficial, _ := cmd.Flags().GetBool("isOfficial")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		subType, _ := cmd.Flags().GetString("subType")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		type_, _ := cmd.Flags().GetString("type")
		input := &admin_content_v2.AdminListContentV2Params{
			Namespace:  namespace,
			IsOfficial: &isOfficial,
			Limit:      &limit,
			Name:       &name,
			Offset:     &offset,
			SortBy:     &sortBy,
			SubType:    &subType,
			Tags:       tags,
			Type:       &type_,
		}
		ok, errOK := adminContentV2Service.AdminListContentV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListContentV2Cmd.MarkFlagRequired("namespace")
	AdminListContentV2Cmd.Flags().Bool("isOfficial", false, "Is official")
	AdminListContentV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminListContentV2Cmd.Flags().String("name", "", "Name")
	AdminListContentV2Cmd.Flags().Int64("offset", 0, "Offset")
	AdminListContentV2Cmd.Flags().String("sortBy", "", "Sort by")
	AdminListContentV2Cmd.Flags().String("subType", "", "Sub type")
	AdminListContentV2Cmd.Flags().String("tags", "", "Tags")
	AdminListContentV2Cmd.Flags().String("type", "", "Type")
}
