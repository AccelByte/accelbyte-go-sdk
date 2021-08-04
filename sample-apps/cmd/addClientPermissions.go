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

// addClientPermissions represents the addClientPermissions command
var addClientPermissions = &cobra.Command{
	Use:   "addClientPermissions",
	Short: "Admin Add client permissions",
	Long:  `Admin Add client permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &service.ClientService{
			IamClient:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		permissionsInput := cmd.Flag("permissions").Value.String()
		var permissions iamclientmodels.AccountcommonClientPermissionsV3
		err := json.Unmarshal([]byte(permissionsInput), &permissions)
		if err != nil {
			return err
		}
		err = clientService.AdminAddClientPermissionsV3(clientID, namespace, permissions)
		if err != nil {
			logrus.Error(err)
		} else {
			logrus.Infof("Add Client Permission Successful")
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addClientPermissions)
	addClientPermissions.Flags().StringP("clientID", "c", "", "Client ID")
	addClientPermissions.MarkFlagRequired("clientID")
	addClientPermissions.Flags().StringP("namespace", "n", "", "User namespace")
	addClientPermissions.MarkFlagRequired("namespace")
	addClientPermissions.Flags().StringP("permissions", "p", "", "permissions, value in json. example: '[{\"permissions\": [[{\"action\": 2,\"resource\": \"ADMIN:NAMESPACE:{namespace}:USER:*:STATITEM\"}]]}]'")
	addClientPermissions.MarkFlagRequired("permissions")
}
