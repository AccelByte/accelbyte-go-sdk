// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getTicketDynamicCmd represents the getTicketDynamic command
var getTicketDynamicCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getTicketDynamicCmd)
	getTicketDynamicCmd.Flags().StringP("boothName", "b", " ", "Booth name")
	_ = getTicketDynamicCmd.MarkFlagRequired("boothName")
	getTicketDynamicCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getTicketDynamicCmd.MarkFlagRequired("namespace")
}
