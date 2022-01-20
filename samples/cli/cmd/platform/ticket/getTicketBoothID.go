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

// getTicketBoothIDCmd represents the getTicketBoothID command
var getTicketBoothIDCmd = &cobra.Command{
	Use:   "getTicketBoothID",
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
	cmd.RootCmd.AddCommand(getTicketBoothIDCmd)
	getTicketBoothIDCmd.Flags().StringP("boothName", "b", " ", "Booth name")
	_ = getTicketBoothIDCmd.MarkFlagRequired("boothName")
	getTicketBoothIDCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getTicketBoothIDCmd.MarkFlagRequired("namespace")
}