// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePassCmd represents the UpdatePass command
var UpdatePassCmd = &cobra.Command{
	Use:   "updatePass",
	Short: "Update pass",
	Long:  `Update pass`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.PassUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &pass.UpdatePassParams{
			Body:      body,
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, errOK := passService.UpdatePassShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePassCmd.Flags().String("body", "", "Body")
	UpdatePassCmd.Flags().String("code", "", "Code")
	_ = UpdatePassCmd.MarkFlagRequired("code")
	UpdatePassCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePassCmd.MarkFlagRequired("namespace")
	UpdatePassCmd.Flags().String("seasonId", "", "Season id")
	_ = UpdatePassCmd.MarkFlagRequired("seasonId")
}
