// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteContentCmd represents the DeleteContent command
var DeleteContentCmd = &cobra.Command{
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
		errInput := publicContentService.DeleteContentShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteContentCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = DeleteContentCmd.MarkFlagRequired("channelId")
	DeleteContentCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = DeleteContentCmd.MarkFlagRequired("contentId")
	DeleteContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteContentCmd.MarkFlagRequired("namespace")
	DeleteContentCmd.Flags().StringP("userId", "", "", "User id")
	_ = DeleteContentCmd.MarkFlagRequired("userId")
}
