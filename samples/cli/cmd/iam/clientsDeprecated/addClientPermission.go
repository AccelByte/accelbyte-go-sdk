// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsDeprecated

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AddClientPermissionCmd represents the AddClientPermission command
var AddClientPermissionCmd = &cobra.Command{
	Use:   "addClientPermission",
	Short: "Add client permission",
	Long:  `Add client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsDeprecatedService := &iam.ClientsDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		clientId, _ := cmd.Flags().GetString("clientId")
		resource, _ := cmd.Flags().GetString("resource")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &clients_deprecated.AddClientPermissionParams{
			Action:     action,
			ClientID:   clientId,
			Resource:   resource,
			HTTPClient: httpClient,
		}
		errInput := clientsDeprecatedService.AddClientPermissionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AddClientPermissionCmd.Flags().Int64("action", -1, "Action")
	_ = AddClientPermissionCmd.MarkFlagRequired("action")
	AddClientPermissionCmd.Flags().String("clientId", "", "Client id")
	_ = AddClientPermissionCmd.MarkFlagRequired("clientId")
	AddClientPermissionCmd.Flags().String("resource", "", "Resource")
	_ = AddClientPermissionCmd.MarkFlagRequired("resource")
}
