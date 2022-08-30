// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteItemTypeConfigCmd represents the DeleteItemTypeConfig command
var DeleteItemTypeConfigCmd = &cobra.Command{
	Use:   "deleteItemTypeConfig",
	Short: "Delete item type config",
	Long:  `Delete item type config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &item.DeleteItemTypeConfigParams{
			ID: id_,
		}
		errInput := itemService.DeleteItemTypeConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteItemTypeConfigCmd.Flags().String("id", "", "Id")
	_ = DeleteItemTypeConfigCmd.MarkFlagRequired("id")
}
