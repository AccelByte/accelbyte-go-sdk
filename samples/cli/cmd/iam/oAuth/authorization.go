// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// authorizationCmd represents the authorization command
var authorizationCmd = &cobra.Command{
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
		input := &o_auth.AuthorizationParams{
			Login:        &login,
			Password:     &password,
			Scope:        &scope,
			State:        &state,
			ClientID:     clientId,
			RedirectURI:  redirectUri,
			ResponseType: responseType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := oAuthService.Authorization(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(authorizationCmd)
	authorizationCmd.Flags().StringP("login", "l", " ", "Login")
	authorizationCmd.Flags().StringP("password", "p", " ", "Password")
	authorizationCmd.Flags().StringP("scope", "s", " ", "Scope")
	authorizationCmd.Flags().StringP("state", "s", " ", "State")
	authorizationCmd.Flags().StringP("client_id", "c", " ", "Client id")
	_ = authorizationCmd.MarkFlagRequired("client_id")
	authorizationCmd.Flags().StringP("redirect_uri", "r", " ", "Redirect uri")
	_ = authorizationCmd.MarkFlagRequired("redirect_uri")
	authorizationCmd.Flags().StringP("response_type", "r", " ", "Response type")
	_ = authorizationCmd.MarkFlagRequired("response_type")
}