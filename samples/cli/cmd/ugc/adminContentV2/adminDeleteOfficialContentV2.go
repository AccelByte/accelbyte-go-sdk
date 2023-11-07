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

// AdminDeleteOfficialContentV2Cmd represents the AdminDeleteOfficialContentV2 command
var AdminDeleteOfficialContentV2Cmd = &cobra.Command{
	Use:   "adminDeleteOfficialContentV2",
	Short: "Admin delete official content V2",
	Long:  `Admin delete official content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content_v2.AdminDeleteOfficialContentV2Params{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		errNoContent := adminContentV2Service.AdminDeleteOfficialContentV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteOfficialContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminDeleteOfficialContentV2Cmd.MarkFlagRequired("channelId")
	AdminDeleteOfficialContentV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminDeleteOfficialContentV2Cmd.MarkFlagRequired("contentId")
	AdminDeleteOfficialContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteOfficialContentV2Cmd.MarkFlagRequired("namespace")
}
