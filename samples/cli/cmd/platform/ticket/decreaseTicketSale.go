// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DecreaseTicketSaleCmd represents the DecreaseTicketSale command
var DecreaseTicketSaleCmd = &cobra.Command{
	Use:   "decreaseTicketSale",
	Short: "Decrease ticket sale",
	Long:  `Decrease ticket sale`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TicketSaleDecrementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &ticket.DecreaseTicketSaleParams{
			Body:      body,
			BoothName: boothName,
			Namespace: namespace,
		}
		errNoContent := ticketService.DecreaseTicketSaleShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DecreaseTicketSaleCmd.Flags().String("body", "", "Body")
	DecreaseTicketSaleCmd.Flags().String("boothName", "", "Booth name")
	_ = DecreaseTicketSaleCmd.MarkFlagRequired("boothName")
	DecreaseTicketSaleCmd.Flags().String("namespace", "", "Namespace")
	_ = DecreaseTicketSaleCmd.MarkFlagRequired("namespace")
}
