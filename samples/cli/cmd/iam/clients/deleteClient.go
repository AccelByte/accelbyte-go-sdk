// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package clients

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteClientCmd represents the deleteClient command
var deleteClientCmd = &cobra.Command{
	Use:   "deleteClient",
	Short: "Delete client",
	Long:  `Delete client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &clients.DeleteClientParams{
			ClientID: clientId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.DeleteClient(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteClientCmd)
	deleteClientCmd.Flags().StringP("clientId", "cd", " ", "Client id")
	_ = deleteClientCmd.MarkFlagRequired("clientId")
}
