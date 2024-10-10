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

// QueryEntitlementsCmd represents the QueryEntitlements command
var QueryEntitlementsCmd = &cobra.Command{
	Use:   "queryEntitlements",
	Short: "Query entitlements",
	Long:  `Query entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.QueryEntitlementsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			ItemIds:    itemIds,
			Limit:      &limit,
			Offset:     &offset,
		}
		ok, errOK := entitlementService.QueryEntitlementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryEntitlementsCmd.MarkFlagRequired("namespace")
	QueryEntitlementsCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryEntitlementsCmd.Flags().String("itemIds", "", "Item ids")
	QueryEntitlementsCmd.Flags().Int32("limit", 20, "Limit")
	QueryEntitlementsCmd.Flags().Int32("offset", 0, "Offset")
}
