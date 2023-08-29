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

// AdminListTagsCmd represents the AdminListTags command
var AdminListTagsCmd = &cobra.Command{
	Use:   "adminListTags",
	Short: "Admin list tags",
	Long:  `Admin list tags`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagsService := &inventory.AdminTagsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		owner, _ := cmd.Flags().GetString("owner")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_tags.AdminListTagsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Owner:     &owner,
			SortBy:    &sortBy,
		}
		ok, errOK := adminTagsService.AdminListTagsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListTagsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListTagsCmd.MarkFlagRequired("namespace")
	AdminListTagsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListTagsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListTagsCmd.Flags().String("owner", "", "Owner")
	AdminListTagsCmd.Flags().String("sortBy", "", "Sort by")
}
