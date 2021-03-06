// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeletePlaystationIAPConfigCmd represents the DeletePlaystationIAPConfig command
var DeletePlaystationIAPConfigCmd = &cobra.Command{
	Use:   "deletePlaystationIAPConfig",
	Short: "Delete playstation IAP config",
	Long:  `Delete playstation IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &i_a_p.DeletePlaystationIAPConfigParams{
			Namespace: namespace,
		}
		errInput := iapService.DeletePlaystationIAPConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeletePlaystationIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePlaystationIAPConfigCmd.MarkFlagRequired("namespace")
}
