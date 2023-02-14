// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
)

type ClientCredentials struct {
	ClientId     *string
	ClientSecret *string
}

// clientLogin represents the client login command
var clientLoginCmd = &cobra.Command{
	Use:   "loginClient",
	Short: "Login client",
	Long:  `Login client via client_credentials flow`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientCredentials := ClientCredentials{}
		if cmd.Flags().Changed("clientId") {
			id := cmd.Flag("clientId").Value.String()
			clientCredentials.ClientId = &id
		}
		if cmd.Flags().Changed("clientSecret") {
			secret := cmd.Flag("clientSecret").Value.String()
			clientCredentials.ClientSecret = &secret
		}
		oAuth20Service := iam.OAuth20Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		err := oAuth20Service.LoginClient(clientCredentials.ClientId, clientCredentials.ClientSecret)
		if err != nil {
			return err
		}
		logrus.Infof("User successfully logged in")

		return nil
	},
}

func init() {
	RootCmd.AddCommand(clientLoginCmd)
	clientLoginCmd.Flags().StringP("clientId", "u", "", "Client ID (username)")
	clientLoginCmd.Flags().StringP("clientSecret", "p", "", "Client secret (password)")
}
