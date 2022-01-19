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

// updateClientPermissionCmd represents the updateClientPermission command
var updateClientPermissionCmd = &cobra.Command{
	Use:   "updateClientPermission",
	Short: "Update client permission",
	Long:  `Update client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonClientPermissions
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &clients.UpdateClientPermissionParams{
			Body:     body,
			ClientID: clientId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := clientsService.UpdateClientPermission(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateClientPermissionCmd)
	updateClientPermissionCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateClientPermissionCmd.MarkFlagRequired("body")
	updateClientPermissionCmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = updateClientPermissionCmd.MarkFlagRequired("clientId")
}
