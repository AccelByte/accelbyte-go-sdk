// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateMatchPoolCmd represents the CreateMatchPool command
var CreateMatchPoolCmd = &cobra.Command{
	Use:   "createMatchPool",
	Short: "Create match pool",
	Long:  `Create match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchPool
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_pools.CreateMatchPoolParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := matchPoolsService.CreateMatchPoolShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CreateMatchPoolCmd.Flags().String("body", "", "Body")
	_ = CreateMatchPoolCmd.MarkFlagRequired("body")
	CreateMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateMatchPoolCmd.MarkFlagRequired("namespace")
}
