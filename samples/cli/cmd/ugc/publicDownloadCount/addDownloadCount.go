// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicDownloadCount

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_download_count"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AddDownloadCountCmd represents the AddDownloadCount command
var AddDownloadCountCmd = &cobra.Command{
	Use:   "addDownloadCount",
	Short: "Add download count",
	Long:  `Add download count`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicDownloadCountService := &ugc.PublicDownloadCountService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_download_count.AddDownloadCountParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicDownloadCountService.AddDownloadCountShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AddDownloadCountCmd.Flags().String("contentId", "", "Content id")
	_ = AddDownloadCountCmd.MarkFlagRequired("contentId")
	AddDownloadCountCmd.Flags().String("namespace", "", "Namespace")
	_ = AddDownloadCountCmd.MarkFlagRequired("namespace")
}
