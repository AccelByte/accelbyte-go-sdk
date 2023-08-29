// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTags

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_tags"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteTagCmd represents the AdminDeleteTag command
var AdminDeleteTagCmd = &cobra.Command{
	Use:   "adminDeleteTag",
	Short: "Admin delete tag",
	Long:  `Admin delete tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagsService := &inventory.AdminTagsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagName, _ := cmd.Flags().GetString("tagName")
		input := &admin_tags.AdminDeleteTagParams{
			Namespace: namespace,
			TagName:   tagName,
		}
		errNoContent := adminTagsService.AdminDeleteTagShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTagCmd.MarkFlagRequired("namespace")
	AdminDeleteTagCmd.Flags().String("tagName", "", "Tag name")
	_ = AdminDeleteTagCmd.MarkFlagRequired("tagName")
}
