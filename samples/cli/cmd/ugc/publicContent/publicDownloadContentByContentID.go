// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicDownloadContentByContentIDCmd represents the publicDownloadContentByContentID command
var publicDownloadContentByContentIDCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.PublicDownloadContentByContentID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicDownloadContentByContentIDCmd)
	publicDownloadContentByContentIDCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = publicDownloadContentByContentIDCmd.MarkFlagRequired("contentId")
	publicDownloadContentByContentIDCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicDownloadContentByContentIDCmd.MarkFlagRequired("namespace")
}
