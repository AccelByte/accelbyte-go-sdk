// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateAdminEmailConfigurationCmd represents the UpdateAdminEmailConfiguration command
var UpdateAdminEmailConfigurationCmd = &cobra.Command{
	Use:   "updateAdminEmailConfiguration",
	Short: "Update admin email configuration",
	Long:  `Update admin email configuration`,
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
		input := &data_retrieval.UpdateAdminEmailConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := dataRetrievalService.UpdateAdminEmailConfigurationShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UpdateAdminEmailConfigurationCmd.Flags().String("body", "", "Body")
	_ = UpdateAdminEmailConfigurationCmd.MarkFlagRequired("body")
	UpdateAdminEmailConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
}
