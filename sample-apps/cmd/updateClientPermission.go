// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateClientPermission represents the updateClientPermission command
var updateClientPermission = &cobra.Command{
	Use:   "updateClientPermission",
	Short: "Admin Update client permissions",
	Long:  `Admin Update client permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &service.ClientService{
			IamClient:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		permissionsInput := cmd.Flag("permissions").Value.String()
		var permissions *iamclientmodels.AccountcommonClientPermissionsV3
		err := json.Unmarshal([]byte(permissionsInput), &permissions)
		err = clientService.AdminUpdateClientPermissionV3(clientID, namespace, permissions)
		if err != nil {
			logrus.Error(err)
		} else {
			logrus.Infof("Successfully update client permissions")
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateClientPermission)
	updateClientPermission.Flags().StringP("clientID", "c", "", "Client ID")
	updateClientPermission.MarkFlagRequired("clientID")
	updateClientPermission.Flags().StringP("namespace", "n", "", "User namespace")
	updateClientPermission.MarkFlagRequired("namespace")
	updateClientPermission.Flags().StringP("permissions", "p", "", "Permissions. Example: '{\"permissions\":[{\"action\":2,\"resource\":\"ADMIN:NAMESPACE:*:USER:*:STATITEM\"}]}' ")
	updateClientPermission.MarkFlagRequired("permissions")
}
