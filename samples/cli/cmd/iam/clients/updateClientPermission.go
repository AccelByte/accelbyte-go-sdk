// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

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

// UpdateClientPermissionCmd represents the UpdateClientPermission command
var UpdateClientPermissionCmd = &cobra.Command{
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
		errInput := clientsService.UpdateClientPermissionShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UpdateClientPermissionCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateClientPermissionCmd.MarkFlagRequired("body")
	UpdateClientPermissionCmd.Flags().StringP("clientId", "", "", "Client id")
	_ = UpdateClientPermissionCmd.MarkFlagRequired("clientId")
}
