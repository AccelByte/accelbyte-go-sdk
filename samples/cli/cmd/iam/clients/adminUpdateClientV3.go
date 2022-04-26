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

// AdminUpdateClientV3Cmd represents the AdminUpdateClientV3 command
var AdminUpdateClientV3Cmd = &cobra.Command{
	Use:   "adminUpdateClientV3",
	Short: "Admin update client V3",
	Long:  `Admin update client V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelClientUpdateV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminUpdateClientV3Params{
			Body:      body,
			ClientID:  clientId,
			Namespace: namespace,
		}
		ok, err := clientsService.AdminUpdateClientV3Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminUpdateClientV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateClientV3Cmd.MarkFlagRequired("body")
	AdminUpdateClientV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	_ = AdminUpdateClientV3Cmd.MarkFlagRequired("clientId")
	AdminUpdateClientV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateClientV3Cmd.MarkFlagRequired("namespace")
}
