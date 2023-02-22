// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAppleIAPConfigCmd represents the DeleteAppleIAPConfig command
var DeleteAppleIAPConfigCmd = &cobra.Command{
	Use:   "deleteAppleIAPConfig",
	Short: "Delete apple IAP config",
	Long:  `Delete apple IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.DeleteAppleIAPConfigParams{
			Namespace: namespace,
		}
		errInput := iapService.DeleteAppleIAPConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteAppleIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppleIAPConfigCmd.MarkFlagRequired("namespace")
}
