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

// PublicDownloadContentByShareCodeCmd represents the PublicDownloadContentByShareCode command
var PublicDownloadContentByShareCodeCmd = &cobra.Command{
	Use:   "publicDownloadContentByShareCode",
	Short: "Public download content by share code",
	Long:  `Public download content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &public_content.PublicDownloadContentByShareCodeParams{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, errOK := publicContentService.PublicDownloadContentByShareCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicDownloadContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDownloadContentByShareCodeCmd.MarkFlagRequired("namespace")
	PublicDownloadContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = PublicDownloadContentByShareCodeCmd.MarkFlagRequired("shareCode")
}
