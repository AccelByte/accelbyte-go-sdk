// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ValidateItemPurchaseConditionCmd represents the ValidateItemPurchaseCondition command
var ValidateItemPurchaseConditionCmd = &cobra.Command{
	Use:   "validateItemPurchaseCondition",
	Short: "Validate item purchase condition",
	Long:  `Validate item purchase condition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ItemPurchaseConditionValidateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.ValidateItemPurchaseConditionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := itemService.ValidateItemPurchaseConditionShort(input)
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
	ValidateItemPurchaseConditionCmd.Flags().String("body", "", "Body")
	ValidateItemPurchaseConditionCmd.Flags().String("namespace", "", "Namespace")
	_ = ValidateItemPurchaseConditionCmd.MarkFlagRequired("namespace")
	ValidateItemPurchaseConditionCmd.Flags().String("userId", "", "User id")
	_ = ValidateItemPurchaseConditionCmd.MarkFlagRequired("userId")
}
