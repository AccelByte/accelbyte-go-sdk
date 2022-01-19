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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateClientPermissionV3Cmd represents the adminUpdateClientPermissionV3 command
var adminUpdateClientPermissionV3Cmd = &cobra.Command{
	Use:   "adminUpdateClientPermissionV3",
	Short: "Admin update client permission V3",
	Long:  `Admin update client permission V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonClientPermissionsV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminUpdateClientPermissionV3Params{
			Body:      body,
			ClientID:  clientId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.AdminUpdateClientPermissionV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateClientPermissionV3Cmd)
	adminUpdateClientPermissionV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateClientPermissionV3Cmd.MarkFlagRequired("body")
	adminUpdateClientPermissionV3Cmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = adminUpdateClientPermissionV3Cmd.MarkFlagRequired("clientId")
	adminUpdateClientPermissionV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateClientPermissionV3Cmd.MarkFlagRequired("namespace")
}
