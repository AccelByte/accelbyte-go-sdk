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

// getUserActivitiesHandlerCmd represents the getUserActivitiesHandler command
var getUserActivitiesHandlerCmd = &cobra.Command{
	Use:   "getUserActivitiesHandler",
	Short: "Get user activities handler",
	Long:  `Get user activities handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userInformationService := &eventlog.UserInformationService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		offset, _ := cmd.Flags().GetFloat64("offset")
		input := &user_information.GetUserActivitiesHandlerParams{
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			PageSize:  pageSize,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userInformationService.GetUserActivitiesHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserActivitiesHandlerCmd)
	getUserActivitiesHandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserActivitiesHandlerCmd.MarkFlagRequired("namespace")
	getUserActivitiesHandlerCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserActivitiesHandlerCmd.MarkFlagRequired("userId")
	getUserActivitiesHandlerCmd.Flags().Float64P("offset", "o", 0, "Offset")
	getUserActivitiesHandlerCmd.Flags().Float64P("pageSize", "p", 1, "Page size")
	_ = getUserActivitiesHandlerCmd.MarkFlagRequired("pageSize")
}
