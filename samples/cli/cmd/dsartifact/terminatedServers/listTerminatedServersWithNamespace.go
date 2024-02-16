// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminatedServers

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsartifact"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListTerminatedServersWithNamespaceCmd represents the ListTerminatedServersWithNamespace command
var ListTerminatedServersWithNamespaceCmd = &cobra.Command{
	Use:   "listTerminatedServersWithNamespace",
	Short: "List terminated servers with namespace",
	Long:  `List terminated servers with namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		terminatedServersService := &dsartifact.TerminatedServersService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
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
		input := &terminated_servers.ListTerminatedServersWithNamespaceParams{
			Namespace:  namespace,
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
		ok, errOK := terminatedServersService.ListTerminatedServersWithNamespaceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListTerminatedServersWithNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = ListTerminatedServersWithNamespaceCmd.MarkFlagRequired("namespace")
	ListTerminatedServersWithNamespaceCmd.Flags().String("deployment", "", "Deployment")
	ListTerminatedServersWithNamespaceCmd.Flags().String("gameMode", "", "Game mode")
	ListTerminatedServersWithNamespaceCmd.Flags().Int64("limit", 20, "Limit")
	ListTerminatedServersWithNamespaceCmd.Flags().String("next", "", "Next")
	ListTerminatedServersWithNamespaceCmd.Flags().String("partyId", "", "Party id")
	ListTerminatedServersWithNamespaceCmd.Flags().String("podName", "", "Pod name")
	ListTerminatedServersWithNamespaceCmd.Flags().String("previous", "", "Previous")
	ListTerminatedServersWithNamespaceCmd.Flags().String("provider", "", "Provider")
	ListTerminatedServersWithNamespaceCmd.Flags().String("region", "", "Region")
	ListTerminatedServersWithNamespaceCmd.Flags().String("sessionId", "", "Session id")
	ListTerminatedServersWithNamespaceCmd.Flags().String("userId", "", "User id")
}
