// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "ListAllTerminatedServers",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := allTerminatedServersService.ListAllTerminatedServers(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	ListAllTerminatedServersCmd.Flags().StringP("deployment", "dt", " ", "Deployment")
	ListAllTerminatedServersCmd.Flags().StringP("end_date", "ee", " ", "End date")
	ListAllTerminatedServersCmd.Flags().StringP("game_mode", "ge", " ", "Game mode")
	ListAllTerminatedServersCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	ListAllTerminatedServersCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	ListAllTerminatedServersCmd.Flags().StringP("next", "nt", " ", "Next")
	ListAllTerminatedServersCmd.Flags().StringP("party_id", "pd", " ", "Party id")
	ListAllTerminatedServersCmd.Flags().StringP("pod_name", "pe", " ", "Pod name")
	ListAllTerminatedServersCmd.Flags().StringP("previous", "ps", " ", "Previous")
	ListAllTerminatedServersCmd.Flags().StringP("provider", "pr", " ", "Provider")
	ListAllTerminatedServersCmd.Flags().StringP("region", "rn", " ", "Region")
	ListAllTerminatedServersCmd.Flags().StringP("session_id", "sd", " ", "Session id")
	ListAllTerminatedServersCmd.Flags().StringP("start_date", "se", " ", "Start date")
	ListAllTerminatedServersCmd.Flags().StringP("user_id", "ud", " ", "User id")
}
