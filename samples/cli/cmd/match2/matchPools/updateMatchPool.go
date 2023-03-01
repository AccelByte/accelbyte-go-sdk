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

// UpdateMatchPoolCmd represents the UpdateMatchPool command
var UpdateMatchPoolCmd = &cobra.Command{
	Use:   "updateMatchPool",
	Short: "Update match pool",
	Long:  `Update match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchPoolConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.UpdateMatchPoolParams{
			Body:      body,
			Namespace: namespace,
			Pool:      pool,
		}
		ok, errOK := matchPoolsService.UpdateMatchPoolShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateMatchPoolCmd.Flags().String("body", "", "Body")
	_ = UpdateMatchPoolCmd.MarkFlagRequired("body")
	UpdateMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMatchPoolCmd.MarkFlagRequired("namespace")
	UpdateMatchPoolCmd.Flags().String("pool", "", "Pool")
	_ = UpdateMatchPoolCmd.MarkFlagRequired("pool")
}
