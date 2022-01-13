package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var eventlogClientInstance *eventlogclient.JusticeEventlogService

func NewEventlogClient(configRepository repository.ConfigRepository) *eventlogclient.JusticeEventlogService {
	if eventlogClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &eventlogclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			eventlogClientInstance = eventlogclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			eventlogClientInstance = eventlogclient.NewHTTPClient(nil)
		}
	}
	return eventlogClientInstance
}
