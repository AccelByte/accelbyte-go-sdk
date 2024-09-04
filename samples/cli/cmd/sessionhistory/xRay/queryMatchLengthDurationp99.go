// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryMatchLengthDurationp99Cmd represents the QueryMatchLengthDurationp99 command
var QueryMatchLengthDurationp99Cmd = &cobra.Command{
	Use:   "queryMatchLengthDurationp99",
	Short: "Query match length durationp99",
	Long:  `Query match length durationp99`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		matchPoolString := cmd.Flag("matchPool").Value.String()
		var matchPool []string
		errMatchPool := json.Unmarshal([]byte(matchPoolString), &matchPool)
		if errMatchPool != nil {
			return errMatchPool
		}
		input := &x_ray.QueryMatchLengthDurationp99Params{
			Namespace: namespace,
			MatchPool: matchPool,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryMatchLengthDurationp99Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryMatchLengthDurationp99Cmd.Flags().String("namespace", "", "Namespace")
	_ = QueryMatchLengthDurationp99Cmd.MarkFlagRequired("namespace")
	QueryMatchLengthDurationp99Cmd.Flags().String("matchPool", "", "Match pool")
	QueryMatchLengthDurationp99Cmd.Flags().String("endDate", "", "End date")
	_ = QueryMatchLengthDurationp99Cmd.MarkFlagRequired("endDate")
	QueryMatchLengthDurationp99Cmd.Flags().String("startDate", "", "Start date")
	_ = QueryMatchLengthDurationp99Cmd.MarkFlagRequired("startDate")
}
