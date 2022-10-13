// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryUserIAPConsumeHistoryCmd represents the QueryUserIAPConsumeHistory command
var QueryUserIAPConsumeHistoryCmd = &cobra.Command{
	Use:   "queryUserIAPConsumeHistory",
	Short: "Query user IAP consume history",
	Long:  `Query user IAP consume history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endTime, _ := cmd.Flags().GetString("endTime")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		startTime, _ := cmd.Flags().GetString("startTime")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		input := &i_a_p.QueryUserIAPConsumeHistoryParams{
			Namespace: namespace,
			UserID:    userId,
			EndTime:   &endTime,
			Limit:     &limit,
			Offset:    &offset,
			StartTime: &startTime,
			Status:    &status,
			Type:      &type_,
		}
		ok, err := iapService.QueryUserIAPConsumeHistoryShort(input)
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
	QueryUserIAPConsumeHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserIAPConsumeHistoryCmd.MarkFlagRequired("namespace")
	QueryUserIAPConsumeHistoryCmd.Flags().String("userId", "", "User id")
	_ = QueryUserIAPConsumeHistoryCmd.MarkFlagRequired("userId")
	QueryUserIAPConsumeHistoryCmd.Flags().String("endTime", "", "End time")
	QueryUserIAPConsumeHistoryCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserIAPConsumeHistoryCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserIAPConsumeHistoryCmd.Flags().String("startTime", "", "Start time")
	QueryUserIAPConsumeHistoryCmd.Flags().String("status", "", "Status")
	QueryUserIAPConsumeHistoryCmd.Flags().String("type", "", "Type")
}
