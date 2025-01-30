// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticketV1

import (
	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclient/ticket_v1"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/loginqueue"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RefreshTicketCmd represents the RefreshTicket command
var RefreshTicketCmd = &cobra.Command{
	Use:   "refreshTicket",
	Short: "Refresh ticket",
	Long:  `Refresh ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketV1Service := &loginqueue.TicketV1Service{
			Client:          factory.NewLoginqueueClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ticket_v1.RefreshTicketParams{
			Namespace: namespace,
		}
		ok, errOK := ticketV1Service.RefreshTicketShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RefreshTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = RefreshTicketCmd.MarkFlagRequired("namespace")
}
