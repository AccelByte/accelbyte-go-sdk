// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetListPersonalDataRequestCmd represents the AdminGetListPersonalDataRequest command
var AdminGetListPersonalDataRequestCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	AdminGetListPersonalDataRequestCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetListPersonalDataRequestCmd.MarkFlagRequired("namespace")
	AdminGetListPersonalDataRequestCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetListPersonalDataRequestCmd.Flags().Int64P("offset", "", 0, "Offset")
	AdminGetListPersonalDataRequestCmd.Flags().StringP("requestDate", "", "", "Request date")
}
