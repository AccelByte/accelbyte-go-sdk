// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userInformation

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/user_information"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// LastUserActivityTimeHandlerCmd represents the LastUserActivityTimeHandler command
var LastUserActivityTimeHandlerCmd = &cobra.Command{
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
		ok, err := userInformationService.LastUserActivityTimeHandlerShort(input)
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
	LastUserActivityTimeHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = LastUserActivityTimeHandlerCmd.MarkFlagRequired("namespace")
	LastUserActivityTimeHandlerCmd.Flags().String("userId", "", "User id")
	_ = LastUserActivityTimeHandlerCmd.MarkFlagRequired("userId")
}
