// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeTokenCmd represents the RevokeToken command
var RevokeTokenCmd = &cobra.Command{
	Use:   "revokeToken",
	Short: "Revoke token",
	Long:  `Revoke token`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		token, _ := cmd.Flags().GetString("token")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth.RevokeTokenParams{
			Token:      token,
			HTTPClient: httpClient,
		}
		errInput := oAuthService.RevokeTokenShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	RevokeTokenCmd.Flags().StringP("token", "", "", "Token")
	_ = RevokeTokenCmd.MarkFlagRequired("token")
}
