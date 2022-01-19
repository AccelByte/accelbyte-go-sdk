// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/user_information"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// lastUserActivityTimeHandlerCmd represents the lastUserActivityTimeHandler command
var lastUserActivityTimeHandlerCmd = &cobra.Command{
	Use:   "lastUserActivityTimeHandler",
	Short: "Last user activity time handler",
	Long:  `Last user activity time handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userInformationService := &eventlog.UserInformationService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_information.LastUserActivityTimeHandlerParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userInformationService.LastUserActivityTimeHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(lastUserActivityTimeHandlerCmd)
	lastUserActivityTimeHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = lastUserActivityTimeHandlerCmd.MarkFlagRequired("namespace")
	lastUserActivityTimeHandlerCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = lastUserActivityTimeHandlerCmd.MarkFlagRequired("userId")
}
