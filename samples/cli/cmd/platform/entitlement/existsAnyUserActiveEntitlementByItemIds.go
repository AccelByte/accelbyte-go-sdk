// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExistsAnyUserActiveEntitlementByItemIdsCmd represents the ExistsAnyUserActiveEntitlementByItemIds command
var ExistsAnyUserActiveEntitlementByItemIdsCmd = &cobra.Command{
	Use:   "existsAnyUserActiveEntitlementByItemIds",
	Short: "Exists any user active entitlement by item ids",
	Long:  `Exists any user active entitlement by item ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		platform, _ := cmd.Flags().GetString("platform")
		input := &entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams{
			Namespace: namespace,
			UserID:    userId,
			Platform:  &platform,
			ItemIds:   itemIds,
		}
		ok, errOK := entitlementService.ExistsAnyUserActiveEntitlementByItemIdsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = ExistsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("namespace")
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().String("userId", "", "User id")
	_ = ExistsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("userId")
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().String("platform", "", "Platform")
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().String("itemIds", "", "Item ids")
	_ = ExistsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("itemIds")
}
