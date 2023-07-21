// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ruleSets

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/rule_sets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RuleSetListCmd represents the RuleSetList command
var RuleSetListCmd = &cobra.Command{
	Use:   "ruleSetList",
	Short: "Rule set list",
	Long:  `Rule set list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ruleSetsService := &match2.RuleSetsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &rule_sets.RuleSetListParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
		}
		ok, errOK := ruleSetsService.RuleSetListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RuleSetListCmd.Flags().String("namespace", "", "Namespace")
	_ = RuleSetListCmd.MarkFlagRequired("namespace")
	RuleSetListCmd.Flags().Int64("limit", 20, "Limit")
	RuleSetListCmd.Flags().String("name", "", "Name")
	RuleSetListCmd.Flags().Int64("offset", 0, "Offset")
}
