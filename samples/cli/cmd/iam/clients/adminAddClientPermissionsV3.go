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

// adminAddClientPermissionsV3Cmd represents the adminAddClientPermissionsV3 command
var adminAddClientPermissionsV3Cmd = &cobra.Command{
	Use:   "adminAddClientPermissionsV3",
	Short: "Admin add client permissions V3",
	Long:  `Admin add client permissions V3`,
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
		input := &clients.AdminAddClientPermissionsV3Params{
			Body:      body,
			ClientID:  clientId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.AdminAddClientPermissionsV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminAddClientPermissionsV3Cmd)
	adminAddClientPermissionsV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminAddClientPermissionsV3Cmd.MarkFlagRequired("body")
	adminAddClientPermissionsV3Cmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = adminAddClientPermissionsV3Cmd.MarkFlagRequired("clientId")
	adminAddClientPermissionsV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminAddClientPermissionsV3Cmd.MarkFlagRequired("namespace")
}
