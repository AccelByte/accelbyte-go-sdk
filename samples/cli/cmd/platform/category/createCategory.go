// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package category

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateCategoryCmd represents the CreateCategory command
var CreateCategoryCmd = &cobra.Command{
	Use:   "createCategory",
	Short: "Create category",
	Long:  `Create category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		categoryService := &platform.CategoryService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CategoryCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &category.CreateCategoryParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := categoryService.CreateCategory(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	CreateCategoryCmd.Flags().StringP("body", "", "", "Body")
	CreateCategoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateCategoryCmd.MarkFlagRequired("namespace")
	CreateCategoryCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = CreateCategoryCmd.MarkFlagRequired("storeId")
}
