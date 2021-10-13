// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getCategoryCmd represents the getCategoryByPath command
var getCategoryCmd = &cobra.Command{
	Use:   "getCategory",
	Short: "Get category by category path.",
	Long:  `Get category by category path`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &service.CategoryService{
			OauthService: &iam.OAuth20Service{
				Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
		}
		namespace := cmd.Flag("namespace").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		categoryInfo, err := categoryService.GetCategory(namespace, categoryPath, &storeId)
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
	rootCmd.AddCommand(getCategoryCmd)
	getCategoryCmd.Flags().StringP("namespace", "n", "", "Category namespace.")
	getCategoryCmd.MarkFlagRequired("namespace")
	getCategoryCmd.Flags().StringP("categoryPath", "p", "", "Category path.")
	getCategoryCmd.MarkFlagRequired("categoryPath")
	getCategoryCmd.Flags().StringP("storeId", "", "", "Store ID.")
}
