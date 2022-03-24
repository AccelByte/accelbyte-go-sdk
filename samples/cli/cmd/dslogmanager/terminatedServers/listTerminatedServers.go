// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package terminatedServers

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
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
		ok, err := terminatedServersService.ListTerminatedServersShort(input)
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
	ListTerminatedServersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ListTerminatedServersCmd.MarkFlagRequired("namespace")
	ListTerminatedServersCmd.Flags().StringP("deployment", "", "", "Deployment")
	ListTerminatedServersCmd.Flags().StringP("endDate", "", "", "End date")
	ListTerminatedServersCmd.Flags().StringP("gameMode", "", "", "Game mode")
	ListTerminatedServersCmd.Flags().Int64P("limit", "", 20, "Limit")
	ListTerminatedServersCmd.Flags().StringP("next", "", "", "Next")
	ListTerminatedServersCmd.Flags().StringP("partyId", "", "", "Party id")
	ListTerminatedServersCmd.Flags().StringP("podName", "", "", "Pod name")
	ListTerminatedServersCmd.Flags().StringP("previous", "", "", "Previous")
	ListTerminatedServersCmd.Flags().StringP("provider", "", "", "Provider")
	ListTerminatedServersCmd.Flags().StringP("region", "", "", "Region")
	ListTerminatedServersCmd.Flags().StringP("sessionId", "", "", "Session id")
	ListTerminatedServersCmd.Flags().StringP("startDate", "", "", "Start date")
	ListTerminatedServersCmd.Flags().StringP("userId", "", "", "User id")
}
