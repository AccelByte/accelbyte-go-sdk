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

// PublicListContentDownloaderV2Cmd represents the PublicListContentDownloaderV2 command
var PublicListContentDownloaderV2Cmd = &cobra.Command{
	Use:   "publicListContentDownloaderV2",
	Short: "Public list content downloader V2",
	Long:  `Public list content downloader V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicDownloadCountV2Service := &ugc.PublicDownloadCountV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_download_count_v2.PublicListContentDownloaderV2Params{
			ContentID: contentId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			UserID:    &userId,
		}
		ok, errOK := publicDownloadCountV2Service.PublicListContentDownloaderV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListContentDownloaderV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicListContentDownloaderV2Cmd.MarkFlagRequired("contentId")
	PublicListContentDownloaderV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListContentDownloaderV2Cmd.MarkFlagRequired("namespace")
	PublicListContentDownloaderV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicListContentDownloaderV2Cmd.Flags().Int64("offset", 0, "Offset")
	PublicListContentDownloaderV2Cmd.Flags().String("sortBy", "", "Sort by")
	PublicListContentDownloaderV2Cmd.Flags().String("userId", "", "User id")
}
