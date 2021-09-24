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

// deleteCategoryCmd represents the deleteCategory command
var deleteCategoryCmd = &cobra.Command{
	Use:   "deleteCategory",
	Short: "Delete category by path.",
	Long:  `Delete category by path.`,
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
		categoryPath := cmd.Flag("categoryPath").Value.String()
		categoryInfo, err := categoryService.DeleteCategory(namespace, storeId, categoryPath)
		if err != nil {
			return err
		}
		marshal, err := json.Marshal(categoryInfo)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", marshal)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteCategoryCmd)
	deleteCategoryCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	deleteCategoryCmd.MarkFlagRequired("namespace")
	deleteCategoryCmd.Flags().StringP("storeId", "", "", "Store ID")
	deleteCategoryCmd.MarkFlagRequired("storeId")
	deleteCategoryCmd.Flags().StringP("categoryPath", "p", "", "Category path")
	deleteCategoryCmd.MarkFlagRequired("categoryPath")
}
