// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentCallbackConfig1Cmd represents the GetPaymentCallbackConfig1 command
var GetPaymentCallbackConfig1Cmd = &cobra.Command{
	Use:   "getPaymentCallbackConfig1",
	Short: "Get payment callback config 1",
	Long:  `Get payment callback config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &revocation.GetPaymentCallbackConfig1Params{
			Namespace: namespace,
		}
		ok, errOK := revocationService.GetPaymentCallbackConfig1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPaymentCallbackConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetPaymentCallbackConfig1Cmd.MarkFlagRequired("namespace")
}
