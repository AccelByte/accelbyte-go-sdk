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

// DeleteClientPermissionCmd represents the DeleteClientPermission command
var DeleteClientPermissionCmd = &cobra.Command{
	Use:   "deleteClientPermission",
	Short: "Delete client permission",
	Long:  `Delete client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsDeprecatedService := &iam.ClientsDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		clientId, _ := cmd.Flags().GetString("clientId")
		resource, _ := cmd.Flags().GetString("resource")
		input := &clients_deprecated.DeleteClientPermissionParams{
			Action:   action,
			ClientID: clientId,
			Resource: resource,
		}
		errInput := clientsDeprecatedService.DeleteClientPermissionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteClientPermissionCmd.Flags().Int64("action", -1, "Action")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("action")
	DeleteClientPermissionCmd.Flags().String("clientId", "", "Client id")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("clientId")
	DeleteClientPermissionCmd.Flags().String("resource", "", "Resource")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("resource")
}
