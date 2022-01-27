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

// addClientPermissionCmd represents the addClientPermission command
var addClientPermissionCmd = &cobra.Command{
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
		input := &clients.AddClientPermissionParams{
			Action:   action,
			ClientID: clientId,
			Resource: resource,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.AddClientPermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addClientPermissionCmd)
	addClientPermissionCmd.Flags().Int64P("action", "an", -1, "Action")
	_ = addClientPermissionCmd.MarkFlagRequired("action")
	addClientPermissionCmd.Flags().StringP("clientId", "cd", " ", "Client id")
	_ = addClientPermissionCmd.MarkFlagRequired("clientId")
	addClientPermissionCmd.Flags().StringP("resource", "re", " ", "Resource")
	_ = addClientPermissionCmd.MarkFlagRequired("resource")
}
