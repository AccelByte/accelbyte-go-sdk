// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/backfill"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteBackfillCmd represents the DeleteBackfill command
var DeleteBackfillCmd = &cobra.Command{
	Use:   "deleteBackfill",
	Short: "Delete backfill",
	Long:  `Delete backfill`,
	RunE: func(cmd *cobra.Command, args []string) error {
		backfillService := &match2.BackfillService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		backfillID, _ := cmd.Flags().GetString("backfillID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &backfill.DeleteBackfillParams{
			BackfillID: backfillID,
			Namespace:  namespace,
		}
		errInput := backfillService.DeleteBackfillShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteBackfillCmd.Flags().String("backfillID", "", "Backfill ID")
	_ = DeleteBackfillCmd.MarkFlagRequired("backfillID")
	DeleteBackfillCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteBackfillCmd.MarkFlagRequired("namespace")
}
