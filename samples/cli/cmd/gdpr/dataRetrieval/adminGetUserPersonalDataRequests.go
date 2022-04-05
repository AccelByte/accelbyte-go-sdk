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

// AdminGetUserPersonalDataRequestsCmd represents the AdminGetUserPersonalDataRequests command
var AdminGetUserPersonalDataRequestsCmd = &cobra.Command{
	Use:   "adminGetUserPersonalDataRequests",
	Short: "Admin get user personal data requests",
	Long:  `Admin get user personal data requests`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &data_retrieval.AdminGetUserPersonalDataRequestsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := dataRetrievalService.AdminGetUserPersonalDataRequestsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminGetUserPersonalDataRequestsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetUserPersonalDataRequestsCmd.MarkFlagRequired("namespace")
	AdminGetUserPersonalDataRequestsCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetUserPersonalDataRequestsCmd.MarkFlagRequired("userId")
	AdminGetUserPersonalDataRequestsCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetUserPersonalDataRequestsCmd.Flags().Int64P("offset", "", 0, "Offset")
}
