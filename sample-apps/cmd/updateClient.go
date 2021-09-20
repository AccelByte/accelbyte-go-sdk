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

// updateClient represents the updateClient command
var updateClient = &cobra.Command{
	Use:   "updateClient",
	Short: "Admin Update client",
	Long:  `Admin Update client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &service.ClientService{
			IamClient:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientID := cmd.Flag("clientID").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		clientUpdateReqV3Input := cmd.Flag("clientUpdateReqV3").Value.String()
		var clientUpdateReqV3 *iamclientmodels.ClientmodelClientUpdateV3Request
		err := json.Unmarshal([]byte(clientUpdateReqV3Input), &clientUpdateReqV3)
		ok, err := clientService.AdminUpdateClientV3(clientID, namespace, clientUpdateReqV3)
		if err != nil {
			logrus.Error(err)
		} else {
			response, err := json.Marshal(ok)
			if err != nil {
				logrus.Error(err)
			} else {
				logrus.Infof("Response %s", response)
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateClient)
	updateClient.Flags().StringP("clientID", "c", "", "Client ID")
	updateClient.MarkFlagRequired("clientID")
	updateClient.Flags().StringP("namespace", "n", "", "User namespace")
	updateClient.MarkFlagRequired("namespace")
	updateClient.Flags().StringP("clientUpdateReqV3", "r", "", "Client Update Request V3. Example : '{\"clientName\":\"test-jalal3\",\"baseUri\":\"\",\"redirectUri\":\"http://127.0.0.1\"}' ")
	updateClient.MarkFlagRequired("clientUpdateReqV3")
}