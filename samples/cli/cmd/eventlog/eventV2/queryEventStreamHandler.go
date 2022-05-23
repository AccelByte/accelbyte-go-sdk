// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryEventStreamHandlerCmd represents the QueryEventStreamHandler command
var QueryEventStreamHandlerCmd = &cobra.Command{
	Use:   "queryEventStreamHandler",
	Short: "Query event stream handler",
	Long:  `Query event stream handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventV2Service := &eventlog.EventV2Service{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *eventlogclientmodels.ModelsGenericQueryPayload
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		offset, _ := cmd.Flags().GetInt64("offset")
		pageSize, _ := cmd.Flags().GetInt64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &event_v2.QueryEventStreamHandlerParams{
			Body:      body,
			Namespace: namespace,
			EndDate:   &endDate,
			Offset:    &offset,
			PageSize:  &pageSize,
			StartDate: &startDate,
		}
		ok, err := eventV2Service.QueryEventStreamHandlerShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	QueryEventStreamHandlerCmd.Flags().String("body", "", "Body")
	_ = QueryEventStreamHandlerCmd.MarkFlagRequired("body")
	QueryEventStreamHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryEventStreamHandlerCmd.MarkFlagRequired("namespace")
	QueryEventStreamHandlerCmd.Flags().String("endDate", "", "End date")
	QueryEventStreamHandlerCmd.Flags().Int64("offset", 0, "Offset")
	QueryEventStreamHandlerCmd.Flags().Int64("pageSize", 1, "Page size")
	QueryEventStreamHandlerCmd.Flags().String("startDate", "", "Start date")
}
