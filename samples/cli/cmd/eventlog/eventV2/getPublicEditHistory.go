// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPublicEditHistoryCmd represents the GetPublicEditHistory command
var GetPublicEditHistoryCmd = &cobra.Command{
	Use:   "getPublicEditHistory",
	Short: "Get public edit history",
	Long:  `Get public edit history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventV2Service := &eventlog.EventV2Service{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		type_, _ := cmd.Flags().GetString("type")
		input := &event_v2.GetPublicEditHistoryParams{
			Namespace: namespace,
			UserID:    userId,
			EndDate:   &endDate,
			Offset:    &offset,
			PageSize:  &pageSize,
			StartDate: &startDate,
			Type:      &type_,
		}
		ok, errOK := eventV2Service.GetPublicEditHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPublicEditHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublicEditHistoryCmd.MarkFlagRequired("namespace")
	GetPublicEditHistoryCmd.Flags().String("userId", "", "User id")
	_ = GetPublicEditHistoryCmd.MarkFlagRequired("userId")
	GetPublicEditHistoryCmd.Flags().String("endDate", "", "End date")
	GetPublicEditHistoryCmd.Flags().Int64("offset", 0, "Offset")
	GetPublicEditHistoryCmd.Flags().Int64("pageSize", 1, "Page size")
	GetPublicEditHistoryCmd.Flags().String("startDate", "", "Start date")
	GetPublicEditHistoryCmd.Flags().String("type", "", "Type")
}
