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

// AuthorizationCmd represents the Authorization command
var AuthorizationCmd = &cobra.Command{
	Use:   "authorization",
	Short: "Authorization",
	Long:  `Authorization`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		responseType, _ := cmd.Flags().GetString("responseType")
		login, _ := cmd.Flags().GetString("login")
		password, _ := cmd.Flags().GetString("password")
		scope, _ := cmd.Flags().GetString("scope")
		state, _ := cmd.Flags().GetString("state")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth.AuthorizationParams{
			Login:        &login,
			Password:     &password,
			Scope:        &scope,
			State:        &state,
			ClientID:     clientId,
			RedirectURI:  redirectUri,
			ResponseType: responseType,
			HTTPClient:   httpClient,
		}
		_, errFound := oAuthService.AuthorizationShort(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AuthorizationCmd.Flags().String("login", "", "Login")
	AuthorizationCmd.Flags().String("password", "", "Password")
	AuthorizationCmd.Flags().String("scope", "", "Scope")
	AuthorizationCmd.Flags().String("state", "", "State")
	AuthorizationCmd.Flags().String("clientId", "", "Client id")
	_ = AuthorizationCmd.MarkFlagRequired("client_id")
	AuthorizationCmd.Flags().String("redirectUri", "", "Redirect uri")
	_ = AuthorizationCmd.MarkFlagRequired("redirect_uri")
	AuthorizationCmd.Flags().String("responseType", "", "Response type")
	_ = AuthorizationCmd.MarkFlagRequired("response_type")
}
