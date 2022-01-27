// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPublicEditHistoryCmd represents the getPublicEditHistory command
var getPublicEditHistoryCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getPublicEditHistoryCmd)
	getPublicEditHistoryCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getPublicEditHistoryCmd.MarkFlagRequired("namespace")
	getPublicEditHistoryCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getPublicEditHistoryCmd.MarkFlagRequired("userId")
	getPublicEditHistoryCmd.Flags().StringP("endDate", "ee", " ", "End date")
	getPublicEditHistoryCmd.Flags().Float64P("offset", "ot", 0, "Offset")
	getPublicEditHistoryCmd.Flags().Float64P("pageSize", "pe", 1, "Page size")
	getPublicEditHistoryCmd.Flags().StringP("startDate", "se", " ", "Start date")
	getPublicEditHistoryCmd.Flags().StringP("type", "te", " ", "Type")
}
