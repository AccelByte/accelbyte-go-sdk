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

// adminGetUserPersonalDataRequestsCmd represents the adminGetUserPersonalDataRequests command
var adminGetUserPersonalDataRequestsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.AdminGetUserPersonalDataRequests(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserPersonalDataRequestsCmd)
	adminGetUserPersonalDataRequestsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserPersonalDataRequestsCmd.MarkFlagRequired("namespace")
	adminGetUserPersonalDataRequestsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetUserPersonalDataRequestsCmd.MarkFlagRequired("userId")
	adminGetUserPersonalDataRequestsCmd.Flags().Int64P("limit", "l", 20, "Limit")
	adminGetUserPersonalDataRequestsCmd.Flags().Int64P("offset", "o", 0, "Offset")
}
