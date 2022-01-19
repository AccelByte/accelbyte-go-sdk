// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_download_count"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addDownloadCountCmd represents the addDownloadCount command
var addDownloadCountCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicDownloadCountService.AddDownloadCount(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addDownloadCountCmd)
	addDownloadCountCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = addDownloadCountCmd.MarkFlagRequired("contentId")
	addDownloadCountCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = addDownloadCountCmd.MarkFlagRequired("namespace")
}
