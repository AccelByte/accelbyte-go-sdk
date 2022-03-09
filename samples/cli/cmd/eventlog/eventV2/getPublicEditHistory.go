// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		offset, _ := cmd.Flags().GetFloat64("offset")
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventV2Service.GetPublicEditHistory(input)
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
	GetPublicEditHistoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPublicEditHistoryCmd.MarkFlagRequired("namespace")
	GetPublicEditHistoryCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetPublicEditHistoryCmd.MarkFlagRequired("userId")
	GetPublicEditHistoryCmd.Flags().StringP("endDate", "", "", "End date")
	GetPublicEditHistoryCmd.Flags().Float64P("offset", "", 0, "Offset")
	GetPublicEditHistoryCmd.Flags().Float64P("pageSize", "", 1, "Page size")
	GetPublicEditHistoryCmd.Flags().StringP("startDate", "", "", "Start date")
	GetPublicEditHistoryCmd.Flags().StringP("type", "", "", "Type")
}
