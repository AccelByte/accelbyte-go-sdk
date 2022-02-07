// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDownloadContentPreviewCmd represents the AdminDownloadContentPreview command
var AdminDownloadContentPreviewCmd = &cobra.Command{
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
	AdminDownloadContentPreviewCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = AdminDownloadContentPreviewCmd.MarkFlagRequired("contentId")
	AdminDownloadContentPreviewCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDownloadContentPreviewCmd.MarkFlagRequired("namespace")
}
