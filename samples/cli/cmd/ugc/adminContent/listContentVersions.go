// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListContentVersionsCmd represents the ListContentVersions command
var ListContentVersionsCmd = &cobra.Command{
	Use:   "listContentVersions",
	Short: "List content versions",
	Long:  `List content versions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.ListContentVersionsParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentService.ListContentVersionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListContentVersionsCmd.Flags().String("contentId", "", "Content id")
	_ = ListContentVersionsCmd.MarkFlagRequired("contentId")
	ListContentVersionsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListContentVersionsCmd.MarkFlagRequired("namespace")
}
