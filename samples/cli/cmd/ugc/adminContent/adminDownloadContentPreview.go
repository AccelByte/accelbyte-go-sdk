// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDownloadContentPreviewCmd represents the adminDownloadContentPreview command
var adminDownloadContentPreviewCmd = &cobra.Command{
	Use:   "adminDownloadContentPreview",
	Short: "Admin download content preview",
	Long:  `Admin download content preview`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.AdminDownloadContentPreviewParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminDownloadContentPreview(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDownloadContentPreviewCmd)
	adminDownloadContentPreviewCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = adminDownloadContentPreviewCmd.MarkFlagRequired("contentId")
	adminDownloadContentPreviewCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDownloadContentPreviewCmd.MarkFlagRequired("namespace")
}
