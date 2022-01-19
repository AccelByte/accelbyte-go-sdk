// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetRootCategoriesCmd represents the publicGetRootCategories command
var publicGetRootCategoriesCmd = &cobra.Command{
	Use:   "publicGetRootCategories",
	Short: "Public get root categories",
	Long:  `Public get root categories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.PublicGetRootCategoriesParams{
			Namespace: namespace,
			Language:  &language,
			StoreID:   &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.PublicGetRootCategories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetRootCategoriesCmd)
	publicGetRootCategoriesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetRootCategoriesCmd.MarkFlagRequired("namespace")
	publicGetRootCategoriesCmd.Flags().StringP("language", "l", " ", "Language")
	publicGetRootCategoriesCmd.Flags().StringP("storeId", "s", " ", "Store id")
}
