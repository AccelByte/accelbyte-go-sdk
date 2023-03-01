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

// IncreaseTicketSaleCmd represents the IncreaseTicketSale command
var IncreaseTicketSaleCmd = &cobra.Command{
	Use:   "increaseTicketSale",
	Short: "Increase ticket sale",
	Long:  `Increase ticket sale`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TicketSaleIncrementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &ticket.IncreaseTicketSaleParams{
			Body:      body,
			BoothName: boothName,
			Namespace: namespace,
		}
		ok, errOK := ticketService.IncreaseTicketSaleShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	IncreaseTicketSaleCmd.Flags().String("body", "", "Body")
	IncreaseTicketSaleCmd.Flags().String("boothName", "", "Booth name")
	_ = IncreaseTicketSaleCmd.MarkFlagRequired("boothName")
	IncreaseTicketSaleCmd.Flags().String("namespace", "", "Namespace")
	_ = IncreaseTicketSaleCmd.MarkFlagRequired("namespace")
}
