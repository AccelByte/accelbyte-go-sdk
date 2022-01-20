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

// createClientByNamespaceCmd represents the createClientByNamespace command
var createClientByNamespaceCmd = &cobra.Command{
	Use:   "createClientByNamespace",
	Short: "Create client by namespace",
	Long:  `Create client by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelClientCreateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.CreateClientByNamespaceParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := clientsService.CreateClientByNamespace(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createClientByNamespaceCmd)
	createClientByNamespaceCmd.Flags().StringP("body", "b", " ", "Body")
	_ = createClientByNamespaceCmd.MarkFlagRequired("body")
	createClientByNamespaceCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = createClientByNamespaceCmd.MarkFlagRequired("namespace")
}