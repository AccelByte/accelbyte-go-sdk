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

// SaveAdminEmailConfigurationCmd represents the SaveAdminEmailConfiguration command
var SaveAdminEmailConfigurationCmd = &cobra.Command{
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
		errInput := dataRetrievalService.SaveAdminEmailConfigurationShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SaveAdminEmailConfigurationCmd.Flags().StringP("body", "", "", "Body")
	_ = SaveAdminEmailConfigurationCmd.MarkFlagRequired("body")
	SaveAdminEmailConfigurationCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SaveAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
}
