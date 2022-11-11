// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/backfill"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AcceptBackfillCmd represents the AcceptBackfill command
var AcceptBackfillCmd = &cobra.Command{
	Use:   "acceptBackfill",
	Short: "Accept backfill",
	Long:  `Accept backfill`,
	RunE: func(cmd *cobra.Command, args []string) error {
		backfillService := &match2.BackfillService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIBackFillAcceptRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		backfillID, _ := cmd.Flags().GetString("backfillID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &backfill.AcceptBackfillParams{
			Body:       body,
			BackfillID: backfillID,
			Namespace:  namespace,
		}
		errInput := backfillService.AcceptBackfillShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AcceptBackfillCmd.Flags().String("body", "", "Body")
	_ = AcceptBackfillCmd.MarkFlagRequired("body")
	AcceptBackfillCmd.Flags().String("backfillID", "", "Backfill ID")
	_ = AcceptBackfillCmd.MarkFlagRequired("backfillID")
	AcceptBackfillCmd.Flags().String("namespace", "", "Namespace")
	_ = AcceptBackfillCmd.MarkFlagRequired("namespace")
}
