// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkGetUserSeasonProgressionCmd represents the BulkGetUserSeasonProgression command
var BulkGetUserSeasonProgressionCmd = &cobra.Command{
	Use:   "bulkGetUserSeasonProgression",
	Short: "Bulk get user season progression",
	Long:  `Bulk get user season progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.BulkUserProgressionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &season.BulkGetUserSeasonProgressionParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := seasonService.BulkGetUserSeasonProgressionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetUserSeasonProgressionCmd.Flags().String("body", "", "Body")
	BulkGetUserSeasonProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetUserSeasonProgressionCmd.MarkFlagRequired("namespace")
}
