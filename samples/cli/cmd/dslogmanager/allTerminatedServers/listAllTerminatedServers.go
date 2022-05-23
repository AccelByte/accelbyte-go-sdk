// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package allTerminatedServers

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListAllTerminatedServersCmd represents the ListAllTerminatedServers command
var ListAllTerminatedServersCmd = &cobra.Command{
	Use:   "listAllTerminatedServers",
	Short: "List all terminated servers",
	Long:  `List all terminated servers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		allTerminatedServersService := &dslogmanager.AllTerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		endDate, _ := cmd.Flags().GetString("endDate")
		gameMode, _ := cmd.Flags().GetString("gameMode")
		limit, _ := cmd.Flags().GetInt64("limit")
		namespace, _ := cmd.Flags().GetString("namespace")
		next_, _ := cmd.Flags().GetString("next")
		partyId, _ := cmd.Flags().GetString("partyId")
		podName, _ := cmd.Flags().GetString("podName")
		previous, _ := cmd.Flags().GetString("previous")
		provider, _ := cmd.Flags().GetString("provider")
		region, _ := cmd.Flags().GetString("region")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		startDate, _ := cmd.Flags().GetString("startDate")
		userId, _ := cmd.Flags().GetString("userId")
		input := &all_terminated_servers.ListAllTerminatedServersParams{
			Deployment: &deployment,
			EndDate:    &endDate,
			GameMode:   &gameMode,
			Limit:      &limit,
			Namespace:  &namespace,
			Next:       &next_,
			PartyID:    &partyId,
			PodName:    &podName,
			Previous:   &previous,
			Provider:   &provider,
			Region:     &region,
			SessionID:  &sessionId,
			StartDate:  &startDate,
			UserID:     &userId,
		}
		ok, err := allTerminatedServersService.ListAllTerminatedServersShort(input)
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
	ListAllTerminatedServersCmd.Flags().String("deployment", "", "Deployment")
	ListAllTerminatedServersCmd.Flags().String("endDate", "", "End date")
	ListAllTerminatedServersCmd.Flags().String("gameMode", "", "Game mode")
	ListAllTerminatedServersCmd.Flags().Int64("limit", 20, "Limit")
	ListAllTerminatedServersCmd.Flags().String("namespace", "", "Namespace")
	ListAllTerminatedServersCmd.Flags().String("next", "", "Next")
	ListAllTerminatedServersCmd.Flags().String("partyId", "", "Party id")
	ListAllTerminatedServersCmd.Flags().String("podName", "", "Pod name")
	ListAllTerminatedServersCmd.Flags().String("previous", "", "Previous")
	ListAllTerminatedServersCmd.Flags().String("provider", "", "Provider")
	ListAllTerminatedServersCmd.Flags().String("region", "", "Region")
	ListAllTerminatedServersCmd.Flags().String("sessionId", "", "Session id")
	ListAllTerminatedServersCmd.Flags().String("startDate", "", "Start date")
	ListAllTerminatedServersCmd.Flags().String("userId", "", "User id")
}
