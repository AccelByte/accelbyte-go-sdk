// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		source, _ := cmd.Flags().GetString("source")
		startDate, _ := cmd.Flags().GetString("startDate")
		status, _ := cmd.Flags().GetString("status")
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
			Source:     &source,
			StartDate:  &startDate,
			Status:     &status,
			UserID:     &userId,
		}
		ok, errOK := terminatedServersService.ListTerminatedServersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListTerminatedServersCmd.Flags().String("namespace", "", "Namespace")
	_ = ListTerminatedServersCmd.MarkFlagRequired("namespace")
	ListTerminatedServersCmd.Flags().String("deployment", "", "Deployment")
	ListTerminatedServersCmd.Flags().String("endDate", "", "End date")
	ListTerminatedServersCmd.Flags().String("gameMode", "", "Game mode")
	ListTerminatedServersCmd.Flags().Int64("limit", 20, "Limit")
	ListTerminatedServersCmd.Flags().String("next", "", "Next")
	ListTerminatedServersCmd.Flags().String("partyId", "", "Party id")
	ListTerminatedServersCmd.Flags().String("podName", "", "Pod name")
	ListTerminatedServersCmd.Flags().String("previous", "", "Previous")
	ListTerminatedServersCmd.Flags().String("provider", "", "Provider")
	ListTerminatedServersCmd.Flags().String("region", "", "Region")
	ListTerminatedServersCmd.Flags().String("sessionId", "", "Session id")
	ListTerminatedServersCmd.Flags().String("source", "", "Source")
	ListTerminatedServersCmd.Flags().String("startDate", "", "Start date")
	ListTerminatedServersCmd.Flags().String("status", "", "Status")
	ListTerminatedServersCmd.Flags().String("userId", "", "User id")
}
