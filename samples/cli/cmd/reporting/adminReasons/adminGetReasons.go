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

// AdminGetReasonsCmd represents the AdminGetReasons command
var AdminGetReasonsCmd = &cobra.Command{
	Use:   "adminGetReasons",
	Short: "Admin get reasons",
	Long:  `Admin get reasons`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		group, _ := cmd.Flags().GetString("group")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		title, _ := cmd.Flags().GetString("title")
		input := &admin_reasons.AdminGetReasonsParams{
			Namespace: namespace,
			Group:     &group,
			Limit:     &limit,
			Offset:    &offset,
			Title:     &title,
		}
		ok, errOK := adminReasonsService.AdminGetReasonsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetReasonsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetReasonsCmd.MarkFlagRequired("namespace")
	AdminGetReasonsCmd.Flags().String("group", "", "Group")
	AdminGetReasonsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetReasonsCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetReasonsCmd.Flags().String("title", "", "Title")
}
