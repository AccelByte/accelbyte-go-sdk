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

// Change2faMethodCmd represents the Change2faMethod command
var Change2faMethodCmd = &cobra.Command{
	Use:   "change2faMethod",
	Short: "Change2fa method",
	Long:  `Change2fa method`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		factor, _ := cmd.Flags().GetString("factor")
		mfaToken, _ := cmd.Flags().GetString("mfaToken")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.Change2FAMethodParams{
			Factor:     factor,
			MfaToken:   mfaToken,
			HTTPClient: httpClient,
		}
		errInput := oAuth20Service.Change2FAMethodShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	Change2faMethodCmd.Flags().StringP("factor", "", "", "Factor")
	_ = Change2faMethodCmd.MarkFlagRequired("factor")
	Change2faMethodCmd.Flags().StringP("mfaToken", "", "", "Mfa token")
	_ = Change2faMethodCmd.MarkFlagRequired("mfaToken")
}
