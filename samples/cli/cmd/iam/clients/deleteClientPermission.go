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

// DeleteClientPermissionCmd represents the DeleteClientPermission command
var DeleteClientPermissionCmd = &cobra.Command{
	Use:   "deleteClientPermission",
	Short: "Delete client permission",
	Long:  `Delete client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		clientId, _ := cmd.Flags().GetString("clientId")
		resource, _ := cmd.Flags().GetString("resource")
		input := &clients.DeleteClientPermissionParams{
			Action:   action,
			ClientID: clientId,
			Resource: resource,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.DeleteClientPermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteClientPermissionCmd.Flags().Int64P("action", "", -1, "Action")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("action")
	DeleteClientPermissionCmd.Flags().StringP("clientId", "", "", "Client id")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("clientId")
	DeleteClientPermissionCmd.Flags().StringP("resource", "", "", "Resource")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("resource")
}
