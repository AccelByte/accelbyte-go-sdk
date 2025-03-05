// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utilities

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/utilities"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetItemReferencesCmd represents the GetItemReferences command
var GetItemReferencesCmd = &cobra.Command{
	Use:   "getItemReferences",
	Short: "Get item references",
	Long:  `Get item references`,
	RunE: func(cmd *cobra.Command, args []string) error {
		utilitiesService := &seasonpass.UtilitiesService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemId, _ := cmd.Flags().GetString("itemId")
		input := &utilities.GetItemReferencesParams{
			Namespace: namespace,
			ItemID:    itemId,
		}
		ok, errOK := utilitiesService.GetItemReferencesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetItemReferencesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetItemReferencesCmd.MarkFlagRequired("namespace")
	GetItemReferencesCmd.Flags().String("itemId", "", "Item id")
	_ = GetItemReferencesCmd.MarkFlagRequired("itemId")
}
