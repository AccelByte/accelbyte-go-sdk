// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDownloadContentPreviewCmd represents the PublicDownloadContentPreview command
var PublicDownloadContentPreviewCmd = &cobra.Command{
	Use:   "publicDownloadContentPreview",
	Short: "Public download content preview",
	Long:  `Public download content preview`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_content_legacy.PublicDownloadContentPreviewParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicContentLegacyService.PublicDownloadContentPreviewShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicDownloadContentPreviewCmd.Flags().String("contentId", "", "Content id")
	_ = PublicDownloadContentPreviewCmd.MarkFlagRequired("contentId")
	PublicDownloadContentPreviewCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDownloadContentPreviewCmd.MarkFlagRequired("namespace")
}
