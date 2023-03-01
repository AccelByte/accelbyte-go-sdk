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

// DeleteRuleSetCmd represents the DeleteRuleSet command
var DeleteRuleSetCmd = &cobra.Command{
	Use:   "deleteRuleSet",
	Short: "Delete rule set",
	Long:  `Delete rule set`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ruleSetsService := &match2.RuleSetsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleset, _ := cmd.Flags().GetString("ruleset")
		input := &rule_sets.DeleteRuleSetParams{
			Namespace: namespace,
			Ruleset:   ruleset,
		}
		errNoContent := ruleSetsService.DeleteRuleSetShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteRuleSetCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteRuleSetCmd.MarkFlagRequired("namespace")
	DeleteRuleSetCmd.Flags().String("ruleset", "", "Ruleset")
	_ = DeleteRuleSetCmd.MarkFlagRequired("ruleset")
}
