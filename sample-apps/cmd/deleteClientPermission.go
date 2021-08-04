// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		clientService := &service.ClientService{
			IamClient:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		action := cmd.Flag("action").Value.String()
		actionInt, _ := strconv.ParseInt(action, 10, 64)
		resource := cmd.Flag("resource").Value.String()
		err := clientService.AdminDeleteClientPermissionV3(actionInt, clientID, namespace, resource)
		if err != nil {
			logrus.Error(err)
		} else {
			logrus.Infof("Delete Client Permission Successful")
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteClientPermission)
	deleteClientPermission.Flags().StringP("clientID", "c", "", "Client ID")
	deleteClientPermission.MarkFlagRequired("clientID")
	deleteClientPermission.Flags().StringP("namespace", "n", "", "User namespace")
	deleteClientPermission.MarkFlagRequired("namespace")
	deleteClientPermission.Flags().Int64P("action", "a", -1, "")
	deleteClientPermission.MarkFlagRequired("action")
	deleteClientPermission.Flags().StringP("resource", "r", "", "")
	deleteClientPermission.MarkFlagRequired("resource")
}
