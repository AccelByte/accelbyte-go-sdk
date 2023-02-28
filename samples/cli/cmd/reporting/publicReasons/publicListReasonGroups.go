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

// PublicListReasonGroupsCmd represents the PublicListReasonGroups command
var PublicListReasonGroupsCmd = &cobra.Command{
	Use:   "publicListReasonGroups",
	Short: "Public list reason groups",
	Long:  `Public list reason groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicReasonsService := &reporting.PublicReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_reasons.PublicListReasonGroupsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicReasonsService.PublicListReasonGroupsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListReasonGroupsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListReasonGroupsCmd.MarkFlagRequired("namespace")
	PublicListReasonGroupsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListReasonGroupsCmd.Flags().Int64("offset", 0, "Offset")
}
