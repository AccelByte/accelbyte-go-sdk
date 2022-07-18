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

// AdminUpdateClientSecretV3Cmd represents the AdminUpdateClientSecretV3 command
var AdminUpdateClientSecretV3Cmd = &cobra.Command{
	Use:   "adminUpdateClientSecretV3",
	Short: "Admin update client secret V3",
	Long:  `Admin update client secret V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelV3ClientUpdateSecretRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminUpdateClientSecretV3Params{
			Body:      body,
			ClientID:  clientId,
			Namespace: namespace,
		}
		errInput := clientsService.AdminUpdateClientSecretV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminUpdateClientSecretV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateClientSecretV3Cmd.MarkFlagRequired("body")
	AdminUpdateClientSecretV3Cmd.Flags().String("clientId", "", "Client id")
	_ = AdminUpdateClientSecretV3Cmd.MarkFlagRequired("clientId")
	AdminUpdateClientSecretV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateClientSecretV3Cmd.MarkFlagRequired("namespace")
}
