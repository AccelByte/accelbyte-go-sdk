// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItemTypes

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_item_types"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateItemTypeCmd represents the AdminCreateItemType command
var AdminCreateItemTypeCmd = &cobra.Command{
	Use:   "adminCreateItemType",
	Short: "Admin create item type",
	Long:  `Admin create item type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemTypesService := &inventory.AdminItemTypesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsCreateItemTypeReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_item_types.AdminCreateItemTypeParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := adminItemTypesService.AdminCreateItemTypeShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateItemTypeCmd.Flags().String("body", "", "Body")
	_ = AdminCreateItemTypeCmd.MarkFlagRequired("body")
	AdminCreateItemTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateItemTypeCmd.MarkFlagRequired("namespace")
}
