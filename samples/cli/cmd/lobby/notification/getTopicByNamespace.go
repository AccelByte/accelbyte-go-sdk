// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTopicByNamespaceCmd represents the GetTopicByNamespace command
var GetTopicByNamespaceCmd = &cobra.Command{
	Use:   "getTopicByNamespace",
	Short: "Get topic by namespace",
	Long:  `Get topic by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &notification.GetTopicByNamespaceParams{
			Namespace: namespace,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := notificationService.GetTopicByNamespace(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetTopicByNamespaceCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetTopicByNamespaceCmd.MarkFlagRequired("namespace")
	GetTopicByNamespaceCmd.Flags().StringP("after", "", "0", "After")
	GetTopicByNamespaceCmd.Flags().StringP("before", "", "0", "Before")
	GetTopicByNamespaceCmd.Flags().Int64P("limit", "", 20, "Limit")
}
