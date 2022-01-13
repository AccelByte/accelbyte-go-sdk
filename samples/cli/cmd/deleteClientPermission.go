// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"strconv"
)

// deleteClientPermission represents the deleteClientPermission command
var deleteClientPermission = &cobra.Command{
	Use:   "deleteClientPermission",
	Short: "Admin Delete client permission",
	Long:  `Admin Delete client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		action := cmd.Flag("action").Value.String()
		actionInt, _ := strconv.ParseInt(action, 10, 64)
		resource := cmd.Flag("resource").Value.String()
		input := &clients.AdminDeleteClientPermissionV3Params{
			Action:    actionInt,
			ClientID:  clientID,
			Namespace: namespace,
			Resource:  resource,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := clientService.AdminDeleteClientPermissionV3(input)
		if err != nil {
			logrus.Error(err)
		} else {
			logrus.Infof("Delete Client Permission Successful")
		}
		return nil
	},
}

func init() {
	RootCmd.AddCommand(deleteClientPermission)
	deleteClientPermission.Flags().StringP("clientID", "c", "", "Client ID")
	_ = deleteClientPermission.MarkFlagRequired("clientID")
	deleteClientPermission.Flags().StringP("namespace", "n", "", "User namespace")
	_ = deleteClientPermission.MarkFlagRequired("namespace")
	deleteClientPermission.Flags().Int64P("action", "a", -1, "")
	_ = deleteClientPermission.MarkFlagRequired("action")
	deleteClientPermission.Flags().StringP("resource", "r", "", "")
	_ = deleteClientPermission.MarkFlagRequired("resource")
}
