// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package invoice

import (
	"bytes"
	"os"

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
		feature, _ := cmd.Flags().GetString("feature")
		itemId, _ := cmd.Flags().GetString("itemId")
		itemType, _ := cmd.Flags().GetString("itemType")
		startTime, _ := cmd.Flags().GetString("startTime")
		file, errFile := os.Create("file")
		logrus.Infof("Output %v", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &invoice.DownloadInvoiceDetailsParams{
			Namespace: namespace,
			EndTime:   endTime,
			Feature:   feature,
			ItemID:    itemId,
			ItemType:  itemType,
			StartTime: startTime,
		}
		ok, errOK := invoiceService.DownloadInvoiceDetailsShort(input, writer)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DownloadInvoiceDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("namespace")
	DownloadInvoiceDetailsCmd.Flags().String("endTime", "", "End time")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("endTime")
	DownloadInvoiceDetailsCmd.Flags().String("feature", "", "Feature")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("feature")
	DownloadInvoiceDetailsCmd.Flags().String("itemId", "", "Item id")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("itemId")
	DownloadInvoiceDetailsCmd.Flags().String("itemType", "", "Item type")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("itemType")
	DownloadInvoiceDetailsCmd.Flags().String("startTime", "", "Start time")
	_ = DownloadInvoiceDetailsCmd.MarkFlagRequired("startTime")
}
