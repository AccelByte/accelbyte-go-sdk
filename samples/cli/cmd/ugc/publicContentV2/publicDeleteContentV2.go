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

// PublicDeleteContentV2Cmd represents the PublicDeleteContentV2 command
var PublicDeleteContentV2Cmd = &cobra.Command{
	Use:   "publicDeleteContentV2",
	Short: "Public delete content V2",
	Long:  `Public delete content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.PublicDeleteContentV2Params{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := publicContentV2Service.PublicDeleteContentV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeleteContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = PublicDeleteContentV2Cmd.MarkFlagRequired("channelId")
	PublicDeleteContentV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicDeleteContentV2Cmd.MarkFlagRequired("contentId")
	PublicDeleteContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeleteContentV2Cmd.MarkFlagRequired("namespace")
	PublicDeleteContentV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicDeleteContentV2Cmd.MarkFlagRequired("userId")
}
