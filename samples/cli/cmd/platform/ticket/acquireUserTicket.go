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

// acquireUserTicketCmd represents the acquireUserTicket command
var acquireUserTicketCmd = &cobra.Command{
	Use:   "acquireUserTicket",
	Short: "Acquire user ticket",
	Long:  `Acquire user ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TicketAcquireRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &ticket.AcquireUserTicketParams{
			Body:      body,
			BoothName: boothName,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ticketService.AcquireUserTicket(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(acquireUserTicketCmd)
	acquireUserTicketCmd.Flags().StringP("body", "b", " ", "Body")
	acquireUserTicketCmd.Flags().StringP("boothName", "b", " ", "Booth name")
	_ = acquireUserTicketCmd.MarkFlagRequired("boothName")
	acquireUserTicketCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = acquireUserTicketCmd.MarkFlagRequired("namespace")
	acquireUserTicketCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = acquireUserTicketCmd.MarkFlagRequired("userId")
}
