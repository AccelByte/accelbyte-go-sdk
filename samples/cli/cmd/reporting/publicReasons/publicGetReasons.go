// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicReasons

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/public_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetReasonsCmd represents the PublicGetReasons command
var PublicGetReasonsCmd = &cobra.Command{
	Use:   "publicGetReasons",
	Short: "Public get reasons",
	Long:  `Public get reasons`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicReasonsService := &reporting.PublicReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		group, _ := cmd.Flags().GetString("group")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		title, _ := cmd.Flags().GetString("title")
		input := &public_reasons.PublicGetReasonsParams{
			Namespace: namespace,
			Group:     &group,
			Limit:     &limit,
			Offset:    &offset,
			Title:     &title,
		}
		ok, err := publicReasonsService.PublicGetReasonsShort(input)
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
	PublicGetReasonsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetReasonsCmd.MarkFlagRequired("namespace")
	PublicGetReasonsCmd.Flags().String("group", "", "Group")
	PublicGetReasonsCmd.Flags().Int64("limit", 20, "Limit")
	PublicGetReasonsCmd.Flags().Int64("offset", 0, "Offset")
	PublicGetReasonsCmd.Flags().String("title", "", "Title")
}
