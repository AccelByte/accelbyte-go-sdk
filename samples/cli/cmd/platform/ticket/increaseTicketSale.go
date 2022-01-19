// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// increaseTicketSaleCmd represents the increaseTicketSale command
var increaseTicketSaleCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ticketService.IncreaseTicketSale(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(increaseTicketSaleCmd)
	increaseTicketSaleCmd.Flags().StringP("body", "b", " ", "Body")
	increaseTicketSaleCmd.Flags().StringP("boothName", "b", " ", "Booth name")
	_ = increaseTicketSaleCmd.MarkFlagRequired("boothName")
	increaseTicketSaleCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = increaseTicketSaleCmd.MarkFlagRequired("namespace")
}
