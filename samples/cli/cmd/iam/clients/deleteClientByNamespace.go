// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteClientByNamespaceCmd represents the DeleteClientByNamespace command
var DeleteClientByNamespaceCmd = &cobra.Command{
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
		errNoContent := clientsService.DeleteClientByNamespaceShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteClientByNamespaceCmd.Flags().String("clientId", "", "Client id")
	_ = DeleteClientByNamespaceCmd.MarkFlagRequired("clientId")
	DeleteClientByNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteClientByNamespaceCmd.MarkFlagRequired("namespace")
}
