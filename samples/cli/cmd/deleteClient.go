// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteClient represents the deleteClient command
var deleteClient = &cobra.Command{
	Use:   "deleteClient",
	Short: "Admin Delete client",
	Long:  `Admin Delete client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		input := &clients.AdminDeleteClientV3Params{
			ClientID:  clientID,
			Namespace: namespace,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := clientService.AdminDeleteClientV3(input)
		if err != nil {
			logrus.Error(err)
		} else {
			logrus.Infof("Delete Client Successful")
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteClient)
	deleteClient.Flags().StringP("clientID", "c", "", "Client ID")
	_ = deleteClient.MarkFlagRequired("clientID")
	deleteClient.Flags().StringP("namespace", "n", "", "User namespace")
	_ = deleteClient.MarkFlagRequired("namespace")
}
