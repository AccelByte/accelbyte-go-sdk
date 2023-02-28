// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTicketDynamicCmd represents the GetTicketDynamic command
var GetTicketDynamicCmd = &cobra.Command{
	Use:   "getTicketDynamic",
	Short: "Get ticket dynamic",
	Long:  `Get ticket dynamic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ticket.GetTicketDynamicParams{
			BoothName: boothName,
			Namespace: namespace,
		}
		ok, errOK := ticketService.GetTicketDynamicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetTicketDynamicCmd.Flags().String("boothName", "", "Booth name")
	_ = GetTicketDynamicCmd.MarkFlagRequired("boothName")
	GetTicketDynamicCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTicketDynamicCmd.MarkFlagRequired("namespace")
}
