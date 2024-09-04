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

// ReturnItemCmd represents the ReturnItem command
var ReturnItemCmd = &cobra.Command{
	Use:   "returnItem",
	Short: "Return item",
	Long:  `Return item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ItemReturnRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &item.ReturnItemParams{
			Body:      body,
			ItemID:    itemId,
			Namespace: namespace,
		}
		errNoContent := itemService.ReturnItemShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ReturnItemCmd.Flags().String("body", "", "Body")
	_ = ReturnItemCmd.MarkFlagRequired("body")
	ReturnItemCmd.Flags().String("itemId", "", "Item id")
	_ = ReturnItemCmd.MarkFlagRequired("itemId")
	ReturnItemCmd.Flags().String("namespace", "", "Namespace")
	_ = ReturnItemCmd.MarkFlagRequired("namespace")
}
