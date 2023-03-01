// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchFunctions

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_functions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// MatchFunctionListCmd represents the MatchFunctionList command
var MatchFunctionListCmd = &cobra.Command{
	Use:   "matchFunctionList",
	Short: "Match function list",
	Long:  `Match function list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchFunctionsService := &match2.MatchFunctionsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &match_functions.MatchFunctionListParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := matchFunctionsService.MatchFunctionListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	MatchFunctionListCmd.Flags().String("namespace", "", "Namespace")
	_ = MatchFunctionListCmd.MarkFlagRequired("namespace")
	MatchFunctionListCmd.Flags().Int64("limit", 20, "Limit")
	MatchFunctionListCmd.Flags().Int64("offset", 0, "Offset")
}
