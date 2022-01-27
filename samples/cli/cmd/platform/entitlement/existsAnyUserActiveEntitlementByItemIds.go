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

// existsAnyUserActiveEntitlementByItemIdsCmd represents the existsAnyUserActiveEntitlementByItemIds command
var existsAnyUserActiveEntitlementByItemIdsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.ExistsAnyUserActiveEntitlementByItemIds(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(existsAnyUserActiveEntitlementByItemIdsCmd)
	existsAnyUserActiveEntitlementByItemIdsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = existsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("namespace")
	existsAnyUserActiveEntitlementByItemIdsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = existsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("userId")
	existsAnyUserActiveEntitlementByItemIdsCmd.Flags().StringP("itemIds", "is", " ", "Item ids")
	_ = existsAnyUserActiveEntitlementByItemIdsCmd.MarkFlagRequired("itemIds")
}
