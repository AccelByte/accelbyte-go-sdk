// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tradeAction

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/trade_action"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CommitCmd represents the Commit command
var CommitCmd = &cobra.Command{
	Use:   "commit",
	Short: "Commit",
	Long:  `Commit`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tradeActionService := &platform.TradeActionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TradeChainedActionCommitRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &trade_action.CommitParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := tradeActionService.CommitShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CommitCmd.Flags().String("body", "", "Body")
	_ = CommitCmd.MarkFlagRequired("body")
	CommitCmd.Flags().String("namespace", "", "Namespace")
	_ = CommitCmd.MarkFlagRequired("namespace")
}
