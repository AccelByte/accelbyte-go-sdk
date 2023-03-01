// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchFunctions

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_functions"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateMatchFunctionCmd represents the CreateMatchFunction command
var CreateMatchFunctionCmd = &cobra.Command{
	Use:   "createMatchFunction",
	Short: "Create match function",
	Long:  `Create match function`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchFunctionsService := &match2.MatchFunctionsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchFunctionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_functions.CreateMatchFunctionParams{
			Body:      body,
			Namespace: namespace,
		}
		errCreated := matchFunctionsService.CreateMatchFunctionShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	CreateMatchFunctionCmd.Flags().String("body", "", "Body")
	_ = CreateMatchFunctionCmd.MarkFlagRequired("body")
	CreateMatchFunctionCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateMatchFunctionCmd.MarkFlagRequired("namespace")
}
