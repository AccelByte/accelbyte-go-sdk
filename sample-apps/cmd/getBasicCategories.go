// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		categoryService := &service.CategoryService{
			OauthService: &service.OauthService{
				IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
		}
		namespace := cmd.Flag("namespace").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		listCategoriesBasic, err := categoryService.ListCategoriesBasic(namespace, &storeId)
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
	rootCmd.AddCommand(getBasicCategoriesCmd)
	getBasicCategoriesCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	getBasicCategoriesCmd.MarkFlagRequired("namespace")
	getBasicCategoriesCmd.Flags().StringP("storeId", "s", "", "Store ID")
	getBasicCategoriesCmd.MarkFlagRequired("storeId")
}
