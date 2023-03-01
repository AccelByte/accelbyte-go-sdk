// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTickets

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateTicketResolutionsCmd represents the UpdateTicketResolutions command
var UpdateTicketResolutionsCmd = &cobra.Command{
	Use:   "updateTicketResolutions",
	Short: "Update ticket resolutions",
	Long:  `Update ticket resolutions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiUpdateTicketResolutionsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		input := &admin_tickets.UpdateTicketResolutionsParams{
			Body:      body,
			Namespace: namespace,
			TicketID:  ticketId,
		}
		ok, errOK := adminTicketsService.UpdateTicketResolutionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateTicketResolutionsCmd.Flags().String("body", "", "Body")
	_ = UpdateTicketResolutionsCmd.MarkFlagRequired("body")
	UpdateTicketResolutionsCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateTicketResolutionsCmd.MarkFlagRequired("namespace")
	UpdateTicketResolutionsCmd.Flags().String("ticketId", "", "Ticket id")
	_ = UpdateTicketResolutionsCmd.MarkFlagRequired("ticketId")
}
