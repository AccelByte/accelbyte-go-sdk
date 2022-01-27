// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package pass

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

// grantUserPassCmd represents the grantUserPass command
var grantUserPassCmd = &cobra.Command{
	Use:   "grantUserPass",
	Short: "Grant user pass",
	Long:  `Grant user pass`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.UserPassGrant
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &pass.GrantUserPassParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := passService.GrantUserPass(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(grantUserPassCmd)
	grantUserPassCmd.Flags().StringP("body", "by", " ", "Body")
	grantUserPassCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = grantUserPassCmd.MarkFlagRequired("namespace")
	grantUserPassCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = grantUserPassCmd.MarkFlagRequired("userId")
}
