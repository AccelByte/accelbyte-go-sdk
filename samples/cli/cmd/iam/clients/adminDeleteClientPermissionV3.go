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

// adminDeleteClientPermissionV3Cmd represents the adminDeleteClientPermissionV3 command
var adminDeleteClientPermissionV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.AdminDeleteClientPermissionV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteClientPermissionV3Cmd)
	adminDeleteClientPermissionV3Cmd.Flags().Int64P("action", "an", -1, "Action")
	_ = adminDeleteClientPermissionV3Cmd.MarkFlagRequired("action")
	adminDeleteClientPermissionV3Cmd.Flags().StringP("clientId", "cd", " ", "Client id")
	_ = adminDeleteClientPermissionV3Cmd.MarkFlagRequired("clientId")
	adminDeleteClientPermissionV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminDeleteClientPermissionV3Cmd.MarkFlagRequired("namespace")
	adminDeleteClientPermissionV3Cmd.Flags().StringP("resource", "re", " ", "Resource")
	_ = adminDeleteClientPermissionV3Cmd.MarkFlagRequired("resource")
}
