// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package tier

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ReorderTierCmd represents the ReorderTier command
var ReorderTierCmd = &cobra.Command{
	Use:   "reorderTier",
	Short: "Reorder tier",
	Long:  `Reorder tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.TierReorder
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &tier.ReorderTierParams{
			Body:      body,
			ID:        id_,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, err := tierService.ReorderTierShort(input)
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
	ReorderTierCmd.Flags().StringP("body", "", "", "Body")
	ReorderTierCmd.Flags().StringP("id", "", "", "Id")
	_ = ReorderTierCmd.MarkFlagRequired("id")
	ReorderTierCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ReorderTierCmd.MarkFlagRequired("namespace")
	ReorderTierCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = ReorderTierCmd.MarkFlagRequired("seasonId")
}
