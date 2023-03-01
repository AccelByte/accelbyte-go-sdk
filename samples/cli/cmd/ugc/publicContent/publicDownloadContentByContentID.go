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

// PublicDownloadContentByContentIDCmd represents the PublicDownloadContentByContentID command
var PublicDownloadContentByContentIDCmd = &cobra.Command{
	Use:   "publicDownloadContentByContentID",
	Short: "Public download content by content ID",
	Long:  `Public download content by content ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_content.PublicDownloadContentByContentIDParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicContentService.PublicDownloadContentByContentIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicDownloadContentByContentIDCmd.Flags().String("contentId", "", "Content id")
	_ = PublicDownloadContentByContentIDCmd.MarkFlagRequired("contentId")
	PublicDownloadContentByContentIDCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDownloadContentByContentIDCmd.MarkFlagRequired("namespace")
}
