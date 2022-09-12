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

// DownloadInvoiceDetailsCmd represents the DownloadInvoiceDetails command
var DownloadInvoiceDetailsCmd = &cobra.Command{
	Use:   "downloadInvoiceDetails",
	Short: "Download invoice details",
	Long:  `Download invoice details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		invoiceService := &platform.InvoiceService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		startTime, _ := cmd.Flags().GetString("startTime")
		feature, _ := cmd.Flags().GetString("feature")
		itemId, _ := cmd.Flags().GetString("itemId")
		itemType, _ := cmd.Flags().GetString("itemType")
		input := &invoice.DownloadInvoiceDetailsParams{
			Namespace: namespace,
			Feature:   &feature,
			ItemID:    &itemId,
			ItemType:  &itemType,
			EndTime:   endTime,
			StartTime: startTime,
		}
		errInput := invoiceService.DownloadInvoiceDetailsShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DownloadInvoiceDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("namespace")
	DownloadInvoiceDetailsCmd.Flags().String("feature", "", "Feature")
	DownloadInvoiceDetailsCmd.Flags().String("itemId", "", "Item id")
	DownloadInvoiceDetailsCmd.Flags().String("itemType", "", "Item type")
	DownloadInvoiceDetailsCmd.Flags().String("endTime", "", "End time")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("endTime")
	DownloadInvoiceDetailsCmd.Flags().String("startTime", "", "Start time")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("startTime")
}
