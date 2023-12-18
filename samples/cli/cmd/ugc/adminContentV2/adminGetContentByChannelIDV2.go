// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetContentByChannelIDV2Cmd represents the AdminGetContentByChannelIDV2 command
var AdminGetContentByChannelIDV2Cmd = &cobra.Command{
	Use:   "adminGetContentByChannelIDV2",
	Short: "Admin get content by channel IDV2",
	Long:  `Admin get content by channel IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_content_v2.AdminGetContentByChannelIDV2Params{
			ChannelID: channelId,
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := adminContentV2Service.AdminGetContentByChannelIDV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetContentByChannelIDV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminGetContentByChannelIDV2Cmd.MarkFlagRequired("channelId")
	AdminGetContentByChannelIDV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetContentByChannelIDV2Cmd.MarkFlagRequired("namespace")
	AdminGetContentByChannelIDV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetContentByChannelIDV2Cmd.Flags().String("name", "", "Name")
	AdminGetContentByChannelIDV2Cmd.Flags().Int64("offset", 0, "Offset")
	AdminGetContentByChannelIDV2Cmd.Flags().String("sortBy", "", "Sort by")
}
