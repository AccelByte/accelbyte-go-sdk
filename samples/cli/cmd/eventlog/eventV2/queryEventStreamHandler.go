// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventV2

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryEventStreamHandlerCmd represents the queryEventStreamHandler command
var queryEventStreamHandlerCmd = &cobra.Command{
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
		offset, _ := cmd.Flags().GetFloat64("offset")
		pageSize, _ := cmd.Flags().GetFloat64("pageSize")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &event_v2.QueryEventStreamHandlerParams{
			Body:      body,
			Namespace: namespace,
			EndDate:   &endDate,
			Offset:    &offset,
			PageSize:  &pageSize,
			StartDate: &startDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventV2Service.QueryEventStreamHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryEventStreamHandlerCmd)
	queryEventStreamHandlerCmd.Flags().StringP("body", "by", " ", "Body")
	_ = queryEventStreamHandlerCmd.MarkFlagRequired("body")
	queryEventStreamHandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = queryEventStreamHandlerCmd.MarkFlagRequired("namespace")
	queryEventStreamHandlerCmd.Flags().StringP("endDate", "ee", " ", "End date")
	queryEventStreamHandlerCmd.Flags().Float64P("offset", "ot", 0, "Offset")
	queryEventStreamHandlerCmd.Flags().Float64P("pageSize", "pe", 1, "Page size")
	queryEventStreamHandlerCmd.Flags().StringP("startDate", "se", " ", "Start date")
}
