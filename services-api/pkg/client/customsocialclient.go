package client

import (
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

func NewCustomSocialHttpClientWithConfig(formats strfmt.Registry, cfg *socialclient.TransportConfig) *socialclient.JusticeSocialService {
	if cfg == nil {
		cfg = socialclient.DefaultTransportConfig()
	}

	transport := client.New(cfg.Host, cfg.BasePath, cfg.Schemes)
	// add unsupported mime type. Please see this open issue https://github.com/go-swagger/go-swagger/issues/1244 for more details.
	transport.Consumers["image/jpeg"] = runtime.ByteStreamConsumer()
	transport.Consumers["image/png"] = runtime.ByteStreamConsumer()
	transport.Consumers["image/webp"] = runtime.ByteStreamConsumer()
	transport.Consumers["image/gif"] = runtime.ByteStreamConsumer()

	return socialclient.New(transport, formats)
}

func NewCustomSocialHttpClient(formats strfmt.Registry) *socialclient.JusticeSocialService {
	return NewCustomSocialHttpClientWithConfig(formats, nil)
}
