// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updatePassCmd represents the updatePass command
var updatePassCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := passService.UpdatePass(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePassCmd)
	updatePassCmd.Flags().StringP("body", "b", " ", "Body")
	updatePassCmd.Flags().StringP("code", "c", " ", "Code")
	_ = updatePassCmd.MarkFlagRequired("code")
	updatePassCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updatePassCmd.MarkFlagRequired("namespace")
	updatePassCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = updatePassCmd.MarkFlagRequired("seasonId")
}