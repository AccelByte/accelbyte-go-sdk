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

// DownloadContentByShareCodeCmd represents the DownloadContentByShareCode command
var DownloadContentByShareCodeCmd = &cobra.Command{
	Use:   "downloadContentByShareCode",
	Short: "Download content by share code",
	Long:  `Download content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &public_content.DownloadContentByShareCodeParams{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, err := publicContentService.DownloadContentByShareCodeShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	DownloadContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadContentByShareCodeCmd.MarkFlagRequired("namespace")
	DownloadContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = DownloadContentByShareCodeCmd.MarkFlagRequired("shareCode")
}
