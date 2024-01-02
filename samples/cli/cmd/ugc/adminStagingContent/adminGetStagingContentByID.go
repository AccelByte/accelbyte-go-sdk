// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminStagingContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_staging_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetStagingContentByIDCmd represents the AdminGetStagingContentByID command
var AdminGetStagingContentByIDCmd = &cobra.Command{
	Use:   "adminGetStagingContentByID",
	Short: "Admin get staging content by ID",
	Long:  `Admin get staging content by ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminStagingContentService := &ugc.AdminStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_staging_content.AdminGetStagingContentByIDParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminStagingContentService.AdminGetStagingContentByIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetStagingContentByIDCmd.Flags().String("contentId", "", "Content id")
	_ = AdminGetStagingContentByIDCmd.MarkFlagRequired("contentId")
	AdminGetStagingContentByIDCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetStagingContentByIDCmd.MarkFlagRequired("namespace")
}
