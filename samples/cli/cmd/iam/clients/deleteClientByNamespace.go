// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteClientByNamespaceCmd represents the deleteClientByNamespace command
var deleteClientByNamespaceCmd = &cobra.Command{
	Use:   "deleteClientByNamespace",
	Short: "Delete client by namespace",
	Long:  `Delete client by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.DeleteClientByNamespaceParams{
			ClientID:  clientId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.DeleteClientByNamespace(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteClientByNamespaceCmd)
	deleteClientByNamespaceCmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = deleteClientByNamespaceCmd.MarkFlagRequired("clientId")
	deleteClientByNamespaceCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteClientByNamespaceCmd.MarkFlagRequired("namespace")
}
