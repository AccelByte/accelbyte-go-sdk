// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package category

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListCategoriesBasicCmd represents the ListCategoriesBasic command
var ListCategoriesBasicCmd = &cobra.Command{
	Use:   "listCategoriesBasic",
	Short: "List categories basic",
	Long:  `List categories basic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &category.ListCategoriesBasicParams{
			Namespace: namespace,
			StoreID:   &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.ListCategoriesBasic(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	ListCategoriesBasicCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ListCategoriesBasicCmd.MarkFlagRequired("namespace")
	ListCategoriesBasicCmd.Flags().StringP("storeId", "", "", "Store id")
}
