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

// SendMFAAuthenticationCodeCmd represents the SendMFAAuthenticationCode command
var SendMFAAuthenticationCodeCmd = &cobra.Command{
	Use:   "sendMFAAuthenticationCode",
	Short: "Send MFA authentication code",
	Long:  `Send MFA authentication code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		factor, _ := cmd.Flags().GetString("factor")
		mfaToken, _ := cmd.Flags().GetString("mfaToken")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.SendMFAAuthenticationCodeParams{
			ClientID:   clientId,
			Factor:     factor,
			MfaToken:   mfaToken,
			HTTPClient: httpClient,
		}
		errInput := oAuth20Service.SendMFAAuthenticationCodeShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SendMFAAuthenticationCodeCmd.Flags().String("clientId", "", "Client id")
	_ = SendMFAAuthenticationCodeCmd.MarkFlagRequired("clientId")
	SendMFAAuthenticationCodeCmd.Flags().String("factor", "", "Factor")
	_ = SendMFAAuthenticationCodeCmd.MarkFlagRequired("factor")
	SendMFAAuthenticationCodeCmd.Flags().String("mfaToken", "", "Mfa token")
	_ = SendMFAAuthenticationCodeCmd.MarkFlagRequired("mfaToken")
}
