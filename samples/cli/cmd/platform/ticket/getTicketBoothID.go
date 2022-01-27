// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ticket

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTicketBoothIDCmd represents the GetTicketBoothID command
var GetTicketBoothIDCmd = &cobra.Command{
	Use:   "GetTicketBoothID",
	Short: "Get ticket booth ID",
	Long:  `Get ticket booth ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ticket.GetTicketBoothIDParams{
			BoothName: boothName,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ticketService.GetTicketBoothID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetTicketBoothIDCmd.Flags().StringP("boothName", "be", " ", "Booth name")
	_ = GetTicketBoothIDCmd.MarkFlagRequired("boothName")
	GetTicketBoothIDCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetTicketBoothIDCmd.MarkFlagRequired("namespace")
}
