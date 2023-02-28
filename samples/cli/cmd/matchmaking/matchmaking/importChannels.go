// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"os"

	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportChannelsCmd represents the ImportChannels command
var ImportChannelsCmd = &cobra.Command{
	Use:   "importChannels",
	Short: "Import channels",
	Long:  `Import channels`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		strategy, _ := cmd.Flags().GetString("strategy")
		input := &matchmaking_.ImportChannelsParams{
			File:      file,
			Strategy:  &strategy,
			Namespace: namespace,
		}
		ok, errOK := matchmakingService.ImportChannelsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImportChannelsCmd.Flags().String("file", "", "File")
	ImportChannelsCmd.Flags().String("strategy", "", "Strategy")
	ImportChannelsCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportChannelsCmd.MarkFlagRequired("namespace")
}
