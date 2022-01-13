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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createClient represents the createClient command
var createClient = &cobra.Command{
	Use:   "createClient",
	Short: "Admin Create client",
	Long:  `Admin Create client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		clientModelCreateReqInput := cmd.Flag("clientModelCreateReq").Value.String()
		var clientModelCreateReq iamclientmodels.ClientmodelClientCreationV3Request
		err := json.Unmarshal([]byte(clientModelCreateReqInput), &clientModelCreateReq)
		if err != nil {
			return err
		}
		input := &clients.AdminCreateClientV3Params{
			Body:      &clientModelCreateReq,
			Namespace: namespace,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := clientService.AdminCreateClientV3(input)
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
	RootCmd.AddCommand(createClient)
	createClient.Flags().StringP("namespace", "n", "", "User namespace")
	_ = createClient.MarkFlagRequired("namespace")
	createClient.Flags().StringP("clientModelCreateReq", "r", "", "Client Model Create Request V3. Example : '{\"audiences\":[],\"baseUri\":\"\",\"clientId\":\"9e95123ji123ji123i\",\"clientName\":\"test-jalal\",\"namespace\":\"accelbyte\",\"oauthClientType\":\"Confidential\",\"redirectUri\":\"http://127.0.0.1\",\"secret\":\"123password\",\"clientPermissions\":[]}'")
	_ = createClient.MarkFlagRequired("clientModelCreateReq")
}
