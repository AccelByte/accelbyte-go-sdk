// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicDownloadCountV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_download_count_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicAddDownloadCountV2Cmd represents the PublicAddDownloadCountV2 command
var PublicAddDownloadCountV2Cmd = &cobra.Command{
	Use:   "publicAddDownloadCountV2",
	Short: "Public add download count V2",
	Long:  `Public add download count V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicDownloadCountV2Service := &ugc.PublicDownloadCountV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_download_count_v2.PublicAddDownloadCountV2Params{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicDownloadCountV2Service.PublicAddDownloadCountV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicAddDownloadCountV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicAddDownloadCountV2Cmd.MarkFlagRequired("contentId")
	PublicAddDownloadCountV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicAddDownloadCountV2Cmd.MarkFlagRequired("namespace")
}
