// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateCategoryCmd represents the updateCategory command
var updateCategoryCmd = &cobra.Command{
	Use:   "updateCategory",
	Short: "Update category.",
	Long: `Update category. The category update data is a category object, example:
{
	"storeId": "store-id",
	"localizationDisplayNames": {"en" : "Games"}
}`,
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
		localizationDisplayNamesString := cmd.Flag("localizationDisplayNames").Value.String()
		var localizationDisplayNames map[string]string
		err := json.Unmarshal([]byte(localizationDisplayNamesString), &localizationDisplayNames)
		if err != nil {
			logrus.Error("Failed unmarshal localization display name map")
			return err
		}
		params := &platformclientmodels.CategoryUpdate{
			LocalizationDisplayNames: localizationDisplayNames,
		}
		categoryInfo, err := categoryService.UpdateCategory(namespace, storeId, categoryPath, *params)
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
	rootCmd.AddCommand(updateCategoryCmd)
	updateCategoryCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	updateCategoryCmd.MarkFlagRequired("namespace")
	updateCategoryCmd.Flags().StringP("storeId", "", "", "Store ID")
	updateCategoryCmd.MarkFlagRequired("storeId")
	updateCategoryCmd.Flags().StringP("categoryPath", "p", "", "Category path")
	updateCategoryCmd.MarkFlagRequired("categoryPath")
	updateCategoryCmd.Flags().StringP("localizationDisplayNames", "d", "", "Localization display names must contains default language default names. Value is json string of map. Example: {\"en-US\": \"/Games\"}")
	updateCategoryCmd.MarkFlagRequired("localizationDisplayNames")

}
