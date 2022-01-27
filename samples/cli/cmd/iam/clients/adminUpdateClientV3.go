// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package clients

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

// adminUpdateClientV3Cmd represents the adminUpdateClientV3 command
var adminUpdateClientV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := clientsService.AdminUpdateClientV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateClientV3Cmd)
	adminUpdateClientV3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateClientV3Cmd.MarkFlagRequired("body")
	adminUpdateClientV3Cmd.Flags().StringP("clientId", "cd", " ", "Client id")
	_ = adminUpdateClientV3Cmd.MarkFlagRequired("clientId")
	adminUpdateClientV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateClientV3Cmd.MarkFlagRequired("namespace")
}
