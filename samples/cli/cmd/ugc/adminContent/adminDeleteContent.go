// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteContentCmd represents the AdminDeleteContent command
var AdminDeleteContentCmd = &cobra.Command{
	Use:   "AdminDeleteContent",
	Short: "Admin delete content",
	Long:  `Admin delete content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminDeleteContentParams{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminContentService.AdminDeleteContent(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminDeleteContentCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = AdminDeleteContentCmd.MarkFlagRequired("channelId")
	AdminDeleteContentCmd.Flags().StringP("contentId", "cd", " ", "Content id")
	_ = AdminDeleteContentCmd.MarkFlagRequired("contentId")
	AdminDeleteContentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminDeleteContentCmd.MarkFlagRequired("namespace")
	AdminDeleteContentCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminDeleteContentCmd.MarkFlagRequired("userId")
}
