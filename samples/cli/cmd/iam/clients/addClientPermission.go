// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
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
		clientsService := &iam.ClientsService{
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
		input := &clients.AddClientPermissionParams{
			Action:     action,
			ClientID:   clientId,
			Resource:   resource,
			HTTPClient: httpClient,
		}
		errInput := clientsService.AddClientPermissionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AddClientPermissionCmd.Flags().Int64P("action", "", -1, "Action")
	_ = AddClientPermissionCmd.MarkFlagRequired("action")
	AddClientPermissionCmd.Flags().StringP("clientId", "", "", "Client id")
	_ = AddClientPermissionCmd.MarkFlagRequired("clientId")
	AddClientPermissionCmd.Flags().StringP("resource", "", "", "Resource")
	_ = AddClientPermissionCmd.MarkFlagRequired("resource")
}
