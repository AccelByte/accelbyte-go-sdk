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

// UpdateMatchFunctionCmd represents the UpdateMatchFunction command
var UpdateMatchFunctionCmd = &cobra.Command{
	Use:   "updateMatchFunction",
	Short: "Update match function",
	Long:  `Update match function`,
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
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_functions.UpdateMatchFunctionParams{
			Body:      body,
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := matchFunctionsService.UpdateMatchFunctionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateMatchFunctionCmd.Flags().String("body", "", "Body")
	_ = UpdateMatchFunctionCmd.MarkFlagRequired("body")
	UpdateMatchFunctionCmd.Flags().String("name", "", "Name")
	_ = UpdateMatchFunctionCmd.MarkFlagRequired("name")
	UpdateMatchFunctionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMatchFunctionCmd.MarkFlagRequired("namespace")
}
