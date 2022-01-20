// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listTerminatedServersCmd represents the listTerminatedServers command
var listTerminatedServersCmd = &cobra.Command{
	Use:   "listTerminatedServers",
	Short: "List terminated servers",
	Long:  `List terminated servers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		terminatedServersService := &dslogmanager.TerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		deployment, _ := cmd.Flags().GetString("deployment")
		endDate, _ := cmd.Flags().GetString("endDate")
		gameMode, _ := cmd.Flags().GetString("gameMode")
		limit, _ := cmd.Flags().GetInt64("limit")
		next_, _ := cmd.Flags().GetString("next")
		partyId, _ := cmd.Flags().GetString("partyId")
		podName, _ := cmd.Flags().GetString("podName")
		previous, _ := cmd.Flags().GetString("previous")
		provider, _ := cmd.Flags().GetString("provider")
		region, _ := cmd.Flags().GetString("region")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		startDate, _ := cmd.Flags().GetString("startDate")
		userId, _ := cmd.Flags().GetString("userId")
		input := &terminated_servers.ListTerminatedServersParams{
			Namespace:  namespace,
			Deployment: &deployment,
			EndDate:    &endDate,
			GameMode:   &gameMode,
			Limit:      &limit,
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
		ok, err := terminatedServersService.ListTerminatedServers(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listTerminatedServersCmd)
	listTerminatedServersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listTerminatedServersCmd.MarkFlagRequired("namespace")
	listTerminatedServersCmd.Flags().StringP("deployment", "d", " ", "Deployment")
	listTerminatedServersCmd.Flags().StringP("end_date", "e", " ", "End date")
	listTerminatedServersCmd.Flags().StringP("game_mode", "g", " ", "Game mode")
	listTerminatedServersCmd.Flags().Int64P("limit", "l", 20, "Limit")
	listTerminatedServersCmd.Flags().StringP("next", "n", " ", "Next")
	listTerminatedServersCmd.Flags().StringP("party_id", "p", " ", "Party id")
	listTerminatedServersCmd.Flags().StringP("pod_name", "p", " ", "Pod name")
	listTerminatedServersCmd.Flags().StringP("previous", "p", " ", "Previous")
	listTerminatedServersCmd.Flags().StringP("provider", "p", " ", "Provider")
	listTerminatedServersCmd.Flags().StringP("region", "r", " ", "Region")
	listTerminatedServersCmd.Flags().StringP("session_id", "s", " ", "Session id")
	listTerminatedServersCmd.Flags().StringP("start_date", "s", " ", "Start date")
	listTerminatedServersCmd.Flags().StringP("user_id", "u", " ", "User id")
}