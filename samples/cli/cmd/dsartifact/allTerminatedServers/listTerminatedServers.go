// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package allTerminatedServers

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsartifact"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListTerminatedServersCmd represents the ListTerminatedServers command
var ListTerminatedServersCmd = &cobra.Command{
	Use:   "listTerminatedServers",
	Short: "List terminated servers",
	Long:  `List terminated servers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		allTerminatedServersService := &dsartifact.AllTerminatedServersService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		gameMode, _ := cmd.Flags().GetString("gameMode")
		limit, _ := cmd.Flags().GetInt64("limit")
		next_, _ := cmd.Flags().GetString("next")
		partyId, _ := cmd.Flags().GetString("partyId")
		podName, _ := cmd.Flags().GetString("podName")
		previous, _ := cmd.Flags().GetString("previous")
		provider, _ := cmd.Flags().GetString("provider")
		region, _ := cmd.Flags().GetString("region")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &all_terminated_servers.ListTerminatedServersParams{
			Deployment: &deployment,
			GameMode:   &gameMode,
			Limit:      &limit,
			Next:       &next_,
			PartyID:    &partyId,
			PodName:    &podName,
			Previous:   &previous,
			Provider:   &provider,
			Region:     &region,
			SessionID:  &sessionId,
			UserID:     &userId,
		}
		ok, errOK := allTerminatedServersService.ListTerminatedServersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListTerminatedServersCmd.Flags().String("deployment", "", "Deployment")
	ListTerminatedServersCmd.Flags().String("gameMode", "", "Game mode")
	ListTerminatedServersCmd.Flags().Int64("limit", 20, "Limit")
	ListTerminatedServersCmd.Flags().String("next", "", "Next")
	ListTerminatedServersCmd.Flags().String("partyId", "", "Party id")
	ListTerminatedServersCmd.Flags().String("podName", "", "Pod name")
	ListTerminatedServersCmd.Flags().String("previous", "", "Previous")
	ListTerminatedServersCmd.Flags().String("provider", "", "Provider")
	ListTerminatedServersCmd.Flags().String("region", "", "Region")
	ListTerminatedServersCmd.Flags().String("sessionId", "", "Session id")
	ListTerminatedServersCmd.Flags().String("userId", "", "User id")
}
