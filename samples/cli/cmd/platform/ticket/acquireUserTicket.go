// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AcquireUserTicketCmd.Flags().StringP("body", "", "", "Body")
	AcquireUserTicketCmd.Flags().StringP("boothName", "", "", "Booth name")
	_ = AcquireUserTicketCmd.MarkFlagRequired("boothName")
	AcquireUserTicketCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AcquireUserTicketCmd.MarkFlagRequired("namespace")
	AcquireUserTicketCmd.Flags().StringP("userId", "", "", "User id")
	_ = AcquireUserTicketCmd.MarkFlagRequired("userId")
}
