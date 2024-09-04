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

// AcquireUserTicketCmd represents the AcquireUserTicket command
var AcquireUserTicketCmd = &cobra.Command{
	Use:   "acquireUserTicket",
	Short: "Acquire user ticket",
	Long:  `Acquire user ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TicketAcquireRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &ticket.AcquireUserTicketParams{
			Body:      body,
			BoothName: boothName,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := ticketService.AcquireUserTicketShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AcquireUserTicketCmd.Flags().String("body", "", "Body")
	_ = AcquireUserTicketCmd.MarkFlagRequired("body")
	AcquireUserTicketCmd.Flags().String("boothName", "", "Booth name")
	_ = AcquireUserTicketCmd.MarkFlagRequired("boothName")
	AcquireUserTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = AcquireUserTicketCmd.MarkFlagRequired("namespace")
	AcquireUserTicketCmd.Flags().String("userId", "", "User id")
	_ = AcquireUserTicketCmd.MarkFlagRequired("userId")
}
