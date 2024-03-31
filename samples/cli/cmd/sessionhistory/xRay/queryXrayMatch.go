// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryXrayMatchCmd represents the QueryXrayMatch command
var QueryXrayMatchCmd = &cobra.Command{
	Use:   "queryXrayMatch",
	Short: "Query xray match",
	Long:  `Query xray match`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchId, _ := cmd.Flags().GetString("matchId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &x_ray.QueryXrayMatchParams{
			MatchID:   matchId,
			Namespace: namespace,
		}
		ok, errOK := xRayService.QueryXrayMatchShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryXrayMatchCmd.Flags().String("matchId", "", "Match id")
	_ = QueryXrayMatchCmd.MarkFlagRequired("matchId")
	QueryXrayMatchCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryXrayMatchCmd.MarkFlagRequired("namespace")
}
