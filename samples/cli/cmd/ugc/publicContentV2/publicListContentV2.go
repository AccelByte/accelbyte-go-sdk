// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListContentV2Cmd represents the PublicListContentV2 command
var PublicListContentV2Cmd = &cobra.Command{
	Use:   "publicListContentV2",
	Short: "Public list content V2",
	Long:  `Public list content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
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
		input := &public_content_v2.PublicListContentV2Params{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			SortBy:    &sortBy,
			SubType:   &subType,
			Tags:      tags,
			Type:      &type_,
		}
		ok, errOK := publicContentV2Service.PublicListContentV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListContentV2Cmd.MarkFlagRequired("namespace")
	PublicListContentV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicListContentV2Cmd.Flags().String("name", "", "Name")
	PublicListContentV2Cmd.Flags().Int64("offset", 0, "Offset")
	PublicListContentV2Cmd.Flags().String("sortBy", "", "Sort by")
	PublicListContentV2Cmd.Flags().String("subType", "", "Sub type")
	PublicListContentV2Cmd.Flags().String("tags", "", "Tags")
	PublicListContentV2Cmd.Flags().String("type", "", "Type")
}
