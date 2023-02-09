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

// AdminGetReasonCmd represents the AdminGetReason command
var AdminGetReasonCmd = &cobra.Command{
	Use:   "adminGetReason",
	Short: "Admin get reason",
	Long:  `Admin get reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		reasonId, _ := cmd.Flags().GetString("reasonId")
		input := &admin_reasons.AdminGetReasonParams{
			Namespace: namespace,
			ReasonID:  reasonId,
		}
		ok, err := adminReasonsService.AdminGetReasonShort(input)
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
	AdminGetReasonCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetReasonCmd.MarkFlagRequired("namespace")
	AdminGetReasonCmd.Flags().String("reasonId", "", "Reason id")
	_ = AdminGetReasonCmd.MarkFlagRequired("reasonId")
}
