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

// AdminDeleteUserContentV2Cmd represents the AdminDeleteUserContentV2 command
var AdminDeleteUserContentV2Cmd = &cobra.Command{
	Use:   "adminDeleteUserContentV2",
	Short: "Admin delete user content V2",
	Long:  `Admin delete user content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content_v2.AdminDeleteUserContentV2Params{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminContentV2Service.AdminDeleteUserContentV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteUserContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminDeleteUserContentV2Cmd.MarkFlagRequired("channelId")
	AdminDeleteUserContentV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminDeleteUserContentV2Cmd.MarkFlagRequired("contentId")
	AdminDeleteUserContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteUserContentV2Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserContentV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteUserContentV2Cmd.MarkFlagRequired("userId")
}
