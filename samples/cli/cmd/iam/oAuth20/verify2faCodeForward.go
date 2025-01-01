// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// Verify2faCodeForwardCmd represents the Verify2faCodeForward command
var Verify2faCodeForwardCmd = &cobra.Command{
	Use:   "verify2faCodeForward",
	Short: "Verify2fa code forward",
	Long:  `Verify2fa code forward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		code, _ := cmd.Flags().GetString("code")
		factor, _ := cmd.Flags().GetString("factor")
		mfaToken, _ := cmd.Flags().GetString("mfaToken")
		defaultFactor, _ := cmd.Flags().GetString("defaultFactor")
		factors, _ := cmd.Flags().GetString("factors")
		rememberDevice, _ := cmd.Flags().GetBool("rememberDevice")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.Verify2FACodeForwardParams{
			DefaultFactor:  &defaultFactor,
			Factors:        &factors,
			RememberDevice: &rememberDevice,
			ClientID:       clientId,
			Code:           code,
			Factor:         factor,
			MFAToken:       mfaToken,
			HTTPClient:     httpClient,
		}
		_, errFound := oAuth20Service.Verify2FACodeForwardShort(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	Verify2faCodeForwardCmd.Flags().String("defaultFactor", "", "Default factor")
	Verify2faCodeForwardCmd.Flags().String("factors", "", "Factors")
	Verify2faCodeForwardCmd.Flags().Bool("rememberDevice", false, "Remember device")
	Verify2faCodeForwardCmd.Flags().String("clientId", "", "Client id")
	_ = Verify2faCodeForwardCmd.MarkFlagRequired("clientId")
	Verify2faCodeForwardCmd.Flags().String("code", "", "Code")
	_ = Verify2faCodeForwardCmd.MarkFlagRequired("code")
	Verify2faCodeForwardCmd.Flags().String("factor", "", "Factor")
	_ = Verify2faCodeForwardCmd.MarkFlagRequired("factor")
	Verify2faCodeForwardCmd.Flags().String("mfaToken", "", "Mfa token")
	_ = Verify2faCodeForwardCmd.MarkFlagRequired("mfaToken")
}
