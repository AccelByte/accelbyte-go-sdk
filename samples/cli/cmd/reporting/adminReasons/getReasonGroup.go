// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminReasons

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetReasonGroupCmd represents the GetReasonGroup command
var GetReasonGroupCmd = &cobra.Command{
	Use:   "getReasonGroup",
	Short: "Get reason group",
	Long:  `Get reason group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_reasons.GetReasonGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := adminReasonsService.GetReasonGroupShort(input)
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
	GetReasonGroupCmd.Flags().String("groupId", "", "Group id")
	_ = GetReasonGroupCmd.MarkFlagRequired("groupId")
	GetReasonGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = GetReasonGroupCmd.MarkFlagRequired("namespace")
}
