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

// AdminDeleteClientPermissionV3Cmd represents the AdminDeleteClientPermissionV3 command
var AdminDeleteClientPermissionV3Cmd = &cobra.Command{
	Use:   "adminDeleteClientPermissionV3",
	Short: "Admin delete client permission V3",
	Long:  `Admin delete client permission V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		resource, _ := cmd.Flags().GetString("resource")
		input := &clients.AdminDeleteClientPermissionV3Params{
			Action:    action,
			ClientID:  clientId,
			Namespace: namespace,
			Resource:  resource,
		}
		errInput := clientsService.AdminDeleteClientPermissionV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteClientPermissionV3Cmd.Flags().Int64P("action", "", -1, "Action")
	_ = AdminDeleteClientPermissionV3Cmd.MarkFlagRequired("action")
	AdminDeleteClientPermissionV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	_ = AdminDeleteClientPermissionV3Cmd.MarkFlagRequired("clientId")
	AdminDeleteClientPermissionV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteClientPermissionV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteClientPermissionV3Cmd.Flags().StringP("resource", "", "", "Resource")
	_ = AdminDeleteClientPermissionV3Cmd.MarkFlagRequired("resource")
}
