// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsDeprecated

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetClientCmd represents the GetClient command
var GetClientCmd = &cobra.Command{
	Use:   "getClient",
	Short: "Get client",
	Long:  `Get client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsDeprecatedService := &iam.ClientsDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &clients_deprecated.GetClientParams{
			ClientID: clientId,
		}
		ok, err := clientsDeprecatedService.GetClientShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetClientCmd.Flags().String("clientId", "", "Client id")
	_ = GetClientCmd.MarkFlagRequired("clientId")
}
