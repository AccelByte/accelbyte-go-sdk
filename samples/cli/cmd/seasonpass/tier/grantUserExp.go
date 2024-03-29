// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// GrantUserExpCmd represents the GrantUserExp command
var GrantUserExpCmd = &cobra.Command{
	Use:   "grantUserExp",
	Short: "Grant user exp",
	Long:  `Grant user exp`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.UserExpGrant
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &tier.GrantUserExpParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := tierService.GrantUserExpShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GrantUserExpCmd.Flags().String("body", "", "Body")
	GrantUserExpCmd.Flags().String("namespace", "", "Namespace")
	_ = GrantUserExpCmd.MarkFlagRequired("namespace")
	GrantUserExpCmd.Flags().String("userId", "", "User id")
	_ = GrantUserExpCmd.MarkFlagRequired("userId")
}
