// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package fulfillment

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryFulfillmentHistoriesCmd represents the QueryFulfillmentHistories command
var QueryFulfillmentHistoriesCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	QueryFulfillmentHistoriesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryFulfillmentHistoriesCmd.MarkFlagRequired("namespace")
	QueryFulfillmentHistoriesCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryFulfillmentHistoriesCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryFulfillmentHistoriesCmd.Flags().StringP("status", "", "", "Status")
	QueryFulfillmentHistoriesCmd.Flags().StringP("userId", "", "", "User id")
}
