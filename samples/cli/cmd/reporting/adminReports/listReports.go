// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminReports

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reports"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListReportsCmd represents the ListReports command
var ListReportsCmd = &cobra.Command{
	Use:   "listReports",
	Short: "List reports",
	Long:  `List reports`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReportsService := &reporting.AdminReportsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		reportedUserId, _ := cmd.Flags().GetString("reportedUserId")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_reports.ListReportsParams{
			Namespace:      namespace,
			Category:       &category,
			Limit:          &limit,
			Offset:         &offset,
			ReportedUserID: &reportedUserId,
			SortBy:         &sortBy,
		}
		ok, err := adminReportsService.ListReportsShort(input)
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
	ListReportsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListReportsCmd.MarkFlagRequired("namespace")
	ListReportsCmd.Flags().String("category", "", "Category")
	ListReportsCmd.Flags().Int64("limit", 20, "Limit")
	ListReportsCmd.Flags().Int64("offset", 0, "Offset")
	ListReportsCmd.Flags().String("reportedUserId", "", "Reported user id")
	ListReportsCmd.Flags().String("sortBy", "", "Sort by")
}
