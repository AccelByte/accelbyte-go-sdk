// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicExistsAnyMyActiveEntitlementCmd represents the publicExistsAnyMyActiveEntitlement command
var publicExistsAnyMyActiveEntitlementCmd = &cobra.Command{
	Use:   "publicExistsAnyMyActiveEntitlement",
	Short: "Public exists any my active entitlement",
	Long:  `Public exists any my active entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appIdsString := cmd.Flag("appIds").Value.String()
		var appIds []string
		errAppIds := json.Unmarshal([]byte(appIdsString), &appIds)
		if errAppIds != nil {
			return errAppIds
		}
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		skusString := cmd.Flag("skus").Value.String()
		var skus []string
		errSkus := json.Unmarshal([]byte(skusString), &skus)
		if errSkus != nil {
			return errSkus
		}
		input := &entitlement.PublicExistsAnyMyActiveEntitlementParams{
			Namespace: namespace,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Skus:      skus,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicExistsAnyMyActiveEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicExistsAnyMyActiveEntitlementCmd)
	publicExistsAnyMyActiveEntitlementCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicExistsAnyMyActiveEntitlementCmd.MarkFlagRequired("namespace")
	publicExistsAnyMyActiveEntitlementCmd.Flags().StringP("appIds", "as", " ", "App ids")
	publicExistsAnyMyActiveEntitlementCmd.Flags().StringP("itemIds", "is", " ", "Item ids")
	publicExistsAnyMyActiveEntitlementCmd.Flags().StringP("skus", "ss", " ", "Skus")
}
