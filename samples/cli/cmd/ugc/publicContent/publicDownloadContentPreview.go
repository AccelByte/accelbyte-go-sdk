// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDownloadContentPreviewCmd represents the PublicDownloadContentPreview command
var PublicDownloadContentPreviewCmd = &cobra.Command{
	Use:   "PublicDownloadContentPreview",
	Short: "Public download content preview",
	Long:  `Public download content preview`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_content.PublicDownloadContentPreviewParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.PublicDownloadContentPreview(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicDownloadContentPreviewCmd.Flags().StringP("contentId", "cd", " ", "Content id")
	_ = PublicDownloadContentPreviewCmd.MarkFlagRequired("contentId")
	PublicDownloadContentPreviewCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicDownloadContentPreviewCmd.MarkFlagRequired("namespace")
}
