// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkResetUserStatItemValuesCmd represents the BulkResetUserStatItemValues command
var BulkResetUserStatItemValuesCmd = &cobra.Command{
	Use:   "bulkResetUserStatItemValues",
	Short: "Bulk reset user stat item values",
	Long:  `Bulk reset user stat item values`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.ADTOObjectForResettingUserStatItems
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.BulkResetUserStatItemValuesParams{
			Body:          body,
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		ok, err := userStatisticService.BulkResetUserStatItemValuesShort(input)
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
	BulkResetUserStatItemValuesCmd.Flags().StringP("body", "", "", "Body")
	BulkResetUserStatItemValuesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkResetUserStatItemValuesCmd.MarkFlagRequired("namespace")
	BulkResetUserStatItemValuesCmd.Flags().StringP("userId", "", "", "User id")
	_ = BulkResetUserStatItemValuesCmd.MarkFlagRequired("userId")
	BulkResetUserStatItemValuesCmd.Flags().StringP("additionalKey", "", "", "Additional key")
}
