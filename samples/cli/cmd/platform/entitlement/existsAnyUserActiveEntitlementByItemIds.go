// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		input := &entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams{
			Namespace: namespace,
			UserID:    userId,
			ItemIds:   itemIds,
		}
		ok, err := entitlementService.ExistsAnyUserActiveEntitlementByItemIdsShort(input)
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
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ExistsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("namespace")
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().StringP("userId", "", "", "User id")
	_ = ExistsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("userId")
	ExistsAnyUserActiveEntitlementByItemIdsCmd.Flags().StringP("itemIds", "", "", "Item ids")
	_ = ExistsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("itemIds")
}
