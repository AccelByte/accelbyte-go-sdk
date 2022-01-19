// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDeleteContentCmd represents the adminDeleteContent command
var adminDeleteContentCmd = &cobra.Command{
	Use:   "adminDeleteContent",
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
	cmd.RootCmd.AddCommand(adminDeleteContentCmd)
	adminDeleteContentCmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = adminDeleteContentCmd.MarkFlagRequired("channelId")
	adminDeleteContentCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = adminDeleteContentCmd.MarkFlagRequired("contentId")
	adminDeleteContentCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteContentCmd.MarkFlagRequired("namespace")
	adminDeleteContentCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminDeleteContentCmd.MarkFlagRequired("userId")
}
