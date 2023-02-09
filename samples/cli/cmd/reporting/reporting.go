// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reporting

import (
	"github.com/AccelByte/sample-apps/cmd/reporting/adminConfigurations"
	"github.com/AccelByte/sample-apps/cmd/reporting/adminExtensionCategoriesAndAutoModerationActions"
	"github.com/AccelByte/sample-apps/cmd/reporting/adminModerationRule"
	"github.com/AccelByte/sample-apps/cmd/reporting/adminReasons"
	"github.com/AccelByte/sample-apps/cmd/reporting/adminReports"
	"github.com/AccelByte/sample-apps/cmd/reporting/adminTickets"
	"github.com/AccelByte/sample-apps/cmd/reporting/publicReasons"
	"github.com/AccelByte/sample-apps/cmd/reporting/publicReports"
	"github.com/spf13/cobra"
)

// ReportingCmd represents the service's child command
var ReportingCmd = &cobra.Command{
	Use:   "Reporting",
	Short: "Reporting to get all the commands",
}

func init() {
	ReportingCmd.AddCommand(adminExtensionCategoriesAndAutoModerationActions.AdminFindActionListCmd)
	ReportingCmd.AddCommand(adminExtensionCategoriesAndAutoModerationActions.AdminCreateModActionCmd)
	ReportingCmd.AddCommand(adminExtensionCategoriesAndAutoModerationActions.AdminFindExtensionCategoryListCmd)
	ReportingCmd.AddCommand(adminExtensionCategoriesAndAutoModerationActions.AdminCreateExtensionCategoryCmd)
	ReportingCmd.AddCommand(adminConfigurations.GetCmd)
	ReportingCmd.AddCommand(adminConfigurations.UpsertCmd)
	ReportingCmd.AddCommand(adminReasons.AdminListReasonGroupsCmd)
	ReportingCmd.AddCommand(adminReasons.CreateReasonGroupCmd)
	ReportingCmd.AddCommand(adminReasons.GetReasonGroupCmd)
	ReportingCmd.AddCommand(adminReasons.DeleteReasonGroupCmd)
	ReportingCmd.AddCommand(adminReasons.UpdateReasonGroupCmd)
	ReportingCmd.AddCommand(adminReasons.AdminGetReasonsCmd)
	ReportingCmd.AddCommand(adminReasons.CreateReasonCmd)
	ReportingCmd.AddCommand(adminReasons.AdminGetAllReasonsCmd)
	ReportingCmd.AddCommand(adminReasons.AdminGetUnusedReasonsCmd)
	ReportingCmd.AddCommand(adminReasons.AdminGetReasonCmd)
	ReportingCmd.AddCommand(adminReasons.DeleteReasonCmd)
	ReportingCmd.AddCommand(adminReasons.UpdateReasonCmd)
	ReportingCmd.AddCommand(adminReports.ListReportsCmd)
	ReportingCmd.AddCommand(adminReports.AdminSubmitReportCmd)
	ReportingCmd.AddCommand(adminModerationRule.CreateModerationRuleCmd)
	ReportingCmd.AddCommand(adminModerationRule.UpdateModerationRuleCmd)
	ReportingCmd.AddCommand(adminModerationRule.DeleteModerationRuleCmd)
	ReportingCmd.AddCommand(adminModerationRule.UpdateModerationRuleStatusCmd)
	ReportingCmd.AddCommand(adminModerationRule.GetModerationRulesCmd)
	ReportingCmd.AddCommand(adminModerationRule.GetModerationRuleDetailsCmd)
	ReportingCmd.AddCommand(adminTickets.ListTicketsCmd)
	ReportingCmd.AddCommand(adminTickets.TicketStatisticCmd)
	ReportingCmd.AddCommand(adminTickets.GetTicketDetailCmd)
	ReportingCmd.AddCommand(adminTickets.DeleteTicketCmd)
	ReportingCmd.AddCommand(adminTickets.GetReportsByTicketCmd)
	ReportingCmd.AddCommand(adminTickets.UpdateTicketResolutionsCmd)
	ReportingCmd.AddCommand(publicReasons.PublicListReasonGroupsCmd)
	ReportingCmd.AddCommand(publicReasons.PublicGetReasonsCmd)
	ReportingCmd.AddCommand(publicReports.SubmitReportCmd)
}
