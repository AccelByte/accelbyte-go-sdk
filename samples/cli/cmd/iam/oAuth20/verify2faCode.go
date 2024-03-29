// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// Verify2faCodeCmd represents the Verify2faCode command
var Verify2faCodeCmd = &cobra.Command{
	Use:   "verify2faCode",
	Short: "Verify2fa code",
	Long:  `Verify2fa code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		factor, _ := cmd.Flags().GetString("factor")
		mfaToken, _ := cmd.Flags().GetString("mfaToken")
		rememberDevice, _ := cmd.Flags().GetBool("rememberDevice")
		input := &o_auth2_0.Verify2FACodeParams{
			Code:           code,
			Factor:         factor,
			MFAToken:       mfaToken,
			RememberDevice: rememberDevice,
		}
		ok, errOK := oAuth20Service.Verify2FACodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	Verify2faCodeCmd.Flags().String("code", "", "Code")
	_ = Verify2faCodeCmd.MarkFlagRequired("code")
	Verify2faCodeCmd.Flags().String("factor", "", "Factor")
	_ = Verify2faCodeCmd.MarkFlagRequired("factor")
	Verify2faCodeCmd.Flags().String("mfaToken", "", "Mfa token")
	_ = Verify2faCodeCmd.MarkFlagRequired("mfaToken")
	Verify2faCodeCmd.Flags().Bool("rememberDevice", false, "Remember device")
	_ = Verify2faCodeCmd.MarkFlagRequired("rememberDevice")
}
