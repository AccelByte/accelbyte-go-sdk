// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package pass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deletePassCmd represents the deletePass command
var deletePassCmd = &cobra.Command{
	Use:   "deletePass",
	Short: "Delete pass",
	Long:  `Delete pass`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &pass.DeletePassParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := passService.DeletePass(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deletePassCmd)
	deletePassCmd.Flags().StringP("code", "ce", " ", "Code")
	_ = deletePassCmd.MarkFlagRequired("code")
	deletePassCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deletePassCmd.MarkFlagRequired("namespace")
	deletePassCmd.Flags().StringP("seasonId", "sd", " ", "Season id")
	_ = deletePassCmd.MarkFlagRequired("seasonId")
}
