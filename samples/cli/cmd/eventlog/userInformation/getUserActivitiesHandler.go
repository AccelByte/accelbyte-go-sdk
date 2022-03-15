// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userInformation

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/user_information"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserActivitiesHandlerCmd represents the GetUserActivitiesHandler command
var GetUserActivitiesHandlerCmd = &cobra.Command{
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
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &user_information.GetUserActivitiesHandlerParams{
			Namespace: namespace,
			UserID:    userId,
			Offset:    &offset,
			PageSize:  pageSize,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userInformationService.GetUserActivitiesHandler(input)
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
	GetUserActivitiesHandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserActivitiesHandlerCmd.MarkFlagRequired("namespace")
	GetUserActivitiesHandlerCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserActivitiesHandlerCmd.MarkFlagRequired("userId")
	GetUserActivitiesHandlerCmd.Flags().Int64P("offset", "", 0, "Offset")
	GetUserActivitiesHandlerCmd.Flags().Int64P("pageSize", "", 1, "Page size")
	_ = GetUserActivitiesHandlerCmd.MarkFlagRequired("pageSize")
}
