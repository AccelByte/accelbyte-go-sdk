// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteContentCmd represents the deleteContent command
var deleteContentCmd = &cobra.Command{
	Use:   "deleteContent",
	Short: "Delete content",
	Long:  `Delete content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.DeleteContentParams{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicContentService.DeleteContent(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteContentCmd)
	deleteContentCmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = deleteContentCmd.MarkFlagRequired("channelId")
	deleteContentCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = deleteContentCmd.MarkFlagRequired("contentId")
	deleteContentCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteContentCmd.MarkFlagRequired("namespace")
	deleteContentCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteContentCmd.MarkFlagRequired("userId")
}
