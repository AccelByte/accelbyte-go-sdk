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

// RejectBackfillCmd represents the RejectBackfill command
var RejectBackfillCmd = &cobra.Command{
	Use:   "rejectBackfill",
	Short: "Reject backfill",
	Long:  `Reject backfill`,
	RunE: func(cmd *cobra.Command, args []string) error {
		backfillService := &match2.BackfillService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIBackFillRejectRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		backfillID, _ := cmd.Flags().GetString("backfillID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &backfill.RejectBackfillParams{
			Body:       body,
			BackfillID: backfillID,
			Namespace:  namespace,
		}
		errInput := backfillService.RejectBackfillShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	RejectBackfillCmd.Flags().String("body", "", "Body")
	_ = RejectBackfillCmd.MarkFlagRequired("body")
	RejectBackfillCmd.Flags().String("backfillID", "", "Backfill ID")
	_ = RejectBackfillCmd.MarkFlagRequired("backfillID")
	RejectBackfillCmd.Flags().String("namespace", "", "Namespace")
	_ = RejectBackfillCmd.MarkFlagRequired("namespace")
}
