// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp"
	"go.opentelemetry.io/contrib/propagators/b3"
	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/exporters/zipkin"
	"go.opentelemetry.io/otel/propagation"
	"go.opentelemetry.io/otel/sdk/resource"
	sdkTrace "go.opentelemetry.io/otel/sdk/trace"
	semanticConventions "go.opentelemetry.io/otel/semconv/v1.12.0"
	"net/http"
	"os"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

const (
	environment = "production"
	id          = int64(1)
)

type CustomTransport struct {
	inner http.RoundTripper
}

func SetLogger(inner http.RoundTripper) http.RoundTripper {
	return &CustomTransport{
		inner: inner,
	}
}

func (c *CustomTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	// enabling log
	if os.Getenv("ENABLE_LOG") == "true" {
		// logger request
		logrus.Infof("LogRequest: %v", LogRequest(r))

		// logger response
		res, err := c.inner.RoundTrip(r)
		if err != nil {
			logrus.Error("failed to use the RoundTrip method")
		}
		logrus.Infof("Response: %v", LogResponse(res))

		return res, nil
	}

	return c.inner.RoundTrip(r)
}

func CustomTransportRuntime(transport *httptransport.Runtime) *httptransport.Runtime {
	transport.Producers["*/*"] = runtime.JSONProducer()
	transport.Consumers["text/x-log"] = runtime.JSONConsumer()
	transport.Consumers["text/plain"] = runtime.JSONConsumer()
	transport.Consumers["application/problem+json"] = runtime.JSONConsumer()
	transport.Consumers["application/x-www-form-urlencoded"] = runtime.JSONConsumer()
	transport.Consumers["image/png"] = runtime.ByteStreamConsumer()
	transport.Consumers["application/pdf"] = runtime.ByteStreamConsumer()
	transport.Consumers["application/zip"] = runtime.ByteStreamConsumer()
	transport.Consumers["application/x-zip-compressed"] = runtime.ByteStreamConsumer()

	// optional custom request header
	transport.Transport = SetLogger(transport.Transport)

	tracerProvider, err := NewTracerProvider(UserAgentSDK, environment, id)
	if err != nil {
		logrus.Fatalf("failed to create tracer provider: %v", err)
	}

	// Register our TracerProvider as the global so any imported
	// instrumentation in the future will default to using it.
	otel.SetTracerProvider(tracerProvider)

	b := b3.New(b3.WithInjectEncoding(b3.B3MultipleHeader))
	propagators := propagation.NewCompositeTextMapPropagator(
		b,
		propagation.TraceContext{},
		propagation.Baggage{})
	transport.Transport = otelhttp.NewTransport(transport.Transport, otelhttp.WithPropagators(propagators))

	return transport
}

func NewTracerProvider(serviceName string, environment string, id int64) (*sdkTrace.TracerProvider, error) {
	zipkinEndpoint := GetEnv("OTEL_EXPORTER_ZIPKIN_ENDPOINT", "http://localhost:9411/api/v2/spans")
	exporter, err := zipkin.New(zipkinEndpoint)
	if err != nil {
		return nil, err
	}

	res := resource.NewWithAttributes(
		semanticConventions.SchemaURL,
		semanticConventions.ServiceNameKey.String(serviceName),
		attribute.String("environment", environment),
		attribute.Int64("ID", id),
	)

	return sdkTrace.NewTracerProvider(
		sdkTrace.WithBatcher(exporter, sdkTrace.WithBatchTimeout(time.Second*1)),
		sdkTrace.WithResource(res),
		//sdkTrace.WithSampler(sdkTrace.AlwaysSample()), // not sure if need to be enabled
	), nil
}
