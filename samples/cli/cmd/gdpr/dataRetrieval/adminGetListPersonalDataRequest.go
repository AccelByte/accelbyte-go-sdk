// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetListPersonalDataRequestCmd represents the adminGetListPersonalDataRequest command
var adminGetListPersonalDataRequestCmd = &cobra.Command{
	Use:   "adminGetListPersonalDataRequest",
	Short: "Admin get list personal data request",
	Long:  `Admin get list personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		input := &data_retrieval.AdminGetListPersonalDataRequestParams{
			Namespace:   namespace,
			Limit:       &limit,
			Offset:      &offset,
			RequestDate: &requestDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.AdminGetListPersonalDataRequest(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetListPersonalDataRequestCmd)
	adminGetListPersonalDataRequestCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetListPersonalDataRequestCmd.MarkFlagRequired("namespace")
	adminGetListPersonalDataRequestCmd.Flags().Int64P("limit", "l", 20, "Limit")
	adminGetListPersonalDataRequestCmd.Flags().Int64P("offset", "o", 0, "Offset")
	adminGetListPersonalDataRequestCmd.Flags().StringP("requestDate", "r", " ", "Request date")
}
