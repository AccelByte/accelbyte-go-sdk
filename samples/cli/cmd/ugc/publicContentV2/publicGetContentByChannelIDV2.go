// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetContentByChannelIDV2Cmd represents the PublicGetContentByChannelIDV2 command
var PublicGetContentByChannelIDV2Cmd = &cobra.Command{
	Use:   "publicGetContentByChannelIDV2",
	Short: "Public get content by channel IDV2",
	Long:  `Public get content by channel IDV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_content_v2.PublicGetContentByChannelIDV2Params{
			ChannelID: channelId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := publicContentV2Service.PublicGetContentByChannelIDV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetContentByChannelIDV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = PublicGetContentByChannelIDV2Cmd.MarkFlagRequired("channelId")
	PublicGetContentByChannelIDV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentByChannelIDV2Cmd.MarkFlagRequired("namespace")
	PublicGetContentByChannelIDV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicGetContentByChannelIDV2Cmd.Flags().Int64("offset", 0, "Offset")
	PublicGetContentByChannelIDV2Cmd.Flags().String("sortBy", "", "Sort by")
}
