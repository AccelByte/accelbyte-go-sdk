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

// AdminBulkUpdateClientsV3Cmd represents the AdminBulkUpdateClientsV3 command
var AdminBulkUpdateClientsV3Cmd = &cobra.Command{
	Use:   "adminBulkUpdateClientsV3",
	Short: "Admin bulk update clients V3",
	Long:  `Admin bulk update clients V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelClientsUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminBulkUpdateClientsV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := clientsService.AdminBulkUpdateClientsV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminBulkUpdateClientsV3Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkUpdateClientsV3Cmd.MarkFlagRequired("body")
	AdminBulkUpdateClientsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkUpdateClientsV3Cmd.MarkFlagRequired("namespace")
}
