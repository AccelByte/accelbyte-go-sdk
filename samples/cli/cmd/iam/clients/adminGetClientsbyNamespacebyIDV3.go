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

// adminGetClientsbyNamespacebyIDV3Cmd represents the adminGetClientsbyNamespacebyIDV3 command
var adminGetClientsbyNamespacebyIDV3Cmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetClientsbyNamespacebyIDV3Cmd)
	adminGetClientsbyNamespacebyIDV3Cmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = adminGetClientsbyNamespacebyIDV3Cmd.MarkFlagRequired("clientId")
	adminGetClientsbyNamespacebyIDV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetClientsbyNamespacebyIDV3Cmd.MarkFlagRequired("namespace")
}
