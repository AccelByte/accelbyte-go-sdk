// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getBasicCategoriesCmd represents the getBasicCategories command
var getBasicCategoriesCmd = &cobra.Command{
	Use:   "getBasicCategories",
	Short: "Get categories basic info.",
	Long:  `Get categories basic info.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		input := &category.ListCategoriesBasicParams{
			Namespace: namespace,
			StoreID:   &storeId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		listCategoriesBasic, err := categoryService.ListCategoriesBasic(input)
		if err != nil {
			return err
		}
		marshal, err := json.Marshal(listCategoriesBasic)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", marshal)
		return nil
	},
}

func init() {
	RootCmd.AddCommand(getBasicCategoriesCmd)
	getBasicCategoriesCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = getBasicCategoriesCmd.MarkFlagRequired("namespace")
	getBasicCategoriesCmd.Flags().StringP("storeId", "s", "", "Store ID")
	_ = getBasicCategoriesCmd.MarkFlagRequired("storeId")
}
