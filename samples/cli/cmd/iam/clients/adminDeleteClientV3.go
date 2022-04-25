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

// AdminDeleteClientV3Cmd represents the AdminDeleteClientV3 command
var AdminDeleteClientV3Cmd = &cobra.Command{
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
		errInput := clientsService.AdminDeleteClientV3Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteClientV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	_ = AdminDeleteClientV3Cmd.MarkFlagRequired("clientId")
	AdminDeleteClientV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteClientV3Cmd.MarkFlagRequired("namespace")
}
