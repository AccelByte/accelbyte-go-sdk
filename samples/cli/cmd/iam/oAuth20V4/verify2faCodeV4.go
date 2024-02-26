// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20V4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// Verify2faCodeV4Cmd represents the Verify2faCodeV4 command
var Verify2faCodeV4Cmd = &cobra.Command{
	Use:   "verify2faCodeV4",
	Short: "Verify2fa code V4",
	Long:  `Verify2fa code V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		factor, _ := cmd.Flags().GetString("factor")
		mfaToken, _ := cmd.Flags().GetString("mfaToken")
		rememberDevice, _ := cmd.Flags().GetBool("rememberDevice")
		input := &o_auth2_0_v4.Verify2FACodeV4Params{
			Code:           code,
			Factor:         factor,
			MFAToken:       mfaToken,
			RememberDevice: rememberDevice,
		}
		ok, errOK := oAuth20V4Service.Verify2FACodeV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	Verify2faCodeV4Cmd.Flags().String("code", "", "Code")
	_ = Verify2faCodeV4Cmd.MarkFlagRequired("code")
	Verify2faCodeV4Cmd.Flags().String("factor", "", "Factor")
	_ = Verify2faCodeV4Cmd.MarkFlagRequired("factor")
	Verify2faCodeV4Cmd.Flags().String("mfaToken", "", "Mfa token")
	_ = Verify2faCodeV4Cmd.MarkFlagRequired("mfaToken")
	Verify2faCodeV4Cmd.Flags().Bool("rememberDevice", false, "Remember device")
	_ = Verify2faCodeV4Cmd.MarkFlagRequired("rememberDevice")
}
