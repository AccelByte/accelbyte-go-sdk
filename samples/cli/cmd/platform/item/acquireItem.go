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

// AcquireItemCmd represents the AcquireItem command
var AcquireItemCmd = &cobra.Command{
	Use:   "acquireItem",
	Short: "Acquire item",
	Long:  `Acquire item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ItemAcquireRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &item.AcquireItemParams{
			Body:      body,
			ItemID:    itemId,
			Namespace: namespace,
		}
		ok, errOK := itemService.AcquireItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AcquireItemCmd.Flags().String("body", "", "Body")
	_ = AcquireItemCmd.MarkFlagRequired("body")
	AcquireItemCmd.Flags().String("itemId", "", "Item id")
	_ = AcquireItemCmd.MarkFlagRequired("itemId")
	AcquireItemCmd.Flags().String("namespace", "", "Namespace")
	_ = AcquireItemCmd.MarkFlagRequired("namespace")
}
