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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := ticketService.GetTicketDynamic(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	GetTicketDynamicCmd.Flags().StringP("boothName", "", "", "Booth name")
	_ = GetTicketDynamicCmd.MarkFlagRequired("boothName")
	GetTicketDynamicCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTicketDynamicCmd.MarkFlagRequired("namespace")
}
