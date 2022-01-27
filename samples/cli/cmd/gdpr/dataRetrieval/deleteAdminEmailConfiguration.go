// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

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

// deleteAdminEmailConfigurationCmd represents the deleteAdminEmailConfiguration command
var deleteAdminEmailConfigurationCmd = &cobra.Command{
	Use:   "deleteAdminEmailConfiguration",
	Short: "Delete admin email configuration",
	Long:  `Delete admin email configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		emailsString := cmd.Flag("emails").Value.String()
		var emails []string
		errEmails := json.Unmarshal([]byte(emailsString), &emails)
		if errEmails != nil {
			return errEmails
		}
		input := &data_retrieval.DeleteAdminEmailConfigurationParams{
			Namespace: namespace,
			Emails:    emails,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := dataRetrievalService.DeleteAdminEmailConfiguration(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteAdminEmailConfigurationCmd)
	deleteAdminEmailConfigurationCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
	deleteAdminEmailConfigurationCmd.Flags().StringP("emails", "es", " ", "Emails")
	_ = deleteAdminEmailConfigurationCmd.MarkFlagRequired("emails")
}
