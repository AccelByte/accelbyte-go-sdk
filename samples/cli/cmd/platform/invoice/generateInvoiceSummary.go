// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package invoice

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/invoice"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GenerateInvoiceSummaryCmd represents the GenerateInvoiceSummary command
var GenerateInvoiceSummaryCmd = &cobra.Command{
	Use:   "generateInvoiceSummary",
	Short: "Generate invoice summary",
	Long:  `Generate invoice summary`,
	RunE: func(cmd *cobra.Command, args []string) error {
		invoiceService := &platform.InvoiceService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		feature, _ := cmd.Flags().GetString("feature")
		itemId, _ := cmd.Flags().GetString("itemId")
		itemType, _ := cmd.Flags().GetString("itemType")
		startTime, _ := cmd.Flags().GetString("startTime")
		input := &invoice.GenerateInvoiceSummaryParams{
			Namespace: namespace,
			EndTime:   endTime,
			Feature:   feature,
			ItemID:    itemId,
			ItemType:  itemType,
			StartTime: startTime,
		}
		ok, errOK := invoiceService.GenerateInvoiceSummaryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GenerateInvoiceSummaryCmd.Flags().String("namespace", "", "Namespace")
	_ = GenerateInvoiceSummaryCmd.MarkFlagRequired("namespace")
	GenerateInvoiceSummaryCmd.Flags().String("endTime", "", "End time")
	_ = GenerateInvoiceSummaryCmd.MarkFlagRequired("endTime")
	GenerateInvoiceSummaryCmd.Flags().String("feature", "", "Feature")
	_ = GenerateInvoiceSummaryCmd.MarkFlagRequired("feature")
	GenerateInvoiceSummaryCmd.Flags().String("itemId", "", "Item id")
	_ = GenerateInvoiceSummaryCmd.MarkFlagRequired("itemId")
	GenerateInvoiceSummaryCmd.Flags().String("itemType", "", "Item type")
	_ = GenerateInvoiceSummaryCmd.MarkFlagRequired("itemType")
	GenerateInvoiceSummaryCmd.Flags().String("startTime", "", "Start time")
	_ = GenerateInvoiceSummaryCmd.MarkFlagRequired("startTime")
}
