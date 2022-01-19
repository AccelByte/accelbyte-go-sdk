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

// adminDeleteClientV3Cmd represents the adminDeleteClientV3 command
var adminDeleteClientV3Cmd = &cobra.Command{
	Use:   "adminDeleteClientV3",
	Short: "Admin delete client V3",
	Long:  `Admin delete client V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminDeleteClientV3Params{
			ClientID:  clientId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.AdminDeleteClientV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteClientV3Cmd)
	adminDeleteClientV3Cmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = adminDeleteClientV3Cmd.MarkFlagRequired("clientId")
	adminDeleteClientV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteClientV3Cmd.MarkFlagRequired("namespace")
}
