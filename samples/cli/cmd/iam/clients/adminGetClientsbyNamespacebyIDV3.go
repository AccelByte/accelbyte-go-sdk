// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package clients

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetClientsbyNamespacebyIDV3Cmd represents the AdminGetClientsbyNamespacebyIDV3 command
var AdminGetClientsbyNamespacebyIDV3Cmd = &cobra.Command{
	Use:   "adminGetClientsbyNamespacebyIDV3",
	Short: "Admin get clientsby namespaceby IDV3",
	Long:  `Admin get clientsby namespaceby IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminGetClientsbyNamespacebyIDV3Params{
			ClientID:  clientId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := clientsService.AdminGetClientsbyNamespacebyIDV3(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	AdminGetClientsbyNamespacebyIDV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	_ = AdminGetClientsbyNamespacebyIDV3Cmd.MarkFlagRequired("clientId")
	AdminGetClientsbyNamespacebyIDV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetClientsbyNamespacebyIDV3Cmd.MarkFlagRequired("namespace")
}
