// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// saveAdminEmailConfigurationCmd represents the saveAdminEmailConfiguration command
var saveAdminEmailConfigurationCmd = &cobra.Command{
	Use:   "saveAdminEmailConfiguration",
	Short: "Save admin email configuration",
	Long:  `Save admin email configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &data_retrieval.SaveAdminEmailConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := dataRetrievalService.SaveAdminEmailConfiguration(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(saveAdminEmailConfigurationCmd)
	saveAdminEmailConfigurationCmd.Flags().StringP("body", "b", " ", "Body")
	_ = saveAdminEmailConfigurationCmd.MarkFlagRequired("body")
	saveAdminEmailConfigurationCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = saveAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
}
