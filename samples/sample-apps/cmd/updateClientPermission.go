// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
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
		clientService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		permissionsInput := cmd.Flag("permissions").Value.String()
		var permissions *iamclientmodels.AccountcommonClientPermissionsV3
		err := json.Unmarshal([]byte(permissionsInput), &permissions)
		if err != nil {
			return err
		}
		input := &clients.AdminUpdateClientPermissionV3Params{
			Body:      permissions,
			ClientID:  clientID,
			Namespace: namespace,
		}
		err = clientService.AdminUpdateClientPermissionV3(input)
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
	_ = updateClientPermission.MarkFlagRequired("clientID")
	updateClientPermission.Flags().StringP("namespace", "n", "", "User namespace")
	_ = updateClientPermission.MarkFlagRequired("namespace")
	updateClientPermission.Flags().StringP("permissions", "p", "", "Permissions. Example: '{\"permissions\":[{\"action\":2,\"resource\":\"ADMIN:NAMESPACE:*:USER:*:STATITEM\"}]}' ")
	_ = updateClientPermission.MarkFlagRequired("permissions")
}
