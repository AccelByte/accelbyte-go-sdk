// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTickets

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListTicketsCmd represents the ListTickets command
var ListTicketsCmd = &cobra.Command{
	Use:   "listTickets",
	Short: "List tickets",
	Long:  `List tickets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		extensionCategory, _ := cmd.Flags().GetString("extensionCategory")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		reportedUserId, _ := cmd.Flags().GetString("reportedUserId")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &admin_tickets.ListTicketsParams{
			Namespace:         namespace,
			Category:          &category,
			ExtensionCategory: &extensionCategory,
			Limit:             &limit,
			Offset:            &offset,
			Order:             &order,
			ReportedUserID:    &reportedUserId,
			SortBy:            &sortBy,
			Status:            &status,
		}
		ok, errOK := adminTicketsService.ListTicketsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListTicketsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListTicketsCmd.MarkFlagRequired("namespace")
	ListTicketsCmd.Flags().String("category", "", "Category")
	ListTicketsCmd.Flags().String("extensionCategory", "", "Extension category")
	ListTicketsCmd.Flags().Int64("limit", 20, "Limit")
	ListTicketsCmd.Flags().Int64("offset", 0, "Offset")
	ListTicketsCmd.Flags().String("order", "", "Order")
	ListTicketsCmd.Flags().String("reportedUserId", "", "Reported user id")
	ListTicketsCmd.Flags().String("sortBy", "", "Sort by")
	ListTicketsCmd.Flags().String("status", "", "Status")
}
