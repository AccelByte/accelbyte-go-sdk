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

// MatchFunctionGetCmd represents the MatchFunctionGet command
var MatchFunctionGetCmd = &cobra.Command{
	Use:   "matchFunctionGet",
	Short: "Match function get",
	Long:  `Match function get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchFunctionsService := &match2.MatchFunctionsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_functions.MatchFunctionGetParams{
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := matchFunctionsService.MatchFunctionGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	MatchFunctionGetCmd.Flags().String("name", "", "Name")
	_ = MatchFunctionGetCmd.MarkFlagRequired("name")
	MatchFunctionGetCmd.Flags().String("namespace", "", "Namespace")
	_ = MatchFunctionGetCmd.MarkFlagRequired("namespace")
}
