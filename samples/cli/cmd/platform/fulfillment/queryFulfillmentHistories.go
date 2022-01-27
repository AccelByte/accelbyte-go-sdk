// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package fulfillment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryFulfillmentHistoriesCmd represents the queryFulfillmentHistories command
var queryFulfillmentHistoriesCmd = &cobra.Command{
	Use:   "queryFulfillmentHistories",
	Short: "Query fulfillment histories",
	Long:  `Query fulfillment histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.QueryFulfillmentHistoriesParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
			UserID:    &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fulfillmentService.QueryFulfillmentHistories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryFulfillmentHistoriesCmd)
	queryFulfillmentHistoriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = queryFulfillmentHistoriesCmd.MarkFlagRequired("namespace")
	queryFulfillmentHistoriesCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	queryFulfillmentHistoriesCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	queryFulfillmentHistoriesCmd.Flags().StringP("status", "ss", " ", "Status")
	queryFulfillmentHistoriesCmd.Flags().StringP("userId", "ud", " ", "User id")
}
