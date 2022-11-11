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

// DeleteMatchFunctionCmd represents the DeleteMatchFunction command
var DeleteMatchFunctionCmd = &cobra.Command{
	Use:   "deleteMatchFunction",
	Short: "Delete match function",
	Long:  `Delete match function`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchFunctionsService := &match2.MatchFunctionsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_functions.DeleteMatchFunctionParams{
			Name:      name,
			Namespace: namespace,
		}
		errInput := matchFunctionsService.DeleteMatchFunctionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteMatchFunctionCmd.Flags().String("name", "", "Name")
	_ = DeleteMatchFunctionCmd.MarkFlagRequired("name")
	DeleteMatchFunctionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteMatchFunctionCmd.MarkFlagRequired("namespace")
}
