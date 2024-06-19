// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"encoding/json"

	platform_ "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/platform"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetXboxEntitlementOwnershipCmd represents the GetXboxEntitlementOwnership command
var GetXboxEntitlementOwnershipCmd = &cobra.Command{
	Use:   "getXboxEntitlementOwnership",
	Short: "Get xbox entitlement ownership",
	Long:  `Get xbox entitlement ownership`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformService := &platform.PlatformService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		productSku, _ := cmd.Flags().GetString("productSku")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XblEntitlementOwnershipRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &platform_.GetXboxEntitlementOwnershipParams{
			Body:       body,
			Namespace:  namespace,
			ProductSku: productSku,
		}
		ok, errOK := platformService.GetXboxEntitlementOwnershipShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetXboxEntitlementOwnershipCmd.Flags().String("body", "", "Body")
	GetXboxEntitlementOwnershipCmd.Flags().String("namespace", "", "Namespace")
	_ = GetXboxEntitlementOwnershipCmd.MarkFlagRequired("namespace")
	GetXboxEntitlementOwnershipCmd.Flags().String("productSku", "", "Product sku")
	_ = GetXboxEntitlementOwnershipCmd.MarkFlagRequired("productSku")
}
