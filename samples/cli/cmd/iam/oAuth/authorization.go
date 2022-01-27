// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AuthorizationCmd represents the Authorization command
var AuthorizationCmd = &cobra.Command{
	Use:   "Authorization",
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
	AuthorizationCmd.Flags().StringP("login", "ln", " ", "Login")
	AuthorizationCmd.Flags().StringP("password", "pd", " ", "Password")
	AuthorizationCmd.Flags().StringP("scope", "se", " ", "Scope")
	AuthorizationCmd.Flags().StringP("state", "se", " ", "State")
	AuthorizationCmd.Flags().StringP("client_id", "cd", " ", "Client id")
	_ = AuthorizationCmd.MarkFlagRequired("client_id")
	AuthorizationCmd.Flags().StringP("redirect_uri", "ri", " ", "Redirect uri")
	_ = AuthorizationCmd.MarkFlagRequired("redirect_uri")
	AuthorizationCmd.Flags().StringP("response_type", "re", " ", "Response type")
	_ = AuthorizationCmd.MarkFlagRequired("response_type")
}
